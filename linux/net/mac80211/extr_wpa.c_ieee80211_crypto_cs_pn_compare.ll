; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_pn_compare.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_wpa.c_ieee80211_crypto_cs_pn_compare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64*, i64*, i32)* @ieee80211_crypto_cs_pn_compare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_crypto_cs_pn_compare(i64* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64* %0, i64** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = sub nsw i32 %9, 1
  store i32 %10, i32* %8, align 4
  br label %11

11:                                               ; preds = %42, %3
  %12 = load i32, i32* %8, align 4
  %13 = icmp sge i32 %12, 0
  br i1 %13, label %14, label %45

14:                                               ; preds = %11
  %15 = load i64*, i64** %5, align 8
  %16 = load i32, i32* %8, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i64, i64* %15, i64 %17
  %19 = load i64, i64* %18, align 8
  %20 = load i64*, i64** %6, align 8
  %21 = load i32, i32* %8, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i64, i64* %20, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = icmp slt i64 %19, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %14
  store i32 -1, i32* %4, align 4
  br label %46

27:                                               ; preds = %14
  %28 = load i64*, i64** %5, align 8
  %29 = load i32, i32* %8, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds i64, i64* %28, i64 %30
  %32 = load i64, i64* %31, align 8
  %33 = load i64*, i64** %6, align 8
  %34 = load i32, i32* %8, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds i64, i64* %33, i64 %35
  %37 = load i64, i64* %36, align 8
  %38 = icmp sgt i64 %32, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %46

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40
  br label %42

42:                                               ; preds = %41
  %43 = load i32, i32* %8, align 4
  %44 = add nsw i32 %43, -1
  store i32 %44, i32* %8, align 4
  br label %11

45:                                               ; preds = %11
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %45, %39, %26
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
