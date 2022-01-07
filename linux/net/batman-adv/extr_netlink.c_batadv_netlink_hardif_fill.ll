; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_hardif_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_hardif_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.batadv_priv = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.batadv_hard_iface = type { i64, %struct.TYPE_4__, %struct.net_device* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.net_device = type { i32, i32, i32 }
%struct.netlink_callback = type { i32 }

@batadv_netlink_family = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@BATADV_ATTR_MESH_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFINDEX = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_IFNAME = common dso_local global i32 0, align 4
@BATADV_ATTR_HARD_ADDRESS = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@BATADV_IF_ACTIVE = common dso_local global i64 0, align 8
@BATADV_ATTR_ACTIVE = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@BATADV_ATTR_ELP_INTERVAL = common dso_local global i32 0, align 4
@BATADV_ATTR_THROUGHPUT_OVERRIDE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.batadv_priv*, %struct.batadv_hard_iface*, i32, i32, i32, i32, %struct.netlink_callback*)* @batadv_netlink_hardif_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_netlink_hardif_fill(%struct.sk_buff* %0, %struct.batadv_priv* %1, %struct.batadv_hard_iface* %2, i32 %3, i32 %4, i32 %5, i32 %6, %struct.netlink_callback* %7) #0 {
  %9 = alloca i32, align 4
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca %struct.batadv_priv*, align 8
  %12 = alloca %struct.batadv_hard_iface*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.netlink_callback*, align 8
  %18 = alloca %struct.net_device*, align 8
  %19 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %10, align 8
  store %struct.batadv_priv* %1, %struct.batadv_priv** %11, align 8
  store %struct.batadv_hard_iface* %2, %struct.batadv_hard_iface** %12, align 8
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store %struct.netlink_callback* %7, %struct.netlink_callback** %17, align 8
  %20 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %21 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %20, i32 0, i32 2
  %22 = load %struct.net_device*, %struct.net_device** %21, align 8
  store %struct.net_device* %22, %struct.net_device** %18, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %24 = load i32, i32* %14, align 4
  %25 = load i32, i32* %15, align 4
  %26 = load i32, i32* %16, align 4
  %27 = load i32, i32* %13, align 4
  %28 = call i8* @genlmsg_put(%struct.sk_buff* %23, i32 %24, i32 %25, i32* @batadv_netlink_family, i32 %26, i32 %27)
  store i8* %28, i8** %19, align 8
  %29 = load i8*, i8** %19, align 8
  %30 = icmp ne i8* %29, null
  br i1 %30, label %34, label %31

31:                                               ; preds = %8
  %32 = load i32, i32* @ENOBUFS, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %9, align 4
  br label %101

34:                                               ; preds = %8
  %35 = load %struct.netlink_callback*, %struct.netlink_callback** %17, align 8
  %36 = icmp ne %struct.netlink_callback* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.netlink_callback*, %struct.netlink_callback** %17, align 8
  %39 = load i8*, i8** %19, align 8
  %40 = call i32 @genl_dump_check_consistent(%struct.netlink_callback* %38, i8* %39)
  br label %41

41:                                               ; preds = %37, %34
  %42 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %43 = load i32, i32* @BATADV_ATTR_MESH_IFINDEX, align 4
  %44 = load %struct.batadv_priv*, %struct.batadv_priv** %11, align 8
  %45 = getelementptr inbounds %struct.batadv_priv, %struct.batadv_priv* %44, i32 0, i32 0
  %46 = load %struct.TYPE_3__*, %struct.TYPE_3__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i64 @nla_put_u32(%struct.sk_buff* %42, i32 %43, i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %41
  br label %95

52:                                               ; preds = %41
  %53 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %54 = load i32, i32* @BATADV_ATTR_HARD_IFINDEX, align 4
  %55 = load %struct.net_device*, %struct.net_device** %18, align 8
  %56 = getelementptr inbounds %struct.net_device, %struct.net_device* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = call i64 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %77, label %60

60:                                               ; preds = %52
  %61 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %62 = load i32, i32* @BATADV_ATTR_HARD_IFNAME, align 4
  %63 = load %struct.net_device*, %struct.net_device** %18, align 8
  %64 = getelementptr inbounds %struct.net_device, %struct.net_device* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i64 @nla_put_string(%struct.sk_buff* %61, i32 %62, i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %77, label %68

68:                                               ; preds = %60
  %69 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %70 = load i32, i32* @BATADV_ATTR_HARD_ADDRESS, align 4
  %71 = load i32, i32* @ETH_ALEN, align 4
  %72 = load %struct.net_device*, %struct.net_device** %18, align 8
  %73 = getelementptr inbounds %struct.net_device, %struct.net_device* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = call i64 @nla_put(%struct.sk_buff* %69, i32 %70, i32 %71, i32 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %68, %60, %52
  br label %95

78:                                               ; preds = %68
  %79 = load %struct.batadv_hard_iface*, %struct.batadv_hard_iface** %12, align 8
  %80 = getelementptr inbounds %struct.batadv_hard_iface, %struct.batadv_hard_iface* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = load i64, i64* @BATADV_IF_ACTIVE, align 8
  %83 = icmp eq i64 %81, %82
  br i1 %83, label %84, label %91

84:                                               ; preds = %78
  %85 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %86 = load i32, i32* @BATADV_ATTR_ACTIVE, align 4
  %87 = call i64 @nla_put_flag(%struct.sk_buff* %85, i32 %86)
  %88 = icmp ne i64 %87, 0
  br i1 %88, label %89, label %90

89:                                               ; preds = %84
  br label %95

90:                                               ; preds = %84
  br label %91

91:                                               ; preds = %90, %78
  %92 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %93 = load i8*, i8** %19, align 8
  %94 = call i32 @genlmsg_end(%struct.sk_buff* %92, i8* %93)
  store i32 0, i32* %9, align 4
  br label %101

95:                                               ; preds = %89, %77, %51
  %96 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  %97 = load i8*, i8** %19, align 8
  %98 = call i32 @genlmsg_cancel(%struct.sk_buff* %96, i8* %97)
  %99 = load i32, i32* @EMSGSIZE, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %9, align 4
  br label %101

101:                                              ; preds = %95, %91, %31
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @genl_dump_check_consistent(%struct.netlink_callback*, i8*) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
