; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_udp_data_read_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_udp_data_read_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_xprt = type { i32, i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.rpc_task = type { i32 }
%struct.rpc_rqst = type { %struct.TYPE_2__, %struct.rpc_task* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"RPC:       impossible RPC reply size %d!\0A\00", align 1
@UDP_MIB_INERRORS = common dso_local global i32 0, align 4
@UDP_MIB_INDATAGRAMS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_xprt*, %struct.sock*, %struct.sk_buff*)* @xs_udp_data_read_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xs_udp_data_read_skb(%struct.rpc_xprt* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.rpc_xprt*, align 8
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.rpc_task*, align 8
  %8 = alloca %struct.rpc_rqst*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %4, align 8
  store %struct.sock* %1, %struct.sock** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %14 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  store i32 %15, i32* %9, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp slt i32 %16, 4
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* %9, align 4
  %20 = call i32 @dprintk(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %19)
  br label %99

21:                                               ; preds = %3
  %22 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %23 = call i32* @skb_header_pointer(%struct.sk_buff* %22, i32 0, i32 4, i32* %11)
  store i32* %23, i32** %12, align 8
  %24 = load i32*, i32** %12, align 8
  %25 = icmp eq i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21
  br label %99

27:                                               ; preds = %21
  %28 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %29 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %32 = load i32*, i32** %12, align 8
  %33 = load i32, i32* %32, align 4
  %34 = call %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt* %31, i32 %33)
  store %struct.rpc_rqst* %34, %struct.rpc_rqst** %8, align 8
  %35 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %36 = icmp ne %struct.rpc_rqst* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %27
  br label %95

38:                                               ; preds = %27
  %39 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %40 = call i32 @xprt_pin_rqst(%struct.rpc_rqst* %39)
  %41 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %42 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %41, i32 0, i32 1
  %43 = load %struct.rpc_task*, %struct.rpc_task** %42, align 8
  %44 = call i32 @xprt_update_rtt(%struct.rpc_task* %43)
  %45 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %46 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %45, i32 0, i32 0
  %47 = call i32 @spin_unlock(i32* %46)
  %48 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %49 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %48, i32 0, i32 1
  %50 = load %struct.rpc_task*, %struct.rpc_task** %49, align 8
  store %struct.rpc_task* %50, %struct.rpc_task** %7, align 8
  %51 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %52 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  store i32 %54, i32* %10, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp sgt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %38
  %58 = load i32, i32* %9, align 4
  store i32 %58, i32* %10, align 4
  br label %59

59:                                               ; preds = %57, %38
  %60 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %61 = getelementptr inbounds %struct.rpc_rqst, %struct.rpc_rqst* %60, i32 0, i32 0
  %62 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %63 = call i64 @csum_partial_copy_to_xdr(%struct.TYPE_2__* %61, %struct.sk_buff* %62)
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %67 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %66, i32 0, i32 0
  %68 = call i32 @spin_lock(i32* %67)
  %69 = load %struct.sock*, %struct.sock** %5, align 8
  %70 = load i32, i32* @UDP_MIB_INERRORS, align 4
  %71 = call i32 @__UDPX_INC_STATS(%struct.sock* %69, i32 %70)
  br label %92

72:                                               ; preds = %59
  %73 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %74 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %73, i32 0, i32 1
  %75 = call i32 @spin_lock(i32* %74)
  %76 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %77 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %78 = load i32, i32* %10, align 4
  %79 = call i32 @xprt_adjust_cwnd(%struct.rpc_xprt* %76, %struct.rpc_task* %77, i32 %78)
  %80 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %81 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %80, i32 0, i32 1
  %82 = call i32 @spin_unlock(i32* %81)
  %83 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %84 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %83, i32 0, i32 0
  %85 = call i32 @spin_lock(i32* %84)
  %86 = load %struct.rpc_task*, %struct.rpc_task** %7, align 8
  %87 = load i32, i32* %10, align 4
  %88 = call i32 @xprt_complete_rqst(%struct.rpc_task* %86, i32 %87)
  %89 = load %struct.sock*, %struct.sock** %5, align 8
  %90 = load i32, i32* @UDP_MIB_INDATAGRAMS, align 4
  %91 = call i32 @__UDPX_INC_STATS(%struct.sock* %89, i32 %90)
  br label %92

92:                                               ; preds = %72, %65
  %93 = load %struct.rpc_rqst*, %struct.rpc_rqst** %8, align 8
  %94 = call i32 @xprt_unpin_rqst(%struct.rpc_rqst* %93)
  br label %95

95:                                               ; preds = %92, %37
  %96 = load %struct.rpc_xprt*, %struct.rpc_xprt** %4, align 8
  %97 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %96, i32 0, i32 0
  %98 = call i32 @spin_unlock(i32* %97)
  br label %99

99:                                               ; preds = %95, %26, %18
  ret void
}

declare dso_local i32 @dprintk(i8*, i32) #1

declare dso_local i32* @skb_header_pointer(%struct.sk_buff*, i32, i32, i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.rpc_rqst* @xprt_lookup_rqst(%struct.rpc_xprt*, i32) #1

declare dso_local i32 @xprt_pin_rqst(%struct.rpc_rqst*) #1

declare dso_local i32 @xprt_update_rtt(%struct.rpc_task*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i64 @csum_partial_copy_to_xdr(%struct.TYPE_2__*, %struct.sk_buff*) #1

declare dso_local i32 @__UDPX_INC_STATS(%struct.sock*, i32) #1

declare dso_local i32 @xprt_adjust_cwnd(%struct.rpc_xprt*, %struct.rpc_task*, i32) #1

declare dso_local i32 @xprt_complete_rqst(%struct.rpc_task*, i32) #1

declare dso_local i32 @xprt_unpin_rqst(%struct.rpc_rqst*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
