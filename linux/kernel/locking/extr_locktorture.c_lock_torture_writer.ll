; ModuleID = '/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_writer.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/locking/extr_locktorture.c_lock_torture_writer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 (i32*)*, i32 (...)*, i32 (i32*)*, i32 (...)* }
%struct.lock_stress_stats = type { i32, i32 }

@lock_torture_writer.rand = internal global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"lock_torture_writer task started\00", align 1
@current = common dso_local global i32 0, align 4
@MAX_NICE = common dso_local global i32 0, align 4
@cxt = common dso_local global %struct.TYPE_4__ zeroinitializer, align 8
@lock_is_write_held = common dso_local global i32 0, align 4
@lock_is_read_held = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"lock_torture_writer\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @lock_torture_writer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lock_torture_writer(i8* %0) #0 {
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

10:                                               ; preds = %56, %1
  %11 = call i32 @torture_random(i32* @lock_torture_writer.rand)
  %12 = and i32 %11, 1048575
  %13 = icmp eq i32 %12, 0
  br i1 %13, label %14, label %16

14:                                               ; preds = %10
  %15 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %16

16:                                               ; preds = %14, %10
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  %19 = load i32 (i32*)*, i32 (i32*)** %18, align 8
  %20 = call i32 %19(i32* @lock_torture_writer.rand)
  %21 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 3
  %23 = load i32 (...)*, i32 (...)** %22, align 8
  %24 = call i32 (...) %23()
  %25 = load i32, i32* @lock_is_write_held, align 4
  %26 = call i64 @WARN_ON_ONCE(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %16
  %29 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %3, align 8
  %30 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %30, align 4
  br label %33

33:                                               ; preds = %28, %16
  store i32 1, i32* @lock_is_write_held, align 4
  %34 = load i32, i32* @lock_is_read_held, align 4
  %35 = call i64 @WARN_ON_ONCE(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %33
  %38 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %3, align 8
  %39 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %42

42:                                               ; preds = %37, %33
  %43 = load %struct.lock_stress_stats*, %struct.lock_stress_stats** %3, align 8
  %44 = getelementptr inbounds %struct.lock_stress_stats, %struct.lock_stress_stats* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 4
  %47 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 2
  %49 = load i32 (i32*)*, i32 (i32*)** %48, align 8
  %50 = call i32 %49(i32* @lock_torture_writer.rand)
  store i32 0, i32* @lock_is_write_held, align 4
  %51 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 1
  %53 = load i32 (...)*, i32 (...)** %52, align 8
  %54 = call i32 (...) %53()
  %55 = call i32 @stutter_wait(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
  br label %56

56:                                               ; preds = %42
  %57 = call i32 (...) @torture_must_stop()
  %58 = icmp ne i32 %57, 0
  %59 = xor i1 %58, true
  br i1 %59, label %10, label %60

60:                                               ; preds = %56
  %61 = load %struct.TYPE_3__*, %struct.TYPE_3__** getelementptr inbounds (%struct.TYPE_4__, %struct.TYPE_4__* @cxt, i32 0, i32 0), align 8
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  %63 = load i32 (i32*)*, i32 (i32*)** %62, align 8
  %64 = call i32 %63(i32* null)
  %65 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0))
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
