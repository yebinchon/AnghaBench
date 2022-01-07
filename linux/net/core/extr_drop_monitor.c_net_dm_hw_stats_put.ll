; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_stats_put.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_net_dm_hw_stats_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net_dm_stats = type { i32 }
%struct.nlattr = type { i32 }

@NET_DM_ATTR_HW_STATS = common dso_local global i32 0, align 4
@EMSGSIZE = common dso_local global i32 0, align 4
@NET_DM_ATTR_STATS_DROPPED = common dso_local global i32 0, align 4
@NET_DM_ATTR_PAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*)* @net_dm_hw_stats_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @net_dm_hw_stats_put(%struct.sk_buff* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.net_dm_stats, align 4
  %5 = alloca %struct.nlattr*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  %6 = call i32 @net_dm_hw_stats_read(%struct.net_dm_stats* %4)
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = load i32, i32* @NET_DM_ATTR_HW_STATS, align 4
  %9 = call %struct.nlattr* @nla_nest_start(%struct.sk_buff* %7, i32 %8)
  store %struct.nlattr* %9, %struct.nlattr** %5, align 8
  %10 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %11 = icmp ne %struct.nlattr* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load i32, i32* @EMSGSIZE, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %2, align 4
  br label %34

15:                                               ; preds = %1
  %16 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %17 = load i32, i32* @NET_DM_ATTR_STATS_DROPPED, align 4
  %18 = getelementptr inbounds %struct.net_dm_stats, %struct.net_dm_stats* %4, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NET_DM_ATTR_PAD, align 4
  %21 = call i64 @nla_put_u64_64bit(%struct.sk_buff* %16, i32 %17, i32 %19, i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %28

24:                                               ; preds = %15
  %25 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %26 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %27 = call i32 @nla_nest_end(%struct.sk_buff* %25, %struct.nlattr* %26)
  store i32 0, i32* %2, align 4
  br label %34

28:                                               ; preds = %23
  %29 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %30 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %31 = call i32 @nla_nest_cancel(%struct.sk_buff* %29, %struct.nlattr* %30)
  %32 = load i32, i32* @EMSGSIZE, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %34

34:                                               ; preds = %28, %24, %12
  %35 = load i32, i32* %2, align 4
  ret i32 %35
}

declare dso_local i32 @net_dm_hw_stats_read(%struct.net_dm_stats*) #1

declare dso_local %struct.nlattr* @nla_nest_start(%struct.sk_buff*, i32) #1

declare dso_local i64 @nla_put_u64_64bit(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @nla_nest_end(%struct.sk_buff*, %struct.nlattr*) #1

declare dso_local i32 @nla_nest_cancel(%struct.sk_buff*, %struct.nlattr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
