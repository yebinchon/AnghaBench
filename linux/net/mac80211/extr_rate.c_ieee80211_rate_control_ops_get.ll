; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_ieee80211_rate_control_ops_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_ieee80211_rate_control_ops_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_control_ops = type { i32 }

@THIS_MODULE = common dso_local global i32 0, align 4
@ieee80211_default_rc_algo = common dso_local global i8* null, align 8
@CONFIG_MAC80211_RC_DEFAULT = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rate_control_ops* (i8*)* @ieee80211_rate_control_ops_get to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rate_control_ops* @ieee80211_rate_control_ops_get(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca %struct.rate_control_ops*, align 8
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %5 = load i32, i32* @THIS_MODULE, align 4
  %6 = call i32 @kernel_param_lock(i32 %5)
  %7 = load i8*, i8** %2, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %11, label %9

9:                                                ; preds = %1
  %10 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  store i8* %10, i8** %4, align 8
  br label %13

11:                                               ; preds = %1
  %12 = load i8*, i8** %2, align 8
  store i8* %12, i8** %4, align 8
  br label %13

13:                                               ; preds = %11, %9
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %14)
  store %struct.rate_control_ops* %15, %struct.rate_control_ops** %3, align 8
  %16 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  %17 = icmp ne %struct.rate_control_ops* %16, null
  br i1 %17, label %24, label %18

18:                                               ; preds = %13
  %19 = load i8*, i8** %2, align 8
  %20 = icmp ne i8* %19, null
  br i1 %20, label %21, label %24

21:                                               ; preds = %18
  %22 = load i8*, i8** @ieee80211_default_rc_algo, align 8
  %23 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %22)
  store %struct.rate_control_ops* %23, %struct.rate_control_ops** %3, align 8
  br label %24

24:                                               ; preds = %21, %18, %13
  %25 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  %26 = icmp ne %struct.rate_control_ops* %25, null
  br i1 %26, label %34, label %27

27:                                               ; preds = %24
  %28 = load i8*, i8** @CONFIG_MAC80211_RC_DEFAULT, align 8
  %29 = call i64 @strlen(i8* %28)
  %30 = icmp sgt i64 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %27
  %32 = load i8*, i8** @CONFIG_MAC80211_RC_DEFAULT, align 8
  %33 = call %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8* %32)
  store %struct.rate_control_ops* %33, %struct.rate_control_ops** %3, align 8
  br label %34

34:                                               ; preds = %31, %27, %24
  %35 = load i32, i32* @THIS_MODULE, align 4
  %36 = call i32 @kernel_param_unlock(i32 %35)
  %37 = load %struct.rate_control_ops*, %struct.rate_control_ops** %3, align 8
  ret %struct.rate_control_ops* %37
}

declare dso_local i32 @kernel_param_lock(i32) #1

declare dso_local %struct.rate_control_ops* @ieee80211_try_rate_control_ops_get(i8*) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @kernel_param_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
