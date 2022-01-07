; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_disassoc.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_disassoc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }

@.str = private unnamed_addr constant [40 x i8] c"disassociated from %pM (Reason: %u=%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_rx_mgmt_disassoc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_disassoc(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %9 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %10 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  store %struct.ieee80211_if_managed* %11, %struct.ieee80211_if_managed** %7, align 8
  %12 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %13 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %12)
  %14 = load i64, i64* %6, align 8
  %15 = icmp ult i64 %14, 26
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %73

17:                                               ; preds = %3
  %18 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %19 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = icmp ne %struct.TYPE_6__* %20, null
  br i1 %21, label %22, label %33

22:                                               ; preds = %17
  %23 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %27 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %26, i32 0, i32 0
  %28 = load %struct.TYPE_6__*, %struct.TYPE_6__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @ether_addr_equal(i32 %25, i32 %30)
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %34, label %33

33:                                               ; preds = %22, %17
  br label %73

34:                                               ; preds = %22
  %35 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %36 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %35, i32 0, i32 2
  %37 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @le16_to_cpu(i32 %39)
  store i32 %40, i32* %8, align 4
  %41 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %42 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %45 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @ether_addr_equal(i32 %43, i32 %46)
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %56, label %49

49:                                               ; preds = %34
  %50 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %51 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i32, i32* %8, align 4
  %55 = call i32 @ieee80211_tdls_handle_disconnect(%struct.ieee80211_sub_if_data* %50, i32 %53, i32 %54)
  br label %73

56:                                               ; preds = %34
  %57 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %58 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %59 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %8, align 4
  %63 = call i32 @ieee80211_get_reason_code_string(i32 %62)
  %64 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %57, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %60, i32 %61, i32 %63)
  %65 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %66 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %65, i32 0, i32 0, i32 0, i32* null)
  %67 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %68 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %69 = bitcast %struct.ieee80211_mgmt* %68 to i32*
  %70 = load i64, i64* %6, align 8
  %71 = load i32, i32* %8, align 4
  %72 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %67, i32* %69, i64 %70, i32 0, i32 %71)
  br label %73

73:                                               ; preds = %56, %49, %33, %16
  ret void
}

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @ieee80211_tdls_handle_disconnect(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @ieee80211_get_reason_code_string(i32) #1

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
