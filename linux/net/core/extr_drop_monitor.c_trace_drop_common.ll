; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_trace_drop_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_drop_monitor.c_trace_drop_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.net_dm_alert_msg = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }
%struct.nlmsghdr = type { i32 }
%struct.nlattr = type { i32 }
%struct.per_cpu_dm_data = type { i32, %struct.TYPE_5__, %struct.sk_buff* }
%struct.TYPE_5__ = type { i64 }

@dm_cpu_data = common dso_local global i32 0, align 4
@dm_hit_limit = common dso_local global i32 0, align 4
@jiffies = common dso_local global i64 0, align 8
@dm_delay = common dso_local global i32 0, align 4
@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, i8*)* @trace_drop_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @trace_drop_common(%struct.sk_buff* %0, i8* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.net_dm_alert_msg*, align 8
  %6 = alloca %struct.nlmsghdr*, align 8
  %7 = alloca %struct.nlattr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.per_cpu_dm_data*, align 8
  %11 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store i8* %1, i8** %4, align 8
  %12 = load i64, i64* %11, align 8
  %13 = call i32 @local_irq_save(i64 %12)
  %14 = call %struct.per_cpu_dm_data* @this_cpu_ptr(i32* @dm_cpu_data)
  store %struct.per_cpu_dm_data* %14, %struct.per_cpu_dm_data** %10, align 8
  %15 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %16 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %15, i32 0, i32 0
  %17 = call i32 @spin_lock(i32* %16)
  %18 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %19 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %18, i32 0, i32 2
  %20 = load %struct.sk_buff*, %struct.sk_buff** %19, align 8
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %22 = icmp ne %struct.sk_buff* %21, null
  br i1 %22, label %24, label %23

23:                                               ; preds = %2
  br label %124

24:                                               ; preds = %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to %struct.nlmsghdr*
  store %struct.nlmsghdr* %28, %struct.nlmsghdr** %6, align 8
  %29 = load %struct.nlmsghdr*, %struct.nlmsghdr** %6, align 8
  %30 = call i32 @nlmsg_data(%struct.nlmsghdr* %29)
  %31 = call %struct.nlattr* @genlmsg_data(i32 %30)
  store %struct.nlattr* %31, %struct.nlattr** %7, align 8
  %32 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %33 = call %struct.net_dm_alert_msg* @nla_data(%struct.nlattr* %32)
  store %struct.net_dm_alert_msg* %33, %struct.net_dm_alert_msg** %5, align 8
  store i32 0, i32* %8, align 4
  br label %34

34:                                               ; preds = %62, %24
  %35 = load i32, i32* %8, align 4
  %36 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %37 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = icmp slt i32 %35, %38
  br i1 %39, label %40, label %65

40:                                               ; preds = %34
  %41 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %42 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %41, i32 0, i32 1
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = load i32, i32* %8, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i64 %45
  %47 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memcmp(i8** %4, i32 %48, i32 8)
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %61, label %51

51:                                               ; preds = %40
  %52 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %53 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %52, i32 0, i32 1
  %54 = load %struct.TYPE_4__*, %struct.TYPE_4__** %53, align 8
  %55 = load i32, i32* %8, align 4
  %56 = sext i32 %55 to i64
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i64 %56
  %58 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %58, align 4
  br label %124

61:                                               ; preds = %40
  br label %62

62:                                               ; preds = %61
  %63 = load i32, i32* %8, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %8, align 4
  br label %34

65:                                               ; preds = %34
  %66 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %67 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = load i32, i32* @dm_hit_limit, align 4
  %70 = icmp eq i32 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65
  br label %124

72:                                               ; preds = %65
  %73 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %74 = call i32 @__nla_reserve_nohdr(%struct.sk_buff* %73, i32 4)
  %75 = call i64 @NLA_ALIGN(i32 4)
  %76 = load %struct.nlattr*, %struct.nlattr** %7, align 8
  %77 = getelementptr inbounds %struct.nlattr, %struct.nlattr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = add nsw i64 %79, %75
  %81 = trunc i64 %80 to i32
  store i32 %81, i32* %77, align 4
  %82 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %83 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %82, i32 0, i32 1
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %86 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = sext i32 %87 to i64
  %89 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i64 %88
  %90 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = call i32 @memcpy(i32 %91, i8** %4, i32 8)
  %93 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %94 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %93, i32 0, i32 1
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %97 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 8
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i64 %99
  %101 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %100, i32 0, i32 0
  store i32 1, i32* %101, align 4
  %102 = load %struct.net_dm_alert_msg*, %struct.net_dm_alert_msg** %5, align 8
  %103 = getelementptr inbounds %struct.net_dm_alert_msg, %struct.net_dm_alert_msg* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %103, align 8
  %106 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %107 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %106, i32 0, i32 1
  %108 = call i32 @timer_pending(%struct.TYPE_5__* %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %123, label %110

110:                                              ; preds = %72
  %111 = load i64, i64* @jiffies, align 8
  %112 = load i32, i32* @dm_delay, align 4
  %113 = load i32, i32* @HZ, align 4
  %114 = mul nsw i32 %112, %113
  %115 = sext i32 %114 to i64
  %116 = add nsw i64 %111, %115
  %117 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %118 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %118, i32 0, i32 0
  store i64 %116, i64* %119, align 8
  %120 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %121 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %120, i32 0, i32 1
  %122 = call i32 @add_timer(%struct.TYPE_5__* %121)
  br label %123

123:                                              ; preds = %110, %72
  br label %124

124:                                              ; preds = %123, %71, %51, %23
  %125 = load %struct.per_cpu_dm_data*, %struct.per_cpu_dm_data** %10, align 8
  %126 = getelementptr inbounds %struct.per_cpu_dm_data, %struct.per_cpu_dm_data* %125, i32 0, i32 0
  %127 = load i64, i64* %11, align 8
  %128 = call i32 @spin_unlock_irqrestore(i32* %126, i64 %127)
  ret void
}

declare dso_local i32 @local_irq_save(i64) #1

declare dso_local %struct.per_cpu_dm_data* @this_cpu_ptr(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.nlattr* @genlmsg_data(i32) #1

declare dso_local i32 @nlmsg_data(%struct.nlmsghdr*) #1

declare dso_local %struct.net_dm_alert_msg* @nla_data(%struct.nlattr*) #1

declare dso_local i32 @memcmp(i8**, i32, i32) #1

declare dso_local i32 @__nla_reserve_nohdr(%struct.sk_buff*, i32) #1

declare dso_local i64 @NLA_ALIGN(i32) #1

declare dso_local i32 @memcpy(i32, i8**, i32) #1

declare dso_local i32 @timer_pending(%struct.TYPE_5__*) #1

declare dso_local i32 @add_timer(%struct.TYPE_5__*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
