; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_get.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_util.c_ieee80211_cs_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_cipher_scheme = type { i64, i32 }
%struct.ieee80211_local = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.ieee80211_cipher_scheme* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.ieee80211_cipher_scheme* @ieee80211_cs_get(%struct.ieee80211_local* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_cipher_scheme*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.ieee80211_cipher_scheme*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %13 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 1
  %15 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %14, align 8
  store %struct.ieee80211_cipher_scheme* %15, %struct.ieee80211_cipher_scheme** %8, align 8
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  store i32 %19, i32* %9, align 4
  store %struct.ieee80211_cipher_scheme* null, %struct.ieee80211_cipher_scheme** %11, align 8
  store i32 0, i32* %10, align 4
  br label %20

20:                                               ; preds = %39, %3
  %21 = load i32, i32* %10, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp slt i32 %21, %22
  br i1 %23, label %24, label %42

24:                                               ; preds = %20
  %25 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %8, align 8
  %26 = load i32, i32* %10, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %25, i64 %27
  %29 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %6, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %38

33:                                               ; preds = %24
  %34 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %8, align 8
  %35 = load i32, i32* %10, align 4
  %36 = sext i32 %35 to i64
  %37 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %34, i64 %36
  store %struct.ieee80211_cipher_scheme* %37, %struct.ieee80211_cipher_scheme** %11, align 8
  br label %42

38:                                               ; preds = %24
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %10, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %10, align 4
  br label %20

42:                                               ; preds = %33, %20
  %43 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %11, align 8
  %44 = icmp ne %struct.ieee80211_cipher_scheme* %43, null
  br i1 %44, label %45, label %53

45:                                               ; preds = %42
  %46 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %11, align 8
  %47 = getelementptr inbounds %struct.ieee80211_cipher_scheme, %struct.ieee80211_cipher_scheme* %46, i32 0, i32 1
  %48 = load i32, i32* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = call i32 @BIT(i32 %49)
  %51 = and i32 %48, %50
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %54, label %53

53:                                               ; preds = %45, %42
  store %struct.ieee80211_cipher_scheme* null, %struct.ieee80211_cipher_scheme** %4, align 8
  br label %56

54:                                               ; preds = %45
  %55 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %11, align 8
  store %struct.ieee80211_cipher_scheme* %55, %struct.ieee80211_cipher_scheme** %4, align 8
  br label %56

56:                                               ; preds = %54, %53
  %57 = load %struct.ieee80211_cipher_scheme*, %struct.ieee80211_cipher_scheme** %4, align 8
  ret %struct.ieee80211_cipher_scheme* %57
}

declare dso_local i32 @BIT(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
