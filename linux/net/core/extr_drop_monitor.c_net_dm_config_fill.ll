; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_config_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_config_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.genl_info = type { i32, i32 }

@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_CONFIG_NEW = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NET_DM_ATTR_ALERT_MODE = common dso_local global i32 0, align 4
@net_dm_alert_mode = common dso_local global i32 0, align 4
@NET_DM_ATTR_TRUNC_LEN = common dso_local global i32 0, align 4
@net_dm_trunc_len = common dso_local global i32 0, align 4
@NET_DM_ATTR_QUEUE_LEN = common dso_local global i32 0, align 4
@net_dm_queue_len = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.genl_info*)* @net_dm_config_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_config_fill(%struct.sk_buff* %0, %struct.genl_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.genl_info*, align 8
  %6 = alloca i8*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.genl_info* %1, %struct.genl_info** %5, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %8 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %9 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 4
  %11 = load %struct.genl_info*, %struct.genl_info** %5, align 8
  %12 = getelementptr inbounds %struct.genl_info, %struct.genl_info* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* @NET_DM_CMD_CONFIG_NEW, align 4
  %15 = call i8* @genlmsg_put(%struct.sk_buff* %7, i32 %10, i32 %13, i32* @net_drop_monitor_family, i32 0, i32 %14)
  store i8* %15, i8** %6, align 8
  %16 = load i8*, i8** %6, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EMSGSIZE, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %52

21:                                               ; preds = %2
  %22 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %23 = load i32, i32* @NET_DM_ATTR_ALERT_MODE, align 4
  %24 = load i32, i32* @net_dm_alert_mode, align 4
  %25 = call i64 @nla_put_u8(%struct.sk_buff* %22, i32 %23, i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %21
  br label %46

28:                                               ; preds = %21
  %29 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %30 = load i32, i32* @NET_DM_ATTR_TRUNC_LEN, align 4
  %31 = load i32, i32* @net_dm_trunc_len, align 4
  %32 = call i64 @nla_put_u32(%struct.sk_buff* %29, i32 %30, i32 %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %35

34:                                               ; preds = %28
  br label %46

35:                                               ; preds = %28
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i32, i32* @NET_DM_ATTR_QUEUE_LEN, align 4
  %38 = load i32, i32* @net_dm_queue_len, align 4
  %39 = call i64 @nla_put_u32(%struct.sk_buff* %36, i32 %37, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %35
  br label %46

42:                                               ; preds = %35
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i8*, i8** %6, align 8
  %45 = call i32 @genlmsg_end(%struct.sk_buff* %43, i8* %44)
  store i32 0, i32* %3, align 4
  br label %52

46:                                               ; preds = %41, %34, %27
  %47 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %48 = load i8*, i8** %6, align 8
  %49 = call i32 @genlmsg_cancel(%struct.sk_buff* %47, i8* %48)
  %50 = load i32, i32* @EMSGSIZE, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %52

52:                                               ; preds = %46, %42, %18
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i64 @nla_put_u8(%struct.sk_buff*, i32, i32) #1

declare dso_local i64 @nla_put_u32(%struct.sk_buff*, i32, i32) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #1

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
