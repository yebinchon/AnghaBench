; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_check_policy.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_nl80211_vendor_check_policy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy_vendor_command = type { i64, i32 }
%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@VENDOR_CMD_RAW_DATA = common dso_local global i64 0, align 8
@NLA_F_NESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [23 x i8] c"unexpected nested data\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"expected nested data\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy_vendor_command*, %struct.nlattr*, %struct.netlink_ext_ack*)* @nl80211_vendor_check_policy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nl80211_vendor_check_policy(%struct.wiphy_vendor_command* %0, %struct.nlattr* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.wiphy_vendor_command*, align 8
  %6 = alloca %struct.nlattr*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  store %struct.wiphy_vendor_command* %0, %struct.wiphy_vendor_command** %5, align 8
  store %struct.nlattr* %1, %struct.nlattr** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  %8 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %5, align 8
  %9 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @VENDOR_CMD_RAW_DATA, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %27

13:                                               ; preds = %3
  %14 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %15 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @NLA_F_NESTED, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %26

20:                                               ; preds = %13
  %21 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %22 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %23 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %21, %struct.nlattr* %22, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %50

26:                                               ; preds = %13
  store i32 0, i32* %4, align 4
  br label %50

27:                                               ; preds = %3
  %28 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %29 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load i32, i32* @NLA_F_NESTED, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %40, label %34

34:                                               ; preds = %27
  %35 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %36 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %37 = call i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack* %35, %struct.nlattr* %36, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %38 = load i32, i32* @EINVAL, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %4, align 4
  br label %50

40:                                               ; preds = %27
  %41 = load %struct.nlattr*, %struct.nlattr** %6, align 8
  %42 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %5, align 8
  %43 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 8
  %45 = load %struct.wiphy_vendor_command*, %struct.wiphy_vendor_command** %5, align 8
  %46 = getelementptr inbounds %struct.wiphy_vendor_command, %struct.wiphy_vendor_command* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %49 = call i32 @nl80211_validate_nested(%struct.nlattr* %41, i32 %44, i64 %47, %struct.netlink_ext_ack* %48)
  store i32 %49, i32* %4, align 4
  br label %50

50:                                               ; preds = %40, %34, %26, %20
  %51 = load i32, i32* %4, align 4
  ret i32 %51
}

declare dso_local i32 @NL_SET_ERR_MSG_ATTR(%struct.netlink_ext_ack*, %struct.nlattr*, i8*) #1

declare dso_local i32 @nl80211_validate_nested(%struct.nlattr*, i32, i64, %struct.netlink_ext_ack*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
