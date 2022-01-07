; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_xmit.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_ppp.c_pppol2tp_xmit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ppp_channel = type { i64 }
%struct.sk_buff = type { i32* }
%struct.sock = type { i32 }
%struct.l2tp_session = type { i32, %struct.l2tp_tunnel* }
%struct.l2tp_tunnel = type { i64 }

@SOCK_DEAD = common dso_local global i32 0, align 4
@PPPOX_CONNECTED = common dso_local global i32 0, align 4
@L2TP_ENCAPTYPE_UDP = common dso_local global i64 0, align 8
@NET_SKB_PAD = common dso_local global i32 0, align 4
@PPP_ALLSTATIONS = common dso_local global i32 0, align 4
@PPP_UI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ppp_channel*, %struct.sk_buff*)* @pppol2tp_xmit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pppol2tp_xmit(%struct.ppp_channel* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ppp_channel*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.l2tp_session*, align 8
  %8 = alloca %struct.l2tp_tunnel*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ppp_channel* %0, %struct.ppp_channel** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %11 = load %struct.ppp_channel*, %struct.ppp_channel** %4, align 8
  %12 = getelementptr inbounds %struct.ppp_channel, %struct.ppp_channel* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = inttoptr i64 %13 to %struct.sock*
  store %struct.sock* %14, %struct.sock** %6, align 8
  %15 = load %struct.sock*, %struct.sock** %6, align 8
  %16 = load i32, i32* @SOCK_DEAD, align 4
  %17 = call i64 @sock_flag(%struct.sock* %15, i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %26, label %19

19:                                               ; preds = %2
  %20 = load %struct.sock*, %struct.sock** %6, align 8
  %21 = getelementptr inbounds %struct.sock, %struct.sock* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @PPPOX_CONNECTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %19, %2
  br label %89

27:                                               ; preds = %19
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock* %28)
  store %struct.l2tp_session* %29, %struct.l2tp_session** %7, align 8
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  %31 = icmp eq %struct.l2tp_session* %30, null
  br i1 %31, label %32, label %33

32:                                               ; preds = %27
  br label %89

33:                                               ; preds = %27
  %34 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  %35 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %34, i32 0, i32 1
  %36 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %35, align 8
  store %struct.l2tp_tunnel* %36, %struct.l2tp_tunnel** %8, align 8
  %37 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %8, align 8
  %38 = getelementptr inbounds %struct.l2tp_tunnel, %struct.l2tp_tunnel* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @L2TP_ENCAPTYPE_UDP, align 8
  %41 = icmp eq i64 %39, %40
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i64 4, i64 0
  %44 = trunc i64 %43 to i32
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* @NET_SKB_PAD, align 4
  %46 = sext i32 %45 to i64
  %47 = add i64 %46, 4
  %48 = load i32, i32* %9, align 4
  %49 = sext i32 %48 to i64
  %50 = add i64 %47, %49
  %51 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  %52 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = sext i32 %53 to i64
  %55 = add i64 %50, %54
  %56 = add i64 %55, 2
  %57 = trunc i64 %56 to i32
  store i32 %57, i32* %10, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call i64 @skb_cow_head(%struct.sk_buff* %58, i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %33
  br label %86

63:                                               ; preds = %33
  %64 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %65 = call i32 @__skb_push(%struct.sk_buff* %64, i32 2)
  %66 = load i32, i32* @PPP_ALLSTATIONS, align 4
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %67, i32 0, i32 0
  %69 = load i32*, i32** %68, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %66, i32* %70, align 4
  %71 = load i32, i32* @PPP_UI, align 4
  %72 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %73 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 1
  store i32 %71, i32* %75, align 4
  %76 = call i32 (...) @local_bh_disable()
  %77 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  %78 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %79 = load %struct.l2tp_session*, %struct.l2tp_session** %7, align 8
  %80 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @l2tp_xmit_skb(%struct.l2tp_session* %77, %struct.sk_buff* %78, i32 %81)
  %83 = call i32 (...) @local_bh_enable()
  %84 = load %struct.sock*, %struct.sock** %6, align 8
  %85 = call i32 @sock_put(%struct.sock* %84)
  store i32 1, i32* %3, align 4
  br label %92

86:                                               ; preds = %62
  %87 = load %struct.sock*, %struct.sock** %6, align 8
  %88 = call i32 @sock_put(%struct.sock* %87)
  br label %89

89:                                               ; preds = %86, %32, %26
  %90 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %91 = call i32 @kfree_skb(%struct.sk_buff* %90)
  store i32 1, i32* %3, align 4
  br label %92

92:                                               ; preds = %89, %63
  %93 = load i32, i32* %3, align 4
  ret i32 %93
}

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local %struct.l2tp_session* @pppol2tp_sock_to_session(%struct.sock*) #1

declare dso_local i64 @skb_cow_head(%struct.sk_buff*, i32) #1

declare dso_local i32 @__skb_push(%struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_disable(...) #1

declare dso_local i32 @l2tp_xmit_skb(%struct.l2tp_session*, %struct.sk_buff*, i32) #1

declare dso_local i32 @local_bh_enable(...) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
