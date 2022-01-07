; ModuleID = '/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_get_options.c'
source_filename = "/home/carl/AnghaBench/linux/net/openvswitch/extr_vport-vxlan.c_vxlan_get_options.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vport = type { i32 }
%struct.sk_buff = type { i32 }
%struct.vxlan_dev = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.nlattr = type { i32 }

@OVS_TUNNEL_ATTR_DST_PORT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@VXLAN_F_GBP = common dso_local global i32 0, align 4
@OVS_TUNNEL_ATTR_EXTENSION = common dso_local global i32 0, align 4
@OVS_VXLAN_EXT_GBP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vport*, %struct.sk_buff*)* @vxlan_get_options to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vxlan_get_options(%struct.vport* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.vport*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.vxlan_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.nlattr*, align 8
  store %struct.vport* %0, %struct.vport** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %9 = load %struct.vport*, %struct.vport** %4, align 8
  %10 = getelementptr inbounds %struct.vport, %struct.vport* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.vxlan_dev* @netdev_priv(i32 %11)
  store %struct.vxlan_dev* %12, %struct.vxlan_dev** %6, align 8
  %13 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %14 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  store i32 %16, i32* %7, align 4
  %17 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %18 = load i32, i32* @OVS_TUNNEL_ATTR_DST_PORT, align 4
  %19 = load i32, i32* %7, align 4
  %20 = call i32 @ntohs(i32 %19)
  %21 = call i64 @nla_put_u16(%struct.sk_buff* %17, i32 %18, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %2
  %24 = load i32, i32* @EMSGSIZE, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %64

26:                                               ; preds = %2
  %27 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %28 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @VXLAN_F_GBP, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %63

34:                                               ; preds = %26
  %35 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %36 = load i32, i32* @OVS_TUNNEL_ATTR_EXTENSION, align 4
  %37 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %35, i32 %36)
  store %struct.nlattr* %37, %struct.nlattr** %8, align 8
  %38 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %39 = icmp ne %struct.nlattr* %38, null
  br i1 %39, label %43, label %40

40:                                               ; preds = %34
  %41 = load i32, i32* @EMSGSIZE, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %64

43:                                               ; preds = %34
  %44 = load %struct.vxlan_dev*, %struct.vxlan_dev** %6, align 8
  %45 = getelementptr inbounds %struct.vxlan_dev, %struct.vxlan_dev* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @VXLAN_F_GBP, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %59

51:                                               ; preds = %43
  %52 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %53 = load i32, i32* @OVS_VXLAN_EXT_GBP, align 4
  %54 = call i64 @nla_put_flag(%struct.sk_buff* %52, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %51
  %57 = load i32, i32* @EMSGSIZE, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %3, align 4
  br label %64

59:                                               ; preds = %51, %43
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load %struct.nlattr*, %struct.nlattr** %8, align 8
  %62 = call i32 @nla_nest_end(%struct.sk_buff* %60, %struct.nlattr* %61)
  br label %63

63:                                               ; preds = %59, %26
  store i32 0, i32* %3, align 4
  br label %64

64:                                               ; preds = %63, %56, %40, %23
  %65 = load i32, i32* %3, align 4
  ret i32 %65
}

declare dso_local %struct.vxlan_dev* @netdev_priv(i32) #1

declare dso_local i64 @nla_put_u16(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @ntohs(i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
