; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_coalesce_hw_started_roc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_offchannel.c_ieee80211_coalesce_hw_started_roc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32 }
%struct.ieee80211_roc_work = type { i32, i64, i64, i32, i32 }

@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work*)* @ieee80211_coalesce_hw_started_roc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_coalesce_hw_started_roc(%struct.ieee80211_local* %0, %struct.ieee80211_roc_work* %1, %struct.ieee80211_roc_work* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.ieee80211_roc_work*, align 8
  %7 = alloca %struct.ieee80211_roc_work*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %5, align 8
  store %struct.ieee80211_roc_work* %1, %struct.ieee80211_roc_work** %6, align 8
  store %struct.ieee80211_roc_work* %2, %struct.ieee80211_roc_work** %7, align 8
  %10 = load i64, i64* @jiffies, align 8
  store i64 %10, i64* %8, align 8
  %11 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %12 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %11, i32 0, i32 4
  %13 = load i32, i32* %12, align 4
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i64 @WARN_ON(i32 %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %69

20:                                               ; preds = %3
  %21 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %34, label %25

25:                                               ; preds = %20
  %26 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %6, align 8
  %27 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %30 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp sgt i64 %28, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25
  store i32 0, i32* %4, align 4
  br label %69

34:                                               ; preds = %25, %20
  %35 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %36 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %39 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i64 @msecs_to_jiffies(i64 %40)
  %42 = add i64 %37, %41
  %43 = load i64, i64* %8, align 8
  %44 = sub i64 %42, %43
  store i64 %44, i64* %9, align 8
  %45 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %6, align 8
  %46 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i64 @jiffies_to_msecs(i64 %48)
  %50 = icmp sgt i64 %47, %49
  br i1 %50, label %51, label %52

51:                                               ; preds = %34
  store i32 0, i32* %4, align 4
  br label %69

52:                                               ; preds = %34
  %53 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %6, align 8
  %54 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %53, i32 0, i32 3
  %55 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %56 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %55, i32 0, i32 3
  %57 = call i32 @list_add(i32* %54, i32* %56)
  %58 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %68

62:                                               ; preds = %52
  %63 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %6, align 8
  %64 = getelementptr inbounds %struct.ieee80211_roc_work, %struct.ieee80211_roc_work* %63, i32 0, i32 0
  store i32 1, i32* %64, align 8
  %65 = load %struct.ieee80211_roc_work*, %struct.ieee80211_roc_work** %6, align 8
  %66 = load i64, i64* %8, align 8
  %67 = call i32 @ieee80211_handle_roc_started(%struct.ieee80211_roc_work* %65, i64 %66)
  br label %68

68:                                               ; preds = %62, %52
  store i32 1, i32* %4, align 4
  br label %69

69:                                               ; preds = %68, %51, %33, %19
  %70 = load i32, i32* %4, align 4
  ret i32 %70
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @msecs_to_jiffies(i64) #1

declare dso_local i64 @jiffies_to_msecs(i64) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @ieee80211_handle_roc_started(%struct.ieee80211_roc_work*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
