; ModuleID = '/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_boost.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/rcu/extr_rcutorture.c_rcu_torture_boost.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rcu_boost_inflight = type { i32, i32 }
%struct.sched_param = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"rcu_torture_boost started\00", align 1
@current = common dso_local global i32 0, align 4
@SCHED_FIFO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"rcu_torture_boost RT prio failed!\00", align 1
@n_rcu_torture_boost_rterror = common dso_local global i32 0, align 4
@boost_mutex = common dso_local global i32 0, align 4
@n_rcu_torture_boosts = common dso_local global i32 0, align 4
@boost_starttime = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [18 x i8] c"rcu_torture_boost\00", align 1
@test_boost_duration = common dso_local global i64 0, align 8
@HZ = common dso_local global i64 0, align 8
@rcu_torture_boost_cb = common dso_local global i32 0, align 4
@test_boost_interval = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @rcu_torture_boost to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rcu_torture_boost(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.rcu_boost_inflight, align 4
  %7 = alloca %struct.sched_param, align 4
  %8 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %9 = bitcast %struct.rcu_boost_inflight* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 8, i1 false)
  %10 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0))
  %11 = getelementptr inbounds %struct.sched_param, %struct.sched_param* %7, i32 0, i32 0
  store i32 1, i32* %11, align 4
  %12 = load i32, i32* @current, align 4
  %13 = load i32, i32* @SCHED_FIFO, align 4
  %14 = call i64 @sched_setscheduler(i32 %12, i32 %13, %struct.sched_param* %7)
  %15 = icmp slt i64 %14, 0
  br i1 %15, label %16, label %20

