; ModuleID = '/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_rdev_free_coalesce.c'
source_filename = "/home/carl/AnghaBench/linux/net/wireless/extr_nl80211.c_cfg80211_rdev_free_coalesce.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_registered_device = type { %struct.cfg80211_coalesce_rules* }
%struct.cfg80211_coalesce_rules = type { i32, i32, %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules* }
%struct.cfg80211_coalesce = type { i32, i32, %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @cfg80211_rdev_free_coalesce(%struct.cfg80211_registered_device* %0) #0 {
  %2 = alloca %struct.cfg80211_registered_device*, align 8
  %3 = alloca %struct.cfg80211_coalesce*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.cfg80211_coalesce_rules*, align 8
  store %struct.cfg80211_registered_device* %0, %struct.cfg80211_registered_device** %2, align 8
  %7 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %8 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %7, i32 0, i32 0
  %9 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %8, align 8
  %10 = bitcast %struct.cfg80211_coalesce_rules* %9 to %struct.cfg80211_coalesce*
  store %struct.cfg80211_coalesce* %10, %struct.cfg80211_coalesce** %3, align 8
  %11 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %3, align 8
  %12 = icmp ne %struct.cfg80211_coalesce* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %1
  br label %67

14:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %53, %14
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %3, align 8
  %18 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 8
  %20 = icmp slt i32 %16, %19
  br i1 %20, label %21, label %56

21:                                               ; preds = %15
  %22 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %22, i32 0, i32 2
  %24 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %23, align 8
  %25 = load i32, i32* %4, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %24, i64 %26
  %28 = bitcast %struct.cfg80211_coalesce* %27 to %struct.cfg80211_coalesce_rules*
  store %struct.cfg80211_coalesce_rules* %28, %struct.cfg80211_coalesce_rules** %6, align 8
  store i32 0, i32* %5, align 4
  br label %29

29:                                               ; preds = %45, %21
  %30 = load i32, i32* %5, align 4
  %31 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %32 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp slt i32 %30, %33
  br i1 %34, label %35, label %48

35:                                               ; preds = %29
  %36 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %37 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %36, i32 0, i32 3
  %38 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %37, align 8
  %39 = load i32, i32* %5, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %38, i64 %40
  %42 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %41, i32 0, i32 4
  %43 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %42, align 8
  %44 = call i32 @kfree(%struct.cfg80211_coalesce_rules* %43)
  br label %45

45:                                               ; preds = %35
  %46 = load i32, i32* %5, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %5, align 4
  br label %29

48:                                               ; preds = %29
  %49 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %6, align 8
  %50 = getelementptr inbounds %struct.cfg80211_coalesce_rules, %struct.cfg80211_coalesce_rules* %49, i32 0, i32 3
  %51 = load %struct.cfg80211_coalesce_rules*, %struct.cfg80211_coalesce_rules** %50, align 8
  %52 = call i32 @kfree(%struct.cfg80211_coalesce_rules* %51)
  br label %53

53:                                               ; preds = %48
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %54, 1
  store i32 %55, i32* %4, align 4
  br label %15

56:                                               ; preds = %15
  %57 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %3, align 8
  %58 = getelementptr inbounds %struct.cfg80211_coalesce, %struct.cfg80211_coalesce* %57, i32 0, i32 2
  %59 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %58, align 8
  %60 = bitcast %struct.cfg80211_coalesce* %59 to %struct.cfg80211_coalesce_rules*
  %61 = call i32 @kfree(%struct.cfg80211_coalesce_rules* %60)
  %62 = load %struct.cfg80211_coalesce*, %struct.cfg80211_coalesce** %3, align 8
  %63 = bitcast %struct.cfg80211_coalesce* %62 to %struct.cfg80211_coalesce_rules*
  %64 = call i32 @kfree(%struct.cfg80211_coalesce_rules* %63)
  %65 = load %struct.cfg80211_registered_device*, %struct.cfg80211_registered_device** %2, align 8
  %66 = getelementptr inbounds %struct.cfg80211_registered_device, %struct.cfg80211_registered_device* %65, i32 0, i32 0
  store %struct.cfg80211_coalesce_rules* null, %struct.cfg80211_coalesce_rules** %66, align 8
  br label %67

67:                                               ; preds = %56, %13
  ret void
}

declare dso_local i32 @kfree(%struct.cfg80211_coalesce_rules*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
