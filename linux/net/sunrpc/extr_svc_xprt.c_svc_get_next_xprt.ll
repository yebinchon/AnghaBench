; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_get_next_xprt.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_svc_xprt.c_svc_get_next_xprt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_xprt = type { i32 }
%struct.svc_rqst = type { %struct.svc_xprt*, %struct.TYPE_4__, i32, %struct.svc_pool* }
%struct.TYPE_4__ = type { i32 }
%struct.svc_pool = type { i32, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@TASK_INTERRUPTIBLE = common dso_local global i32 0, align 4
@SP_CONGESTED = common dso_local global i32 0, align 4
@RQ_BUSY = common dso_local global i32 0, align 4
@TASK_RUNNING = common dso_local global i32 0, align 4
@EINTR = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.svc_xprt* (%struct.svc_rqst*, i64)* @svc_get_next_xprt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.svc_xprt* @svc_get_next_xprt(%struct.svc_rqst* %0, i64 %1) #0 {
  %3 = alloca %struct.svc_xprt*, align 8
  %4 = alloca %struct.svc_rqst*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.svc_pool*, align 8
  %7 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %4, align 8
  store i64 %1, i64* %5, align 8
  %8 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %9 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %8, i32 0, i32 3
  %10 = load %struct.svc_pool*, %struct.svc_pool** %9, align 8
  store %struct.svc_pool* %10, %struct.svc_pool** %6, align 8
  store i64 0, i64* %7, align 8
  %11 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %12 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %11, i32 0, i32 0
  %13 = load %struct.svc_xprt*, %struct.svc_xprt** %12, align 8
  %14 = call i32 @WARN_ON_ONCE(%struct.svc_xprt* %13)
  %15 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %16 = call i8* @svc_xprt_dequeue(%struct.svc_pool* %15)
  %17 = bitcast i8* %16 to %struct.svc_xprt*
  %18 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %19 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %18, i32 0, i32 0
  store %struct.svc_xprt* %17, %struct.svc_xprt** %19, align 8
  %20 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %21 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %20, i32 0, i32 0
  %22 = load %struct.svc_xprt*, %struct.svc_xprt** %21, align 8
  %23 = icmp ne %struct.svc_xprt* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %87

25:                                               ; preds = %2
  %26 = load i32, i32* @TASK_INTERRUPTIBLE, align 4
  %27 = call i32 @set_current_state(i32 %26)
  %28 = call i32 (...) @smp_mb__before_atomic()
  %29 = load i32, i32* @SP_CONGESTED, align 4
  %30 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %31 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %30, i32 0, i32 0
  %32 = call i32 @clear_bit(i32 %29, i32* %31)
  %33 = load i32, i32* @RQ_BUSY, align 4
  %34 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %35 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %34, i32 0, i32 2
  %36 = call i32 @clear_bit(i32 %33, i32* %35)
  %37 = call i32 (...) @smp_mb__after_atomic()
  %38 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %39 = call i32 @rqst_should_sleep(%struct.svc_rqst* %38)
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %25
  %43 = load i64, i64* %5, align 8
  %44 = call i64 @schedule_timeout(i64 %43)
  store i64 %44, i64* %7, align 8
  br label %48

45:                                               ; preds = %25
  %46 = load i32, i32* @TASK_RUNNING, align 4
  %47 = call i32 @__set_current_state(i32 %46)
  br label %48

48:                                               ; preds = %45, %42
  %49 = call i32 (...) @try_to_freeze()
  %50 = load i32, i32* @RQ_BUSY, align 4
  %51 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %52 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %51, i32 0, i32 2
  %53 = call i32 @set_bit(i32 %50, i32* %52)
  %54 = call i32 (...) @smp_mb__after_atomic()
  %55 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %56 = call i8* @svc_xprt_dequeue(%struct.svc_pool* %55)
  %57 = bitcast i8* %56 to %struct.svc_xprt*
  %58 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %59 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %58, i32 0, i32 0
  store %struct.svc_xprt* %57, %struct.svc_xprt** %59, align 8
  %60 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %61 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %60, i32 0, i32 0
  %62 = load %struct.svc_xprt*, %struct.svc_xprt** %61, align 8
  %63 = icmp ne %struct.svc_xprt* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %48
  br label %87

65:                                               ; preds = %48
  %66 = load i64, i64* %7, align 8
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %73, label %68

68:                                               ; preds = %65
  %69 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %70 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = call i32 @atomic_long_inc(i32* %71)
  br label %73

73:                                               ; preds = %68, %65
  %74 = call i64 (...) @signalled()
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %79, label %76

76:                                               ; preds = %73
  %77 = call i64 (...) @kthread_should_stop()
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %76, %73
  %80 = load i32, i32* @EINTR, align 4
  %81 = sub nsw i32 0, %80
  %82 = call %struct.svc_xprt* @ERR_PTR(i32 %81)
  store %struct.svc_xprt* %82, %struct.svc_xprt** %3, align 8
  br label %111

83:                                               ; preds = %76
  %84 = load i32, i32* @EAGAIN, align 4
  %85 = sub nsw i32 0, %84
  %86 = call %struct.svc_xprt* @ERR_PTR(i32 %85)
  store %struct.svc_xprt* %86, %struct.svc_xprt** %3, align 8
  br label %111

87:                                               ; preds = %64, %24
  %88 = load i32, i32* @SP_CONGESTED, align 4
  %89 = load %struct.svc_pool*, %struct.svc_pool** %6, align 8
  %90 = getelementptr inbounds %struct.svc_pool, %struct.svc_pool* %89, i32 0, i32 0
  %91 = call i32 @test_bit(i32 %88, i32* %90)
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %99, label %93

93:                                               ; preds = %87
  %94 = load i32, i32* @HZ, align 4
  %95 = mul nsw i32 5, %94
  %96 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %97 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %96, i32 0, i32 1
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  store i32 %95, i32* %98, align 8
  br label %105

99:                                               ; preds = %87
  %100 = load i32, i32* @HZ, align 4
  %101 = mul nsw i32 1, %100
  %102 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %103 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %102, i32 0, i32 1
  %104 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %103, i32 0, i32 0
  store i32 %101, i32* %104, align 8
  br label %105

105:                                              ; preds = %99, %93
  %106 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %107 = call i32 @trace_svc_xprt_dequeue(%struct.svc_rqst* %106)
  %108 = load %struct.svc_rqst*, %struct.svc_rqst** %4, align 8
  %109 = getelementptr inbounds %struct.svc_rqst, %struct.svc_rqst* %108, i32 0, i32 0
  %110 = load %struct.svc_xprt*, %struct.svc_xprt** %109, align 8
  store %struct.svc_xprt* %110, %struct.svc_xprt** %3, align 8
  br label %111

111:                                              ; preds = %105, %83, %79
  %112 = load %struct.svc_xprt*, %struct.svc_xprt** %3, align 8
  ret %struct.svc_xprt* %112
}

declare dso_local i32 @WARN_ON_ONCE(%struct.svc_xprt*) #1

declare dso_local i8* @svc_xprt_dequeue(%struct.svc_pool*) #1

declare dso_local i32 @set_current_state(i32) #1

declare dso_local i32 @smp_mb__before_atomic(...) #1

declare dso_local i32 @clear_bit(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i32 @rqst_should_sleep(%struct.svc_rqst*) #1

declare dso_local i64 @schedule_timeout(i64) #1

declare dso_local i32 @__set_current_state(i32) #1

declare dso_local i32 @try_to_freeze(...) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_long_inc(i32*) #1

declare dso_local i64 @signalled(...) #1

declare dso_local i64 @kthread_should_stop(...) #1

declare dso_local %struct.svc_xprt* @ERR_PTR(i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_svc_xprt_dequeue(%struct.svc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
