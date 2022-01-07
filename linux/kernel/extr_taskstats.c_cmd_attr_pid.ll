; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_cmd_attr_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_taskstats.c_cmd_attr_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.genl_info = type { i32* }
%struct.taskstats = type { i32 }
%struct.sk_buff = type { i32 }

@TASKSTATS_CMD_NEW = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@TASKSTATS_CMD_ATTR_PID = common dso_local global i64 0, align 8
@TASKSTATS_TYPE_PID = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.genl_info*)* @cmd_attr_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_attr_pid(%struct.genl_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.genl_info*, align 8
  %4 = alloca %struct.taskstats*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.genl_info* %0, %struct.genl_info** %3, align 8
  %9 = call i64 (...) @taskstats_packet_size()
  store i64 %9, i64* %6, align 8
  %10 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %11 = load i32, i32* @TASKSTATS_CMD_NEW, align 4
  %12 = load i64, i64* %6, align 8
  %13 = call i32 @prepare_reply(%struct.genl_info* %10, i32 %11, %struct.sk_buff** %5, i64 %12)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp slt i32 %14, 0
  br i1 %15, label %16, label %18

16:                                               ; preds = %1
  %17 = load i32, i32* %8, align 4
  store i32 %17, i32* %2, align 4
  br label %50

18:                                               ; preds = %1
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %22 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = load i64, i64* @TASKSTATS_CMD_ATTR_PID, align 8
  %25 = getelementptr inbounds i32, i32* %23, i64 %24
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @nla_get_u32(i32 %26)
  store i32 %27, i32* %7, align 4
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = load i32, i32* @TASKSTATS_TYPE_PID, align 4
  %30 = load i32, i32* %7, align 4
  %31 = call %struct.taskstats* @mk_reply(%struct.sk_buff* %28, i32 %29, i32 %30)
  store %struct.taskstats* %31, %struct.taskstats** %4, align 8
  %32 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  %33 = icmp ne %struct.taskstats* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %18
  br label %46

35:                                               ; preds = %18
  %36 = load i32, i32* %7, align 4
  %37 = load %struct.taskstats*, %struct.taskstats** %4, align 8
  %38 = call i32 @fill_stats_for_pid(i32 %36, %struct.taskstats* %37)
  store i32 %38, i32* %8, align 4
  %39 = load i32, i32* %8, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %44 = load %struct.genl_info*, %struct.genl_info** %3, align 8
  %45 = call i32 @send_reply(%struct.sk_buff* %43, %struct.genl_info* %44)
  store i32 %45, i32* %2, align 4
  br label %50

46:                                               ; preds = %41, %34
  %47 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %48 = call i32 @nlmsg_free(%struct.sk_buff* %47)
  %49 = load i32, i32* %8, align 4
  store i32 %49, i32* %2, align 4
  br label %50

50:                                               ; preds = %46, %42, %16
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local i64 @taskstats_packet_size(...) #1

declare dso_local i32 @prepare_reply(%struct.genl_info*, i32, %struct.sk_buff**, i64) #1

declare dso_local i32 @nla_get_u32(i32) #1

declare dso_local %struct.taskstats* @mk_reply(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @fill_stats_for_pid(i32, %struct.taskstats*) #1

declare dso_local i32 @send_reply(%struct.sk_buff*, %struct.genl_info*) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
