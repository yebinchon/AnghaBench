; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_write_channel_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-netlink.c_ncsi_write_channel_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ncsi_dev_priv = type { i32 }
%struct.ncsi_channel = type { i64, %struct.ncsi_channel_vlan_filter, %struct.TYPE_4__, %struct.TYPE_3__*, %struct.ncsi_channel_mode*, i32 }
%struct.ncsi_channel_vlan_filter = type { i32, i64*, i32 }
%struct.TYPE_4__ = type { i32, i32, i32 }
%struct.TYPE_3__ = type { %struct.ncsi_channel* }
%struct.ncsi_channel_mode = type { i32* }
%struct.nlattr = type { i32 }

@NCSI_CHANNEL_ATTR_ID = common dso_local global i32 0, align 4
@NCSI_MODE_LINK = common dso_local global i64 0, align 8
@NCSI_CHANNEL_ATTR_LINK_STATE = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ACTIVE = common dso_local global i64 0, align 8
@NCSI_CHANNEL_ATTR_ACTIVE = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_FORCED = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_VERSION_MAJOR = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_VERSION_MINOR = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_VERSION_STR = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_VLAN_LIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@NCSI_CHANNEL_ATTR_VLAN_ID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ncsi_dev_priv*, %struct.ncsi_channel*)* @ncsi_write_channel_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_write_channel_info(%struct.sk_buff* %0, %struct.ncsi_dev_priv* %1, %struct.ncsi_channel* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.ncsi_dev_priv*, align 8
  %7 = alloca %struct.ncsi_channel*, align 8
  %8 = alloca %struct.ncsi_channel_vlan_filter*, align 8
  %9 = alloca %struct.ncsi_channel_mode*, align 8
  %10 = alloca %struct.nlattr*, align 8
  %11 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.ncsi_dev_priv* %1, %struct.ncsi_dev_priv** %6, align 8
  store %struct.ncsi_channel* %2, %struct.ncsi_channel** %7, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = load i32, i32* @NCSI_CHANNEL_ATTR_ID, align 4
  %14 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %15 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %14, i32 0, i32 5
  %16 = load i32, i32* %15, align 8
  %17 = call i32 @nla_put_u32(%struct.sk_buff* %12, i32 %13, i32 %16)
  %18 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %19 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %18, i32 0, i32 4
  %20 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %19, align 8
  %21 = load i64, i64* @NCSI_MODE_LINK, align 8
  %22 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %20, i64 %21
  store %struct.ncsi_channel_mode* %22, %struct.ncsi_channel_mode** %9, align 8
  %23 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %24 = load i32, i32* @NCSI_CHANNEL_ATTR_LINK_STATE, align 4
  %25 = load %struct.ncsi_channel_mode*, %struct.ncsi_channel_mode** %9, align 8
  %26 = getelementptr inbounds %struct.ncsi_channel_mode, %struct.ncsi_channel_mode* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @nla_put_u32(%struct.sk_buff* %23, i32 %24, i32 %29)
  %31 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %32 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @NCSI_CHANNEL_ACTIVE, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %3
  %37 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %38 = load i32, i32* @NCSI_CHANNEL_ATTR_ACTIVE, align 4
  %39 = call i32 @nla_put_flag(%struct.sk_buff* %37, i32 %38)
  br label %40

40:                                               ; preds = %36, %3
  %41 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %42 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %43 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %42, i32 0, i32 3
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  %46 = load %struct.ncsi_channel*, %struct.ncsi_channel** %45, align 8
  %47 = icmp eq %struct.ncsi_channel* %41, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %40
  %49 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %50 = load i32, i32* @NCSI_CHANNEL_ATTR_FORCED, align 4
  %51 = call i32 @nla_put_flag(%struct.sk_buff* %49, i32 %50)
  br label %52

52:                                               ; preds = %48, %40
  %53 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %54 = load i32, i32* @NCSI_CHANNEL_ATTR_VERSION_MAJOR, align 4
  %55 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %56 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %55, i32 0, i32 2
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @nla_put_u32(%struct.sk_buff* %53, i32 %54, i32 %58)
  %60 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %61 = load i32, i32* @NCSI_CHANNEL_ATTR_VERSION_MINOR, align 4
  %62 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %63 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %62, i32 0, i32 2
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = call i32 @nla_put_u32(%struct.sk_buff* %60, i32 %61, i32 %65)
  %67 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %68 = load i32, i32* @NCSI_CHANNEL_ATTR_VERSION_STR, align 4
  %69 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %70 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %69, i32 0, i32 2
  %71 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @nla_put_string(%struct.sk_buff* %67, i32 %68, i32 %72)
  %74 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %75 = load i32, i32* @NCSI_CHANNEL_ATTR_VLAN_LIST, align 4
  %76 = call %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff* %74, i32 %75)
  store %struct.nlattr* %76, %struct.nlattr** %10, align 8
  %77 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %78 = icmp ne %struct.nlattr* %77, null
  br i1 %78, label %82, label %79

