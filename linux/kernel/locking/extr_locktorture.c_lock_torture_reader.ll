; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (...)*, i32 (i32*)*, i32 (...)* }
%struct.lock_stress_stats = type { i32, i32 }

@lock_torture_reader.rand = internal global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"lock_torture_reader task started\00", align 1
@current = common dso_local global i32 0, align 4
@MAX_NICE = common dso_local global i32 0, align 4
@cxt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lock_is_read_held = common dso_local global i32 0, align 4
@lock_is_write_held = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"lock_torture_reader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lock_torture_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_torture_reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.lock_stress_stats*, align 8
  store i8* %0, i8** %2, align 8
  %4 = load i8*, i8** %2, align 8
  %5 = bitcast i8* %4 to %struct.lock_stress_stats*
  store %struct.lock_stress_stats* %5, %struct.lock_stress_stats** %3, align 8
  %6 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0))
  %7 = load i32, i32* @current, align 4
  %8 = load i32, i32* @MAX_NICE, align 4
  %9 = call i32 @set_user_nice(i32 %7, i32 %8)
  br label %10

10:                                               ; preds = %43, %1
  %11 = call i32 @torture_random(i32* @lock_torture_reader.rand)
  %12 = and i32 %11, 1048575
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 2
  %19 = load i32 (...)*, i32 (...)** %18, align 8
  %20 = call i32 (...) %19()
  store i32 1, i32* @lock_is_read_held, align 4
  %21 = load i32, i32* @lock_is_write_held, align 4
  %22 = call i64 @WARN_ON_ONCE(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %16
  %25 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %3, align 8
  %26 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %26, align 4
  br label %29

29:                                               ; preds = %24, %16
  %30 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %3, align 8
  %31 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %31, align 4
  %34 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 1
  %36 = load i32 (i32*)*, i32 (i32*)** %35, align 8
  %37 = call i32 %36(i32* @lock_torture_reader.rand)
  store i32 0, i32* @lock_is_read_held, align 4
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32 (...)*, i32 (...)** %39, align 8
  %41 = call i32 (...) %40()
  %42 = call i32 @stutter_wait(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %43

43:                                               ; preds = %29
  %44 = call i32 (...) @torture_must_stop()
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  br i1 %46, label %10, label %47

47:                                               ; preds = %43
  %48 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @torture_random(i32*) #1

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #1

declare dso_local i64 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @stutter_wait(i8*) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
