; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_michael.c_michael_mic_hdr.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_michael.c_michael_mic_hdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.michael_mic_ctx = type { i32, i32 }
%struct.ieee80211_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.michael_mic_ctx*, i32*, %struct.ieee80211_hdr*)* @michael_mic_hdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @michael_mic_hdr(%struct.michael_mic_ctx* %0, i32* %1, %struct.ieee80211_hdr* %2) #0 {
  %4 = alloca %struct.michael_mic_ctx*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_hdr*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store %struct.michael_mic_ctx* %0, %struct.michael_mic_ctx** %4, align 8
  store i32* %1, i32** %5, align 8
  store %struct.ieee80211_hdr* %2, %struct.ieee80211_hdr** %6, align 8
  %10 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %11 = call i32* @ieee80211_get_DA(%struct.ieee80211_hdr* %10)
  store i32* %11, i32** %7, align 8
  %12 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %13 = call i32* @ieee80211_get_SA(%struct.ieee80211_hdr* %12)
  store i32* %13, i32** %8, align 8
  %14 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %15 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i64 @ieee80211_is_data_qos(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %22

19:                                               ; preds = %3
  %20 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %6, align 8
  %21 = call i32 @ieee80211_get_tid(%struct.ieee80211_hdr* %20)
  store i32 %21, i32* %9, align 4
  br label %23

22:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %22, %19
  %24 = load i32*, i32** %5, align 8
  %25 = call i32 @get_unaligned_le32(i32* %24)
  %26 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %27 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 4
  %28 = load i32*, i32** %5, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 4
  %30 = call i32 @get_unaligned_le32(i32* %29)
  %31 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %32 = getelementptr inbounds %struct.michael_mic_ctx, %struct.michael_mic_ctx* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %34 = load i32*, i32** %7, align 8
  %35 = call i32 @get_unaligned_le32(i32* %34)
  %36 = call i32 @michael_block(%struct.michael_mic_ctx* %33, i32 %35)
  %37 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %38 = load i32*, i32** %7, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  %40 = call i32 @get_unaligned_le16(i32* %39)
  %41 = load i32*, i32** %8, align 8
  %42 = call i32 @get_unaligned_le16(i32* %41)
  %43 = shl i32 %42, 16
  %44 = or i32 %40, %43
  %45 = call i32 @michael_block(%struct.michael_mic_ctx* %37, i32 %44)
  %46 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %47 = load i32*, i32** %8, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = call i32 @get_unaligned_le32(i32* %48)
  %50 = call i32 @michael_block(%struct.michael_mic_ctx* %46, i32 %49)
  %51 = load %struct.michael_mic_ctx*, %struct.michael_mic_ctx** %4, align 8
  %52 = load i32, i32* %9, align 4
  %53 = call i32 @michael_block(%struct.michael_mic_ctx* %51, i32 %52)
  ret void
}

declare dso_local i32* @ieee80211_get_DA(%struct.ieee80211_hdr*) #1

declare dso_local i32* @ieee80211_get_SA(%struct.ieee80211_hdr*) #1

declare dso_local i64 @ieee80211_is_data_qos(i32) #1

declare dso_local i32 @ieee80211_get_tid(%struct.ieee80211_hdr*) #1

declare dso_local i32 @get_unaligned_le32(i32*) #1

declare dso_local i32 @michael_block(%struct.michael_mic_ctx*, i32) #1

declare dso_local i32 @get_unaligned_le16(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
