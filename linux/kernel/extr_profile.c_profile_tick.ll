; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_profile.c_profile_tick.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_profile.c_profile_tick.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pt_regs = type { i32 }

@prof_cpu_mask = common dso_local global i32* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @profile_tick(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pt_regs*, align 8
  store i32 %0, i32* %2, align 4
  %4 = call %struct.pt_regs* (...) @get_irq_regs()
  store %struct.pt_regs* %4, %struct.pt_regs** %3, align 8
  %5 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %6 = call i32 @user_mode(%struct.pt_regs* %5)
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %22, label %8

8:                                                ; preds = %1
  %9 = load i32*, i32** @prof_cpu_mask, align 8
  %10 = icmp ne i32* %9, null
  br i1 %10, label %11, label %22

11:                                               ; preds = %8
  %12 = call i32 (...) @smp_processor_id()
  %13 = load i32*, i32** @prof_cpu_mask, align 8
  %14 = call i64 @cpumask_test_cpu(i32 %12, i32* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %22

16:                                               ; preds = %11
  %17 = load i32, i32* %2, align 4
  %18 = load %struct.pt_regs*, %struct.pt_regs** %3, align 8
  %19 = call i64 @profile_pc(%struct.pt_regs* %18)
  %20 = inttoptr i64 %19 to i8*
  %21 = call i32 @profile_hit(i32 %17, i8* %20)
  br label %22

22:                                               ; preds = %16, %11, %8, %1
  ret void
}

declare dso_local %struct.pt_regs* @get_irq_regs(...) #1

declare dso_local i32 @user_mode(%struct.pt_regs*) #1

declare dso_local i64 @cpumask_test_cpu(i32, i32*) #1

declare dso_local i32 @smp_processor_id(...) #1

declare dso_local i32 @profile_hit(i32, i8*) #1

declare dso_local i64 @profile_pc(%struct.pt_regs*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
