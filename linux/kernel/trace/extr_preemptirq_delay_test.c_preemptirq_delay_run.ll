; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_preemptirq_delay_test.c_preemptirq_delay_run.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_preemptirq_delay_test.c_preemptirq_delay_run.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@test_mode = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"irq\00", align 1
@delay = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [8 x i8] c"preempt\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @preemptirq_delay_run to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @preemptirq_delay_run(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i32, i32* @test_mode, align 4
  %5 = call i32 @strcmp(i32 %4, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %14, label %7

7:                                                ; preds = %1
  %8 = load i64, i64* %3, align 8
  %9 = call i32 @local_irq_save(i64 %8)
  %10 = load i32, i32* @delay, align 4
  %11 = call i32 @busy_wait(i32 %10)
  %12 = load i64, i64* %3, align 8
  %13 = call i32 @local_irq_restore(i64 %12)
  br label %24

14:                                               ; preds = %1
  %15 = load i32, i32* @test_mode, align 4
  %16 = call i32 @strcmp(i32 %15, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i64 0, i64 0))
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = call i32 (...) @preempt_disable()
  %20 = load i32, i32* @delay, align 4
  %21 = call i32 @busy_wait(i32 %20)
  %22 = call i32 (...) @preempt_enable()
  br label %23

23:                                               ; preds = %18, %14
  br label %24

24:                                               ; preds = %23, %7
  ret i32 0
}

declare dso_local i32 @strcmp(i32, i8*) #1

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local i32 @busy_wait(i32) #1

declare dso_local i32 @local_irq_restore(i64) #1

declare dso_local i32 @preempt_disable(...) #1

declare dso_local i32 @preempt_enable(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
