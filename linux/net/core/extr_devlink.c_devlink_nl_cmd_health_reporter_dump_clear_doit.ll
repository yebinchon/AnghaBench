; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_dump_clear_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_dump_clear_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_health_reporter_dump_clear_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_dump_clear_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 0
  %10 = load %struct.devlink**, %struct.devlink*** %9, align 8
  %11 = getelementptr inbounds %struct.devlink*, %struct.devlink** %10, i64 0
  %12 = load %struct.devlink*, %struct.devlink** %11, align 8
  store %struct.devlink* %12, %struct.devlink** %6, align 8
  %13 = load %struct.devlink*, %struct.devlink** %6, align 8
  %14 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %15 = call %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink* %13, %struct.genl_info* %14)
  store %struct.devlink_health_reporter* %15, %struct.devlink_health_reporter** %7, align 8
  %16 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %17 = icmp ne %struct.devlink_health_reporter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %44

21:                                               ; preds = %2
  %22 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %23 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %33, label %28

28:                                               ; preds = %21
  %29 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %30 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %29)
  %31 = load i32, i32* @EOPNOTSUPP, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %3, align 4
  br label %44

33:                                               ; preds = %21
  %34 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %35 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %34, i32 0, i32 0
  %36 = call i32 @mutex_lock(i32* %35)
  %37 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %38 = call i32 @devlink_health_dump_clear(%struct.devlink_health_reporter* %37)
  %39 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %40 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %39, i32 0, i32 0
  %41 = call i32 @mutex_unlock(i32* %40)
  %42 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %43 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %42)
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %33, %28, %18
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_health_dump_clear(%struct.devlink_health_reporter*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
