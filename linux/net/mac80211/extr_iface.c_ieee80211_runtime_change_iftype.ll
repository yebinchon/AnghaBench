; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_runtime_change_iftype.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_iface.c_ieee80211_runtime_change_iftype.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { i32 }
%struct.ieee80211_local = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@EBUSY = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"type change: do_open returned %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_sub_if_data*, i32)* @ieee80211_runtime_change_iftype to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_runtime_change_iftype(%struct.ieee80211_sub_if_data* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.ieee80211_local*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 2
  %13 = load %struct.ieee80211_local*, %struct.ieee80211_local** %12, align 8
  store %struct.ieee80211_local* %13, %struct.ieee80211_local** %6, align 8
  %14 = load i32, i32* %5, align 4
  store i32 %14, i32* %9, align 4
  store i32 0, i32* %10, align 4
  %15 = call i32 (...) @ASSERT_RTNL()
  %16 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %17 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %16, i32 0, i32 0
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EBUSY, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %80

25:                                               ; preds = %2
  %26 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %27 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %26, i32 0, i32 1
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  switch i32 %29, label %31 [
    i32 132, label %30
    i32 128, label %30
    i32 133, label %30
    i32 131, label %30
  ]

30:                                               ; preds = %25, %25, %25, %25
  br label %34

31:                                               ; preds = %25
  %32 = load i32, i32* @EBUSY, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %3, align 4
  br label %80

34:                                               ; preds = %30
  %35 = load i32, i32* %5, align 4
  switch i32 %35, label %39 [
    i32 132, label %36
    i32 128, label %36
    i32 133, label %36
    i32 131, label %36
    i32 130, label %37
    i32 129, label %38
  ]

36:                                               ; preds = %34, %34, %34, %34
  br label %42

37:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  store i32 128, i32* %9, align 4
  br label %42

38:                                               ; preds = %34
  store i32 1, i32* %10, align 4
  store i32 132, i32* %9, align 4
  br label %42

39:                                               ; preds = %34
  %40 = load i32, i32* @EBUSY, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  br label %80

42:                                               ; preds = %38, %37, %36
  %43 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %44 = load i32, i32* %9, align 4
  %45 = call i32 @ieee80211_check_concurrent_iface(%struct.ieee80211_sub_if_data* %43, i32 %44)
  store i32 %45, i32* %7, align 4
  %46 = load i32, i32* %7, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %42
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %80

50:                                               ; preds = %42
  %51 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %52 = call i32 @ieee80211_do_stop(%struct.ieee80211_sub_if_data* %51, i32 0)
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %54 = call i32 @ieee80211_teardown_sdata(%struct.ieee80211_sub_if_data* %53)
  %55 = load %struct.ieee80211_local*, %struct.ieee80211_local** %6, align 8
  %56 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %57 = load i32, i32* %9, align 4
  %58 = load i32, i32* %10, align 4
  %59 = call i32 @drv_change_interface(%struct.ieee80211_local* %55, %struct.ieee80211_sub_if_data* %56, i32 %57, i32 %58)
  store i32 %59, i32* %7, align 4
  %60 = load i32, i32* %7, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %66

62:                                               ; preds = %50
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %64 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %63, i32 0, i32 1
  %65 = call i32 @ieee80211_vif_type_p2p(%struct.TYPE_4__* %64)
  store i32 %65, i32* %5, align 4
  br label %66

66:                                               ; preds = %62, %50
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %68 = load i32, i32* %5, align 4
  %69 = call i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data* %67, i32 %68)
  %70 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %71 = load i32, i32* %5, align 4
  %72 = call i32 @ieee80211_setup_sdata(%struct.ieee80211_sub_if_data* %70, i32 %71)
  %73 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %74 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %73, i32 0, i32 0
  %75 = call i32 @ieee80211_do_open(i32* %74, i32 0)
  store i32 %75, i32* %8, align 4
  %76 = load i32, i32* %8, align 4
  %77 = load i32, i32* %8, align 4
  %78 = call i32 @WARN(i32 %76, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* %7, align 4
  store i32 %79, i32* %3, align 4
  br label %80

80:                                               ; preds = %66, %48, %39, %31, %22
  %81 = load i32, i32* %3, align 4
  ret i32 %81
}

declare dso_local i32 @ASSERT_RTNL(...) #1

declare dso_local i32 @ieee80211_check_concurrent_iface(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_do_stop(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_teardown_sdata(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @drv_change_interface(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @ieee80211_vif_type_p2p(%struct.TYPE_4__*) #1

declare dso_local i32 @ieee80211_check_queues(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_setup_sdata(%struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @ieee80211_do_open(i32*, i32) #1

declare dso_local i32 @WARN(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