79:                                               ; preds = %52
  %80 = load i32, i32* @ENOMEM, align 4
  %81 = sub nsw i32 0, %80
  store i32 %81, i32* %4, align 4
  br label %124

82:                                               ; preds = %52
  %83 = load %struct.ncsi_channel*, %struct.ncsi_channel** %7, align 8
  %84 = getelementptr inbounds %struct.ncsi_channel, %struct.ncsi_channel* %83, i32 0, i32 1
  store %struct.ncsi_channel_vlan_filter* %84, %struct.ncsi_channel_vlan_filter** %8, align 8
  store i32 -1, i32* %11, align 4
  br label %85

85:                                               ; preds = %119, %82
  %86 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %87 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %86, i32 0, i32 2
  %88 = bitcast i32* %87 to i8*
  %89 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %90 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %11, align 4
  %93 = add nsw i32 %92, 1
  %94 = call i32 @find_next_bit(i8* %88, i32 %91, i32 %93)
  store i32 %94, i32* %11, align 4
  %95 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %96 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = icmp slt i32 %94, %97
  br i1 %98, label %99, label %120

99:                                               ; preds = %85
  %100 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %101 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %100, i32 0, i32 1
  %102 = load i64*, i64** %101, align 8
  %103 = load i32, i32* %11, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i64, i64* %102, i64 %104
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %119

108:                                              ; preds = %99
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i32, i32* @NCSI_CHANNEL_ATTR_VLAN_ID, align 4
  %111 = load %struct.ncsi_channel_vlan_filter*, %struct.ncsi_channel_vlan_filter** %8, align 8
  %112 = getelementptr inbounds %struct.ncsi_channel_vlan_filter, %struct.ncsi_channel_vlan_filter* %111, i32 0, i32 1
  %113 = load i64*, i64** %112, align 8
  %114 = load i32, i32* %11, align 4
  %115 = sext i32 %114 to i64
  %116 = getelementptr inbounds i64, i64* %113, i64 %115
  %117 = load i64, i64* %116, align 8
  %118 = call i32 @nla_put_u16(%struct.sk_buff* %109, i32 %110, i64 %117)
  br label %119

119:                                              ; preds = %108, %99
  br label %85

120:                                              ; preds = %85
  %121 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %122 = load %struct.nlattr*, %struct.nlattr** %10, align 8
  %123 = call i32 @nla_nest_end(%struct.sk_buff* %121, %struct.nlattr* %122)
  store i32 0, i32* %4, align 4
  br label %124

124:                                              ; preds = %120, %79
  %125 = load i32, i32* %4, align 4
  ret i32 %125
}

declare dso_local i32 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @nla_put_flag(%struct.sk_buff*, i32) #1

declare dso_local i32 @nla_put_string(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.nlattr* @nla_nest_start_noflag(%struct.sk_buff*, i32) #1

declare dso_local i32 @find_next_bit(i8*, i32, i32) #1

declare dso_local i32 @nla_put_u16(%struct.sk_buff*, i32, i64) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
