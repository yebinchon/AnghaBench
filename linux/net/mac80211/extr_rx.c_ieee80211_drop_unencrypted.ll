; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { i64, %struct.sk_buff* }
%struct.sk_buff = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*, i32)* @ieee80211_drop_unencrypted to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_drop_unencrypted(%struct.ieee80211_rx_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_rx_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.ieee80211_rx_status*, align 8
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %8 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %9 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %8, i32 0, i32 1
  %10 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  store %struct.sk_buff* %10, %struct.sk_buff** %6, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %12 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff* %11)
  store %struct.ieee80211_rx_status* %12, %struct.ieee80211_rx_status** %7, align 8
  %13 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %7, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %17 = and i32 %15, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %46

20:                                               ; preds = %2
  %21 = load i32, i32* %5, align 4
  %22 = call i32 @ieee80211_has_protected(i32 %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @ieee80211_is_nullfunc(i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %37, label %28

28:                                               ; preds = %24
  %29 = load i32, i32* %5, align 4
  %30 = call i64 @ieee80211_is_data(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %28
  %33 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br label %37

37:                                               ; preds = %32, %28, %24, %20
  %38 = phi i1 [ false, %28 ], [ false, %24 ], [ false, %20 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @unlikely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EACCES, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %3, align 4
  br label %46

45:                                               ; preds = %37
  store i32 0, i32* %3, align 4
  br label %46

46:                                               ; preds = %45, %42, %19
  %47 = load i32, i32* %3, align 4
  ret i32 %47
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i32 @ieee80211_is_nullfunc(i32) #1

declare dso_local i64 @ieee80211_is_data(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
