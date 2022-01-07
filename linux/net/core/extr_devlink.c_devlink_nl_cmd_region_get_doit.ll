; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_region_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, i32*, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_region = type { i32 }

@DEVLINK_ATTR_REGION_NAME = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_REGION_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_region_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_region_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_region*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 3
  %13 = load %struct.devlink**, %struct.devlink*** %12, align 8
  %14 = getelementptr inbounds %struct.devlink*, %struct.devlink** %13, i64 0
  %15 = load %struct.devlink*, %struct.devlink** %14, align 8
  store %struct.devlink* %15, %struct.devlink** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 2
  %18 = load i32*, i32** %17, align 8
  %19 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %20 = getelementptr inbounds i32, i32* %18, i64 %19
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @EINVAL, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  br label %73

26:                                               ; preds = %2
  %27 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %28 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %27, i32 0, i32 2
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @DEVLINK_ATTR_REGION_NAME, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  %32 = load i32, i32* %31, align 4
  %33 = call i8* @nla_data(i32 %32)
  store i8* %33, i8** %8, align 8
  %34 = load %struct.devlink*, %struct.devlink** %6, align 8
  %35 = load i8*, i8** %8, align 8
  %36 = call %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink* %34, i8* %35)
  store %struct.devlink_region* %36, %struct.devlink_region** %7, align 8
  %37 = load %struct.devlink_region*, %struct.devlink_region** %7, align 8
  %38 = icmp ne %struct.devlink_region* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %26
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %73

42:                                               ; preds = %26
  %43 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = call %struct.sk_buff* @nlmsg_new(i32 %43, i32 %44)
  store %struct.sk_buff* %45, %struct.sk_buff** %9, align 8
  %46 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %47 = icmp ne %struct.sk_buff* %46, null
  br i1 %47, label %51, label %48

48:                                               ; preds = %42
  %49 = load i32, i32* @ENOMEM, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %73

51:                                               ; preds = %42
  %52 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %53 = load %struct.devlink*, %struct.devlink** %6, align 8
  %54 = load i32, i32* @DEVLINK_CMD_REGION_GET, align 4
  %55 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %56 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %59 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = load %struct.devlink_region*, %struct.devlink_region** %7, align 8
  %62 = call i32 @devlink_nl_region_fill(%struct.sk_buff* %52, %struct.devlink* %53, i32 %54, i32 %57, i32 %60, i32 0, %struct.devlink_region* %61)
  store i32 %62, i32* %10, align 4
  %63 = load i32, i32* %10, align 4
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %65, label %69

65:                                               ; preds = %51
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @nlmsg_free(%struct.sk_buff* %66)
  %68 = load i32, i32* %10, align 4
  store i32 %68, i32* %3, align 4
  br label %73

69:                                               ; preds = %51
  %70 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %71 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %72 = call i32 @genlmsg_reply(%struct.sk_buff* %70, %struct.genl_info* %71)
  store i32 %72, i32* %3, align 4
  br label %73

73:                                               ; preds = %69, %65, %48, %39, %23
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i8* @nla_data(i32) #1

declare dso_local %struct.devlink_region* @devlink_region_get_by_name(%struct.devlink*, i8*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_region_fill(%struct.sk_buff*, %struct.devlink*, i32, i32, i32, i32, %struct.devlink_region*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
