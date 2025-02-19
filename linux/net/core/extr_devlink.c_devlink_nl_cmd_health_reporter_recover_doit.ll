; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_recover_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_recover_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_health_reporter_recover_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_recover_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 0
  %11 = load %struct.devlink**, %struct.devlink*** %10, align 8
  %12 = getelementptr inbounds %struct.devlink*, %struct.devlink** %11, i64 0
  %13 = load %struct.devlink*, %struct.devlink** %12, align 8
  store %struct.devlink* %13, %struct.devlink** %6, align 8
  %14 = load %struct.devlink*, %struct.devlink** %6, align 8
  %15 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %16 = call %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink* %14, %struct.genl_info* %15)
  store %struct.devlink_health_reporter* %16, %struct.devlink_health_reporter** %7, align 8
  %17 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %18 = icmp ne %struct.devlink_health_reporter* %17, null
  br i1 %18, label %22, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @EINVAL, align 4
  %21 = sub nsw i32 0, %20
  store i32 %21, i32* %3, align 4
  br label %28

22:                                               ; preds = %2
  %23 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %24 = call i32 @devlink_health_reporter_recover(%struct.devlink_health_reporter* %23, i32* null)
  store i32 %24, i32* %8, align 4
  %25 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %26 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %25)
  %27 = load i32, i32* %8, align 4
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %22, %19
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local i32 @devlink_health_reporter_recover(%struct.devlink_health_reporter*, i32*) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
