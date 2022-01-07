; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted_mgmt.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_drop_unencrypted_mgmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.TYPE_8__*, i64, %struct.TYPE_7__*, i64 }
%struct.TYPE_8__ = type { i32, i64 }
%struct.TYPE_7__ = type { i32 }
%struct.ieee80211_hdr = type { i32 }
%struct.ieee80211_rx_status = type { i32 }

@RX_FLAG_DECRYPTED = common dso_local global i32 0, align 4
@WLAN_STA_MFP = common dso_local global i32 0, align 4
@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*)* @ieee80211_drop_unencrypted_mgmt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_drop_unencrypted_mgmt(%struct.ieee80211_rx_data* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_rx_data*, align 8
  %4 = alloca %struct.ieee80211_hdr*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %3, align 8
  %7 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %8 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %7, i32 0, i32 0
  %9 = load %struct.TYPE_8__*, %struct.TYPE_8__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %9, i32 0, i32 1
  %11 = load i64, i64* %10, align 8
  %12 = inttoptr i64 %11 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %12, %struct.ieee80211_hdr** %4, align 8
  %13 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %14 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %13, i32 0, i32 0
  %15 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %16 = call %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_8__* %15)
  store %struct.ieee80211_rx_status* %16, %struct.ieee80211_rx_status** %5, align 8
  %17 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %4, align 8
  %18 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  store i32 %19, i32* %6, align 4
  %20 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %21 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* @RX_FLAG_DECRYPTED, align 4
  %24 = and i32 %22, %23
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %157

27:                                               ; preds = %1
  %28 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %29 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %156

