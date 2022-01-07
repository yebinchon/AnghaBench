; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_table_counters_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_table_counters_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.devlink** }
%struct.devlink = type { i32 }

@DEVLINK_ATTR_DPIPE_TABLE_NAME = common dso_local global i64 0, align 8
@DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_dpipe_table_counters_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_dpipe_table_counters_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
  %11 = load %struct.devlink**, %struct.devlink*** %10, align 8
  %12 = getelementptr inbounds %struct.devlink*, %struct.devlink** %11, i64 0
  %13 = load %struct.devlink*, %struct.devlink** %12, align 8
  store %struct.devlink* %13, %struct.devlink** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 8
  %18 = getelementptr inbounds i32, i32* %16, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %29

21:                                               ; preds = %2
  %22 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %23 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %21, %2
  %30 = load i32, i32* @EINVAL, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %3, align 4
  br label %55

32:                                               ; preds = %21
  %33 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %34 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i8* @nla_data(i32 %38)
  store i8* %39, i8** %7, align 8
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32*, i32** %41, align 8
  %43 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_COUNTERS_ENABLED, align 8
  %44 = getelementptr inbounds i32, i32* %42, i64 %43
  %45 = load i32, i32* %44, align 4
  %46 = call i32 @nla_get_u8(i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  %49 = xor i1 %48, true
  %50 = zext i1 %49 to i32
  store i32 %50, i32* %8, align 4
  %51 = load %struct.devlink*, %struct.devlink** %6, align 8
  %52 = load i8*, i8** %7, align 8
  %53 = load i32, i32* %8, align 4
  %54 = call i32 @devlink_dpipe_table_counters_set(%struct.devlink* %51, i8* %52, i32 %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %32, %29
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local i8* @nla_data(i32) #1

declare dso_local i32 @nla_get_u8(i32) #1

declare dso_local i32 @devlink_dpipe_table_counters_set(%struct.devlink*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
