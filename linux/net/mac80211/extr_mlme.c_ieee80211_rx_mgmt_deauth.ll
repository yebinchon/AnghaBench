; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_deauth.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mlme.c_ieee80211_rx_mgmt_deauth.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { %struct.ieee80211_if_managed }
%struct.ieee80211_if_managed = type { %struct.TYPE_12__*, %struct.TYPE_10__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__* }
%struct.TYPE_11__ = type { i32* }
%struct.TYPE_10__ = type { i32* }
%struct.ieee80211_mgmt = type { i32, i32*, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32 }

@.str = private unnamed_addr constant [42 x i8] c"deauthenticated from %pM (Reason: %u=%s)\0A\00", align 1
@.str.1 = private unnamed_addr constant [60 x i8] c"deauthenticated from %pM while associating (Reason: %u=%s)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, %struct.ieee80211_mgmt*, i64)* @ieee80211_rx_mgmt_deauth to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_rx_mgmt_deauth(%struct.ieee80211_sub_if_data* %0, %struct.ieee80211_mgmt* %1, i64 %2) #0 {
  %4 = alloca %struct.ieee80211_sub_if_data*, align 8
  %5 = alloca %struct.ieee80211_mgmt*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.ieee80211_if_managed*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %4, align 8
  store %struct.ieee80211_mgmt* %1, %struct.ieee80211_mgmt** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %12, i32 0, i32 0
  store %struct.ieee80211_if_managed* %13, %struct.ieee80211_if_managed** %7, align 8
  %14 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %15 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %14, i32 0, i32 2
  %16 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = call i32 @le16_to_cpu(i32 %18)
  store i32 %19, i32* %8, align 4
  %20 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %21 = call i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data* %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp ult i64 %22, 26
  br i1 %23, label %24, label %25

24:                                               ; preds = %3
  br label %118

25:                                               ; preds = %3
  %26 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %27 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  %29 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %30 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %29, i32 0, i32 1
  %31 = load i32*, i32** %30, align 8
  %32 = call i64 @ether_addr_equal(i32 %28, i32* %31)
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %41, label %34

34:                                               ; preds = %25
  %35 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %36 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %37 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = load i32, i32* %8, align 4
  %40 = call i32 @ieee80211_tdls_handle_disconnect(%struct.ieee80211_sub_if_data* %35, i32* %38, i32 %39)
  br label %118

41:                                               ; preds = %25
  %42 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %43 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %42, i32 0, i32 1
  %44 = load %struct.TYPE_10__*, %struct.TYPE_10__** %43, align 8
  %45 = icmp ne %struct.TYPE_10__* %44, null
  br i1 %45, label %46, label %77

46:                                               ; preds = %41
  %47 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %48 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %51 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %50, i32 0, i32 1
  %52 = load %struct.TYPE_10__*, %struct.TYPE_10__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = call i64 @ether_addr_equal(i32 %49, i32* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %77

57:                                               ; preds = %46
  %58 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %58, i32 0, i32 1
  %60 = load %struct.TYPE_10__*, %struct.TYPE_10__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 0
  %62 = load i32*, i32** %61, align 8
  store i32* %62, i32** %9, align 8
  %63 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %64 = load i32*, i32** %9, align 8
  %65 = load i32, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @ieee80211_get_reason_code_string(i32 %66)
  %68 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %63, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32* %64, i32 %65, i32 %67)
  %69 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %70 = call i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data* %69, i32 0, i32 0, i32 0, i32* null)
  %71 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %72 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %73 = bitcast %struct.ieee80211_mgmt* %72 to i32*
  %74 = load i64, i64* %6, align 8
  %75 = load i32, i32* %8, align 4
  %76 = call i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data* %71, i32* %73, i64 %74, i32 0, i32 %75)
  br label %118

77:                                               ; preds = %46, %41
  %78 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %79 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %78, i32 0, i32 0
  %80 = load %struct.TYPE_12__*, %struct.TYPE_12__** %79, align 8
  %81 = icmp ne %struct.TYPE_12__* %80, null
  br i1 %81, label %82, label %118

82:                                               ; preds = %77
  %83 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %84 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 8
  %86 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %87 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %86, i32 0, i32 0
  %88 = load %struct.TYPE_12__*, %struct.TYPE_12__** %87, align 8
  %89 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %88, i32 0, i32 0
  %90 = load %struct.TYPE_11__*, %struct.TYPE_11__** %89, align 8
  %91 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %90, i32 0, i32 0
  %92 = load i32*, i32** %91, align 8
  %93 = call i64 @ether_addr_equal(i32 %85, i32* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %118

95:                                               ; preds = %82
  %96 = load %struct.ieee80211_if_managed*, %struct.ieee80211_if_managed** %7, align 8
  %97 = getelementptr inbounds %struct.ieee80211_if_managed, %struct.ieee80211_if_managed* %96, i32 0, i32 0
  %98 = load %struct.TYPE_12__*, %struct.TYPE_12__** %97, align 8
  %99 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %98, i32 0, i32 0
  %100 = load %struct.TYPE_11__*, %struct.TYPE_11__** %99, align 8
  %101 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %100, i32 0, i32 0
  %102 = load i32*, i32** %101, align 8
  store i32* %102, i32** %10, align 8
  %103 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %104 = load i32*, i32** %10, align 8
  %105 = load i32, i32* %8, align 4
  %106 = load i32, i32* %8, align 4
  %107 = call i32 @ieee80211_get_reason_code_string(i32 %106)
  %108 = call i32 @sdata_info(%struct.ieee80211_sub_if_data* %103, i8* getelementptr inbounds ([60 x i8], [60 x i8]* @.str.1, i64 0, i64 0), i32* %104, i32 %105, i32 %107)
  %109 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %110 = call i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data* %109, i32 0, i32 1)
  %111 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %4, align 8
  %112 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %5, align 8
  %115 = bitcast %struct.ieee80211_mgmt* %114 to i32*
  %116 = load i64, i64* %6, align 8
  %117 = call i32 @cfg80211_rx_mlme_mgmt(i32 %113, i32* %115, i64 %116)
  br label %118

118:                                              ; preds = %24, %34, %57, %95, %82, %77
  ret void
}

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @sdata_assert_lock(%struct.ieee80211_sub_if_data*) #1

declare dso_local i64 @ether_addr_equal(i32, i32*) #1

declare dso_local i32 @ieee80211_tdls_handle_disconnect(%struct.ieee80211_sub_if_data*, i32*, i32) #1

declare dso_local i32 @sdata_info(%struct.ieee80211_sub_if_data*, i8*, i32*, i32, i32) #1

declare dso_local i32 @ieee80211_get_reason_code_string(i32) #1

declare dso_local i32 @ieee80211_set_disassoc(%struct.ieee80211_sub_if_data*, i32, i32, i32, i32*) #1

declare dso_local i32 @ieee80211_report_disconnect(%struct.ieee80211_sub_if_data*, i32*, i64, i32, i32) #1

declare dso_local i32 @ieee80211_destroy_assoc_data(%struct.ieee80211_sub_if_data*, i32, i32) #1

declare dso_local i32 @cfg80211_rx_mlme_mgmt(i32, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
