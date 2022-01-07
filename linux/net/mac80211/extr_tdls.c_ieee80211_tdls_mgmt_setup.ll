; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt_setup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_tdls.c_ieee80211_tdls_mgmt_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.wiphy = type { i32 }
%struct.net_device = type { i32 }
%struct.ieee80211_sub_if_data = type { %struct.TYPE_4__, %struct.ieee80211_local* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32, i32, i32 }
%struct.ieee80211_local = type { i32, i32 }

@IEEE80211_SMPS_AUTOMATIC = common dso_local global i32 0, align 4
@IEEE80211_SMPS_OFF = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"Aborting TDLS setup due to SMPS mode %d\0A\00", align 1
@ENOTSUPP = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@ENOLINK = common dso_local global i32 0, align 4
@ETH_ALEN = common dso_local global i32 0, align 4
@TDLS_PEER_SETUP_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i64, i32, i32, i32*, i64)* @ieee80211_tdls_mgmt_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_tdls_mgmt_setup(%struct.wiphy* %0, %struct.net_device* %1, i32* %2, i32 %3, i32 %4, i64 %5, i32 %6, i32 %7, i32* %8, i64 %9) #0 {
  %11 = alloca i32, align 4
  %12 = alloca %struct.wiphy*, align 8
  %13 = alloca %struct.net_device*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32*, align 8
  %21 = alloca i64, align 8
  %22 = alloca %struct.ieee80211_sub_if_data*, align 8
  %23 = alloca %struct.ieee80211_local*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.wiphy* %0, %struct.wiphy** %12, align 8
  store %struct.net_device* %1, %struct.net_device** %13, align 8
  store i32* %2, i32** %14, align 8
  store i32 %3, i32* %15, align 4
  store i32 %4, i32* %16, align 4
  store i64 %5, i64* %17, align 8
  store i32 %6, i32* %18, align 4
  store i32 %7, i32* %19, align 4
  store i32* %8, i32** %20, align 8
  store i64 %9, i64* %21, align 8
  %26 = load %struct.net_device*, %struct.net_device** %13, align 8
  %27 = call %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device* %26)
  store %struct.ieee80211_sub_if_data* %27, %struct.ieee80211_sub_if_data** %22, align 8
  %28 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %29 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %28, i32 0, i32 1
  %30 = load %struct.ieee80211_local*, %struct.ieee80211_local** %29, align 8
  store %struct.ieee80211_local* %30, %struct.ieee80211_local** %23, align 8
  %31 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %32 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  store i32 %35, i32* %24, align 4
  %36 = load i32, i32* %24, align 4
  %37 = load i32, i32* @IEEE80211_SMPS_AUTOMATIC, align 4
  %38 = icmp ne i32 %36, %37
  br i1 %38, label %39, label %49

39:                                               ; preds = %10
  %40 = load i32, i32* %24, align 4
  %41 = load i32, i32* @IEEE80211_SMPS_OFF, align 4
  %42 = icmp ne i32 %40, %41
  br i1 %42, label %43, label %49

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @tdls_dbg(%struct.ieee80211_sub_if_data* %44, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %45)
  %47 = load i32, i32* @ENOTSUPP, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %11, align 4
  br label %145

49:                                               ; preds = %39, %10
  %50 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %51 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %50, i32 0, i32 0
  %52 = call i32 @mutex_lock(i32* %51)
  %53 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %54 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @is_zero_ether_addr(i32 %57)
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %72, label %60

60:                                               ; preds = %49
  %61 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %62 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i32*, i32** %14, align 8
  %67 = call i32 @ether_addr_equal(i32 %65, i32* %66)
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %72, label %69

69:                                               ; preds = %60
  %70 = load i32, i32* @EBUSY, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %25, align 4
  br label %140

72:                                               ; preds = %60, %49
  %73 = load i64, i64* %17, align 8
  %74 = icmp eq i64 %73, 0
  br i1 %74, label %75, label %87

