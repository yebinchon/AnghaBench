; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_configure_filter.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_main.c_ieee80211_configure_filter.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i32, i64, i32 }

@FIF_ALLMULTI = common dso_local global i32 0, align 4
@SCAN_SW_SCANNING = common dso_local global i32 0, align 4
@SCAN_ONCHANNEL_SCANNING = common dso_local global i32 0, align 4
@FIF_BCN_PRBRESP_PROMISC = common dso_local global i32 0, align 4
@FIF_PROBE_REQ = common dso_local global i32 0, align 4
@FIF_FCSFAIL = common dso_local global i32 0, align 4
@FIF_PLCPFAIL = common dso_local global i32 0, align 4
@FIF_CONTROL = common dso_local global i32 0, align 4
@FIF_OTHER_BSS = common dso_local global i32 0, align 4
@FIF_PSPOLL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ieee80211_configure_filter(%struct.ieee80211_local* %0) #0 {
  %2 = alloca %struct.ieee80211_local*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %7 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %6, i32 0, i32 12
  %8 = call i64 @atomic_read(i32* %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %14

10:                                               ; preds = %1
  %11 = load i32, i32* @FIF_ALLMULTI, align 4
  %12 = load i32, i32* %5, align 4
  %13 = or i32 %12, %11
  store i32 %13, i32* %5, align 4
  br label %14

14:                                               ; preds = %10, %1
  %15 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %16 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %15, i32 0, i32 11
  %17 = load i64, i64* %16, align 8
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %31, label %19

19:                                               ; preds = %14
  %20 = load i32, i32* @SCAN_SW_SCANNING, align 4
  %21 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %22 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %21, i32 0, i32 10
  %23 = call i64 @test_bit(i32 %20, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %31, label %25

25:                                               ; preds = %19
  %26 = load i32, i32* @SCAN_ONCHANNEL_SCANNING, align 4
  %27 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %28 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %27, i32 0, i32 10
  %29 = call i64 @test_bit(i32 %26, i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %35

31:                                               ; preds = %25, %19, %14
  %32 = load i32, i32* @FIF_BCN_PRBRESP_PROMISC, align 4
  %33 = load i32, i32* %5, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %5, align 4
  br label %35

35:                                               ; preds = %31, %25
  %36 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %37 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %36, i32 0, i32 9
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %45, label %40

40:                                               ; preds = %35
  %41 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %42 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %41, i32 0, i32 8
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %49

45:                                               ; preds = %40, %35
  %46 = load i32, i32* @FIF_PROBE_REQ, align 4
  %47 = load i32, i32* %5, align 4
  %48 = or i32 %47, %46
  store i32 %48, i32* %5, align 4
  br label %49

49:                                               ; preds = %45, %40
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 7
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load i32, i32* @FIF_FCSFAIL, align 4
  %56 = load i32, i32* %5, align 4
  %57 = or i32 %56, %55
  store i32 %57, i32* %5, align 4
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %60 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %59, i32 0, i32 6
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %67

63:                                               ; preds = %58
  %64 = load i32, i32* @FIF_PLCPFAIL, align 4
  %65 = load i32, i32* %5, align 4
  %66 = or i32 %65, %64
  store i32 %66, i32* %5, align 4
  br label %67

67:                                               ; preds = %63, %58
  %68 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %69 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %68, i32 0, i32 5
  %70 = load i64, i64* %69, align 8
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %76

72:                                               ; preds = %67
  %73 = load i32, i32* @FIF_CONTROL, align 4
  %74 = load i32, i32* %5, align 4
  %75 = or i32 %74, %73
  store i32 %75, i32* %5, align 4
  br label %76

76:                                               ; preds = %72, %67
  %77 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %78 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %77, i32 0, i32 4
  %79 = load i64, i64* %78, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %76
  %82 = load i32, i32* @FIF_OTHER_BSS, align 4
  %83 = load i32, i32* %5, align 4
  %84 = or i32 %83, %82
  store i32 %84, i32* %5, align 4
  br label %85

85:                                               ; preds = %81, %76
  %86 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %87 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %94

90:                                               ; preds = %85
  %91 = load i32, i32* @FIF_PSPOLL, align 4
  %92 = load i32, i32* %5, align 4
  %93 = or i32 %92, %91
  store i32 %93, i32* %5, align 4
  br label %94

94:                                               ; preds = %90, %85
  %95 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %96 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %95, i32 0, i32 1
  %97 = call i32 @spin_lock_bh(i32* %96)
  %98 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %99 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load i32, i32* %5, align 4
  %102 = xor i32 %100, %101
  store i32 %102, i32* %4, align 4
  %103 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %104 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %105 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %104, i32 0, i32 2
  %106 = call i32 @drv_prepare_multicast(%struct.ieee80211_local* %103, i32* %105)
  store i32 %106, i32* %3, align 4
  %107 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %108 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %107, i32 0, i32 1
  %109 = call i32 @spin_unlock_bh(i32* %108)
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, -2147483648
  store i32 %111, i32* %5, align 4
  %112 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %113 = load i32, i32* %4, align 4
  %114 = load i32, i32* %3, align 4
  %115 = call i32 @drv_configure_filter(%struct.ieee80211_local* %112, i32 %113, i32* %5, i32 %114)
  %116 = load i32, i32* %5, align 4
  %117 = and i32 %116, -2147483648
  %118 = call i32 @WARN_ON(i32 %117)
  %119 = load i32, i32* %5, align 4
  %120 = and i32 %119, 2147483647
  %121 = load %struct.ieee80211_local*, %struct.ieee80211_local** %2, align 8
  %122 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %121, i32 0, i32 0
  store i32 %120, i32* %122, align 8
  ret void
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i32 @drv_prepare_multicast(%struct.ieee80211_local*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @drv_configure_filter(%struct.ieee80211_local*, i32, i32*, i32) #1

declare dso_local i32 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
