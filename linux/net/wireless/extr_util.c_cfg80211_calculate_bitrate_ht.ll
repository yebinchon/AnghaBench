; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_ht.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_ht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i64, i32 }

@RATE_INFO_BW_40 = common dso_local global i64 0, align 8
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rate_info*)* @cfg80211_calculate_bitrate_ht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_calculate_bitrate_ht(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %7 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %8 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp sge i32 %9, 32
  %11 = zext i1 %10 to i32
  %12 = call i64 @WARN_ON_ONCE(i32 %11)
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %71

15:                                               ; preds = %1
  %16 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %17 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = and i32 %18, 7
  store i32 %19, i32* %4, align 4
  %20 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %21 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = ashr i32 %22, 3
  %24 = add nsw i32 %23, 1
  store i32 %24, i32* %5, align 4
  %25 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %26 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %25, i32 0, i32 1
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @RATE_INFO_BW_40, align 8
  %29 = icmp eq i64 %27, %28
  %30 = zext i1 %29 to i64
  %31 = select i1 %29, i32 13500000, i32 6500000
  store i32 %31, i32* %6, align 4
  %32 = load i32, i32* %4, align 4
  %33 = icmp slt i32 %32, 4
  br i1 %33, label %34, label %39

34:                                               ; preds = %15
  %35 = load i32, i32* %4, align 4
  %36 = add nsw i32 %35, 1
  %37 = load i32, i32* %6, align 4
  %38 = mul nsw i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %53

39:                                               ; preds = %15
  %40 = load i32, i32* %4, align 4
  %41 = icmp eq i32 %40, 4
  br i1 %41, label %42, label %47

42:                                               ; preds = %39
  %43 = load i32, i32* %4, align 4
  %44 = add nsw i32 %43, 2
  %45 = load i32, i32* %6, align 4
  %46 = mul nsw i32 %45, %44
  store i32 %46, i32* %6, align 4
  br label %52

47:                                               ; preds = %39
  %48 = load i32, i32* %4, align 4
  %49 = add nsw i32 %48, 3
  %50 = load i32, i32* %6, align 4
  %51 = mul nsw i32 %50, %49
  store i32 %51, i32* %6, align 4
  br label %52

52:                                               ; preds = %47, %42
  br label %53

53:                                               ; preds = %52, %34
  %54 = load i32, i32* %5, align 4
  %55 = load i32, i32* %6, align 4
  %56 = mul nsw i32 %55, %54
  store i32 %56, i32* %6, align 4
  %57 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %58 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %57, i32 0, i32 2
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %53
  %64 = load i32, i32* %6, align 4
  %65 = sdiv i32 %64, 9
  %66 = mul nsw i32 %65, 10
  store i32 %66, i32* %6, align 4
  br label %67

67:                                               ; preds = %63, %53
  %68 = load i32, i32* %6, align 4
  %69 = add nsw i32 %68, 50000
  %70 = sdiv i32 %69, 100000
  store i32 %70, i32* %2, align 4
  br label %71

71:                                               ; preds = %67, %14
  %72 = load i32, i32* %2, align 4
  ret i32 %72
}

declare dso_local i64 @WARN_ON_ONCE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
