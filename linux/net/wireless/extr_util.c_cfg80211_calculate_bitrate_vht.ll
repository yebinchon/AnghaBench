; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_vht.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_util.c_cfg80211_calculate_bitrate_vht.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_info = type { i32, i32, i32, i32 }

@cfg80211_calculate_bitrate_vht.base = internal constant [4 x [10 x i32]] [[10 x i32] [i32 6500000, i32 13000000, i32 19500000, i32 26000000, i32 39000000, i32 52000000, i32 58500000, i32 65000000, i32 78000000, i32 86500000], [10 x i32] [i32 13500000, i32 27000000, i32 40500000, i32 54000000, i32 81000000, i32 108000000, i32 121500000, i32 135000000, i32 162000000, i32 180000000], [10 x i32] [i32 29300000, i32 58500000, i32 87800000, i32 117000000, i32 175500000, i32 234000000, i32 263300000, i32 292500000, i32 351000000, i32 390000000], [10 x i32] [i32 58500000, i32 117000000, i32 175500000, i32 234000000, i32 351000000, i32 468000000, i32 526500000, i32 585000000, i32 702000000, i32 780000000]], align 16
@RATE_INFO_FLAGS_SHORT_GI = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"invalid rate bw=%d, mcs=%d, nss=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rate_info*)* @cfg80211_calculate_bitrate_vht to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cfg80211_calculate_bitrate_vht(%struct.rate_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.rate_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.rate_info* %0, %struct.rate_info** %3, align 8
  %6 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %7 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = icmp sgt i32 %8, 9
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %50

11:                                               ; preds = %1
  %12 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %13 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %19 [
    i32 132, label %15
    i32 128, label %16
    i32 130, label %17
    i32 129, label %18
    i32 133, label %18
    i32 131, label %20
  ]

15:                                               ; preds = %11
  store i32 3, i32* %5, align 4
  br label %21

16:                                               ; preds = %11
  store i32 2, i32* %5, align 4
  br label %21

17:                                               ; preds = %11
  store i32 1, i32* %5, align 4
  br label %21

18:                                               ; preds = %11, %11
  br label %19

19:                                               ; preds = %11, %18
  br label %50

20:                                               ; preds = %11
  store i32 0, i32* %5, align 4
  br label %21

21:                                               ; preds = %20, %17, %16, %15
  %22 = load i32, i32* %5, align 4
  %23 = sext i32 %22 to i64
  %24 = getelementptr inbounds [4 x [10 x i32]], [4 x [10 x i32]]* @cfg80211_calculate_bitrate_vht.base, i64 0, i64 %23
  %25 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %26 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds [10 x i32], [10 x i32]* %24, i64 0, i64 %28
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %4, align 4
  %31 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %32 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* %4, align 4
  %35 = mul nsw i32 %34, %33
  store i32 %35, i32* %4, align 4
  %36 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %37 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @RATE_INFO_FLAGS_SHORT_GI, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %46

42:                                               ; preds = %21
  %43 = load i32, i32* %4, align 4
  %44 = sdiv i32 %43, 9
  %45 = mul nsw i32 %44, 10
  store i32 %45, i32* %4, align 4
  br label %46

46:                                               ; preds = %42, %21
  %47 = load i32, i32* %4, align 4
  %48 = add nsw i32 %47, 50000
  %49 = sdiv i32 %48, 100000
  store i32 %49, i32* %2, align 4
  br label %62

50:                                               ; preds = %19, %10
  %51 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %52 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %55 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = sext i32 %56 to i64
  %58 = load %struct.rate_info*, %struct.rate_info** %3, align 8
  %59 = getelementptr inbounds %struct.rate_info, %struct.rate_info* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32 %53, i64 %57, i32 %60)
  store i32 0, i32* %2, align 4
  br label %62

62:                                               ; preds = %50, %46
  %63 = load i32, i32* %2, align 4
  ret i32 %63
}

declare dso_local i32 @WARN_ONCE(i32, i8*, i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
