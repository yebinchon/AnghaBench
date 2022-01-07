; ModuleID = '/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_limit_mt.c'
source_filename = "/home/carl/AnghaBench/linux/net/netfilter/extr_xt_limit.c_limit_mt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.xt_action_param = type { %struct.xt_rateinfo* }
%struct.xt_rateinfo = type { i64, i64, %struct.xt_limit_priv* }
%struct.xt_limit_priv = type { i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@CREDITS_PER_JIFFY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.xt_action_param*)* @limit_mt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @limit_mt(%struct.sk_buff* %0, %struct.xt_action_param* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.xt_action_param*, align 8
  %6 = alloca %struct.xt_rateinfo*, align 8
  %7 = alloca %struct.xt_limit_priv*, align 8
  %8 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %4, align 8
  store %struct.xt_action_param* %1, %struct.xt_action_param** %5, align 8
  %9 = load %struct.xt_action_param*, %struct.xt_action_param** %5, align 8
  %10 = getelementptr inbounds %struct.xt_action_param, %struct.xt_action_param* %9, i32 0, i32 0
  %11 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %10, align 8
  store %struct.xt_rateinfo* %11, %struct.xt_rateinfo** %6, align 8
  %12 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %13 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %12, i32 0, i32 2
  %14 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %13, align 8
  store %struct.xt_limit_priv* %14, %struct.xt_limit_priv** %7, align 8
  %15 = load i64, i64* @jiffies, align 8
  store i64 %15, i64* %8, align 8
  %16 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %17 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %16, i32 0, i32 1
  %18 = call i32 @spin_lock_bh(i32* %17)
  %19 = load i64, i64* %8, align 8
  %20 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %21 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %20, i32 0, i32 2
  %22 = load i64, i64* %8, align 8
  %23 = call i64 @xchg(i32* %21, i64 %22)
  %24 = sub i64 %19, %23
  %25 = load i64, i64* @CREDITS_PER_JIFFY, align 8
  %26 = mul i64 %24, %25
  %27 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %28 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = add i64 %29, %26
  store i64 %30, i64* %28, align 8
  %31 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %32 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %35 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = icmp sgt i64 %33, %36
  br i1 %37, label %38, label %44

38:                                               ; preds = %2
  %39 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %40 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %43 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %42, i32 0, i32 0
  store i64 %41, i64* %43, align 8
  br label %44

44:                                               ; preds = %38, %2
  %45 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %46 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %49 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = icmp sge i64 %47, %50
  br i1 %51, label %52, label %63

52:                                               ; preds = %44
  %53 = load %struct.xt_rateinfo*, %struct.xt_rateinfo** %6, align 8
  %54 = getelementptr inbounds %struct.xt_rateinfo, %struct.xt_rateinfo* %53, i32 0, i32 1
  %55 = load i64, i64* %54, align 8
  %56 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %57 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = sub nsw i64 %58, %55
  store i64 %59, i64* %57, align 8
  %60 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %61 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %60, i32 0, i32 1
  %62 = call i32 @spin_unlock_bh(i32* %61)
  store i32 1, i32* %3, align 4
  br label %67

63:                                               ; preds = %44
  %64 = load %struct.xt_limit_priv*, %struct.xt_limit_priv** %7, align 8
  %65 = getelementptr inbounds %struct.xt_limit_priv, %struct.xt_limit_priv* %64, i32 0, i32 1
  %66 = call i32 @spin_unlock_bh(i32* %65)
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %63, %52
  %68 = load i32, i32* %3, align 4
  ret i32 %68
}

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @xchg(i32*, i64) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
