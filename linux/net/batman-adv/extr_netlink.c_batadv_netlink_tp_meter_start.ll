; ModuleID = '/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_tp_meter_start.c'
source_filename = "/home/carl/AnghaBench/linux/net/batman-adv/extr_netlink.c_batadv_netlink_tp_meter_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32*, %struct.batadv_priv** }
%struct.batadv_priv = type { i32 }

@BATADV_ATTR_ORIG_ADDRESS = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@BATADV_ATTR_TPMETER_TEST_TIME = common dso_local global i64 0, align 8
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@batadv_netlink_family = common dso_local global i32 0, align 4
@BATADV_CMD_TP_METER = common dso_local global i32 0, align 4
@ENOBUFS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @batadv_netlink_tp_meter_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @batadv_netlink_tp_meter_start(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.batadv_priv*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %13 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %14 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %13, i32 0, i32 3
  %15 = load %struct.batadv_priv**, %struct.batadv_priv*** %14, align 8
  %16 = getelementptr inbounds %struct.batadv_priv*, %struct.batadv_priv** %15, i64 0
  %17 = load %struct.batadv_priv*, %struct.batadv_priv** %16, align 8
  store %struct.batadv_priv* %17, %struct.batadv_priv** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %7, align 8
  %18 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %19 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i64, i64* @BATADV_ATTR_ORIG_ADDRESS, align 8
  %22 = getelementptr inbounds i32, i32* %20, i64 %21
  %23 = load i32, i32* %22, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %2
  %26 = load i32, i32* @EINVAL, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %103

28:                                               ; preds = %2
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 2
  %31 = load i32*, i32** %30, align 8
  %32 = load i64, i64* @BATADV_ATTR_TPMETER_TEST_TIME, align 8
  %33 = getelementptr inbounds i32, i32* %31, i64 %32
  %34 = load i32, i32* %33, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %39, label %36

36:                                               ; preds = %28
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %3, align 4
  br label %103

39:                                               ; preds = %28
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 2
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @BATADV_ATTR_ORIG_ADDRESS, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32* @nla_data(i32 %45)
  store i32* %46, i32** %11, align 8
  %47 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %48 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %47, i32 0, i32 2
  %49 = load i32*, i32** %48, align 8
  %50 = load i64, i64* @BATADV_ATTR_TPMETER_TEST_TIME, align 8
  %51 = getelementptr inbounds i32, i32* %49, i64 %50
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @nla_get_u32(i32 %52)
  store i32 %53, i32* %8, align 4
  %54 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %55 = load i32, i32* @GFP_KERNEL, align 4
  %56 = call %struct.sk_buff* @nlmsg_new(i32 %54, i32 %55)
  store %struct.sk_buff* %56, %struct.sk_buff** %7, align 8
  %57 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %58 = icmp ne %struct.sk_buff* %57, null
  br i1 %58, label %62, label %59

59:                                               ; preds = %39
  %60 = load i32, i32* @ENOMEM, align 4
  %61 = sub nsw i32 0, %60
  store i32 %61, i32* %12, align 4
  br label %85

62:                                               ; preds = %39
  %63 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %64 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %65 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @BATADV_CMD_TP_METER, align 4
  %71 = call i8* @genlmsg_put(%struct.sk_buff* %63, i32 %66, i32 %69, i32* @batadv_netlink_family, i32 0, i32 %70)
  store i8* %71, i8** %9, align 8
  %72 = load i8*, i8** %9, align 8
  %73 = icmp ne i8* %72, null
  br i1 %73, label %77, label %74

74:                                               ; preds = %62
  %75 = load i32, i32* @ENOBUFS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %12, align 4
  br label %85

77:                                               ; preds = %62
  %78 = load %struct.batadv_priv*, %struct.batadv_priv** %6, align 8
  %79 = load i32*, i32** %11, align 8
  %80 = load i32, i32* %8, align 4
  %81 = call i32 @batadv_tp_start(%struct.batadv_priv* %78, i32* %79, i32 %80, i32* %10)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %83 = load i32, i32* %10, align 4
  %84 = call i32 @batadv_netlink_tp_meter_put(%struct.sk_buff* %82, i32 %83)
  store i32 %84, i32* %12, align 4
  br label %85

85:                                               ; preds = %77, %74, %59
  %86 = load i32, i32* %12, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %96

88:                                               ; preds = %85
  %89 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %90 = icmp ne %struct.sk_buff* %89, null
  br i1 %90, label %91, label %94

91:                                               ; preds = %88
  %92 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %93 = call i32 @nlmsg_free(%struct.sk_buff* %92)
  br label %94

94:                                               ; preds = %91, %88
  %95 = load i32, i32* %12, align 4
  store i32 %95, i32* %3, align 4
  br label %103

96:                                               ; preds = %85
  %97 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %98 = load i8*, i8** %9, align 8
  %99 = call i32 @genlmsg_end(%struct.sk_buff* %97, i8* %98)
  %100 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %101 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %102 = call i32 @genlmsg_reply(%struct.sk_buff* %100, %struct.genl_info* %101)
  store i32 %102, i32* %3, align 4
  br label %103

103:                                              ; preds = %96, %94, %36, %25
  %104 = load i32, i32* %3, align 4
  ret i32 %104
}

declare dso_local i32* @nla_data(i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @batadv_tp_start(%struct.batadv_priv*, i32*, i32, i32*) #1

declare dso_local i32 @batadv_netlink_tp_meter_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
