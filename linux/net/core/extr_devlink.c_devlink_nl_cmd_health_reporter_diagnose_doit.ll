; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_diagnose_doit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_diagnose_doit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { %struct.devlink** }
%struct.devlink = type { i32 }
%struct.devlink_health_reporter = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)* }
%struct.devlink_fmsg = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@DEVLINK_CMD_HEALTH_REPORTER_DIAGNOSE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @devlink_nl_cmd_health_reporter_diagnose_doit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_diagnose_doit(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca %struct.devlink*, align 8
  %7 = alloca %struct.devlink_health_reporter*, align 8
  %8 = alloca %struct.devlink_fmsg*, align 8
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %11 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %10, i32 0, i32 0
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
  br label %79

23:                                               ; preds = %2
  %24 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %25 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %24, i32 0, i32 0
  %26 = load %struct.TYPE_2__*, %struct.TYPE_2__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)*, i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)** %27, align 8
  %29 = icmp ne i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)* %28, null
  br i1 %29, label %35, label %30

30:                                               ; preds = %23
  %31 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %32 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %31)
  %33 = load i32, i32* @EOPNOTSUPP, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %3, align 4
  br label %79

35:                                               ; preds = %23
  %36 = call %struct.devlink_fmsg* (...) @devlink_fmsg_alloc()
  store %struct.devlink_fmsg* %36, %struct.devlink_fmsg** %8, align 8
  %37 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %38 = icmp ne %struct.devlink_fmsg* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %35
  %40 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %41 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %40)
  %42 = load i32, i32* @ENOMEM, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %79

44:                                               ; preds = %35
  %45 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %46 = call i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg* %45)
  store i32 %46, i32* %9, align 4
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %44
  br label %73

50:                                               ; preds = %44
  %51 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %52 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %51, i32 0, i32 0
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)*, i32 (%struct.devlink_health_reporter*, %struct.devlink_fmsg*)** %54, align 8
  %56 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %57 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %58 = call i32 %55(%struct.devlink_health_reporter* %56, %struct.devlink_fmsg* %57)
  store i32 %58, i32* %9, align 4
  %59 = load i32, i32* %9, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %61, label %62

61:                                               ; preds = %50
  br label %73

62:                                               ; preds = %50
  %63 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %64 = call i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg* %63)
  store i32 %64, i32* %9, align 4
  %65 = load i32, i32* %9, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %73

68:                                               ; preds = %62
  %69 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %70 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %71 = load i32, i32* @DEVLINK_CMD_HEALTH_REPORTER_DIAGNOSE, align 4
  %72 = call i32 @devlink_fmsg_snd(%struct.devlink_fmsg* %69, %struct.genl_info* %70, i32 %71, i32 0)
  store i32 %72, i32* %9, align 4
  br label %73

73:                                               ; preds = %68, %67, %61, %49
  %74 = load %struct.devlink_fmsg*, %struct.devlink_fmsg** %8, align 8
  %75 = call i32 @devlink_fmsg_free(%struct.devlink_fmsg* %74)
  %76 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %7, align 8
  %77 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %76)
  %78 = load i32, i32* %9, align 4
  store i32 %78, i32* %3, align 4
  br label %79

79:                                               ; preds = %73, %39, %30, %20
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_info(%struct.devlink*, %struct.genl_info*) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

declare dso_local %struct.devlink_fmsg* @devlink_fmsg_alloc(...) #1

declare dso_local i32 @devlink_fmsg_obj_nest_start(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_obj_nest_end(%struct.devlink_fmsg*) #1

declare dso_local i32 @devlink_fmsg_snd(%struct.devlink_fmsg*, %struct.genl_info*, i32, i32) #1

declare dso_local i32 @devlink_fmsg_free(%struct.devlink_fmsg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
