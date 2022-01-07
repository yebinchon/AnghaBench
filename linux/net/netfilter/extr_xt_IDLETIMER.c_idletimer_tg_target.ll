; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_IDLETIMER.c_idletimer_tg_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.idletimer_tg_info* }
%struct.idletimer_tg_info = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"resetting timer %s, timeout period %u\0A\00", align 1
@jiffies = common dso_local global i64 0, align 8
@XT_CONTINUE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @idletimer_tg_target to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @idletimer_tg_target(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.idletimer_tg_info*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %6 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %7 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %6, i32 0, i32 0
  %8 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %7, align 8
  store %struct.idletimer_tg_info* %8, %struct.idletimer_tg_info** %5, align 8
  %9 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %5, align 8
  %10 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 8
  %12 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %5, align 8
  %13 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = call i32 @pr_debug(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), i32 %11, i32 %14)
  %16 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %5, align 8
  %17 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %16, i32 0, i32 1
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load %struct.idletimer_tg_info*, %struct.idletimer_tg_info** %5, align 8
  %21 = getelementptr inbounds %struct.idletimer_tg_info, %struct.idletimer_tg_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = mul nsw i32 %22, 1000
  %24 = call i64 @msecs_to_jiffies(i32 %23)
  %25 = load i64, i64* @jiffies, align 8
  %26 = add nsw i64 %24, %25
  %27 = call i32 @mod_timer(i32* %19, i64 %26)
  %28 = load i32, i32* @XT_CONTINUE, align 4
  ret i32 %28
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @mod_timer(i32*, i64) #1

declare dso_local i64 @msecs_to_jiffies(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
