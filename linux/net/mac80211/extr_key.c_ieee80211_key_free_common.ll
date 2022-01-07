; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_free_common.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c_ieee80211_key_free_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.TYPE_12__, %struct.TYPE_7__ }
%struct.TYPE_12__ = type { %struct.TYPE_11__, %struct.TYPE_10__, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_11__ = type { i32 }
%struct.TYPE_10__ = type { i32 }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*)* @ieee80211_key_free_common to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_key_free_common(%struct.ieee80211_key* %0) #0 {
  %2 = alloca %struct.ieee80211_key*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %2, align 8
  %3 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %4 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %3, i32 0, i32 1
  %5 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %35 [
    i32 131, label %7
    i32 130, label %7
    i32 135, label %14
    i32 134, label %14
    i32 133, label %21
    i32 132, label %21
    i32 129, label %28
    i32 128, label %28
  ]

7:                                                ; preds = %1, %1
  %8 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %9 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %9, i32 0, i32 3
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @ieee80211_aes_key_free(i32 %12)
  br label %35

14:                                               ; preds = %1, %1
  %15 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @ieee80211_aes_cmac_key_free(i32 %19)
  br label %35

21:                                               ; preds = %1, %1
  %22 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %23 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @ieee80211_aes_gmac_key_free(i32 %26)
  br label %35

28:                                               ; preds = %1, %1
  %29 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %30 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %29, i32 0, i32 0
  %31 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @ieee80211_aes_gcm_key_free(i32 %33)
  br label %35

35:                                               ; preds = %1, %28, %21, %14, %7
  %36 = load %struct.ieee80211_key*, %struct.ieee80211_key** %2, align 8
  %37 = call i32 @kzfree(%struct.ieee80211_key* %36)
  ret void
}

declare dso_local i32 @ieee80211_aes_key_free(i32) #1

declare dso_local i32 @ieee80211_aes_cmac_key_free(i32) #1

declare dso_local i32 @ieee80211_aes_gmac_key_free(i32) #1

declare dso_local i32 @ieee80211_aes_gcm_key_free(i32) #1

declare dso_local i32 @kzfree(%struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
