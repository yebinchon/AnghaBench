; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_sb_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink_sb** }
%struct.devlink_sb = type { i32 }
%struct.devlink = type opaque

@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_SB_NEW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_sb_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_sb_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_sb*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 2
  %12 = load %struct.devlink_sb**, %struct.devlink_sb*** %11, align 8
  %13 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %12, i64 0
  %14 = load %struct.devlink_sb*, %struct.devlink_sb** %13, align 8
  %15 = bitcast %struct.devlink_sb* %14 to %struct.devlink*
  store %struct.devlink* %15, %struct.devlink** %6, align 8
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %16, i32 0, i32 2
  %18 = load %struct.devlink_sb**, %struct.devlink_sb*** %17, align 8
  %19 = getelementptr inbounds %struct.devlink_sb*, %struct.devlink_sb** %18, i64 1
  %20 = load %struct.devlink_sb*, %struct.devlink_sb** %19, align 8
  store %struct.devlink_sb* %20, %struct.devlink_sb** %7, align 8
  %21 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.sk_buff* @nlmsg_new(i32 %21, i32 %22)
  store %struct.sk_buff* %23, %struct.sk_buff** %8, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %25 = icmp ne %struct.sk_buff* %24, null
  br i1 %25, label %29, label %26

26:                                               ; preds = %2
  %27 = load i32, i32* @ENOMEM, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %52

29:                                               ; preds = %2
  %30 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %31 = load %struct.devlink*, %struct.devlink** %6, align 8
  %32 = bitcast %struct.devlink* %31 to %struct.devlink_sb*
  %33 = load %struct.devlink_sb*, %struct.devlink_sb** %7, align 8
  %34 = load i32, i32* @DEVLINK_CMD_SB_NEW, align 4
  %35 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %36 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @devlink_nl_sb_fill(%struct.sk_buff* %30, %struct.devlink_sb* %32, %struct.devlink_sb* %33, i32 %34, i32 %37, i32 %40, i32 0)
  store i32 %41, i32* %9, align 4
  %42 = load i32, i32* %9, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %48

44:                                               ; preds = %29
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = call i32 @nlmsg_free(%struct.sk_buff* %45)
  %47 = load i32, i32* %9, align 4
  store i32 %47, i32* %3, align 4
  br label %52

48:                                               ; preds = %29
  %49 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %50 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %51 = call i32 @genlmsg_reply(%struct.sk_buff* %49, %struct.genl_info* %50)
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %48, %44, %26
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_sb_fill(%struct.sk_buff*, %struct.devlink_sb*, %struct.devlink_sb*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
