; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_resource_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_resource_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32*, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_resource = type { %struct.devlink_resource*, i32 }

@DEVLINK_ATTR_RESOURCE_ID = common dso_local global i64 0, align 8
@DEVLINK_ATTR_RESOURCE_SIZE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_resource_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_resource_set(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_resource*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 2
  %13 = load %struct.devlink**, %struct.devlink*** %12, align 8
  %14 = getelementptr inbounds %struct.devlink*, %struct.devlink** %13, i64 0
  %15 = load %struct.devlink*, %struct.devlink** %14, align 8
  store %struct.devlink* %15, %struct.devlink** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 1
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @DEVLINK_ATTR_RESOURCE_ID, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %2
  %24 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %25 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %24, i32 0, i32 1
  %26 = load i32*, i32** %25, align 8
  %27 = load i64, i64* @DEVLINK_ATTR_RESOURCE_SIZE, align 8
  %28 = getelementptr inbounds i32, i32* %26, i64 %27
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %34, label %31

31:                                               ; preds = %23, %2
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %84

34:                                               ; preds = %23
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 1
  %37 = load i32*, i32** %36, align 8
  %38 = load i64, i64* @DEVLINK_ATTR_RESOURCE_ID, align 8
  %39 = getelementptr inbounds i32, i32* %37, i64 %38
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @nla_get_u64(i32 %40)
  store i32 %41, i32* %8, align 4
  %42 = load %struct.devlink*, %struct.devlink** %6, align 8
  %43 = load i32, i32* %8, align 4
  %44 = call %struct.devlink_resource* @devlink_resource_find(%struct.devlink* %42, i32* null, i32 %43)
  store %struct.devlink_resource* %44, %struct.devlink_resource** %7, align 8
  %45 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %46 = icmp ne %struct.devlink_resource* %45, null
  br i1 %46, label %50, label %47

47:                                               ; preds = %34
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %84

50:                                               ; preds = %34
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = load i64, i64* @DEVLINK_ATTR_RESOURCE_SIZE, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @nla_get_u64(i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %61 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = call i32 @devlink_resource_validate_size(%struct.devlink_resource* %58, i32 %59, i32 %62)
  store i32 %63, i32* %10, align 4
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %68

66:                                               ; preds = %50
  %67 = load i32, i32* %10, align 4
  store i32 %67, i32* %3, align 4
  br label %84

68:                                               ; preds = %50
  %69 = load i32, i32* %9, align 4
  %70 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %71 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 8
  %72 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %73 = call i32 @devlink_resource_validate_children(%struct.devlink_resource* %72)
  %74 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %75 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %74, i32 0, i32 0
  %76 = load %struct.devlink_resource*, %struct.devlink_resource** %75, align 8
  %77 = icmp ne %struct.devlink_resource* %76, null
  br i1 %77, label %78, label %83

78:                                               ; preds = %68
  %79 = load %struct.devlink_resource*, %struct.devlink_resource** %7, align 8
  %80 = getelementptr inbounds %struct.devlink_resource, %struct.devlink_resource* %79, i32 0, i32 0
  %81 = load %struct.devlink_resource*, %struct.devlink_resource** %80, align 8
  %82 = call i32 @devlink_resource_validate_children(%struct.devlink_resource* %81)
  br label %83

83:                                               ; preds = %78, %68
  store i32 0, i32* %3, align 4
  br label %84

84:                                               ; preds = %83, %66, %47, %31
  %85 = load i32, i32* %3, align 4
  ret i32 %85
}

declare dso_local i32 @nla_get_u64(i32) #1

declare dso_local %struct.devlink_resource* @devlink_resource_find(%struct.devlink*, i32*, i32) #1

declare dso_local i32 @devlink_resource_validate_size(%struct.devlink_resource*, i32, i32) #1

declare dso_local i32 @devlink_resource_validate_children(%struct.devlink_resource*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
