; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_bssid.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_get_bssid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.ieee80211_hdr*, i64, i32)* @ieee80211_get_bssid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @ieee80211_get_bssid(%struct.ieee80211_hdr* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %10 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 8
  store i32 %11, i32* %8, align 4
  %12 = load i32, i32* %8, align 4
  %13 = call i64 @ieee80211_is_data(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %44

15:                                               ; preds = %3
  %16 = load i64, i64* %6, align 8
  %17 = icmp ult i64 %16, 24
  br i1 %17, label %18, label %19

18:                                               ; preds = %15
  store i32* null, i32** %4, align 8
  br label %86

19:                                               ; preds = %15
  %20 = load i32, i32* %8, align 4
  %21 = call i64 @ieee80211_has_a4(i32 %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %19
  store i32* null, i32** %4, align 8
  br label %86

24:                                               ; preds = %19
  %25 = load i32, i32* %8, align 4
  %26 = call i64 @ieee80211_has_tods(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %32

28:                                               ; preds = %24
  %29 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %29, i32 0, i32 0
  %31 = load i32*, i32** %30, align 8
  store i32* %31, i32** %4, align 8
  br label %86

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  %34 = call i64 @ieee80211_has_fromds(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %32
  %37 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %38 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %37, i32 0, i32 1
  %39 = load i32*, i32** %38, align 8
  store i32* %39, i32** %4, align 8
  br label %86

40:                                               ; preds = %32
  %41 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %41, i32 0, i32 2
  %43 = load i32*, i32** %42, align 8
  store i32* %43, i32** %4, align 8
  br label %86

44:                                               ; preds = %3
  %45 = load i32, i32* %8, align 4
  %46 = call i64 @ieee80211_is_mgmt(i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %56

48:                                               ; preds = %44
  %49 = load i64, i64* %6, align 8
  %50 = icmp ult i64 %49, 24
  br i1 %50, label %51, label %52

51:                                               ; preds = %48
  store i32* null, i32** %4, align 8
  br label %86

52:                                               ; preds = %48
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 2
  %55 = load i32*, i32** %54, align 8
  store i32* %55, i32** %4, align 8
  br label %86

56:                                               ; preds = %44
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @ieee80211_is_ctl(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %85

60:                                               ; preds = %56
  %61 = load i32, i32* %8, align 4
  %62 = call i64 @ieee80211_is_pspoll(i32 %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %68

64:                                               ; preds = %60
  %65 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %66 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %65, i32 0, i32 0
  %67 = load i32*, i32** %66, align 8
  store i32* %67, i32** %4, align 8
  br label %86

68:                                               ; preds = %60
  %69 = load i32, i32* %8, align 4
  %70 = call i64 @ieee80211_is_back_req(i32 %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %84

72:                                               ; preds = %68
  %73 = load i32, i32* %7, align 4
  switch i32 %73, label %82 [
    i32 128, label %74
    i32 130, label %78
    i32 129, label %78
  ]

74:                                               ; preds = %72
  %75 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %76 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  store i32* %77, i32** %4, align 8
  br label %86

78:                                               ; preds = %72, %72
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 0
  %81 = load i32*, i32** %80, align 8
  store i32* %81, i32** %4, align 8
  br label %86

82:                                               ; preds = %72
  br label %83

83:                                               ; preds = %82
  br label %84

84:                                               ; preds = %83, %68
  br label %85

85:                                               ; preds = %84, %56
  store i32* null, i32** %4, align 8
  br label %86

86:                                               ; preds = %85, %78, %74, %64, %52, %51, %40, %36, %28, %23, %18
  %87 = load i32*, i32** %4, align 8
  ret i32* %87
}

declare dso_local i64 @ieee80211_is_data(i32) #1

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i64 @ieee80211_has_tods(i32) #1

declare dso_local i64 @ieee80211_has_fromds(i32) #1

declare dso_local i64 @ieee80211_is_mgmt(i32) #1

declare dso_local i64 @ieee80211_is_ctl(i32) #1

declare dso_local i64 @ieee80211_is_pspoll(i32) #1

declare dso_local i64 @ieee80211_is_back_req(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
