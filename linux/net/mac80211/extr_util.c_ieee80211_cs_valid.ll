; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_valid.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_valid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_cipher_scheme = type { i64, i64, i64, i64, i64, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ieee80211_cs_valid(%struct.ieee80211_cipher_scheme* %0) #0 {
  %2 = alloca %struct.ieee80211_cipher_scheme*, align 8
  store %struct.ieee80211_cipher_scheme* %0, %struct.ieee80211_cipher_scheme** %2, align 8
  %3 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %4 = icmp eq %struct.ieee80211_cipher_scheme* %3, null
  br i1 %4, label %40, label %5

5:                                                ; preds = %1
  %6 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %8, 0
  br i1 %9, label %40, label %10

10:                                               ; preds = %5
  %11 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %12 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %18 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = add nsw i64 %16, %19
  %21 = icmp slt i64 %13, %20
  br i1 %21, label %40, label %22

22:                                               ; preds = %10
  %23 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %24 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %23, i32 0, i32 1
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %27 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %26, i32 0, i32 4
  %28 = load i64, i64* %27, align 8
  %29 = icmp sle i64 %25, %28
  br i1 %29, label %40, label %30

30:                                               ; preds = %22
  %31 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %32 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = icmp sgt i32 %33, 7
  br i1 %34, label %40, label %35

35:                                               ; preds = %30
  %36 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %36, i32 0, i32 6
  %38 = load i64, i64* %37, align 8
  %39 = icmp eq i64 %38, 0
  br label %40

40:                                               ; preds = %35, %30, %22, %10, %5, %1
  %41 = phi i1 [ true, %30 ], [ true, %22 ], [ true, %10 ], [ true, %5 ], [ true, %1 ], [ %39, %35 ]
  %42 = xor i1 %41, true
  %43 = zext i1 %42 to i32
  ret i32 %43
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
