; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_quota.c_quota_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_quota.c_quota_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.xt_action_param = type { i64 }
%struct.xt_quota_info = type { i32, %struct.xt_quota_priv* }
%struct.xt_quota_priv = type { i64, i32 }

@XT_QUOTA_INVERT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @quota_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @quota_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.xt_action_param*, align 8
  %5 = alloca %struct.xt_quota_info*, align 8
  %6 = alloca %struct.xt_quota_priv*, align 8
  %7 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %4, align 8
  %8 = load %struct.xt_action_param*, %struct.xt_action_param** %4, align 8
  %9 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = inttoptr i64 %10 to i8*
  %12 = bitcast i8* %11 to %struct.xt_quota_info*
  store %struct.xt_quota_info* %12, %struct.xt_quota_info** %5, align 8
  %13 = load %struct.xt_quota_info*, %struct.xt_quota_info** %5, align 8
  %14 = getelementptr inbounds %struct.xt_quota_info, %struct.xt_quota_info* %13, i32 0, i32 1
  %15 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %14, align 8
  store %struct.xt_quota_priv* %15, %struct.xt_quota_priv** %6, align 8
  %16 = load %struct.xt_quota_info*, %struct.xt_quota_info** %5, align 8
  %17 = getelementptr inbounds %struct.xt_quota_info, %struct.xt_quota_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XT_QUOTA_INVERT, align 4
  %20 = and i32 %18, %19
  store i32 %20, i32* %7, align 4
  %21 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %6, align 8
  %22 = getelementptr inbounds %struct.xt_quota_priv, %struct.xt_quota_priv* %21, i32 0, i32 1
  %23 = call i32 @spin_lock_bh(i32* %22)
  %24 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %6, align 8
  %25 = getelementptr inbounds %struct.xt_quota_priv, %struct.xt_quota_priv* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %28 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp sge i64 %26, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %33 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %6, align 8
  %36 = getelementptr inbounds %struct.xt_quota_priv, %struct.xt_quota_priv* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = sub nsw i64 %37, %34
  store i64 %38, i64* %36, align 8
  %39 = load i32, i32* %7, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  store i32 %42, i32* %7, align 4
  br label %46

43:                                               ; preds = %2
  %44 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %6, align 8
  %45 = getelementptr inbounds %struct.xt_quota_priv, %struct.xt_quota_priv* %44, i32 0, i32 0
  store i64 0, i64* %45, align 8
  br label %46

46:                                               ; preds = %43, %31
  %47 = load %struct.xt_quota_priv*, %struct.xt_quota_priv** %6, align 8
  %48 = getelementptr inbounds %struct.xt_quota_priv, %struct.xt_quota_priv* %47, i32 0, i32 1
  %49 = call i32 @spin_unlock_bh(i32* %48)
  %50 = load i32, i32* %7, align 4
  ret i32 %50
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
