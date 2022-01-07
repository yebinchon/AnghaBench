; ModuleID = '/home/carl/AnghaBench/linux/net/8021q/extr_vlan_netlink.c_vlan_newlink.c'
source_filename = "/home/carl/AnghaBench/linux/net/8021q/extr_vlan_netlink.c_vlan_newlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.net_device = type { i32, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }
%struct.vlan_dev_priv = type { i32, i32, i32, %struct.net_device* }

@IFLA_VLAN_ID = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [22 x i8] c"VLAN id not specified\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@IFLA_LINK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [19 x i8] c"link not specified\00", align 1
@.str.2 = private unnamed_addr constant [20 x i8] c"link does not exist\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@IFLA_VLAN_PROTOCOL = common dso_local global i64 0, align 8
@ETH_P_8021Q = common dso_local global i32 0, align 4
@IFF_XMIT_DST_RELEASE = common dso_local global i32 0, align 4
@VLAN_FLAG_REORDER_HDR = common dso_local global i32 0, align 4
@VLAN_HLEN = common dso_local global i32 0, align 4
@IFLA_MTU = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*)* @vlan_newlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vlan_newlink(%struct.net* %0, %struct.net_device* %1, %struct.nlattr** %2, %struct.nlattr** %3, %struct.netlink_ext_ack* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.net*, align 8
  %8 = alloca %struct.net_device*, align 8
  %9 = alloca %struct.nlattr**, align 8
  %10 = alloca %struct.nlattr**, align 8
  %11 = alloca %struct.netlink_ext_ack*, align 8
  %12 = alloca %struct.vlan_dev_priv*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %7, align 8
  store %struct.net_device* %1, %struct.net_device** %8, align 8
  store %struct.nlattr** %2, %struct.nlattr*** %9, align 8
  store %struct.nlattr** %3, %struct.nlattr*** %10, align 8
  store %struct.netlink_ext_ack* %4, %struct.netlink_ext_ack** %11, align 8
  %17 = load %struct.net_device*, %struct.net_device** %8, align 8
  %18 = call %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device* %17)
  store %struct.vlan_dev_priv* %18, %struct.vlan_dev_priv** %12, align 8
  %19 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %20 = load i64, i64* @IFLA_VLAN_ID, align 8
  %21 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %19, i64 %20
  %22 = load %struct.nlattr*, %struct.nlattr** %21, align 8
  %23 = icmp ne %struct.nlattr* %22, null
  br i1 %23, label %29, label %24

24:                                               ; preds = %5
  %25 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %26 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %25, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %27 = load i32, i32* @EINVAL, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %158

29:                                               ; preds = %5
  %30 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %31 = load i64, i64* @IFLA_LINK, align 8
  %32 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %30, i64 %31
  %33 = load %struct.nlattr*, %struct.nlattr** %32, align 8
  %34 = icmp ne %struct.nlattr* %33, null
  br i1 %34, label %40, label %35

35:                                               ; preds = %29
  %36 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %37 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %36, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %158

40:                                               ; preds = %29
  %41 = load %struct.net*, %struct.net** %7, align 8
  %42 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %43 = load i64, i64* @IFLA_LINK, align 8
  %44 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %42, i64 %43
  %45 = load %struct.nlattr*, %struct.nlattr** %44, align 8
  %46 = call i32 @nla_get_u32(%struct.nlattr* %45)
  %47 = call %struct.net_device* @__dev_get_by_index(%struct.net* %41, i32 %46)
  store %struct.net_device* %47, %struct.net_device** %13, align 8
  %48 = load %struct.net_device*, %struct.net_device** %13, align 8
  %49 = icmp ne %struct.net_device* %48, null
  br i1 %49, label %55, label %50

50:                                               ; preds = %40
  %51 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %52 = call i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %53 = load i32, i32* @ENODEV, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %6, align 4
  br label %158

55:                                               ; preds = %40
  %56 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %57 = load i64, i64* @IFLA_VLAN_PROTOCOL, align 8
  %58 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %56, i64 %57
  %59 = load %struct.nlattr*, %struct.nlattr** %58, align 8
  %60 = icmp ne %struct.nlattr* %59, null
  br i1 %60, label %61, label %67

61:                                               ; preds = %55
  %62 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %63 = load i64, i64* @IFLA_VLAN_PROTOCOL, align 8
  %64 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %62, i64 %63
  %65 = load %struct.nlattr*, %struct.nlattr** %64, align 8
  %66 = call i32 @nla_get_be16(%struct.nlattr* %65)
  store i32 %66, i32* %15, align 4
  br label %70

67:                                               ; preds = %55
  %68 = load i32, i32* @ETH_P_8021Q, align 4
  %69 = call i32 @htons(i32 %68)
  store i32 %69, i32* %15, align 4
  br label %70

