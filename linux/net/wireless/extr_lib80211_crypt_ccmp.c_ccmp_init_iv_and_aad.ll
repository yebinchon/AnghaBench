; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_ccmp.c_ccmp_init_iv_and_aad.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_lib80211_crypt_ccmp.c_ccmp_init_iv_and_aad.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_hdr = type { i32*, i32*, i32*, i32, i32 }

@ETH_ALEN = common dso_local global i32 0, align 4
@CCMP_PN_LEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_hdr*, i32*, i32*, i32*)* @ccmp_init_iv_and_aad to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ccmp_init_iv_and_aad(%struct.ieee80211_hdr* %0, i32* %1, i32* %2, i32* %3) #0 {
  %5 = alloca %struct.ieee80211_hdr*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.ieee80211_hdr* %0, %struct.ieee80211_hdr** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  store i32* %3, i32** %8, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 4
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @ieee80211_has_a4(i32 %16)
  store i32 %17, i32* %12, align 4
  %18 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %19 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %18, i32 0, i32 4
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @ieee80211_is_data_qos(i32 %20)
  store i32 %21, i32* %13, align 4
  store i64 22, i64* %11, align 8
  %22 = load i32, i32* %12, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %4
  %25 = load i64, i64* %11, align 8
  %26 = add i64 %25, 6
  store i64 %26, i64* %11, align 8
  br label %27

27:                                               ; preds = %24, %4
  %28 = load i32, i32* %13, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %45

30:                                               ; preds = %27
  %31 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %32 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %31, i32 0, i32 0
  %33 = bitcast i32** %32 to i32*
  store i32* %33, i32** %9, align 8
  %34 = load i32, i32* %12, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %30
  %37 = load i32*, i32** %9, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32* %38, i32** %9, align 8
  br label %39

39:                                               ; preds = %36, %30
  %40 = load i32*, i32** %9, align 8
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, 15
  store i32 %42, i32* %10, align 4
  %43 = load i64, i64* %11, align 8
  %44 = add i64 %43, 2
  store i64 %44, i64* %11, align 8
  br label %45

45:                                               ; preds = %39, %27
  %46 = load i32*, i32** %7, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 1, i32* %47, align 4
  %48 = load i32, i32* %10, align 4
  %49 = load i32*, i32** %7, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 1
  store i32 %48, i32* %50, align 4
  %51 = load i32*, i32** %7, align 8
  %52 = getelementptr inbounds i32, i32* %51, i64 2
  %53 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %54 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %53, i32 0, i32 1
  %55 = load i32*, i32** %54, align 8
  %56 = load i32, i32* @ETH_ALEN, align 4
  %57 = call i32 @memcpy(i32* %52, i32* %55, i32 %56)
  %58 = load i32*, i32** %7, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 8
  %60 = load i32*, i32** %6, align 8
  %61 = load i32, i32* @CCMP_PN_LEN, align 4
  %62 = call i32 @memcpy(i32* %59, i32* %60, i32 %61)
  %63 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %64 = bitcast %struct.ieee80211_hdr* %63 to i32*
  store i32* %64, i32** %9, align 8
  %65 = load i32*, i32** %9, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 0
  %67 = load i32, i32* %66, align 4
  %68 = and i32 %67, 143
  %69 = load i32*, i32** %8, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 0
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %9, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  %73 = load i32, i32* %72, align 4
  %74 = and i32 %73, 199
  %75 = load i32*, i32** %8, align 8
  %76 = getelementptr inbounds i32, i32* %75, i64 1
  store i32 %74, i32* %76, align 4
  %77 = load i32*, i32** %8, align 8
  %78 = getelementptr inbounds i32, i32* %77, i64 2
  %79 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %80 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %79, i32 0, i32 2
  %81 = load i32*, i32** %80, align 8
  %82 = load i32, i32* @ETH_ALEN, align 4
  %83 = mul nsw i32 3, %82
  %84 = call i32 @memcpy(i32* %78, i32* %81, i32 %83)
  %85 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %86 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %85, i32 0, i32 3
  store i32* %86, i32** %9, align 8
  %87 = load i32*, i32** %9, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = and i32 %89, 15
  %91 = load i32*, i32** %8, align 8
  %92 = getelementptr inbounds i32, i32* %91, i64 20
  store i32 %90, i32* %92, align 4
  %93 = load i32*, i32** %8, align 8
  %94 = getelementptr inbounds i32, i32* %93, i64 21
  store i32 0, i32* %94, align 4
  %95 = load i32*, i32** %8, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 22
  %97 = call i32 @memset(i32* %96, i32 0, i32 8)
  %98 = load i32, i32* %12, align 4
  %99 = icmp ne i32 %98, 0
  br i1 %99, label %100, label %108

100:                                              ; preds = %45
  %101 = load i32*, i32** %8, align 8
  %102 = getelementptr inbounds i32, i32* %101, i64 22
  %103 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %5, align 8
  %104 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %103, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = load i32, i32* @ETH_ALEN, align 4
  %107 = call i32 @memcpy(i32* %102, i32* %105, i32 %106)
  br label %108

108:                                              ; preds = %100, %45
  %109 = load i32, i32* %13, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %120

111:                                              ; preds = %108
  %112 = load i32, i32* %10, align 4
  %113 = load i32*, i32** %8, align 8
  %114 = load i32, i32* %12, align 4
  %115 = icmp ne i32 %114, 0
  %116 = zext i1 %115 to i64
  %117 = select i1 %115, i32 28, i32 22
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds i32, i32* %113, i64 %118
  store i32 %112, i32* %119, align 4
  br label %120

120:                                              ; preds = %111, %108
  %121 = load i64, i64* %11, align 8
  %122 = trunc i64 %121 to i32
  ret i32 %122
}

declare dso_local i32 @ieee80211_has_a4(i32) #1

declare dso_local i32 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @memset(i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
