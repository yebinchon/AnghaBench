; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_is_valid_reg_rule.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_is_valid_reg_rule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range }
%struct.ieee80211_freq_range = type { i64, i64, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_reg_rule*)* @is_valid_reg_rule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_valid_reg_rule(%struct.ieee80211_reg_rule* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_reg_rule*, align 8
  %4 = alloca %struct.ieee80211_freq_range*, align 8
  %5 = alloca i64, align 8
  store %struct.ieee80211_reg_rule* %0, %struct.ieee80211_reg_rule** %3, align 8
  %6 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %6, i32 0, i32 0
  store %struct.ieee80211_freq_range* %7, %struct.ieee80211_freq_range** %4, align 8
  %8 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp sle i64 %10, 0
  br i1 %11, label %17, label %12

12:                                               ; preds = %1
  %13 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %14 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp sle i64 %15, 0
  br i1 %16, label %17, label %18

17:                                               ; preds = %12, %1
  store i32 0, i32* %2, align 4
  br label %50

18:                                               ; preds = %12
  %19 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %20 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %23 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = icmp sgt i64 %21, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %50

27:                                               ; preds = %18
  %28 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %29 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %32 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = sub nsw i64 %30, %33
  store i64 %34, i64* %5, align 8
  %35 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %36 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %35, i32 0, i32 1
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %39 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp sle i64 %37, %40
  br i1 %41, label %48, label %42

42:                                               ; preds = %27
  %43 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %4, align 8
  %44 = getelementptr inbounds %struct.ieee80211_freq_range, %struct.ieee80211_freq_range* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %5, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %42, %27
  store i32 0, i32* %2, align 4
  br label %50

49:                                               ; preds = %42
  store i32 1, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %48, %26, %17
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
