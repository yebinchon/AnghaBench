; ModuleID = '/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_send_iface.c'
source_filename = "/home/carl/AnghaBench/linux/net/ieee802154/extr_nl802154.c_nl802154_send_iface.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.cfg802154_registered_device = type { i32, i32 }
%struct.wpan_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.net_device* }
%struct.net_device = type { i32, i32 }

@NL802154_CMD_NEW_INTERFACE = common dso_local global i32 0, align 4
@NL802154_ATTR_IFINDEX = common dso_local global i32 0, align 4
@NL802154_ATTR_IFNAME = common dso_local global i32 0, align 4
@NL802154_ATTR_WPAN_PHY = common dso_local global i32 0, align 4
@NL802154_ATTR_IFTYPE = common dso_local global i32 0, align 4
@NL802154_ATTR_WPAN_DEV = common dso_local global i32 0, align 4
@NL802154_ATTR_PAD = common dso_local global i32 0, align 4
@NL802154_ATTR_GENERATION = common dso_local global i32 0, align 4
@cfg802154_rdev_list_generation = common dso_local global i32 0, align 4
@NL802154_ATTR_EXTENDED_ADDR = common dso_local global i32 0, align 4
@NL802154_ATTR_SHORT_ADDR = common dso_local global i32 0, align 4
@NL802154_ATTR_PAN_ID = common dso_local global i32 0, align 4
@NL802154_ATTR_MAX_FRAME_RETRIES = common dso_local global i32 0, align 4
@NL802154_ATTR_MAX_BE = common dso_local global i32 0, align 4
@NL802154_ATTR_MAX_CSMA_BACKOFFS = common dso_local global i32 0, align 4
@NL802154_ATTR_MIN_BE = common dso_local global i32 0, align 4
@NL802154_ATTR_LBT_MODE = common dso_local global i32 0, align 4
@NL802154_ATTR_ACKREQ_DEFAULT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, i32, i32, %struct.cfg802154_registered_device*, %struct.wpan_dev*)* @nl802154_send_iface to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl802154_send_iface(%struct.sk_buff* %0, i32 %1, i32 %2, i32 %3, %struct.cfg802154_registered_device* %4, %struct.wpan_dev* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.cfg802154_registered_device*, align 8
  %13 = alloca %struct.wpan_dev*, align 8
  %14 = alloca %struct.net_device*, align 8
  %15 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store %struct.cfg802154_registered_device* %4, %struct.cfg802154_registered_device** %12, align 8
  store %struct.wpan_dev* %5, %struct.wpan_dev** %13, align 8
  %16 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %17 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %16, i32 0, i32 10
  %18 = load %struct.net_device*, %struct.net_device** %17, align 8
  store %struct.net_device* %18, %struct.net_device** %14, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %11, align 4
  %23 = load i32, i32* @NL802154_CMD_NEW_INTERFACE, align 4
  %24 = call i8* @nl802154hdr_put(%struct.sk_buff* %19, i32 %20, i32 %21, i32 %22, i32 %23)
  store i8* %24, i8** %15, align 8
  %25 = load i8*, i8** %15, align 8
  %26 = icmp ne i8* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %6
  store i32 -1, i32* %7, align 4
  br label %171

28:                                               ; preds = %6
  %29 = load %struct.net_device*, %struct.net_device** %14, align 8
  %30 = icmp ne %struct.net_device* %29, null
  br i1 %30, label %31, label %48

31:                                               ; preds = %28
  %32 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %33 = load i32, i32* @NL802154_ATTR_IFINDEX, align 4
  %34 = load %struct.net_device*, %struct.net_device** %14, align 8
  %35 = getelementptr inbounds %struct.net_device, %struct.net_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i64 @nla_put_u32(%struct.sk_buff* %32, i32 %33, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %47, label %39

39:                                               ; preds = %31
  %40 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %41 = load i32, i32* @NL802154_ATTR_IFNAME, align 4
  %42 = load %struct.net_device*, %struct.net_device** %14, align 8
  %43 = getelementptr inbounds %struct.net_device, %struct.net_device* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @nla_put_string(%struct.sk_buff* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39, %31
  br label %165

48:                                               ; preds = %39, %28
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load i32, i32* @NL802154_ATTR_WPAN_PHY, align 4
  %51 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %12, align 8
  %52 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @nla_put_u32(%struct.sk_buff* %49, i32 %50, i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %83, label %56

56:                                               ; preds = %48
  %57 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %58 = load i32, i32* @NL802154_ATTR_IFTYPE, align 4
  %59 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %60 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i64 @nla_put_u32(%struct.sk_buff* %57, i32 %58, i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %83, label %64

64:                                               ; preds = %56
  %65 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %66 = load i32, i32* @NL802154_ATTR_WPAN_DEV, align 4
  %67 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %68 = call i32 @wpan_dev_id(%struct.wpan_dev* %67)
  %69 = load i32, i32* @NL802154_ATTR_PAD, align 4
  %70 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %65, i32 %66, i32 %68, i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %83, label %72

72:                                               ; preds = %64
  %73 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %74 = load i32, i32* @NL802154_ATTR_GENERATION, align 4
  %75 = load %struct.cfg802154_registered_device*, %struct.cfg802154_registered_device** %12, align 8
  %76 = getelementptr inbounds %struct.cfg802154_registered_device, %struct.cfg802154_registered_device* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* @cfg802154_rdev_list_generation, align 4
  %79 = shl i32 %78, 2
  %80 = xor i32 %77, %79
  %81 = call i64 @nla_put_u32(%struct.sk_buff* %73, i32 %74, i32 %80)
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %72, %64, %56, %48
  br label %165

84:                                               ; preds = %72
  %85 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %86 = load i32, i32* @NL802154_ATTR_EXTENDED_ADDR, align 4
  %87 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %88 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %87, i32 0, i32 9
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* @NL802154_ATTR_PAD, align 4
  %91 = call i64 @nla_put_le64(%struct.sk_buff* %85, i32 %86, i32 %89, i32 %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %109, label %93

93:                                               ; preds = %84
  %94 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %95 = load i32, i32* @NL802154_ATTR_SHORT_ADDR, align 4
  %96 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %97 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %96, i32 0, i32 8
  %98 = load i32, i32* %97, align 8
  %99 = call i64 @nla_put_le16(%struct.sk_buff* %94, i32 %95, i32 %98)
  %100 = icmp ne i64 %99, 0
  br i1 %100, label %109, label %101

101:                                              ; preds = %93
  %102 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %103 = load i32, i32* @NL802154_ATTR_PAN_ID, align 4
  %104 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %105 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %104, i32 0, i32 7
  %106 = load i32, i32* %105, align 4
  %107 = call i64 @nla_put_le16(%struct.sk_buff* %102, i32 %103, i32 %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %101, %93, %84
  br label %165

110:                                              ; preds = %101
  %111 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %112 = load i32, i32* @NL802154_ATTR_MAX_FRAME_RETRIES, align 4
  %113 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %114 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %113, i32 0, i32 6
  %115 = load i32, i32* %114, align 8
  %116 = call i64 @nla_put_s8(%struct.sk_buff* %111, i32 %112, i32 %115)
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %142, label %118

118:                                              ; preds = %110
  %119 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %120 = load i32, i32* @NL802154_ATTR_MAX_BE, align 4
  %121 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %122 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %121, i32 0, i32 5
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @nla_put_u8(%struct.sk_buff* %119, i32 %120, i32 %123)
  %125 = icmp ne i64 %124, 0
  br i1 %125, label %142, label %126

126:                                              ; preds = %118
  %127 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %128 = load i32, i32* @NL802154_ATTR_MAX_CSMA_BACKOFFS, align 4
  %129 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %130 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = call i64 @nla_put_u8(%struct.sk_buff* %127, i32 %128, i32 %131)
  %133 = icmp ne i64 %132, 0
  br i1 %133, label %142, label %134

134:                                              ; preds = %126
  %135 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %136 = load i32, i32* @NL802154_ATTR_MIN_BE, align 4
  %137 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %138 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %137, i32 0, i32 3
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @nla_put_u8(%struct.sk_buff* %135, i32 %136, i32 %139)
  %141 = icmp ne i64 %140, 0
  br i1 %141, label %142, label %143

142:                                              ; preds = %134, %126, %118, %110
  br label %165

143:                                              ; preds = %134
  %144 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %145 = load i32, i32* @NL802154_ATTR_LBT_MODE, align 4
  %146 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %147 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %146, i32 0, i32 2
  %148 = load i32, i32* %147, align 8
  %149 = call i64 @nla_put_u8(%struct.sk_buff* %144, i32 %145, i32 %148)
  %150 = icmp ne i64 %149, 0
  br i1 %150, label %151, label %152

151:                                              ; preds = %143
  br label %165

152:                                              ; preds = %143
  %153 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %154 = load i32, i32* @NL802154_ATTR_ACKREQ_DEFAULT, align 4
  %155 = load %struct.wpan_dev*, %struct.wpan_dev** %13, align 8
  %156 = getelementptr inbounds %struct.wpan_dev, %struct.wpan_dev* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @nla_put_u8(%struct.sk_buff* %153, i32 %154, i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %161

160:                                              ; preds = %152
  br label %165

161:                                              ; preds = %152
  %162 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %163 = load i8*, i8** %15, align 8
  %164 = call i32 @genlmsg_end(%struct.sk_buff* %162, i8* %163)
  store i32 0, i32* %7, align 4
  br label %171

165:                                              ; preds = %160, %151, %142, %109, %83, %47
  %166 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %167 = load i8*, i8** %15, align 8
  %168 = call i32 @genlmsg_cancel(%struct.sk_buff* %166, i8* %167)
  %169 = load i32, i32* @EMSGSIZE, align 4
  %170 = sub nsw i32 0, %169
  store i32 %170, i32* %7, align 4
  br label %171

171:                                              ; preds = %165, %161, %27
  %172 = load i32, i32* %7, align 4
  ret i32 %172
}

declare dso_local i8* @nl802154hdr_put(%struct.sk_buff*, i32, i32, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @wpan_dev_id(%struct.wpan_dev*) #1

declare dso_local i64 @nla_put_le64(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i64 @nla_put_le16(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_s8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
