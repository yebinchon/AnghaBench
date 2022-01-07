; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.l2tp_tunnel = type { i32 }
%struct.net = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@L2TP_CMD_TUNNEL_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @l2tp_nl_cmd_tunnel_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_tunnel_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.l2tp_tunnel*, align 8
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  store i32 %13, i32* %5, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call %struct.net* @sock_net(i32 %16)
  store %struct.net* %17, %struct.net** %7, align 8
  br label %18

18:                                               ; preds = %47, %2
  %19 = load %struct.net*, %struct.net** %7, align 8
  %20 = load i32, i32* %5, align 4
  %21 = call %struct.l2tp_tunnel* @l2tp_tunnel_get_nth(%struct.net* %19, i32 %20)
  store %struct.l2tp_tunnel* %21, %struct.l2tp_tunnel** %6, align 8
  %22 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %23 = icmp eq %struct.l2tp_tunnel* %22, null
  br i1 %23, label %24, label %25

24:                                               ; preds = %18
  br label %52

25:                                               ; preds = %18
  %26 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %27 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %28 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 8
  %30 = call i32 @NETLINK_CB(i32 %29)
  %31 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  store i32 %30, i32* %31, align 4
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %8, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %35 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %34, i32 0, i32 1
  %36 = load %struct.TYPE_3__*, %struct.TYPE_3__** %35, align 8
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @NLM_F_MULTI, align 4
  %40 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %41 = load i32, i32* @L2TP_CMD_TUNNEL_GET, align 4
  %42 = call i64 @l2tp_nl_tunnel_send(%struct.sk_buff* %26, i32 %33, i32 %38, i32 %39, %struct.l2tp_tunnel* %40, i32 %41)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %25
  %45 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %46 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %45)
  br label %52

47:                                               ; preds = %25
  %48 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %49 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %48)
  %50 = load i32, i32* %5, align 4
  %51 = add nsw i32 %50, 1
  store i32 %51, i32* %5, align 4
  br label %18

52:                                               ; preds = %44, %24
  %53 = load i32, i32* %5, align 4
  %54 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %55 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %54, i32 0, i32 0
  %56 = load i32*, i32** %55, align 8
  %57 = getelementptr inbounds i32, i32* %56, i64 0
  store i32 %53, i32* %57, align 4
  %58 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %59 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  ret i32 %60
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get_nth(%struct.net*, i32) #1

declare dso_local i64 @l2tp_nl_tunnel_send(%struct.sk_buff*, i32, i32, i32, %struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
