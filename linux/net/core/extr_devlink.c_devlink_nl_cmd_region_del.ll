; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32*, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_snapshot = type { i32 }
%struct.devlink_region = type { i32 }

@DEVLINK_ATTR_REGION_NAME = common dso_local global i64 0, align 8
@DEVLINK_ATTR_REGION_SNAPSHOT_ID = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_region_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_region_del(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_snapshot*, align 8
  %8 = alloca %struct.devlink_region*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 1
  %13 = load %struct.devlink**, %struct.devlink*** %12, align 8
  %14 = getelementptr inbounds %struct.devlink*, %struct.devlink** %13, i64 0
  %15 = load %struct.devlink*, %struct.devlink** %14, align 8
  store %struct.devlink* %15, %struct.devlink** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 0
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 0
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @DEVLINK_ATTR_REGION_SNAPSHOT_ID, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %70

34:                                               ; preds = %23
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 0
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i8* @nla_data(i32 %40)
  store i8* %41, i8** %9, align 8
  %42 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %43 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i64, i64* @DEVLINK_ATTR_REGION_SNAPSHOT_ID, align 8
  %46 = getelementptr inbounds i32, i32* %44, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = call i32 @nla_get_u32(i32 %47)
  store i32 %48, i32* %10, align 4
  %49 = load %struct.devlink*, %struct.devlink** %6, align 8
  %50 = load i8*, i8** %9, align 8
  %51 = call %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink* %49, i8* %50)
  store %struct.devlink_region* %51, %struct.devlink_region** %8, align 8
  %52 = load %struct.devlink_region*, %struct.devlink_region** %8, align 8
  %53 = icmp ne %struct.devlink_region* %52, null
  br i1 %53, label %57, label %54

54:                                               ; preds = %34
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %3, align 4
  br label %70

57:                                               ; preds = %34
  %58 = load %struct.devlink_region*, %struct.devlink_region** %8, align 8
  %59 = load i32, i32* %10, align 4
  %60 = call %struct.devlink_snapshot* @devlink_region_snapshot_get_by_id(%struct.devlink_region* %58, i32 %59)
  store %struct.devlink_snapshot* %60, %struct.devlink_snapshot** %7, align 8
  %61 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %7, align 8
  %62 = icmp ne %struct.devlink_snapshot* %61, null
  br i1 %62, label %66, label %63

63:                                               ; preds = %57
  %64 = load i32, i32* @EINVAL, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %70

66:                                               ; preds = %57
  %67 = load %struct.devlink_region*, %struct.devlink_region** %8, align 8
  %68 = load %struct.devlink_snapshot*, %struct.devlink_snapshot** %7, align 8
  %69 = call i32 @devlink_region_snapshot_del(%struct.devlink_region* %67, %struct.devlink_snapshot* %68)
  store i32 0, i32* %3, align 4
  br label %70

70:                                               ; preds = %66, %63, %54, %31
  %71 = load i32, i32* %3, align 4
  ret i32 %71
}

declare dso_local i8* @nla_data(i32) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink*, i8*) #1

declare dso_local %struct.devlink_snapshot* @devlink_region_snapshot_get_by_id(%struct.devlink_region*, i32) #1

declare dso_local i32 @devlink_region_snapshot_del(%struct.devlink_region*, %struct.devlink_snapshot*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
