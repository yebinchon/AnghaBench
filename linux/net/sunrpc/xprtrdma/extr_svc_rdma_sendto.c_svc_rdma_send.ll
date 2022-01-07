; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_svc_rdma_sendto.c_svc_rdma_send.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svcxprt_rdma = type { i32, %struct.TYPE_3__, i32, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.ib_send_wr = type { i32 }

@rdma_stat_sq_starve = common dso_local global i32 0, align 4
@XPT_CLOSE = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @svc_rdma_send(%struct.svcxprt_rdma* %0, %struct.ib_send_wr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.svcxprt_rdma*, align 8
  %5 = alloca %struct.ib_send_wr*, align 8
  %6 = alloca i32, align 4
  store %struct.svcxprt_rdma* %0, %struct.svcxprt_rdma** %4, align 8
  store %struct.ib_send_wr* %1, %struct.ib_send_wr** %5, align 8
  %7 = call i32 (...) @might_sleep()
  br label %8

8:                                                ; preds = %2, %38
  %9 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %10 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %9, i32 0, i32 3
  %11 = call i64 @atomic_dec_return(i32* %10)
  %12 = icmp slt i64 %11, 0
  br i1 %12, label %13, label %41

13:                                               ; preds = %8
  %14 = call i32 @atomic_inc(i32* @rdma_stat_sq_starve)
  %15 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %16 = call i32 @trace_svcrdma_sq_full(%struct.svcxprt_rdma* %15)
  %17 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %18 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %17, i32 0, i32 3
  %19 = call i32 @atomic_inc(i32* %18)
  %20 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %21 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %24 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %23, i32 0, i32 3
  %25 = call i32 @atomic_read(i32* %24)
  %26 = icmp sgt i32 %25, 1
  %27 = zext i1 %26 to i32
  %28 = call i32 @wait_event(i32 %22, i32 %27)
  %29 = load i32, i32* @XPT_CLOSE, align 4
  %30 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %31 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = call i64 @test_bit(i32 %29, i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %13
  %36 = load i32, i32* @ENOTCONN, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %3, align 4
  br label %70

38:                                               ; preds = %13
  %39 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %40 = call i32 @trace_svcrdma_sq_retry(%struct.svcxprt_rdma* %39)
  br label %8

41:                                               ; preds = %8
  %42 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %43 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %42, i32 0, i32 1
  %44 = call i32 @svc_xprt_get(%struct.TYPE_3__* %43)
  %45 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %46 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %49 = call i32 @ib_post_send(i32 %47, %struct.ib_send_wr* %48, i32* null)
  store i32 %49, i32* %6, align 4
  %50 = load %struct.ib_send_wr*, %struct.ib_send_wr** %5, align 8
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @trace_svcrdma_post_send(%struct.ib_send_wr* %50, i32 %51)
  %53 = load i32, i32* %6, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %67

55:                                               ; preds = %41
  %56 = load i32, i32* @XPT_CLOSE, align 4
  %57 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %58 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %57, i32 0, i32 1
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = call i32 @set_bit(i32 %56, i32* %59)
  %61 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %62 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %61, i32 0, i32 1
  %63 = call i32 @svc_xprt_put(%struct.TYPE_3__* %62)
  %64 = load %struct.svcxprt_rdma*, %struct.svcxprt_rdma** %4, align 8
  %65 = getelementptr inbounds %struct.svcxprt_rdma, %struct.svcxprt_rdma* %64, i32 0, i32 0
  %66 = call i32 @wake_up(i32* %65)
  br label %67

67:                                               ; preds = %55, %41
  br label %68

68:                                               ; preds = %67
  %69 = load i32, i32* %6, align 4
  store i32 %69, i32* %3, align 4
  br label %70

70:                                               ; preds = %68, %35
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i32 @might_sleep(...) #1

declare dso_local i64 @atomic_dec_return(i32*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @trace_svcrdma_sq_full(%struct.svcxprt_rdma*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @trace_svcrdma_sq_retry(%struct.svcxprt_rdma*) #1

declare dso_local i32 @svc_xprt_get(%struct.TYPE_3__*) #1

declare dso_local i32 @ib_post_send(i32, %struct.ib_send_wr*, i32*) #1

declare dso_local i32 @trace_svcrdma_post_send(%struct.ib_send_wr*, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @svc_xprt_put(%struct.TYPE_3__*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
