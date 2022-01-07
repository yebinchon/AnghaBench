; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_entries_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_dpipe_entries_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_dpipe_table = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@DEVLINK_ATTR_DPIPE_TABLE_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_CMD_DPIPE_ENTRIES_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_dpipe_entries_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_dpipe_entries_get(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_dpipe_table*, align 8
  %8 = alloca i8*, align 8
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
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %56

24:                                               ; preds = %2
  %25 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %26 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = load i64, i64* @DEVLINK_ATTR_DPIPE_TABLE_NAME, align 8
  %29 = getelementptr inbounds i32, i32* %27, i64 %28
  %30 = load i32, i32* %29, align 4
  %31 = call i8* @nla_data(i32 %30)
  store i8* %31, i8** %8, align 8
  %32 = load %struct.devlink*, %struct.devlink** %6, align 8
  %33 = getelementptr inbounds %struct.devlink, %struct.devlink* %32, i32 0, i32 0
  %34 = load i8*, i8** %8, align 8
  %35 = call %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32* %33, i8* %34)
  store %struct.devlink_dpipe_table* %35, %struct.devlink_dpipe_table** %7, align 8
  %36 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %7, align 8
  %37 = icmp ne %struct.devlink_dpipe_table* %36, null
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* @EINVAL, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %56

41:                                               ; preds = %24
  %42 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %7, align 8
  %43 = getelementptr inbounds %struct.devlink_dpipe_table, %struct.devlink_dpipe_table* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %51, label %48

48:                                               ; preds = %41
  %49 = load i32, i32* @EINVAL, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %56

51:                                               ; preds = %41
  %52 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %53 = load i32, i32* @DEVLINK_CMD_DPIPE_ENTRIES_GET, align 4
  %54 = load %struct.devlink_dpipe_table*, %struct.devlink_dpipe_table** %7, align 8
  %55 = call i32 @devlink_dpipe_entries_fill(%struct.genl_info* %52, i32 %53, i32 0, %struct.devlink_dpipe_table* %54)
  store i32 %55, i32* %3, align 4
  br label %56

56:                                               ; preds = %51, %48, %38, %21
  %57 = load i32, i32* %3, align 4
  ret i32 %57
}

declare dso_local i8* @nla_data(i32) #1

declare dso_local %struct.devlink_dpipe_table* @devlink_dpipe_table_find(i32*, i8*) #1

declare dso_local i32 @devlink_dpipe_entries_fill(%struct.genl_info*, i32, i32, %struct.devlink_dpipe_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
