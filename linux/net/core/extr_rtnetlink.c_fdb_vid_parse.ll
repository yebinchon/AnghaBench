; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_fdb_vid_parse.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_rtnetlink.c_fdb_vid_parse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nlattr = type { i32 }
%struct.netlink_ext_ack = type { i32 }

@.str = private unnamed_addr constant [28 x i8] c"invalid vlan attribute size\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@VLAN_VID_MASK = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [16 x i8] c"invalid vlan id\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nlattr*, i64*, %struct.netlink_ext_ack*)* @fdb_vid_parse to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_vid_parse(%struct.nlattr* %0, i64* %1, %struct.netlink_ext_ack* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca %struct.netlink_ext_ack*, align 8
  %8 = alloca i64, align 8
  store %struct.nlattr* %0, %struct.nlattr** %5, align 8
  store i64* %1, i64** %6, align 8
  store %struct.netlink_ext_ack* %2, %struct.netlink_ext_ack** %7, align 8
  store i64 0, i64* %8, align 8
  %9 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %10 = icmp ne %struct.nlattr* %9, null
  br i1 %10, label %11, label %36

11:                                               ; preds = %3
  %12 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %13 = call i32 @nla_len(%struct.nlattr* %12)
  %14 = sext i32 %13 to i64
  %15 = icmp ne i64 %14, 8
  br i1 %15, label %16, label %21

16:                                               ; preds = %11
  %17 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %18 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %17, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %39

21:                                               ; preds = %11
  %22 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %23 = call i64 @nla_get_u16(%struct.nlattr* %22)
  store i64 %23, i64* %8, align 8
  %24 = load i64, i64* %8, align 8
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %30

26:                                               ; preds = %21
  %27 = load i64, i64* %8, align 8
  %28 = load i64, i64* @VLAN_VID_MASK, align 8
  %29 = icmp sge i64 %27, %28
  br i1 %29, label %30, label %35

30:                                               ; preds = %26, %21
  %31 = load %struct.netlink_ext_ack*, %struct.netlink_ext_ack** %7, align 8
  %32 = call i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack* %31, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %33 = load i32, i32* @EINVAL, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %4, align 4
  br label %39

35:                                               ; preds = %26
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i64, i64* %8, align 8
  %38 = load i64*, i64** %6, align 8
  store i64 %37, i64* %38, align 8
  store i32 0, i32* %4, align 4
  br label %39

39:                                               ; preds = %36, %30, %16
  %40 = load i32, i32* %4, align 4
  ret i32 %40
}

declare dso_local i32 @nla_len(%struct.nlattr*) #1

declare dso_local i32 @NL_SET_ERR_MSG(%struct.netlink_ext_ack*, i8*) #1

declare dso_local i64 @nla_get_u16(%struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
