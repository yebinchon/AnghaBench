; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_table_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_table_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.devlink** }
%struct.devlink = type { i32 }

@DEVLINK_ATTR_DPIPE_TABLE_NAME = common dso_local global i64 0, align 8
@DEVLINK_CMD_DPIPE_TABLE_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_dpipe_table_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_dpipe_table_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.genl_info*, align 8
  %5 = alloca %struct.devlink*, align 8
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.genl_info* %1, %struct.genl_info** %4, align 8
  %7 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %8 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %7, i32 0, i32 1
  %9 = load %struct.devlink**, %struct.devlink*** %8, align 8
  %10 = getelementptr inbounds %struct.devlink*, %struct.devlink** %9, i64 0
  %11 = load %struct.devlink*, %struct.devlink** %10, align 8
  store %struct.devlink* %11, %struct.devlink** %5, align 8
  store i8* null, i8** %6, align 8
  %12 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %13 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %12, i32 0, i32 0
  %14 = load i64*, i64** %13, align 8
  %15 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 8
  %16 = getelementptr inbounds i64, i64* %14, i64 %15
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %2
  %20 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %21 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %20, i32 0, i32 0
  %22 = load i64*, i64** %21, align 8
  %23 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 8
  %24 = getelementptr inbounds i64, i64* %22, i64 %23
  %25 = load i64, i64* %24, align 8
  %26 = call i8* @nla_data(i64 %25)
  store i8* %26, i8** %6, align 8
  br label %27

27:                                               ; preds = %19, %2
  %28 = load %struct.genl_info*, %struct.genl_info** %4, align 8
  %29 = load i32, i32* @DEVLINK_CMD_DPIPE_TABLE_GET, align 4
  %30 = load %struct.devlink*, %struct.devlink** %5, align 8
  %31 = getelementptr inbounds %struct.devlink, %struct.devlink* %30, i32 0, i32 0
  %32 = load i8*, i8** %6, align 8
  %33 = call i32 @devlink_dpipe_tables_fill(%struct.genl_info* %28, i32 %29, i32 0, i32* %31, i8* %32)
  ret i32 %33
}

declare dso_local i8* @nla_data(i64) #1

declare dso_local i32 @devlink_dpipe_tables_fill(%struct.genl_info*, i32, i32, i32*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
