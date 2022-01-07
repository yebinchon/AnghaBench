; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_get_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_get_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@NLMSG_DEFAULT_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_HEALTH_REPORTER_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_health_reporter_get_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_get_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
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
  %16 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %17 = call %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink* %15, %struct.genl_info* %16)
  store %struct.devlink_health_reporter* %17, %struct.devlink_health_reporter** %7, align 8
  %18 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %19 = icmp ne %struct.devlink_health_reporter* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EINVAL, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %57

23:                                               ; preds = %2
  %24 = load i32, i32* @NLMSG_DEFAULT_SIZE, align 4
  %25 = load i32, i32* @GFP_KERNEL, align 4
  %26 = call %struct.sk_buff* @nlmsg_new(i32 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %8, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %23
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %9, align 4
  br label %53

32:                                               ; preds = %23
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load %struct.devlink*, %struct.devlink** %6, align 8
  %35 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %36 = load i32, i32* @DEVLINK_CMD_HEALTH_REPORTER_GET, align 4
  %37 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %38 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %41 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = call i32 @devlink_nl_health_reporter_fill(%struct.sk_buff* %33, %struct.devlink* %34, %struct.devlink_health_reporter* %35, i32 %36, i32 %39, i32 %42, i32 0)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %32
  %47 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  br label %53

49:                                               ; preds = %32
  %50 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %51 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %52 = call i32 @genlmsg_reply(%struct.sk_buff* %50, %struct.genl_info* %51)
  store i32 %52, i32* %9, align 4
  br label %53

53:                                               ; preds = %49, %46, %29
  %54 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %55 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %54)
  %56 = load i32, i32* %9, align 4
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %53, %20
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local %struct.sk_buff* @nlmsg_new(i32, i32) #1

declare dso_local i32 @devlink_nl_health_reporter_fill(%struct.sk_buff*, %struct.devlink*, %struct.devlink_health_reporter*, i32, i32, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local i32 @genlmsg_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
