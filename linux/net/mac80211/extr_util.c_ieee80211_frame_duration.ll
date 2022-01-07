; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_frame_duration.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_frame_duration.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@NL80211_BAND_5GHZ = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_frame_duration(i32 %0, i64 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store i32 %0, i32* %7, align 4
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* @NL80211_BAND_5GHZ, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %20, label %17

17:                                               ; preds = %6
  %18 = load i32, i32* %10, align 4
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %42

20:                                               ; preds = %17, %6
  store i32 16, i32* %13, align 4
  %21 = load i32, i32* %13, align 4
  %22 = add nsw i32 %21, 16
  store i32 %22, i32* %13, align 4
  %23 = load i32, i32* %13, align 4
  %24 = add nsw i32 %23, 4
  store i32 %24, i32* %13, align 4
  %25 = load i32, i32* %12, align 4
  %26 = shl i32 1, %25
  %27 = load i32, i32* %13, align 4
  %28 = mul nsw i32 %27, %26
  store i32 %28, i32* %13, align 4
  %29 = load i64, i64* %8, align 8
  %30 = add i64 %29, 4
  %31 = mul i64 8, %30
  %32 = add i64 16, %31
  %33 = add i64 %32, 6
  %34 = mul i64 %33, 10
  %35 = trunc i64 %34 to i32
  %36 = load i32, i32* %9, align 4
  %37 = mul nsw i32 4, %36
  %38 = call i32 @DIV_ROUND_UP(i32 %35, i32 %37)
  %39 = mul nsw i32 4, %38
  %40 = load i32, i32* %13, align 4
  %41 = add nsw i32 %40, %39
  store i32 %41, i32* %13, align 4
  br label %58

42:                                               ; preds = %17
  store i32 10, i32* %13, align 4
  %43 = load i32, i32* %11, align 4
  %44 = icmp ne i32 %43, 0
  %45 = zext i1 %44 to i64
  %46 = select i1 %44, i32 96, i32 192
  %47 = load i32, i32* %13, align 4
  %48 = add nsw i32 %47, %46
  store i32 %48, i32* %13, align 4
  %49 = load i64, i64* %8, align 8
  %50 = add i64 %49, 4
  %51 = mul i64 8, %50
  %52 = mul i64 %51, 10
  %53 = trunc i64 %52 to i32
  %54 = load i32, i32* %9, align 4
  %55 = call i32 @DIV_ROUND_UP(i32 %53, i32 %54)
  %56 = load i32, i32* %13, align 4
  %57 = add nsw i32 %56, %55
  store i32 %57, i32* %13, align 4
  br label %58

58:                                               ; preds = %42, %20
  %59 = load i32, i32* %13, align 4
  ret i32 %59
}

declare dso_local i32 @DIV_ROUND_UP(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
