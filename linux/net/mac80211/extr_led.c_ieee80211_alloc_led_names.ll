; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_alloc_led_names.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_led.c_ieee80211_alloc_led_names.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_9__, %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_10__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_7__ = type { i8* }
%struct.TYPE_6__ = type { i8* }
%struct.TYPE_10__ = type { i8* }
%struct.TYPE_8__ = type { i8* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [5 x i8] c"%srx\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c"%stx\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"%sassoc\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"%sradio\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_alloc_led_names(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  %3 = load i32, i32* @GFP_KERNEL, align 4
  %4 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %5 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %4, i32 0, i32 0
  %6 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %5, i32 0, i32 0
  %7 = load i32, i32* %6, align 8
  %8 = call i32 @wiphy_name(i32 %7)
  %9 = call i8* @kasprintf(i32 %3, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %11 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %10, i32 0, i32 4
  %12 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %11, i32 0, i32 0
  store i8* %9, i8** %12, align 8
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @wiphy_name(i32 %17)
  %19 = call i8* @kasprintf(i32 %13, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i32 %18)
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %21 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %20, i32 0, i32 3
  %22 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %21, i32 0, i32 0
  store i8* %19, i8** %22, align 8
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %25 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @wiphy_name(i32 %27)
  %29 = call i8* @kasprintf(i32 %23, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i64 0, i64 0), i32 %28)
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %31 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 0
  store i8* %29, i8** %32, align 8
  %33 = load i32, i32* @GFP_KERNEL, align 4
  %34 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %35 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @wiphy_name(i32 %37)
  %39 = call i8* @kasprintf(i32 %33, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %38)
  %40 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %41 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %41, i32 0, i32 0
  store i8* %39, i8** %42, align 8
  ret void
}

declare dso_local i8* @kasprintf(i32, i8*, i32) #1

declare dso_local i32 @wiphy_name(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
