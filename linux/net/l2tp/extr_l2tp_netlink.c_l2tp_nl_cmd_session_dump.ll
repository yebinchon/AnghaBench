; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_dump.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_session_dump.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.netlink_callback = type { i32*, %struct.TYPE_3__*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.net = type { i32 }
%struct.l2tp_session = type { i32 }
%struct.l2tp_tunnel = type { i32 }
%struct.TYPE_4__ = type { i32 }

@NLM_F_MULTI = common dso_local global i32 0, align 4
@L2TP_CMD_SESSION_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @l2tp_nl_cmd_session_dump to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_session_dump(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.netlink_callback*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.l2tp_session*, align 8
  %7 = alloca %struct.l2tp_tunnel*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %4, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %12 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call %struct.net* @sock_net(i32 %13)
  store %struct.net* %14, %struct.net** %5, align 8
  store %struct.l2tp_tunnel* null, %struct.l2tp_tunnel** %7, align 8
  %15 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %16 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %8, align 4
  %20 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %21 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  %23 = getelementptr inbounds i32, i32* %22, i64 1
  %24 = load i32, i32* %23, align 4
  store i32 %24, i32* %9, align 4
  br label %25

25:                                               ; preds = %71, %42, %2
  %26 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %7, align 8
  %27 = icmp eq %struct.l2tp_tunnel* %26, null
  br i1 %27, label %28, label %36

28:                                               ; preds = %25
  %29 = load %struct.net*, %struct.net** %5, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call %struct.l2tp_tunnel* @l2tp_tunnel_get_nth(%struct.net* %29, i32 %30)
  store %struct.l2tp_tunnel* %31, %struct.l2tp_tunnel** %7, align 8
  %32 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %7, align 8
  %33 = icmp eq %struct.l2tp_tunnel* %32, null
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %77

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %25
  %37 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %7, align 8
  %38 = load i32, i32* %9, align 4
  %39 = call %struct.l2tp_session* @l2tp_session_get_nth(%struct.l2tp_tunnel* %37, i32 %38)
  store %struct.l2tp_session* %39, %struct.l2tp_session** %6, align 8
  %40 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %41 = icmp eq %struct.l2tp_session* %40, null
  br i1 %41, label %42, label %47

42:                                               ; preds = %36
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, 1
  store i32 %44, i32* %8, align 4
  %45 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %7, align 8
  %46 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %45)
  store %struct.l2tp_tunnel* null, %struct.l2tp_tunnel** %7, align 8
  store i32 0, i32* %9, align 4
  br label %25

47:                                               ; preds = %36
  %48 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %49 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %50 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %49, i32 0, i32 2
  %51 = load i32, i32* %50, align 8
  %52 = call i32 @NETLINK_CB(i32 %51)
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  store i32 %52, i32* %53, align 4
  %54 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %10, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %57 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %56, i32 0, i32 1
  %58 = load %struct.TYPE_3__*, %struct.TYPE_3__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* @NLM_F_MULTI, align 4
  %62 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %63 = load i32, i32* @L2TP_CMD_SESSION_GET, align 4
  %64 = call i64 @l2tp_nl_session_send(%struct.sk_buff* %48, i32 %55, i32 %60, i32 %61, %struct.l2tp_session* %62, i32 %63)
  %65 = icmp slt i64 %64, 0
  br i1 %65, label %66, label %71

66:                                               ; preds = %47
  %67 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %68 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %67)
  %69 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %7, align 8
  %70 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %69)
  br label %76

71:                                               ; preds = %47
  %72 = load %struct.l2tp_session*, %struct.l2tp_session** %6, align 8
  %73 = call i32 @l2tp_session_dec_refcount(%struct.l2tp_session* %72)
  %74 = load i32, i32* %9, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %9, align 4
  br label %25

76:                                               ; preds = %66
  br label %77

77:                                               ; preds = %76, %34
  %78 = load i32, i32* %8, align 4
  %79 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %80 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  %82 = getelementptr inbounds i32, i32* %81, i64 0
  store i32 %78, i32* %82, align 4
  %83 = load i32, i32* %9, align 4
  %84 = load %struct.netlink_callback*, %struct.netlink_callback** %4, align 8
  %85 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 1
  store i32 %83, i32* %87, align 4
  %88 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %89 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  ret i32 %90
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get_nth(%struct.net*, i32) #1

declare dso_local %struct.l2tp_session* @l2tp_session_get_nth(%struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i64 @l2tp_nl_session_send(%struct.sk_buff*, i32, i32, i32, %struct.l2tp_session*, i32) #1

declare dso_local i32 @NETLINK_CB(i32) #1

declare dso_local i32 @l2tp_session_dec_refcount(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