16:                                               ; preds = %1
  %17 = call i32 @VERBOSE_TOROUT_STRING(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %18 = load i32, i32* @n_rcu_torture_boost_rterror, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @n_rcu_torture_boost_rterror, align 4
  br label %20

20:                                               ; preds = %16, %1
  %21 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 0
  %22 = call i32 @init_rcu_head_on_stack(i32* %21)
  br label %23

23:                                               ; preds = %134, %20
  store i32 0, i32* %8, align 4
  br label %24

24:                                               ; preds = %35, %23
  %25 = call i64 (...) @kthread_should_stop()
  %26 = icmp ne i64 %25, 0
  %27 = xor i1 %26, true
  br i1 %27, label %28, label %37

28:                                               ; preds = %24
  %29 = call i64 @mutex_trylock(i32* @boost_mutex)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %28
  %32 = load i32, i32* @n_rcu_torture_boosts, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @n_rcu_torture_boosts, align 4
  %34 = call i32 @mutex_unlock(i32* @boost_mutex)
  br label %37

35:                                               ; preds = %28
  %36 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %24

37:                                               ; preds = %31, %24
  %38 = call i64 (...) @kthread_should_stop()
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %37
  br label %132

41:                                               ; preds = %37
  %42 = load i64, i64* @boost_starttime, align 8
  store i64 %42, i64* %5, align 8
  br label %43

43:                                               ; preds = %57, %41
  %44 = load i64, i64* @jiffies, align 8
  %45 = load i64, i64* %5, align 8
  %46 = call i64 @ULONG_CMP_LT(i64 %44, i64 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %58

48:                                               ; preds = %43
  %49 = load i64, i64* %5, align 8
  %50 = load i64, i64* @jiffies, align 8
  %51 = sub i64 %49, %50
  %52 = call i32 @schedule_timeout_interruptible(i64 %51)
  %53 = call i32 @stutter_wait(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %54 = call i64 (...) @torture_must_stop()
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %48
  br label %132

57:                                               ; preds = %48
  br label %43

58:                                               ; preds = %43
  %59 = load i64, i64* %5, align 8
  %60 = load i64, i64* @test_boost_duration, align 8
  %61 = load i64, i64* @HZ, align 8
  %62 = mul i64 %60, %61
  %63 = add i64 %59, %62
  store i64 %63, i64* %4, align 8
  %64 = load i64, i64* @jiffies, align 8
  store i64 %64, i64* %3, align 8
  br label %65

65:                                               ; preds = %96, %58
  %66 = load i64, i64* @jiffies, align 8
  %67 = load i64, i64* %4, align 8
  %68 = call i64 @ULONG_CMP_LT(i64 %66, i64 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %97

70:                                               ; preds = %65
  %71 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 1
  %72 = call i64 @smp_load_acquire(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %91, label %74

74:                                               ; preds = %70
  %75 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 1
  %76 = call i32 @smp_store_release(i32* %75, i32 1)
  %77 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 0
  %78 = load i32, i32* @rcu_torture_boost_cb, align 4
  %79 = call i32 @call_rcu(i32* %77, i32 %78)
  %80 = load i32, i32* %8, align 4
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %87, label %82

82:                                               ; preds = %74
  %83 = load i64, i64* %3, align 8
  %84 = load i64, i64* @jiffies, align 8
  %85 = call i64 @rcu_torture_boost_failed(i64 %83, i64 %84)
  %86 = icmp ne i64 %85, 0
  br label %87

87:                                               ; preds = %82, %74
  %88 = phi i1 [ true, %74 ], [ %86, %82 ]
  %89 = zext i1 %88 to i32
  store i32 %89, i32* %8, align 4
  %90 = load i64, i64* @jiffies, align 8
  store i64 %90, i64* %3, align 8
  br label %91

91:                                               ; preds = %87, %70
  %92 = call i32 @stutter_wait(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %93 = call i64 (...) @torture_must_stop()
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %96

95:                                               ; preds = %91
  br label %132

96:                                               ; preds = %91
  br label %65

97:                                               ; preds = %65
  %98 = load i32, i32* %8, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %108, label %100

100:                                              ; preds = %97
  %101 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 1
  %102 = call i64 @smp_load_acquire(i32* %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %108

104:                                              ; preds = %100
  %105 = load i64, i64* %3, align 8
  %106 = load i64, i64* @jiffies, align 8
  %107 = call i64 @rcu_torture_boost_failed(i64 %105, i64 %106)
  br label %108

108:                                              ; preds = %104, %100, %97
  br label %109

109:                                              ; preds = %129, %108
  %110 = load i64, i64* %5, align 8
  %111 = load i64, i64* @boost_starttime, align 8
  %112 = icmp eq i64 %110, %111
  br i1 %112, label %113, label %117

113:                                              ; preds = %109
  %114 = call i64 (...) @kthread_should_stop()
  %115 = icmp ne i64 %114, 0
  %116 = xor i1 %115, true
  br label %117

117:                                              ; preds = %113, %109
  %118 = phi i1 [ false, %109 ], [ %116, %113 ]
  br i1 %118, label %119, label %131

119:                                              ; preds = %117
  %120 = call i64 @mutex_trylock(i32* @boost_mutex)
  %121 = icmp ne i64 %120, 0
  br i1 %121, label %122, label %129

122:                                              ; preds = %119
  %123 = load i64, i64* @jiffies, align 8
  %124 = load i64, i64* @test_boost_interval, align 8
  %125 = load i64, i64* @HZ, align 8
  %126 = mul i64 %124, %125
  %127 = add i64 %123, %126
  store i64 %127, i64* @boost_starttime, align 8
  %128 = call i32 @mutex_unlock(i32* @boost_mutex)
  br label %131

129:                                              ; preds = %119
  %130 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %109

131:                                              ; preds = %122, %117
  br label %132

132:                                              ; preds = %131, %95, %56, %40
  %133 = call i32 @stutter_wait(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  br label %134

134:                                              ; preds = %132
  %135 = call i64 (...) @torture_must_stop()
  %136 = icmp ne i64 %135, 0
  %137 = xor i1 %136, true
  br i1 %137, label %23, label %138

138:                                              ; preds = %134
  br label %139

139:                                              ; preds = %148, %138
  %140 = call i64 (...) @kthread_should_stop()
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %146

142:                                              ; preds = %139
  %143 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 1
  %144 = call i64 @smp_load_acquire(i32* %143)
  %145 = icmp ne i64 %144, 0
  br label %146

146:                                              ; preds = %142, %139
  %147 = phi i1 [ true, %139 ], [ %145, %142 ]
  br i1 %147, label %148, label %151

148:                                              ; preds = %146
  %149 = call i32 @torture_shutdown_absorb(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  %150 = call i32 @schedule_timeout_uninterruptible(i32 1)
  br label %139

151:                                              ; preds = %146
  %152 = getelementptr inbounds %struct.rcu_boost_inflight, %struct.rcu_boost_inflight* %6, i32 0, i32 0
  %153 = call i32 @destroy_rcu_head_on_stack(i32* %152)
  %154 = call i32 @torture_kthread_stopping(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0))
  ret i32 0
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @VERBOSE_TOROUT_STRING(i8*) #2

declare dso_local i64 @sched_setscheduler(i32, i32, %struct.sched_param*) #2

declare dso_local i32 @init_rcu_head_on_stack(i32*) #2

declare dso_local i64 @kthread_should_stop(...) #2

declare dso_local i64 @mutex_trylock(i32*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @schedule_timeout_uninterruptible(i32) #2

declare dso_local i64 @ULONG_CMP_LT(i64, i64) #2

declare dso_local i32 @schedule_timeout_interruptible(i64) #2

declare dso_local i32 @stutter_wait(i8*) #2

declare dso_local i64 @torture_must_stop(...) #2

declare dso_local i64 @smp_load_acquire(i32*) #2

declare dso_local i32 @smp_store_release(i32*, i32) #2

declare dso_local i32 @call_rcu(i32*, i32) #2

declare dso_local i64 @rcu_torture_boost_failed(i64, i64) #2

declare dso_local i32 @torture_shutdown_absorb(i8*) #2

declare dso_local i32 @destroy_rcu_head_on_stack(i32*) #2

declare dso_local i32 @torture_kthread_stopping(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
