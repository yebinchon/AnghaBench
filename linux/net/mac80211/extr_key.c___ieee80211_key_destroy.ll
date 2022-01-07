; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_key.c___ieee80211_key_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_key.c___ieee80211_key_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_key = type { %struct.ieee80211_sub_if_data*, i64 }
%struct.ieee80211_sub_if_data = type { i32, i32 }

@HZ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_key*, i32)* @__ieee80211_key_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__ieee80211_key_destroy(%struct.ieee80211_key* %0, i32 %1) #0 {
  %3 = alloca %struct.ieee80211_key*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_sub_if_data*, align 8
  store %struct.ieee80211_key* %0, %struct.ieee80211_key** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %7 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %32

10:                                               ; preds = %2
  %11 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_key, %struct.ieee80211_key* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %5, align 8
  %14 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %15 = call i32 @ieee80211_debugfs_key_remove(%struct.ieee80211_key* %14)
  %16 = load i32, i32* %4, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %28

18:                                               ; preds = %10
  %19 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %20 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %20, align 4
  %23 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %23, i32 0, i32 0
  %25 = load i32, i32* @HZ, align 4
  %26 = sdiv i32 %25, 2
  %27 = call i32 @schedule_delayed_work(i32* %24, i32 %26)
  br label %31

28:                                               ; preds = %10
  %29 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %5, align 8
  %30 = call i32 @decrease_tailroom_need_count(%struct.ieee80211_sub_if_data* %29, i32 1)
  br label %31

31:                                               ; preds = %28, %18
  br label %32

32:                                               ; preds = %31, %2
  %33 = load %struct.ieee80211_key*, %struct.ieee80211_key** %3, align 8
  %34 = call i32 @ieee80211_key_free_common(%struct.ieee80211_key* %33)
  ret void
}

declare dso_local i32 @ieee80211_debugfs_key_remove(%struct.ieee80211_key*) #1

declare dso_local i32 @schedule_delayed_work(i32*, i32) #1

declare dso_local i32 @decrease_tailroom_need_count(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_key_free_common(%struct.ieee80211_key*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
