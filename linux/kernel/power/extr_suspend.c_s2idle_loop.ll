; ModuleID = '/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_s2idle_loop.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/power/extr_suspend.c_s2idle_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (...)* }

@.str = private unnamed_addr constant [17 x i8] c"suspend-to-idle\0A\00", align 1
@s2idle_ops = common dso_local global %struct.TYPE_2__* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"resume from suspend-to-idle\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @s2idle_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @s2idle_loop() #0 {
  %1 = call i32 @pm_pr_dbg(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  br label %2

2:                                                ; preds = %19, %0
  %3 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s2idle_ops, align 8
  %4 = icmp ne %struct.TYPE_2__* %3, null
  br i1 %4, label %5, label %15

5:                                                ; preds = %2
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s2idle_ops, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i32 (...)*, i32 (...)** %7, align 8
  %9 = icmp ne i32 (...)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %5
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** @s2idle_ops, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = load i32 (...)*, i32 (...)** %12, align 8
  %14 = call i32 (...) %13()
  br label %15

15:                                               ; preds = %10, %5, %2
  %16 = call i64 (...) @pm_wakeup_pending()
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  br label %22

19:                                               ; preds = %15
  %20 = call i32 @pm_wakeup_clear(i32 0)
  %21 = call i32 (...) @s2idle_enter()
  br label %2

22:                                               ; preds = %18
  %23 = call i32 @pm_pr_dbg(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0))
  ret void
}

declare dso_local i32 @pm_pr_dbg(i8*) #1

declare dso_local i64 @pm_wakeup_pending(...) #1

declare dso_local i32 @pm_wakeup_clear(i32) #1

declare dso_local i32 @s2idle_enter(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
