; ModuleID = '/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ackinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/rxrpc/extr_input.c_rxrpc_input_ackinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rxrpc_call = type { i32, i32, i32, %struct.rxrpc_peer* }
%struct.rxrpc_peer = type { i32, i64, i32, i64 }
%struct.sk_buff = type { i32 }
%struct.rxrpc_ackinfo = type { i32, i32, i32, i32 }
%struct.rxrpc_skb_priv = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [48 x i8] c"Rx ACK %%%u Info { rx=%u max=%u rwin=%u jm=%u }\00", align 1
@RXRPC_RXTX_BUFF_SIZE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [24 x i8] c"Net MTU %u (maxdata %u)\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rxrpc_call*, %struct.sk_buff*, %struct.rxrpc_ackinfo*)* @rxrpc_input_ackinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rxrpc_input_ackinfo(%struct.rxrpc_call* %0, %struct.sk_buff* %1, %struct.rxrpc_ackinfo* %2) #0 {
  %4 = alloca %struct.rxrpc_call*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.rxrpc_ackinfo*, align 8
  %7 = alloca %struct.rxrpc_skb_priv*, align 8
  %8 = alloca %struct.rxrpc_peer*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.rxrpc_call* %0, %struct.rxrpc_call** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store %struct.rxrpc_ackinfo* %2, %struct.rxrpc_ackinfo** %6, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff* %12)
  store %struct.rxrpc_skb_priv* %13, %struct.rxrpc_skb_priv** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %15 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ntohl(i32 %16)
  store i32 %17, i32* %11, align 4
  %18 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %19 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %18, i32 0, i32 0
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %23 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ntohl(i32 %24)
  %26 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %27 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @ntohl(i32 %28)
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %32 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ntohl(i32 %33)
  %35 = call i32 @_proto(i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %25, i32 %29, i32 %30, i32 %34)
  %36 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %37 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = load i32, i32* %11, align 4
  %40 = icmp ne i32 %38, %39
  br i1 %40, label %41, label %71

41:                                               ; preds = %3
  %42 = load i32, i32* %11, align 4
  %43 = load i32, i32* @RXRPC_RXTX_BUFF_SIZE, align 4
  %44 = sub nsw i32 %43, 1
  %45 = icmp sgt i32 %42, %44
  br i1 %45, label %46, label %49

46:                                               ; preds = %41
  %47 = load i32, i32* @RXRPC_RXTX_BUFF_SIZE, align 4
  %48 = sub nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  br label %49

49:                                               ; preds = %46, %41
  %50 = load i32, i32* %11, align 4
  %51 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %52 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp sgt i32 %50, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %49
  store i32 1, i32* %10, align 4
  br label %56

56:                                               ; preds = %55, %49
  %57 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %58 = load %struct.rxrpc_skb_priv*, %struct.rxrpc_skb_priv** %7, align 8
  %59 = getelementptr inbounds %struct.rxrpc_skb_priv, %struct.rxrpc_skb_priv* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %63 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @ntohl(i32 %64)
  %66 = load i32, i32* %10, align 4
  %67 = call i32 @trace_rxrpc_rx_rwind_change(%struct.rxrpc_call* %57, i32 %61, i32 %65, i32 %66)
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %70 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %69, i32 0, i32 0
  store i32 %68, i32* %70, align 8
  br label %71

71:                                               ; preds = %56, %3
  %72 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %73 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = load i32, i32* %11, align 4
  %76 = icmp sgt i32 %74, %75
  br i1 %76, label %77, label %81

77:                                               ; preds = %71
  %78 = load i32, i32* %11, align 4
  %79 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %80 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %79, i32 0, i32 1
  store i32 %78, i32* %80, align 4
  br label %81

81:                                               ; preds = %77, %71
  %82 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %83 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @ntohl(i32 %84)
  %86 = load %struct.rxrpc_ackinfo*, %struct.rxrpc_ackinfo** %6, align 8
  %87 = getelementptr inbounds %struct.rxrpc_ackinfo, %struct.rxrpc_ackinfo* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i32 @ntohl(i32 %88)
  %90 = call i32 @min(i32 %85, i32 %89)
  store i32 %90, i32* %9, align 4
  %91 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %92 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %91, i32 0, i32 3
  %93 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %92, align 8
  store %struct.rxrpc_peer* %93, %struct.rxrpc_peer** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %96 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp ult i32 %94, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %81
  %100 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %101 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %100, i32 0, i32 2
  %102 = call i32 @spin_lock_bh(i32* %101)
  %103 = load i32, i32* %9, align 4
  %104 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %105 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %104, i32 0, i32 0
  store i32 %103, i32* %105, align 8
  %106 = load i32, i32* %9, align 4
  %107 = zext i32 %106 to i64
  %108 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %109 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %108, i32 0, i32 3
  %110 = load i64, i64* %109, align 8
  %111 = add nsw i64 %107, %110
  %112 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %113 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %112, i32 0, i32 1
  store i64 %111, i64* %113, align 8
  %114 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %115 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %114, i32 0, i32 2
  %116 = call i32 @spin_unlock_bh(i32* %115)
  %117 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %118 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %117, i32 0, i32 1
  %119 = load i64, i64* %118, align 8
  %120 = load %struct.rxrpc_peer*, %struct.rxrpc_peer** %8, align 8
  %121 = getelementptr inbounds %struct.rxrpc_peer, %struct.rxrpc_peer* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 8
  %123 = call i32 @_net(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.1, i64 0, i64 0), i64 %119, i32 %122)
  br label %124

124:                                              ; preds = %99, %81
  %125 = load i32, i32* %10, align 4
  %126 = icmp ne i32 %125, 0
  br i1 %126, label %127, label %131

127:                                              ; preds = %124
  %128 = load %struct.rxrpc_call*, %struct.rxrpc_call** %4, align 8
  %129 = getelementptr inbounds %struct.rxrpc_call, %struct.rxrpc_call* %128, i32 0, i32 2
  %130 = call i32 @wake_up(i32* %129)
  br label %131

131:                                              ; preds = %127, %124
  ret void
}

declare dso_local %struct.rxrpc_skb_priv* @rxrpc_skb(%struct.sk_buff*) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @_proto(i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @trace_rxrpc_rx_rwind_change(%struct.rxrpc_call*, i32, i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @_net(i8*, i64, i32) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
