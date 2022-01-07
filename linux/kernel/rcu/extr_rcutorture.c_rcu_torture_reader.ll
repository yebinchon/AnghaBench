; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_reader.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_reader.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i64 }
%struct.timer_list = type { i32 }

@jiffies = common dso_local global i32 0, align 4
@rand = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [32 x i8] c"rcu_torture_reader task started\00", align 1
@current = common dso_local global i32 0, align 4
@MAX_NICE = common dso_local global i32 0, align 4
@irqreader = common dso_local global i64 0, align 8
@cur_ops = common dso_local global %struct.TYPE_2__* null, align 8
@rcu_torture_timer = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [19 x i8] c"rcu_torture_reader\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_reader to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_reader(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.timer_list, align 4
  store i8* %0, i8** %2, align 8
  %7 = load i32, i32* @jiffies, align 4
  %8 = sext i32 %7 to i64
  store i64 %8, i64* %3, align 8
  %9 = load i8*, i8** %2, align 8
  %10 = ptrtoint i8* %9 to i64
  store i64 %10, i64* %4, align 8
  %11 = load i64, i64* %4, align 8
  %12 = trunc i64 %11 to i32
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* @rand, align 4
  %14 = call i32 @DEFINE_TORTURE_RANDOM(i32 %13)
  %15 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* @current, align 4
  %17 = load i32, i32* @MAX_NICE, align 4
  %18 = call i32 @set_user_nice(i32 %16, i32 %17)
  %19 = load i64, i64* @irqreader, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %1
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %21
  %27 = load i32, i32* @rcu_torture_timer, align 4
  %28 = call i32 @timer_setup_on_stack(%struct.timer_list* %6, i32 %27, i32 0)
  br label %29

29:                                               ; preds = %26, %21, %1
  br label %30

30:                                               ; preds = %79, %29
  %31 = load i64, i64* @irqreader, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %46

33:                                               ; preds = %30
  %34 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = call i32 @timer_pending(%struct.timer_list* %6)
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %45, label %41

41:                                               ; preds = %38
  %42 = load i32, i32* @jiffies, align 4
  %43 = add nsw i32 %42, 1
  %44 = call i32 @mod_timer(%struct.timer_list* %6, i32 %43)
  br label %45

45:                                               ; preds = %41, %38
  br label %46

46:                                               ; preds = %45, %33, %30
  %47 = call i32 @rcu_torture_one_read(i32* @rand)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %52, label %49

49:                                               ; preds = %46
  %50 = load i32, i32* @HZ, align 4
  %51 = call i32 @schedule_timeout_interruptible(i32 %50)
  br label %52

52:                                               ; preds = %49, %46
  %53 = load i32, i32* @jiffies, align 4
  %54 = load i64, i64* %3, align 8
  %55 = call i64 @time_after(i32 %53, i64 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = call i32 @schedule_timeout_interruptible(i32 1)
  %59 = load i32, i32* @jiffies, align 4
  %60 = add nsw i32 %59, 10
  %61 = sext i32 %60 to i64
  store i64 %61, i64* %3, align 8
  br label %62

62:                                               ; preds = %57, %52
  br label %63

63:                                               ; preds = %73, %62
  %64 = call i32 (...) @num_online_cpus()
  %65 = load i32, i32* %5, align 4
  %66 = icmp slt i32 %64, %65
  br i1 %66, label %67, label %71

67:                                               ; preds = %63
  %68 = call i32 (...) @torture_must_stop()
  %69 = icmp ne i32 %68, 0
  %70 = xor i1 %69, true
  br label %71

71:                                               ; preds = %67, %63
  %72 = phi i1 [ false, %63 ], [ %70, %67 ]
  br i1 %72, label %73, label %77

73:                                               ; preds = %71
  %74 = load i32, i32* @HZ, align 4
  %75 = sdiv i32 %74, 5
  %76 = call i32 @schedule_timeout_interruptible(i32 %75)
  br label %63

77:                                               ; preds = %71
  %78 = call i32 @stutter_wait(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  br label %79

79:                                               ; preds = %77
  %80 = call i32 (...) @torture_must_stop()
  %81 = icmp ne i32 %80, 0
  %82 = xor i1 %81, true
  br i1 %82, label %30, label %83

83:                                               ; preds = %79
  %84 = load i64, i64* @irqreader, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %94

86:                                               ; preds = %83
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** @cur_ops, align 8
  %88 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %87, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = call i32 @del_timer_sync(%struct.timer_list* %6)
  %93 = call i32 @destroy_timer_on_stack(%struct.timer_list* %6)
  br label %94

94:                                               ; preds = %91, %86, %83
  %95 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  ret i32 0
}

declare dso_local i32 @DEFINE_TORTURE_RANDOM(i32) #1

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #1

declare dso_local i32 @set_user_nice(i32, i32) #1

declare dso_local i32 @timer_setup_on_stack(%struct.timer_list*, i32, i32) #1

declare dso_local i32 @timer_pending(%struct.timer_list*) #1

declare dso_local i32 @mod_timer(%struct.timer_list*, i32) #1

declare dso_local i32 @rcu_torture_one_read(i32*) #1

declare dso_local i32 @schedule_timeout_interruptible(i32) #1

declare dso_local i64 @time_after(i32, i64) #1

declare dso_local i32 @num_online_cpus(...) #1

declare dso_local i32 @torture_must_stop(...) #1

declare dso_local i32 @stutter_wait(i8*) #1

declare dso_local i32 @del_timer_sync(%struct.timer_list*) #1

declare dso_local i32 @destroy_timer_on_stack(%struct.timer_list*) #1

declare dso_local i32 @torture_kthread_stopping(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
