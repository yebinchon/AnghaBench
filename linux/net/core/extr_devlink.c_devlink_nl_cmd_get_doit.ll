; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink** }
%struct.devlink = type { i32 }

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 2
  %11 = load %struct.devlink**, %struct.devlink*** %10, align 8
  %12 = getelementptr inbounds %struct.devlink*, %struct.devlink** %11, i64 0
  %13 = load %struct.devlink*, %struct.devlink** %12, align 8
  store %struct.devlink* %13, %struct.devlink** %6, align 8
  %14 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %15 = load i32, i32* @GFP_KERNEL, align 4
  %16 = call %struct.sk_buff* @nlmsg_new(i32 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %7, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @ENOMEM, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %43

22:                                               ; preds = %2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %24 = load %struct.devlink*, %struct.devlink** %6, align 8
  %25 = load i32, i32* @DEVLINK_CMD_NEW, align 4
  %26 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %27 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %26, i32 0, i32 1
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %30 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = call i32 @devlink_nl_fill(%struct.sk_buff* %23, %struct.devlink* %24, i32 %25, i32 %28, i32 %31, i32 0)
  store i32 %32, i32* %8, align 4
  %33 = load i32, i32* %8, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %39

35:                                               ; preds = %22
  %36 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %37 = call i32 @nlmsg_free(%struct.sk_buff* %36)
  %38 = load i32, i32* %8, align 4
  store i32 %38, i32* %3, align 4
  br label %43

39:                                               ; preds = %22
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %42 = call i32 @genlmsg_reply(%struct.sk_buff* %40, %struct.genl_info* %41)
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35, %19
  %44 = load i32, i32* %3, align 4
  ret i32 %44
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_fill(%struct.sk_buff*, %struct.devlink*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
