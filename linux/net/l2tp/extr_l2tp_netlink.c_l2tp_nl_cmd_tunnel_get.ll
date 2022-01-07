; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_netlink.c_l2tp_nl_cmd_tunnel_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32* }
%struct.l2tp_tunnel = type { i32 }
%struct.net = type { i32 }

@ENOBUFS = common dso_local global i32 0, align 4
@L2TP_ATTR_CONN_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@NLM_F_ACK = common dso_local global i32 0, align 4
@L2TP_CMD_TUNNEL_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @l2tp_nl_cmd_tunnel_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2tp_nl_cmd_tunnel_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.l2tp_tunnel*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.net*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load i32, i32* @ENOBUFS, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %9, align 4
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = call %struct.net* @genl_info_net(%struct.genl_info* %13)
  store %struct.net* %14, %struct.net** %10, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %15, i32 0, i32 2
  %17 = load i32*, i32** %16, align 8
  %18 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %19 = getelementptr inbounds i32, i32* %17, i64 %18
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %9, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = load i64, i64* @L2TP_ATTR_CONN_ID, align 8
  %30 = getelementptr inbounds i32, i32* %28, i64 %29
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @nla_get_u32(i32 %31)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %34 = load i32, i32* @GFP_KERNEL, align 4
  %35 = call %struct.sk_buff* @nlmsg_new(i32 %33, i32 %34)
  store %struct.sk_buff* %35, %struct.sk_buff** %7, align 8
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = icmp ne %struct.sk_buff* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %25
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %9, align 4
  br label %80

41:                                               ; preds = %25
  %42 = load %struct.net*, %struct.net** %10, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net* %42, i32 %43)
  store %struct.l2tp_tunnel* %44, %struct.l2tp_tunnel** %6, align 8
  %45 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %46 = icmp ne %struct.l2tp_tunnel* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %41
  %48 = load i32, i32* @ENODEV, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %9, align 4
  br label %77

50:                                               ; preds = %41
  %51 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load i32, i32* @NLM_F_ACK, align 4
  %59 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %60 = load i32, i32* @L2TP_CMD_TUNNEL_GET, align 4
  %61 = call i32 @l2tp_nl_tunnel_send(%struct.sk_buff* %51, i32 %54, i32 %57, i32 %58, %struct.l2tp_tunnel* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load i32, i32* %9, align 4
  %63 = icmp slt i32 %62, 0
  br i1 %63, label %64, label %65

64:                                               ; preds = %50
  br label %74

65:                                               ; preds = %50
  %66 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %67 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %66)
  %68 = load %struct.net*, %struct.net** %10, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @genlmsg_unicast(%struct.net* %68, %struct.sk_buff* %69, i32 %72)
  store i32 %73, i32* %3, align 4
  br label %82

74:                                               ; preds = %64
  %75 = load %struct.l2tp_tunnel*, %struct.l2tp_tunnel** %6, align 8
  %76 = call i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel* %75)
  br label %77

77:                                               ; preds = %74, %47
  %78 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %79 = call i32 @nlmsg_free(%struct.sk_buff* %78)
  br label %80

80:                                               ; preds = %77, %38, %22
  %81 = load i32, i32* %9, align 4
  store i32 %81, i32* %3, align 4
  br label %82

82:                                               ; preds = %80, %65
  %83 = load i32, i32* %3, align 4
  ret i32 %83
}

declare dso_local %struct.net* @genl_info_net(%struct.genl_info*) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local %struct.l2tp_tunnel* @l2tp_tunnel_get(%struct.net*, i32) #1

declare dso_local i32 @l2tp_nl_tunnel_send(%struct.sk_buff*, i32, i32, i32, %struct.l2tp_tunnel*, i32) #1

declare dso_local i32 @l2tp_tunnel_dec_refcount(%struct.l2tp_tunnel*) #1

declare dso_local i32 @genlmsg_unicast(%struct.net*, %struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
