; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_is_uapsd_supported.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_is_uapsd_supported.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee802_11_elems = type { i32*, i32, i32*, i32 }

@IEEE80211_WMM_IE_AP_QOSINFO_UAPSD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee802_11_elems*)* @is_uapsd_supported to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_uapsd_supported(%struct.ieee802_11_elems* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee802_11_elems*, align 8
  %4 = alloca i32, align 4
  store %struct.ieee802_11_elems* %0, %struct.ieee802_11_elems** %3, align 8
  %5 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %6 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %5, i32 0, i32 0
  %7 = load i32*, i32** %6, align 8
  %8 = icmp ne i32* %7, null
  br i1 %8, label %9, label %27

9:                                                ; preds = %1
  %10 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %11 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = icmp eq i32 %12, 7
  br i1 %13, label %14, label %27

14:                                               ; preds = %9
  %15 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %16 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %15, i32 0, i32 0
  %17 = load i32*, i32** %16, align 8
  %18 = getelementptr inbounds i32, i32* %17, i64 5
  %19 = load i32, i32* %18, align 4
  %20 = icmp eq i32 %19, 1
  br i1 %20, label %21, label %27

21:                                               ; preds = %14
  %22 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %23 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %22, i32 0, i32 0
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 6
  %26 = load i32, i32* %25, align 4
  store i32 %26, i32* %4, align 4
  br label %52

27:                                               ; preds = %14, %9, %1
  %28 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %29 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %28, i32 0, i32 2
  %30 = load i32*, i32** %29, align 8
  %31 = icmp ne i32* %30, null
  br i1 %31, label %32, label %50

32:                                               ; preds = %27
  %33 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %34 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 8
  %36 = icmp eq i32 %35, 24
  br i1 %36, label %37, label %50

37:                                               ; preds = %32
  %38 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %39 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  %42 = load i32, i32* %41, align 4
  %43 = icmp eq i32 %42, 1
  br i1 %43, label %44, label %50

44:                                               ; preds = %37
  %45 = load %struct.ieee802_11_elems*, %struct.ieee802_11_elems** %3, align 8
  %46 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %4, align 4
  br label %51

50:                                               ; preds = %37, %32, %27
  store i32 0, i32* %2, align 4
  br label %56

51:                                               ; preds = %44
  br label %52

52:                                               ; preds = %51, %21
  %53 = load i32, i32* %4, align 4
  %54 = load i32, i32* @IEEE80211_WMM_IE_AP_QOSINFO_UAPSD, align 4
  %55 = and i32 %53, %54
  store i32 %55, i32* %2, align 4
  br label %56

56:                                               ; preds = %52, %50
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
