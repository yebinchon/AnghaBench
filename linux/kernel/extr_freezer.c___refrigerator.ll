; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_freezer.c___refrigerator.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_freezer.c___refrigerator.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64, i32, i32 }

@current = common dso_local global %struct.TYPE_3__* null, align 8
@.str = private unnamed_addr constant [25 x i8] c"%s entered refrigerator\0A\00", align 1
@TASK_UNINTERRUPTIBLE = common dso_local global i64 0, align 8
@freezer_lock = common dso_local global i32 0, align 4
@PF_FROZEN = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [22 x i8] c"%s left refrigerator\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__refrigerator(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i64, align 8
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %3, align 4
  %5 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %6 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  store i64 %7, i64* %4, align 8
  %8 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %9 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @pr_debug(i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %10)
  br label %12

12:                                               ; preds = %46, %1
  %13 = load i64, i64* @TASK_UNINTERRUPTIBLE, align 8
  %14 = call i32 @set_current_state(i64 %13)
  %15 = call i32 @spin_lock_irq(i32* @freezer_lock)
  %16 = load i32, i32* @PF_FROZEN, align 4
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 8
  %20 = or i32 %19, %16
  store i32 %20, i32* %18, align 8
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %22 = call i32 @freezing(%struct.TYPE_3__* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %30

24:                                               ; preds = %12
  %25 = load i32, i32* %2, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %37

27:                                               ; preds = %24
  %28 = call i64 (...) @kthread_should_stop()
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %37

30:                                               ; preds = %27, %12
  %31 = load i32, i32* @PF_FROZEN, align 4
  %32 = xor i32 %31, -1
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = and i32 %35, %32
  store i32 %36, i32* %34, align 8
  br label %37

37:                                               ; preds = %30, %27, %24
  %38 = call i32 @spin_unlock_irq(i32* @freezer_lock)
  %39 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* @PF_FROZEN, align 4
  %43 = and i32 %41, %42
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %37
  br label %48

46:                                               ; preds = %37
  store i32 1, i32* %3, align 4
  %47 = call i32 (...) @schedule()
  br label %12

48:                                               ; preds = %45
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** @current, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @pr_debug(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %51)
  %53 = load i64, i64* %4, align 8
  %54 = call i32 @set_current_state(i64 %53)
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @set_current_state(i64) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @freezing(%struct.TYPE_3__*) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @schedule(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
