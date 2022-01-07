; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_smp.c_on_each_cpu_mask.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_smp.c_on_each_cpu_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cpumask = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @on_each_cpu_mask(%struct.cpumask* %0, i32 (i8*)* %1, i8* %2, i32 %3) #0 {
  %5 = alloca %struct.cpumask*, align 8
  %6 = alloca i32 (i8*)*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.cpumask* %0, %struct.cpumask** %5, align 8
  store i32 (i8*)* %1, i32 (i8*)** %6, align 8
  store i8* %2, i8** %7, align 8
  store i32 %3, i32* %8, align 4
  %11 = call i32 (...) @get_cpu()
  store i32 %11, i32* %9, align 4
  %12 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %13 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %14 = load i8*, i8** %7, align 8
  %15 = load i32, i32* %8, align 4
  %16 = call i32 @smp_call_function_many(%struct.cpumask* %12, i32 (i8*)* %13, i8* %14, i32 %15)
  %17 = load i32, i32* %9, align 4
  %18 = load %struct.cpumask*, %struct.cpumask** %5, align 8
  %19 = call i64 @cpumask_test_cpu(i32 %17, %struct.cpumask* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %4
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @local_irq_save(i64 %22)
  %24 = load i32 (i8*)*, i32 (i8*)** %6, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 %24(i8* %25)
  %27 = load i64, i64* %10, align 8
  %28 = call i32 @local_irq_restore(i64 %27)
  br label %29

29:                                               ; preds = %21, %4
  %30 = call i32 (...) @put_cpu()
  ret void
}

declare dso_local i32 @get_cpu(...) #1

declare dso_local i32 @smp_call_function_many(%struct.cpumask*, i32 (i8*)*, i8*, i32) #1

declare dso_local i64 @cpumask_test_cpu(i32, %struct.cpumask*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @put_cpu(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
