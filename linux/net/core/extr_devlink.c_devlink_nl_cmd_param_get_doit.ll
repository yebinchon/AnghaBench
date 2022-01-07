; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_param_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_param_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_param_item = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_PARAM_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_param_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_param_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_param_item*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 2
  %12 = load %struct.devlink**, %struct.devlink*** %11, align 8
  %13 = getelementptr inbounds %struct.devlink*, %struct.devlink** %12, i64 0
  %14 = load %struct.devlink*, %struct.devlink** %13, align 8
  store %struct.devlink* %14, %struct.devlink** %6, align 8
  %15 = load %struct.devlink*, %struct.devlink** %6, align 8
  %16 = getelementptr inbounds %struct.devlink, %struct.devlink* %15, i32 0, i32 0
  %17 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %18 = call %struct.devlink_param_item* @devlink_param_get_from_info(i32* %16, %struct.genl_info* %17)
  store %struct.devlink_param_item* %18, %struct.devlink_param_item** %7, align 8
  %19 = load %struct.devlink_param_item*, %struct.devlink_param_item** %7, align 8
  %20 = icmp ne %struct.devlink_param_item* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %2
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %55

24:                                               ; preds = %2
  %25 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %26 = load i32, i32* @GFP_KERNEL, align 4
  %27 = call %struct.sk_buff* @nlmsg_new(i32 %25, i32 %26)
  store %struct.sk_buff* %27, %struct.sk_buff** %8, align 8
  %28 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load i32, i32* @ENOMEM, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %55

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %35 = load %struct.devlink*, %struct.devlink** %6, align 8
  %36 = load %struct.devlink_param_item*, %struct.devlink_param_item** %7, align 8
  %37 = load i32, i32* @DEVLINK_CMD_PARAM_GET, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @devlink_nl_param_fill(%struct.sk_buff* %34, %struct.devlink* %35, i32 0, %struct.devlink_param_item* %36, i32 %37, i32 %40, i32 %43, i32 0)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %51

47:                                               ; preds = %33
  %48 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %49 = call i32 @nlmsg_free(%struct.sk_buff* %48)
  %50 = load i32, i32* %9, align 4
  store i32 %50, i32* %3, align 4
  br label %55

51:                                               ; preds = %33
  %52 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %53 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %54 = call i32 @genlmsg_reply(%struct.sk_buff* %52, %struct.genl_info* %53)
  store i32 %54, i32* %3, align 4
  br label %55

55:                                               ; preds = %51, %47, %30, %21
  %56 = load i32, i32* %3, align 4
  ret i32 %56
}

declare dso_local %struct.devlink_param_item* @devlink_param_get_from_info(i32*, %struct.genl_info*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_param_fill(%struct.sk_buff*, %struct.devlink*, i32, %struct.devlink_param_item*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
