; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_schedule_apply.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_reg_schedule_apply.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_regdomain = type { i32 }
%struct.reg_regdb_apply_request = type { i32, %struct.ieee80211_regdomain* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@reg_regdb_apply_mutex = common dso_local global i32 0, align 4
@reg_regdb_apply_list = common dso_local global i32 0, align 4
@reg_regdb_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_regdomain*)* @reg_schedule_apply to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @reg_schedule_apply(%struct.ieee80211_regdomain* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_regdomain*, align 8
  %4 = alloca %struct.reg_regdb_apply_request*, align 8
  store %struct.ieee80211_regdomain* %0, %struct.ieee80211_regdomain** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.reg_regdb_apply_request* @kzalloc(i32 16, i32 %5)
  store %struct.reg_regdb_apply_request* %6, %struct.reg_regdb_apply_request** %4, align 8
  %7 = load %struct.reg_regdb_apply_request*, %struct.reg_regdb_apply_request** %4, align 8
  %8 = icmp ne %struct.reg_regdb_apply_request* %7, null
  br i1 %8, label %14, label %9

9:                                                ; preds = %1
  %10 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %11 = call i32 @kfree(%struct.ieee80211_regdomain* %10)
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %24

14:                                               ; preds = %1
  %15 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %3, align 8
  %16 = load %struct.reg_regdb_apply_request*, %struct.reg_regdb_apply_request** %4, align 8
  %17 = getelementptr inbounds %struct.reg_regdb_apply_request, %struct.reg_regdb_apply_request* %16, i32 0, i32 1
  store %struct.ieee80211_regdomain* %15, %struct.ieee80211_regdomain** %17, align 8
  %18 = call i32 @mutex_lock(i32* @reg_regdb_apply_mutex)
  %19 = load %struct.reg_regdb_apply_request*, %struct.reg_regdb_apply_request** %4, align 8
  %20 = getelementptr inbounds %struct.reg_regdb_apply_request, %struct.reg_regdb_apply_request* %19, i32 0, i32 0
  %21 = call i32 @list_add_tail(i32* %20, i32* @reg_regdb_apply_list)
  %22 = call i32 @mutex_unlock(i32* @reg_regdb_apply_mutex)
  %23 = call i32 @schedule_work(i32* @reg_regdb_work)
  store i32 0, i32* %2, align 4
  br label %24

24:                                               ; preds = %14, %9
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local %struct.reg_regdb_apply_request* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ieee80211_regdomain*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
