; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_freq_reg_info_regd.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_reg.c_freq_reg_info_regd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_reg_rule = type { %struct.ieee80211_freq_range }
%struct.ieee80211_freq_range = type { i32 }
%struct.ieee80211_regdomain = type { i32, %struct.ieee80211_reg_rule* }

@EINVAL = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ieee80211_reg_rule* (i32, %struct.ieee80211_regdomain*, i32)* @freq_reg_info_regd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ieee80211_reg_rule* @freq_reg_info_regd(i32 %0, %struct.ieee80211_regdomain* %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_reg_rule*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_regdomain*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_reg_rule*, align 8
  %12 = alloca %struct.ieee80211_freq_range*, align 8
  store i32 %0, i32* %5, align 4
  store %struct.ieee80211_regdomain* %1, %struct.ieee80211_regdomain** %6, align 8
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %13 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %14 = icmp ne %struct.ieee80211_regdomain* %13, null
  br i1 %14, label %19, label %15

15:                                               ; preds = %3
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  %18 = call %struct.ieee80211_reg_rule* @ERR_PTR(i32 %17)
  store %struct.ieee80211_reg_rule* %18, %struct.ieee80211_reg_rule** %4, align 8
  br label %68

19:                                               ; preds = %3
  store i32 0, i32* %8, align 4
  br label %20

20:                                               ; preds = %54, %19
  %21 = load i32, i32* %8, align 4
  %22 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %23 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp slt i32 %21, %24
  br i1 %25, label %26, label %57

26:                                               ; preds = %20
  store %struct.ieee80211_freq_range* null, %struct.ieee80211_freq_range** %12, align 8
  %27 = load %struct.ieee80211_regdomain*, %struct.ieee80211_regdomain** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_regdomain, %struct.ieee80211_regdomain* %27, i32 0, i32 1
  %29 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %29, i64 %31
  store %struct.ieee80211_reg_rule* %32, %struct.ieee80211_reg_rule** %11, align 8
  %33 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  %34 = getelementptr inbounds %struct.ieee80211_reg_rule, %struct.ieee80211_reg_rule* %33, i32 0, i32 0
  store %struct.ieee80211_freq_range* %34, %struct.ieee80211_freq_range** %12, align 8
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %41, label %37

37:                                               ; preds = %26
  %38 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %39 = load i32, i32* %5, align 4
  %40 = call i32 @freq_in_rule_band(%struct.ieee80211_freq_range* %38, i32 %39)
  store i32 %40, i32* %9, align 4
  br label %41

41:                                               ; preds = %37, %26
  %42 = load %struct.ieee80211_freq_range*, %struct.ieee80211_freq_range** %12, align 8
  %43 = load i32, i32* %5, align 4
  %44 = load i32, i32* %7, align 4
  %45 = call i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range* %42, i32 %43, i32 %44)
  store i32 %45, i32* %10, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %41
  %49 = load i32, i32* %10, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %53

51:                                               ; preds = %48
  %52 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %11, align 8
  store %struct.ieee80211_reg_rule* %52, %struct.ieee80211_reg_rule** %4, align 8
  br label %68

53:                                               ; preds = %48, %41
  br label %54

54:                                               ; preds = %53
  %55 = load i32, i32* %8, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %8, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load i32, i32* %9, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %64, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* @ERANGE, align 4
  %62 = sub nsw i32 0, %61
  %63 = call %struct.ieee80211_reg_rule* @ERR_PTR(i32 %62)
  store %struct.ieee80211_reg_rule* %63, %struct.ieee80211_reg_rule** %4, align 8
  br label %68

64:                                               ; preds = %57
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  %67 = call %struct.ieee80211_reg_rule* @ERR_PTR(i32 %66)
  store %struct.ieee80211_reg_rule* %67, %struct.ieee80211_reg_rule** %4, align 8
  br label %68

68:                                               ; preds = %64, %60, %51, %15
  %69 = load %struct.ieee80211_reg_rule*, %struct.ieee80211_reg_rule** %4, align 8
  ret %struct.ieee80211_reg_rule* %69
}

declare dso_local %struct.ieee80211_reg_rule* @ERR_PTR(i32) #1

declare dso_local i32 @freq_in_rule_band(%struct.ieee80211_freq_range*, i32) #1

declare dso_local i32 @cfg80211_does_bw_fit_range(%struct.ieee80211_freq_range*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
