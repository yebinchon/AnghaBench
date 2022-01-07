; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_post.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/xprtrdma/extr_verbs.c_rpcrdma_ep_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcrdma_ia = type { i32 }
%struct.rpcrdma_ep = type { i64, i64 }
%struct.rpcrdma_req = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ib_send_wr }
%struct.ib_send_wr = type { i32 }

@IB_SEND_SIGNALED = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcrdma_ep_post(%struct.rpcrdma_ia* %0, %struct.rpcrdma_ep* %1, %struct.rpcrdma_req* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcrdma_ia*, align 8
  %6 = alloca %struct.rpcrdma_ep*, align 8
  %7 = alloca %struct.rpcrdma_req*, align 8
  %8 = alloca %struct.ib_send_wr*, align 8
  %9 = alloca i32, align 4
  store %struct.rpcrdma_ia* %0, %struct.rpcrdma_ia** %5, align 8
  store %struct.rpcrdma_ep* %1, %struct.rpcrdma_ep** %6, align 8
  store %struct.rpcrdma_req* %2, %struct.rpcrdma_req** %7, align 8
  %10 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %11 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %10, i32 0, i32 1
  %12 = load %struct.TYPE_2__*, %struct.TYPE_2__** %11, align 8
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  store %struct.ib_send_wr* %13, %struct.ib_send_wr** %8, align 8
  %14 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %6, align 8
  %15 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %3
  %19 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %20 = getelementptr inbounds %struct.rpcrdma_req, %struct.rpcrdma_req* %19, i32 0, i32 0
  %21 = call i32 @kref_read(i32* %20)
  %22 = icmp sgt i32 %21, 1
  br i1 %22, label %23, label %34

23:                                               ; preds = %18, %3
  %24 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %25 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %26 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = or i32 %27, %24
  store i32 %28, i32* %26, align 4
  %29 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %6, align 8
  %30 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %6, align 8
  %33 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %32, i32 0, i32 0
  store i64 %31, i64* %33, align 8
  br label %45

34:                                               ; preds = %18
  %35 = load i32, i32* @IB_SEND_SIGNALED, align 4
  %36 = xor i32 %35, -1
  %37 = load %struct.ib_send_wr*, %struct.ib_send_wr** %8, align 8
  %38 = getelementptr inbounds %struct.ib_send_wr, %struct.ib_send_wr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = and i32 %39, %36
  store i32 %40, i32* %38, align 4
  %41 = load %struct.rpcrdma_ep*, %struct.rpcrdma_ep** %6, align 8
  %42 = getelementptr inbounds %struct.rpcrdma_ep, %struct.rpcrdma_ep* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add nsw i64 %43, -1
  store i64 %44, i64* %42, align 8
  br label %45

45:                                               ; preds = %34, %23
  %46 = load %struct.rpcrdma_ia*, %struct.rpcrdma_ia** %5, align 8
  %47 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %48 = call i32 @frwr_send(%struct.rpcrdma_ia* %46, %struct.rpcrdma_req* %47)
  store i32 %48, i32* %9, align 4
  %49 = load %struct.rpcrdma_req*, %struct.rpcrdma_req** %7, align 8
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @trace_xprtrdma_post_send(%struct.rpcrdma_req* %49, i32 %50)
  %52 = load i32, i32* %9, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %45
  %55 = load i32, i32* @ENOTCONN, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %58

57:                                               ; preds = %45
  store i32 0, i32* %4, align 4
  br label %58

58:                                               ; preds = %57, %54
  %59 = load i32, i32* %4, align 4
  ret i32 %59
}

declare dso_local i32 @kref_read(i32*) #1

declare dso_local i32 @frwr_send(%struct.rpcrdma_ia*, %struct.rpcrdma_req*) #1

declare dso_local i32 @trace_xprtrdma_post_send(%struct.rpcrdma_req*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
