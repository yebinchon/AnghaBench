; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_sendmsg.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_sendmsg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { %struct.sock* }
%struct.sock = type { i32 }
%struct.msghdr = type { i32 }
%struct.sk_buff = type { i32* }
%struct.l2tp_session = type { i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64 }

@ENOTCONN = common dso_local global i32 0, align 4
@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@EBADF = common dso_local global i32 0, align 4
@L2TP_ENCAPTYPE_UDP = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@NET_SKB_PAD = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@PPP_ALLSTATIONS = common dso_local global i32 0, align 4
@PPP_UI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.socket*, %struct.msghdr*, i64)* @pppol2tp_sendmsg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_sendmsg(%struct.socket* %0, %struct.msghdr* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.socket*, align 8
  %6 = alloca %struct.msghdr*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.sock*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.l2tp_session*, align 8
  %12 = alloca %struct.l2tp_tunnel*, align 8
  %13 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %5, align 8
  store %struct.msghdr* %1, %struct.msghdr** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.socket*, %struct.socket** %5, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 0
  %16 = load %struct.sock*, %struct.sock** %15, align 8
  store %struct.sock* %16, %struct.sock** %8, align 8
  %17 = load i32, i32* @ENOTCONN, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %10, align 4
  %19 = load %struct.sock*, %struct.sock** %8, align 8
  %20 = load i32, i32* @SOCK_DEAD, align 4
  %21 = call i64 @sock_flag(%struct.sock* %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %3
  %24 = load %struct.sock*, %struct.sock** %8, align 8
  %25 = getelementptr inbounds %struct.sock, %struct.sock* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* @PPPOX_CONNECTED, align 4
  %28 = and i32 %26, %27
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %23, %3
  br label %126

31:                                               ; preds = %23
  %32 = load i32, i32* @EBADF, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %10, align 4
  %34 = load %struct.sock*, %struct.sock** %8, align 8
  %35 = call %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock* %34)
  store %struct.l2tp_session* %35, %struct.l2tp_session** %11, align 8
  %36 = load %struct.l2tp_session*, %struct.l2tp_session** %11, align 8
  %37 = icmp eq %struct.l2tp_session* %36, null
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %126

39:                                               ; preds = %31
  %40 = load %struct.l2tp_session*, %struct.l2tp_session** %11, align 8
  %41 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %40, i32 0, i32 1
  %42 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %41, align 8
  store %struct.l2tp_tunnel* %42, %struct.l2tp_tunnel** %12, align 8
  %43 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %12, align 8
  %44 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @L2TP_ENCAPTYPE_UDP, align 8
  %47 = icmp eq i64 %45, %46
  %48 = zext i1 %47 to i64
  %49 = select i1 %47, i64 4, i64 0
  %50 = trunc i64 %49 to i32
  store i32 %50, i32* %13, align 4
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %10, align 4
  %53 = load %struct.sock*, %struct.sock** %8, align 8
  %54 = load i32, i32* @NET_SKB_PAD, align 4
  %55 = sext i32 %54 to i64
  %56 = add i64 %55, 4
  %57 = load i32, i32* %13, align 4
  %58 = sext i32 %57 to i64
  %59 = add i64 %56, %58
  %60 = load %struct.l2tp_session*, %struct.l2tp_session** %11, align 8
  %61 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = add i64 %59, %63
  %65 = add i64 %64, 2
  %66 = load i64, i64* %7, align 8
  %67 = add i64 %65, %66
  %68 = trunc i64 %67 to i32
  %69 = load i32, i32* @GFP_KERNEL, align 4
  %70 = call %struct.sk_buff* @sock_wmalloc(%struct.sock* %53, i32 %68, i32 0, i32 %69)
  store %struct.sk_buff* %70, %struct.sk_buff** %9, align 8
  %71 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %74, label %73

73:                                               ; preds = %39
  br label %123

74:                                               ; preds = %39
  %75 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %76 = load i32, i32* @NET_SKB_PAD, align 4
  %77 = call i32 @skb_reserve(%struct.sk_buff* %75, i32 %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %79 = call i32 @skb_reset_network_header(%struct.sk_buff* %78)
  %80 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %81 = call i32 @skb_reserve(%struct.sk_buff* %80, i32 4)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %83 = call i32 @skb_reset_transport_header(%struct.sk_buff* %82)
  %84 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %85 = load i32, i32* %13, align 4
  %86 = call i32 @skb_reserve(%struct.sk_buff* %84, i32 %85)
  %87 = load i32, i32* @PPP_ALLSTATIONS, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 0
  store i32 %87, i32* %91, align 4
  %92 = load i32, i32* @PPP_UI, align 4
  %93 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %94 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %93, i32 0, i32 0
  %95 = load i32*, i32** %94, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 1
  store i32 %92, i32* %96, align 4
  %97 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %98 = call i32 @skb_put(%struct.sk_buff* %97, i64 2)
  %99 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %100 = load i64, i64* %7, align 8
  %101 = call i32 @skb_put(%struct.sk_buff* %99, i64 %100)
  %102 = load %struct.msghdr*, %struct.msghdr** %6, align 8
  %103 = load i64, i64* %7, align 8
  %104 = call i32 @memcpy_from_msg(i32 %101, %struct.msghdr* %102, i64 %103)
  store i32 %104, i32* %10, align 4
  %105 = load i32, i32* %10, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %110

107:                                              ; preds = %74
  %108 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %109 = call i32 @kfree_skb(%struct.sk_buff* %108)
  br label %123

110:                                              ; preds = %74
  %111 = call i32 (...) @local_bh_disable()
  %112 = load %struct.l2tp_session*, %struct.l2tp_session** %11, align 8
  %113 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %114 = load %struct.l2tp_session*, %struct.l2tp_session** %11, align 8
  %115 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 8
  %117 = call i32 @l2tp_xmit_skb(%struct.l2tp_session* %112, %struct.sk_buff* %113, i32 %116)
  %118 = call i32 (...) @local_bh_enable()
  %119 = load %struct.sock*, %struct.sock** %8, align 8
  %120 = call i32 @sock_put(%struct.sock* %119)
  %121 = load i64, i64* %7, align 8
  %122 = trunc i64 %121 to i32
  store i32 %122, i32* %4, align 4
  br label %128

123:                                              ; preds = %107, %73
  %124 = load %struct.sock*, %struct.sock** %8, align 8
  %125 = call i32 @sock_put(%struct.sock* %124)
  br label %126

126:                                              ; preds = %123, %38, %30
  %127 = load i32, i32* %10, align 4
  store i32 %127, i32* %4, align 4
  br label %128

128:                                              ; preds = %126, %110
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock*) #1

declare dso_local %struct.sk_buff* @sock_wmalloc(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i32 @skb_reset_network_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_reset_transport_header(%struct.sk_buff*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @memcpy_from_msg(i32, %struct.msghdr*, i64) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @l2tp_xmit_skb(%struct.l2tp_session*, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
