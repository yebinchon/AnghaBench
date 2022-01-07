; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_dump_get_dumpit.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_devlink.c_devlink_nl_cmd_health_reporter_dump_get_dumpit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.netlink_callback = type { i64*, i32 }
%struct.devlink_health_reporter = type { i64, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@EOPNOTSUPP = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"Dump trampled, please retry\00", align 1
@EAGAIN = common dso_local global i32 0, align 4
@DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.netlink_callback*)* @devlink_nl_cmd_health_reporter_dump_get_dumpit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @devlink_nl_cmd_health_reporter_dump_get_dumpit(%struct.sk_buff* %0, %struct.netlink_callback* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.netlink_callback*, align 8
  %6 = alloca %struct.devlink_health_reporter*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.netlink_callback* %1, %struct.netlink_callback** %5, align 8
  %9 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %10 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %9, i32 0, i32 0
  %11 = load i64*, i64** %10, align 8
  %12 = getelementptr inbounds i64, i64* %11, i64 0
  %13 = load i64, i64* %12, align 8
  store i64 %13, i64* %7, align 8
  %14 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %15 = call %struct.devlink_health_reporter* @devlink_health_reporter_get_from_cb(%struct.netlink_callback* %14)
  store %struct.devlink_health_reporter* %15, %struct.devlink_health_reporter** %6, align 8
  %16 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %17 = icmp ne %struct.devlink_health_reporter* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %89

21:                                               ; preds = %2
  %22 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %23 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %22, i32 0, i32 3
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %21
  %29 = load i32, i32* @EOPNOTSUPP, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %8, align 4
  br label %85

31:                                               ; preds = %21
  %32 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %33 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %32, i32 0, i32 1
  %34 = call i32 @mutex_lock(i32* %33)
  %35 = load i64, i64* %7, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %51, label %37

37:                                               ; preds = %31
  %38 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %39 = call i32 @devlink_health_do_dump(%struct.devlink_health_reporter* %38, i32* null)
  store i32 %39, i32* %8, align 4
  %40 = load i32, i32* %8, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %43

42:                                               ; preds = %37
  br label %81

43:                                               ; preds = %37
  %44 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %45 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %48 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %47, i32 0, i32 0
  %49 = load i64*, i64** %48, align 8
  %50 = getelementptr inbounds i64, i64* %49, i64 1
  store i64 %46, i64* %50, align 8
  br label %51

51:                                               ; preds = %43, %31
  %52 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %53 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %66

56:                                               ; preds = %51
  %57 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %58 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %57, i32 0, i32 0
  %59 = load i64*, i64** %58, align 8
  %60 = getelementptr inbounds i64, i64* %59, i64 1
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %63 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %61, %64
  br i1 %65, label %66, label %73

66:                                               ; preds = %56, %51
  %67 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %68 = getelementptr inbounds %struct.netlink_callback, %struct.netlink_callback* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @NL_SET_ERR_MSG_MOD(i32 %69, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %71 = load i32, i32* @EAGAIN, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %8, align 4
  br label %81

73:                                               ; preds = %56
  %74 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %75 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 4
  %77 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %78 = load %struct.netlink_callback*, %struct.netlink_callback** %5, align 8
  %79 = load i32, i32* @DEVLINK_CMD_HEALTH_REPORTER_DUMP_GET, align 4
  %80 = call i32 @devlink_fmsg_dumpit(i32 %76, %struct.sk_buff* %77, %struct.netlink_callback* %78, i32 %79)
  store i32 %80, i32* %8, align 4
  br label %81

81:                                               ; preds = %73, %66, %42
  %82 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %83 = getelementptr inbounds %struct.devlink_health_reporter, %struct.devlink_health_reporter* %82, i32 0, i32 1
  %84 = call i32 @mutex_unlock(i32* %83)
  br label %85

85:                                               ; preds = %81, %28
  %86 = load %struct.devlink_health_reporter*, %struct.devlink_health_reporter** %6, align 8
  %87 = call i32 @devlink_health_reporter_put(%struct.devlink_health_reporter* %86)
  %88 = load i32, i32* %8, align 4
  store i32 %88, i32* %3, align 4
  br label %89

89:                                               ; preds = %85, %18
  %90 = load i32, i32* %3, align 4
  ret i32 %90
}

declare dso_local %struct.devlink_health_reporter* @devlink_health_reporter_get_from_cb(%struct.netlink_callback*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @devlink_health_do_dump(%struct.devlink_health_reporter*, i32*) #1

declare dso_local i32 @NL_SET_ERR_MSG_MOD(i32, i8*) #1

declare dso_local i32 @devlink_fmsg_dumpit(i32, %struct.sk_buff*, %struct.netlink_callback*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @devlink_health_reporter_put(%struct.devlink_health_reporter*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