70:                                               ; preds = %67, %61
  %71 = load i32, i32* %15, align 4
  %72 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %73 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %72, i32 0, i32 1
  store i32 %71, i32* %73, align 4
  %74 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %75 = load i64, i64* @IFLA_VLAN_ID, align 8
  %76 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %74, i64 %75
  %77 = load %struct.nlattr*, %struct.nlattr** %76, align 8
  %78 = call i32 @nla_get_u16(%struct.nlattr* %77)
  %79 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %80 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %79, i32 0, i32 0
  store i32 %78, i32* %80, align 8
  %81 = load %struct.net_device*, %struct.net_device** %13, align 8
  %82 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %83 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %82, i32 0, i32 3
  store %struct.net_device* %81, %struct.net_device** %83, align 8
  %84 = load %struct.net_device*, %struct.net_device** %13, align 8
  %85 = getelementptr inbounds %struct.net_device, %struct.net_device* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = load i32, i32* @IFF_XMIT_DST_RELEASE, align 4
  %88 = and i32 %86, %87
  %89 = load %struct.net_device*, %struct.net_device** %8, align 8
  %90 = getelementptr inbounds %struct.net_device, %struct.net_device* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = or i32 %91, %88
  store i32 %92, i32* %90, align 4
  %93 = load i32, i32* @VLAN_FLAG_REORDER_HDR, align 4
  %94 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %95 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %94, i32 0, i32 2
  store i32 %93, i32* %95, align 8
  %96 = load %struct.net_device*, %struct.net_device** %13, align 8
  %97 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %98 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.vlan_dev_priv*, %struct.vlan_dev_priv** %12, align 8
  %101 = getelementptr inbounds %struct.vlan_dev_priv, %struct.vlan_dev_priv* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %104 = call i32 @vlan_check_real_dev(%struct.net_device* %96, i32 %99, i32 %102, %struct.netlink_ext_ack* %103)
  store i32 %104, i32* %16, align 4
  %105 = load i32, i32* %16, align 4
  %106 = icmp slt i32 %105, 0
  br i1 %106, label %107, label %109

107:                                              ; preds = %70
  %108 = load i32, i32* %16, align 4
  store i32 %108, i32* %6, align 4
  br label %158

109:                                              ; preds = %70
  %110 = load %struct.net_device*, %struct.net_device** %13, align 8
  %111 = call i64 @netif_reduces_vlan_mtu(%struct.net_device* %110)
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %109
  %114 = load %struct.net_device*, %struct.net_device** %13, align 8
  %115 = getelementptr inbounds %struct.net_device, %struct.net_device* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load i32, i32* @VLAN_HLEN, align 4
  %118 = sub i32 %116, %117
  br label %123

119:                                              ; preds = %109
  %120 = load %struct.net_device*, %struct.net_device** %13, align 8
  %121 = getelementptr inbounds %struct.net_device, %struct.net_device* %120, i32 0, i32 1
  %122 = load i32, i32* %121, align 4
  br label %123

123:                                              ; preds = %119, %113
  %124 = phi i32 [ %118, %113 ], [ %122, %119 ]
  store i32 %124, i32* %14, align 4
  %125 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %126 = load i64, i64* @IFLA_MTU, align 8
  %127 = getelementptr inbounds %struct.nlattr*, %struct.nlattr** %125, i64 %126
  %128 = load %struct.nlattr*, %struct.nlattr** %127, align 8
  %129 = icmp ne %struct.nlattr* %128, null
  br i1 %129, label %134, label %130

130:                                              ; preds = %123
  %131 = load i32, i32* %14, align 4
  %132 = load %struct.net_device*, %struct.net_device** %8, align 8
  %133 = getelementptr inbounds %struct.net_device, %struct.net_device* %132, i32 0, i32 1
  store i32 %131, i32* %133, align 4
  br label %144

134:                                              ; preds = %123
  %135 = load %struct.net_device*, %struct.net_device** %8, align 8
  %136 = getelementptr inbounds %struct.net_device, %struct.net_device* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = load i32, i32* %14, align 4
  %139 = icmp ugt i32 %137, %138
  br i1 %139, label %140, label %143

140:                                              ; preds = %134
  %141 = load i32, i32* @EINVAL, align 4
  %142 = sub nsw i32 0, %141
  store i32 %142, i32* %6, align 4
  br label %158

143:                                              ; preds = %134
  br label %144

144:                                              ; preds = %143, %130
  %145 = load %struct.net_device*, %struct.net_device** %8, align 8
  %146 = load %struct.nlattr**, %struct.nlattr*** %9, align 8
  %147 = load %struct.nlattr**, %struct.nlattr*** %10, align 8
  %148 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %149 = call i32 @vlan_changelink(%struct.net_device* %145, %struct.nlattr** %146, %struct.nlattr** %147, %struct.netlink_ext_ack* %148)
  store i32 %149, i32* %16, align 4
  %150 = load i32, i32* %16, align 4
  %151 = icmp slt i32 %150, 0
  br i1 %151, label %152, label %154

152:                                              ; preds = %144
  %153 = load i32, i32* %16, align 4
  store i32 %153, i32* %6, align 4
  br label %158

154:                                              ; preds = %144
  %155 = load %struct.net_device*, %struct.net_device** %8, align 8
  %156 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %11, align 8
  %157 = call i32 @register_vlan_dev(%struct.net_device* %155, %struct.netlink_ext_ack* %156)
  store i32 %157, i32* %6, align 4
  br label %158

158:                                              ; preds = %154, %152, %140, %107, %50, %35, %24
  %159 = load i32, i32* %6, align 4
  ret i32 %159
}

declare dso_local %struct.vlan_dev_priv* @vlan_dev_priv(%struct.net_device*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(%struct.netlink_ext_ack*, i8*) #1

declare dso_local %struct.net_device* @__dev_get_by_index(%struct.net*, i32) #1

declare dso_local i32 @nla_get_u32(%struct.nlattr*) #1

declare dso_local i32 @nla_get_be16(%struct.nlattr*) #1

declare dso_local i32 @htons(i32) #1

declare dso_local i32 @nla_get_u16(%struct.nlattr*) #1

declare dso_local i32 @vlan_check_real_dev(%struct.net_device*, i32, i32, %struct.netlink_ext_ack*) #1

declare dso_local i64 @netif_reduces_vlan_mtu(%struct.net_device*) #1

declare dso_local i32 @vlan_changelink(%struct.net_device*, %struct.nlattr**, %struct.nlattr**, %struct.netlink_ext_ack*) #1

declare dso_local i32 @register_vlan_dev(%struct.net_device*, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
