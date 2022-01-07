; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rate.c_rate_control_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rate_control_ref = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_7__*, %struct.dentry*)* }
%struct.TYPE_7__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }
%struct.dentry = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.dentry* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@rcname_ops = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rate_control_ref* (i8*, %struct.ieee80211_local*)* @rate_control_alloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rate_control_ref* @rate_control_alloc(i8* %0, %struct.ieee80211_local* %1) #0 {
  %3 = alloca %struct.rate_control_ref*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ieee80211_local*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca %struct.rate_control_ref*, align 8
  store i8* %0, i8** %4, align 8
  store %struct.ieee80211_local* %1, %struct.ieee80211_local** %5, align 8
  store %struct.dentry* null, %struct.dentry** %6, align 8
  %8 = load i32, i32* @GFP_KERNEL, align 4
  %9 = call %struct.rate_control_ref* @kmalloc(i32 16, i32 %8)
  store %struct.rate_control_ref* %9, %struct.rate_control_ref** %7, align 8
  %10 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %11 = icmp ne %struct.rate_control_ref* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  store %struct.rate_control_ref* null, %struct.rate_control_ref** %3, align 8
  br label %45

13:                                               ; preds = %2
  %14 = load i8*, i8** %4, align 8
  %15 = call %struct.TYPE_8__* @ieee80211_rate_control_ops_get(i8* %14)
  %16 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %17 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %16, i32 0, i32 1
  store %struct.TYPE_8__* %15, %struct.TYPE_8__** %17, align 8
  %18 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %19 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %18, i32 0, i32 1
  %20 = load %struct.TYPE_8__*, %struct.TYPE_8__** %19, align 8
  %21 = icmp ne %struct.TYPE_8__* %20, null
  br i1 %21, label %23, label %22

22:                                               ; preds = %13
  br label %42

23:                                               ; preds = %13
  %24 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %25 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %24, i32 0, i32 1
  %26 = load %struct.TYPE_8__*, %struct.TYPE_8__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %26, i32 0, i32 0
  %28 = load i32 (%struct.TYPE_7__*, %struct.dentry*)*, i32 (%struct.TYPE_7__*, %struct.dentry*)** %27, align 8
  %29 = load %struct.ieee80211_local*, %struct.ieee80211_local** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %29, i32 0, i32 0
  %31 = load %struct.dentry*, %struct.dentry** %6, align 8
  %32 = call i32 %28(%struct.TYPE_7__* %30, %struct.dentry* %31)
  %33 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %34 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %33, i32 0, i32 0
  store i32 %32, i32* %34, align 8
  %35 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %36 = getelementptr inbounds %struct.rate_control_ref, %struct.rate_control_ref* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %23
  br label %42

40:                                               ; preds = %23
  %41 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  store %struct.rate_control_ref* %41, %struct.rate_control_ref** %3, align 8
  br label %45

42:                                               ; preds = %39, %22
  %43 = load %struct.rate_control_ref*, %struct.rate_control_ref** %7, align 8
  %44 = call i32 @kfree(%struct.rate_control_ref* %43)
  store %struct.rate_control_ref* null, %struct.rate_control_ref** %3, align 8
  br label %45

45:                                               ; preds = %42, %40, %12
  %46 = load %struct.rate_control_ref*, %struct.rate_control_ref** %3, align 8
  ret %struct.rate_control_ref* %46
}

declare dso_local %struct.rate_control_ref* @kmalloc(i32, i32) #1

declare dso_local %struct.TYPE_8__* @ieee80211_rate_control_ops_get(i8*) #1

declare dso_local i32 @kfree(%struct.rate_control_ref*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