32:                                               ; preds = %27
  %33 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %34 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = load i32, i32* @WLAN_STA_MFP, align 4
  %37 = call i64 @test_sta_flag(i64 %35, i32 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %156

39:                                               ; preds = %32
  %40 = load i32, i32* %6, align 4
  %41 = call i32 @ieee80211_has_protected(i32 %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %54, label %43

43:                                               ; preds = %39
  %44 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %45 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %44, i32 0, i32 0
  %46 = load %struct.TYPE_8__*, %struct.TYPE_8__** %45, align 8
  %47 = call i64 @ieee80211_is_unicast_robust_mgmt_frame(%struct.TYPE_8__* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %43
  %50 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %51 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br label %54

54:                                               ; preds = %49, %43, %39
  %55 = phi i1 [ false, %43 ], [ false, %39 ], [ %53, %49 ]
  %56 = zext i1 %55 to i32
  %57 = call i64 @unlikely(i32 %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %87

59:                                               ; preds = %54
  %60 = load i32, i32* %6, align 4
  %61 = call i64 @ieee80211_is_deauth(i32 %60)
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %67, label %63

63:                                               ; preds = %59
  %64 = load i32, i32* %6, align 4
  %65 = call i64 @ieee80211_is_disassoc(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %84

67:                                               ; preds = %63, %59
  %68 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %69 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %68, i32 0, i32 2
  %70 = load %struct.TYPE_7__*, %struct.TYPE_7__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %74 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 1
  %77 = load i64, i64* %76, align 8
  %78 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %79 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %78, i32 0, i32 0
  %80 = load %struct.TYPE_8__*, %struct.TYPE_8__** %79, align 8
  %81 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @cfg80211_rx_unprot_mlme_mgmt(i32 %72, i64 %77, i32 %82)
  br label %84

84:                                               ; preds = %67, %63
  %85 = load i32, i32* @EACCES, align 4
  %86 = sub nsw i32 0, %85
  store i32 %86, i32* %2, align 4
  br label %157

87:                                               ; preds = %54
  %88 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %89 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %88, i32 0, i32 0
  %90 = load %struct.TYPE_8__*, %struct.TYPE_8__** %89, align 8
  %91 = call i64 @ieee80211_is_multicast_robust_mgmt_frame(%struct.TYPE_8__* %90)
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %93, label %99

93:                                               ; preds = %87
  %94 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %95 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %94, i32 0, i32 0
  %96 = load %struct.TYPE_8__*, %struct.TYPE_8__** %95, align 8
  %97 = call i64 @ieee80211_get_mmie_keyidx(%struct.TYPE_8__* %96)
  %98 = icmp slt i64 %97, 0
  br label %99

99:                                               ; preds = %93, %87
  %100 = phi i1 [ false, %87 ], [ %98, %93 ]
  %101 = zext i1 %100 to i32
  %102 = call i64 @unlikely(i32 %101)
  %103 = icmp ne i64 %102, 0
  br i1 %103, label %104, label %132

104:                                              ; preds = %99
  %105 = load i32, i32* %6, align 4
  %106 = call i64 @ieee80211_is_deauth(i32 %105)
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %112, label %108

108:                                              ; preds = %104
  %109 = load i32, i32* %6, align 4
  %110 = call i64 @ieee80211_is_disassoc(i32 %109)
  %111 = icmp ne i64 %110, 0
  br i1 %111, label %112, label %129

112:                                              ; preds = %108, %104
  %113 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %114 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %113, i32 0, i32 2
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %119 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %118, i32 0, i32 0
  %120 = load %struct.TYPE_8__*, %struct.TYPE_8__** %119, align 8
  %121 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %120, i32 0, i32 1
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %124 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %123, i32 0, i32 0
  %125 = load %struct.TYPE_8__*, %struct.TYPE_8__** %124, align 8
  %126 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = call i32 @cfg80211_rx_unprot_mlme_mgmt(i32 %117, i64 %122, i32 %127)
  br label %129

129:                                              ; preds = %112, %108
  %130 = load i32, i32* @EACCES, align 4
  %131 = sub nsw i32 0, %130
  store i32 %131, i32* %2, align 4
  br label %157

132:                                              ; preds = %99
  %133 = load i32, i32* %6, align 4
  %134 = call i64 @ieee80211_is_action(i32 %133)
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %147

136:                                              ; preds = %132
  %137 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %138 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %137, i32 0, i32 1
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %147, label %141

141:                                              ; preds = %136
  %142 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %3, align 8
  %143 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %142, i32 0, i32 0
  %144 = load %struct.TYPE_8__*, %struct.TYPE_8__** %143, align 8
  %145 = call i64 @ieee80211_is_robust_mgmt_frame(%struct.TYPE_8__* %144)
  %146 = icmp ne i64 %145, 0
  br label %147

147:                                              ; preds = %141, %136, %132
  %148 = phi i1 [ false, %136 ], [ false, %132 ], [ %146, %141 ]
  %149 = zext i1 %148 to i32
  %150 = call i64 @unlikely(i32 %149)
  %151 = icmp ne i64 %150, 0
  br i1 %151, label %152, label %155

152:                                              ; preds = %147
  %153 = load i32, i32* @EACCES, align 4
  %154 = sub nsw i32 0, %153
  store i32 %154, i32* %2, align 4
  br label %157

155:                                              ; preds = %147
  br label %156

156:                                              ; preds = %155, %32, %27
  store i32 0, i32* %2, align 4
  br label %157

157:                                              ; preds = %156, %152, %129, %84, %26
  %158 = load i32, i32* %2, align 4
  ret i32 %158
}

declare dso_local %struct.ieee80211_rx_status* @IEEE80211_SKB_RXCB(%struct.TYPE_8__*) #1

declare dso_local i64 @test_sta_flag(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ieee80211_has_protected(i32) #1

declare dso_local i64 @ieee80211_is_unicast_robust_mgmt_frame(%struct.TYPE_8__*) #1

declare dso_local i64 @ieee80211_is_deauth(i32) #1

declare dso_local i64 @ieee80211_is_disassoc(i32) #1

declare dso_local i32 @cfg80211_rx_unprot_mlme_mgmt(i32, i64, i32) #1

declare dso_local i64 @ieee80211_is_multicast_robust_mgmt_frame(%struct.TYPE_8__*) #1

declare dso_local i64 @ieee80211_get_mmie_keyidx(%struct.TYPE_8__*) #1

declare dso_local i64 @ieee80211_is_action(i32) #1

declare dso_local i64 @ieee80211_is_robust_mgmt_frame(%struct.TYPE_8__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