75:                                               ; preds = %72
  %76 = call i32 (...) @rcu_read_lock()
  %77 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %78 = load i32*, i32** %14, align 8
  %79 = call i32 @sta_info_get(%struct.ieee80211_sub_if_data* %77, i32* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %85, label %81

81:                                               ; preds = %75
  %82 = call i32 (...) @rcu_read_unlock()
  %83 = load i32, i32* @ENOLINK, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %25, align 4
  br label %140

85:                                               ; preds = %75
  %86 = call i32 (...) @rcu_read_unlock()
  br label %87

87:                                               ; preds = %85, %72
  %88 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %89 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %90 = call i32 @ieee80211_flush_queues(%struct.ieee80211_local* %88, %struct.ieee80211_sub_if_data* %89, i32 0)
  %91 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %92 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %91, i32 0, i32 0
  %93 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %92, i32 0, i32 0
  %94 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 8
  %96 = load i32*, i32** %14, align 8
  %97 = load i32, i32* @ETH_ALEN, align 4
  %98 = call i32 @memcpy(i32 %95, i32* %96, i32 %97)
  %99 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %100 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %99, i32 0, i32 0
  %101 = call i32 @mutex_unlock(i32* %100)
  %102 = load %struct.wiphy*, %struct.wiphy** %12, align 8
  %103 = load %struct.net_device*, %struct.net_device** %13, align 8
  %104 = load i32*, i32** %14, align 8
  %105 = load i32, i32* %15, align 4
  %106 = load i32, i32* %16, align 4
  %107 = load i64, i64* %17, align 8
  %108 = load i32, i32* %18, align 4
  %109 = load i32, i32* %19, align 4
  %110 = load i32*, i32** %20, align 8
  %111 = load i64, i64* %21, align 8
  %112 = call i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy* %102, %struct.net_device* %103, i32* %104, i32 %105, i32 %106, i64 %107, i32 %108, i32 %109, i32* %110, i64 %111, i32 0, i32* null)
  store i32 %112, i32* %25, align 4
  %113 = load i32, i32* %25, align 4
  %114 = icmp slt i32 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %87
  %116 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %117 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %116, i32 0, i32 0
  %118 = call i32 @mutex_lock(i32* %117)
  %119 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %120 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 0
  %122 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %121, i32 0, i32 2
  %123 = load i32, i32* %122, align 8
  %124 = call i32 @eth_zero_addr(i32 %123)
  %125 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %126 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %125, i32 0, i32 0
  %127 = call i32 @mutex_unlock(i32* %126)
  %128 = load i32, i32* %25, align 4
  store i32 %128, i32* %11, align 4
  br label %145

129:                                              ; preds = %87
  %130 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %131 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %130, i32 0, i32 1
  %132 = load %struct.ieee80211_local*, %struct.ieee80211_local** %131, align 8
  %133 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %132, i32 0, i32 1
  %134 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %22, align 8
  %135 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %134, i32 0, i32 0
  %136 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %135, i32 0, i32 0
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 1
  %138 = load i32, i32* @TDLS_PEER_SETUP_TIMEOUT, align 4
  %139 = call i32 @ieee80211_queue_delayed_work(i32* %133, i32* %137, i32 %138)
  store i32 0, i32* %11, align 4
  br label %145

140:                                              ; preds = %81, %69
  %141 = load %struct.ieee80211_local*, %struct.ieee80211_local** %23, align 8
  %142 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %141, i32 0, i32 0
  %143 = call i32 @mutex_unlock(i32* %142)
  %144 = load i32, i32* %25, align 4
  store i32 %144, i32* %11, align 4
  br label %145

145:                                              ; preds = %140, %129, %115, %43
  %146 = load i32, i32* %11, align 4
  ret i32 %146
}

declare dso_local %struct.ieee80211_sub_if_data* @IEEE80211_DEV_TO_SUB_IF(%struct.net_device*) #1

declare dso_local i32 @tdls_dbg(%struct.ieee80211_sub_if_data*, i8*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @is_zero_ether_addr(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @rcu_read_lock(...) #1

declare dso_local i32 @sta_info_get(%struct.ieee80211_sub_if_data*, i32*) #1

declare dso_local i32 @rcu_read_unlock(...) #1

declare dso_local i32 @ieee80211_flush_queues(%struct.ieee80211_local*, %struct.ieee80211_sub_if_data*, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @ieee80211_tdls_prep_mgmt_packet(%struct.wiphy*, %struct.net_device*, i32*, i32, i32, i64, i32, i32, i32*, i64, i32, i32*) #1

declare dso_local i32 @eth_zero_addr(i32) #1

declare dso_local i32 @ieee80211_queue_delayed_work(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
