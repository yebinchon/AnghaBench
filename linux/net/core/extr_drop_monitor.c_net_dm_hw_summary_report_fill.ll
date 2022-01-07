; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_summary_report_fill.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_summary_report_fill.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_dm_hw_entries = type { i32 }
%struct.net_dm_alert_msg = type { i32 }

@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_ALERT = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NLA_UNSPEC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.net_dm_hw_entries*)* @net_dm_hw_summary_report_fill to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_hw_summary_report_fill(%struct.sk_buff* %0, %struct.net_dm_hw_entries* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.net_dm_hw_entries*, align 8
  %6 = alloca %struct.net_dm_alert_msg, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.net_dm_hw_entries* %1, %struct.net_dm_hw_entries** %5, align 8
  %9 = bitcast %struct.net_dm_alert_msg* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %9, i8 0, i64 4, i1 false)
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = load i32, i32* @NET_DM_CMD_ALERT, align 4
  %12 = call i8* @genlmsg_put(%struct.sk_buff* %10, i32 0, i32 0, i32* @net_drop_monitor_family, i32 0, i32 %11)
  store i8* %12, i8** %7, align 8
  %13 = load i8*, i8** %7, align 8
  %14 = icmp ne i8* %13, null
  br i1 %14, label %18, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EMSGSIZE, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %41

18:                                               ; preds = %2
  %19 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %20 = load i32, i32* @NLA_UNSPEC, align 4
  %21 = call i64 @nla_put(%struct.sk_buff* %19, i32 %20, i32 4, %struct.net_dm_alert_msg* %6)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  br label %35

24:                                               ; preds = %18
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = load %struct.net_dm_hw_entries*, %struct.net_dm_hw_entries** %5, align 8
  %27 = call i32 @net_dm_hw_entries_put(%struct.sk_buff* %25, %struct.net_dm_hw_entries* %26)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %24
  br label %35

31:                                               ; preds = %24
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load i8*, i8** %7, align 8
  %34 = call i32 @genlmsg_end(%struct.sk_buff* %32, i8* %33)
  store i32 0, i32* %3, align 4
  br label %41

35:                                               ; preds = %30, %23
  %36 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %37 = load i8*, i8** %7, align 8
  %38 = call i32 @genlmsg_cancel(%struct.sk_buff* %36, i8* %37)
  %39 = load i32, i32* @EMSGSIZE, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %35, %31, %15
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #2

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.net_dm_alert_msg*) #2

declare dso_local i32 @net_dm_hw_entries_put(%struct.sk_buff*, %struct.net_dm_hw_entries*) #2

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i8*) #2

declare dso_local i32 @genlmsg_cancel(%struct.sk_buff*, i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
