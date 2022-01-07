; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_set_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_set_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i64*, %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD = common dso_local global i64 0, align 8
@DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER = common dso_local global i64 0, align 8
@EOPNOTSUPP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_health_reporter_set_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_set_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %9 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %10 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %9, i32 0, i32 1
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
  br label %91

22:                                               ; preds = %2
  %23 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %24 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %23, i32 0, i32 2
  %25 = load %struct.TYPE_2__*, %struct.TYPE_2__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %48, label %29

29:                                               ; preds = %22
  %30 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %31 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %30, i32 0, i32 0
  %32 = load i64*, i64** %31, align 8
  %33 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD, align 8
  %34 = getelementptr inbounds i64, i64* %32, i64 %33
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %45, label %37

37:                                               ; preds = %29
  %38 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %39 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %38, i32 0, i32 0
  %40 = load i64*, i64** %39, align 8
  %41 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER, align 8
  %42 = getelementptr inbounds i64, i64* %40, i64 %41
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %48

45:                                               ; preds = %37, %29
  %46 = load i32, i32* @EOPNOTSUPP, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %8, align 4
  br label %87

48:                                               ; preds = %37, %22
  %49 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %50 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %49, i32 0, i32 0
  %51 = load i64*, i64** %50, align 8
  %52 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD, align 8
  %53 = getelementptr inbounds i64, i64* %51, i64 %52
  %54 = load i64, i64* %53, align 8
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %48
  %57 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %58 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_GRACEFUL_PERIOD, align 8
  %61 = getelementptr inbounds i64, i64* %59, i64 %60
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @nla_get_u64(i64 %62)
  %64 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %65 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  br label %66

66:                                               ; preds = %56, %48
  %67 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %68 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %67, i32 0, i32 0
  %69 = load i64*, i64** %68, align 8
  %70 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER, align 8
  %71 = getelementptr inbounds i64, i64* %69, i64 %70
  %72 = load i64, i64* %71, align 8
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %66
  %75 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %76 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %75, i32 0, i32 0
  %77 = load i64*, i64** %76, align 8
  %78 = load i64, i64* @DEVLINK_ATTR_HEALTH_REPORTER_AUTO_RECOVER, align 8
  %79 = getelementptr inbounds i64, i64* %77, i64 %78
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @nla_get_u8(i64 %80)
  %82 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %83 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %82, i32 0, i32 0
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %74, %66
  %85 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %86 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %85)
  store i32 0, i32* %3, align 4
  br label %91

87:                                               ; preds = %45
  %88 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %89 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %88)
  %90 = load i32, i32* %8, align 4
  store i32 %90, i32* %3, align 4
  br label %91

91:                                               ; preds = %87, %84, %19
  %92 = load i32, i32* %3, align 4
  ret i32 %92
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local i32 @nla_get_u64(i64) #1

declare dso_local i32 @nla_get_u8(i64) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
