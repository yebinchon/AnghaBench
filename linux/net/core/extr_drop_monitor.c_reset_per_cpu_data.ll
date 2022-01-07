; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_reset_per_cpu_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_reset_per_cpu_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.per_cpu_dm_data = type { i32, i32, i32 }
%struct.net_dm_alert_msg = type { i32 }
%struct.nlattr = type { i32 }
%struct.nlmsghdr = type { i32 }
%struct.genlmsghdr = type { i32 }

@dm_hit_limit = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@net_drop_monitor_family = common dso_local global i32 0, align 4
@NET_DM_CMD_ALERT = common dso_local global i32 0, align 4
@NLA_UNSPEC = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.per_cpu_dm_data*)* @reset_per_cpu_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @reset_per_cpu_data(%struct.per_cpu_dm_data* %0) #0 {
  %2 = alloca %struct.per_cpu_dm_data*, align 8
  %3 = alloca i64, align 8
  %4 = alloca %struct.net_dm_alert_msg*, align 8
  %5 = alloca %struct.nlattr*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i8*, align 8
  %9 = alloca %struct.nlmsghdr*, align 8
  %10 = alloca %struct.genlmsghdr*, align 8
  store %struct.per_cpu_dm_data* %0, %struct.per_cpu_dm_data** %2, align 8
  store i64 4, i64* %3, align 8
  %11 = load i32, i32* @dm_hit_limit, align 4
  %12 = sext i32 %11 to i64
  %13 = mul i64 %12, 4
  %14 = load i64, i64* %3, align 8
  %15 = add i64 %14, %13
  store i64 %15, i64* %3, align 8
  %16 = load i64, i64* %3, align 8
  %17 = add i64 %16, 4
  store i64 %17, i64* %3, align 8
  %18 = load i64, i64* %3, align 8
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.sk_buff* @genlmsg_new(i64 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %6, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %1
  br label %48

24:                                               ; preds = %1
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = load i32, i32* @NET_DM_CMD_ALERT, align 4
  %27 = call i8* @genlmsg_put(%struct.sk_buff* %25, i32 0, i32 0, i32* @net_drop_monitor_family, i32 0, i32 %26)
  store i8* %27, i8** %8, align 8
  %28 = load i8*, i8** %8, align 8
  %29 = icmp ne i8* %28, null
  br i1 %29, label %33, label %30

30:                                               ; preds = %24
  %31 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %32 = call i32 @nlmsg_free(%struct.sk_buff* %31)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %48

33:                                               ; preds = %24
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @NLA_UNSPEC, align 4
  %36 = call %struct.nlattr* @nla_reserve(%struct.sk_buff* %34, i32 %35, i32 4)
  store %struct.nlattr* %36, %struct.nlattr** %5, align 8
  %37 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %38 = icmp ne %struct.nlattr* %37, null
  br i1 %38, label %42, label %39

39:                                               ; preds = %33
  %40 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %41 = call i32 @nlmsg_free(%struct.sk_buff* %40)
  store %struct.sk_buff* null, %struct.sk_buff** %6, align 8
  br label %48

42:                                               ; preds = %33
  %43 = load %struct.nlattr*, %struct.nlattr** %5, align 8
  %44 = call %struct.net_dm_alert_msg* @nla_data(%struct.nlattr* %43)
  store %struct.net_dm_alert_msg* %44, %struct.net_dm_alert_msg** %4, align 8
  %45 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %4, align 8
  %46 = load i64, i64* %3, align 8
  %47 = call i32 @memset(%struct.net_dm_alert_msg* %45, i32 0, i64 %46)
  br label %57

48:                                               ; preds = %39, %30, %23
  %49 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %50 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %49, i32 0, i32 2
  %51 = load i64, i64* @jiffies, align 8
  %52 = load i32, i32* @HZ, align 4
  %53 = sdiv i32 %52, 10
  %54 = sext i32 %53 to i64
  %55 = add nsw i64 %51, %54
  %56 = call i32 @mod_timer(i32* %50, i64 %55)
  br label %57

57:                                               ; preds = %48, %42
  %58 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %59 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %58, i32 0, i32 0
  %60 = load i64, i64* %7, align 8
  %61 = call i32 @spin_lock_irqsave(i32* %59, i64 %60)
  %62 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %63 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %66 = call i32 @swap(i32 %64, %struct.sk_buff* %65)
  %67 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %2, align 8
  %68 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %67, i32 0, i32 0
  %69 = load i64, i64* %7, align 8
  %70 = call i32 @spin_unlock_irqrestore(i32* %68, i64 %69)
  %71 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %72 = icmp ne %struct.sk_buff* %71, null
  br i1 %72, label %73, label %85

73:                                               ; preds = %57
  %74 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %75 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %74, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = inttoptr i64 %76 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %77, %struct.nlmsghdr** %9, align 8
  %78 = load %struct.nlmsghdr*, %struct.nlmsghdr** %9, align 8
  %79 = call i64 @nlmsg_data(%struct.nlmsghdr* %78)
  %80 = inttoptr i64 %79 to %struct.genlmsghdr*
  store %struct.genlmsghdr* %80, %struct.genlmsghdr** %10, align 8
  %81 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %82 = load %struct.genlmsghdr*, %struct.genlmsghdr** %10, align 8
  %83 = call i32 @genlmsg_data(%struct.genlmsghdr* %82)
  %84 = call i32 @genlmsg_end(%struct.sk_buff* %81, i32 %83)
  br label %85

85:                                               ; preds = %73, %57
  %86 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  ret %struct.sk_buff* %86
}

declare dso_local %struct.sk_buff* @genlmsg_new(i64, i32) #1

declare dso_local i8* @genlmsg_put(%struct.sk_buff*, i32, i32, i32*, i32, i32) #1

declare dso_local i32 @nlmsg_free(%struct.sk_buff*) #1

declare dso_local %struct.nlattr* @nla_reserve(%struct.sk_buff*, i32, i32) #1

declare dso_local %struct.net_dm_alert_msg* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memset(%struct.net_dm_alert_msg*, i32, i64) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @swap(i32, %struct.sk_buff*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i64 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local i32 @genlmsg_end(%struct.sk_buff*, i32) #1

declare dso_local i32 @genlmsg_data(%struct.genlmsghdr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
