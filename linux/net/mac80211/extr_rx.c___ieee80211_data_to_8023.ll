; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c___ieee80211_data_to_8023.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c___ieee80211_data_to_8023.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_rx_data = type { %struct.ieee80211_sub_if_data*, %struct.TYPE_10__* }
%struct.ieee80211_sub_if_data = type { i64, %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i64, i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_10__ = type { i64 }
%struct.ieee80211_hdr = type { i32, i32 }
%struct.ethhdr = type { i64 }

@NL80211_IFTYPE_AP_VLAN = common dso_local global i64 0, align 8
@NL80211_IFTYPE_STATION = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_rx_data*, i32*)* @__ieee80211_data_to_8023 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ieee80211_data_to_8023(%struct.ieee80211_rx_data* %0, i32* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ieee80211_rx_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca %struct.ieee80211_hdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ethhdr*, align 8
  %10 = alloca i32, align 4
  store %struct.ieee80211_rx_data* %0, %struct.ieee80211_rx_data** %4, align 8
  store i32* %1, i32** %5, align 8
  %11 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %12 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %11, i32 0, i32 0
  %13 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %12, align 8
  store %struct.ieee80211_sub_if_data* %13, %struct.ieee80211_sub_if_data** %6, align 8
  %14 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %15 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %14, i32 0, i32 1
  %16 = load %struct.TYPE_10__*, %struct.TYPE_10__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = inttoptr i64 %18 to %struct.ieee80211_hdr*
  store %struct.ieee80211_hdr* %19, %struct.ieee80211_hdr** %7, align 8
  store i32 0, i32* %8, align 4
  %20 = load i32*, i32** %5, align 8
  store i32 0, i32* %20, align 4
  %21 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %22 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i64 @ieee80211_has_a4(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %41

26:                                               ; preds = %2
  %27 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %28 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %27, i32 0, i32 1
  %29 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %41

33:                                               ; preds = %26
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 2
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %36, i32 0, i32 0
  %38 = load i64, i64* %37, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  store i32 -1, i32* %3, align 4
  br label %150

41:                                               ; preds = %33, %26, %2
  %42 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %43 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %42, i32 0, i32 1
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @NL80211_IFTYPE_STATION, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %88

48:                                               ; preds = %41
  %49 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %50 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %49, i32 0, i32 2
  %51 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  %55 = xor i1 %54, true
  %56 = xor i1 %55, true
  %57 = zext i1 %56 to i32
  %58 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %59 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i64 @ieee80211_has_a4(i32 %60)
  %62 = icmp ne i64 %61, 0
  %63 = xor i1 %62, true
  %64 = xor i1 %63, true
  %65 = zext i1 %64 to i32
  %66 = icmp ne i32 %57, %65
  br i1 %66, label %67, label %88

67:                                               ; preds = %48
  %68 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %69 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %69, i32 0, i32 1
  %71 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %75, label %74

74:                                               ; preds = %67
  store i32 -1, i32* %3, align 4
  br label %150

75:                                               ; preds = %67
  %76 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %77 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %80 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %79, i32 0, i32 1
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 1
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ether_addr_equal(i32 %78, i32 %82)
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %86, label %85

85:                                               ; preds = %75
  store i32 1, i32* %8, align 4
  br label %86

86:                                               ; preds = %85, %75
  br label %87

87:                                               ; preds = %86
  br label %88

88:                                               ; preds = %87, %48, %41
  %89 = load %struct.ieee80211_hdr*, %struct.ieee80211_hdr** %7, align 8
  %90 = getelementptr inbounds %struct.ieee80211_hdr, %struct.ieee80211_hdr* %89, i32 0, i32 0
  %91 = load i32, i32* %90, align 4
  %92 = call i64 @is_multicast_ether_addr(i32 %91)
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %109

94:                                               ; preds = %88
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @NL80211_IFTYPE_AP_VLAN, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %109

101:                                              ; preds = %94
  %102 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %103 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %102, i32 0, i32 2
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 0
  %105 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %104, i32 0, i32 0
  %106 = load i64, i64* %105, align 8
  %107 = icmp ne i64 %106, 0
  br i1 %107, label %108, label %109

108:                                              ; preds = %101
  store i32 -1, i32* %3, align 4
  br label %150

109:                                              ; preds = %101, %94, %88
  %110 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %111 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %110, i32 0, i32 1
  %112 = load %struct.TYPE_10__*, %struct.TYPE_10__** %111, align 8
  %113 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %114 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %113, i32 0, i32 1
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 8
  %117 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %118 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %117, i32 0, i32 1
  %119 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = call i32 @ieee80211_data_to_8023(%struct.TYPE_10__* %112, i32 %116, i64 %120)
  store i32 %121, i32* %10, align 4
  %122 = load i32, i32* %10, align 4
  %123 = icmp slt i32 %122, 0
  br i1 %123, label %124, label %126

124:                                              ; preds = %109
  %125 = load i32, i32* %10, align 4
  store i32 %125, i32* %3, align 4
  br label %150

126:                                              ; preds = %109
  %127 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %128 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %127, i32 0, i32 1
  %129 = load %struct.TYPE_10__*, %struct.TYPE_10__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = inttoptr i64 %131 to %struct.ethhdr*
  store %struct.ethhdr* %132, %struct.ethhdr** %9, align 8
  %133 = load %struct.ethhdr*, %struct.ethhdr** %9, align 8
  %134 = getelementptr inbounds %struct.ethhdr, %struct.ethhdr* %133, i32 0, i32 0
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.ieee80211_rx_data*, %struct.ieee80211_rx_data** %4, align 8
  %137 = getelementptr inbounds %struct.ieee80211_rx_data, %struct.ieee80211_rx_data* %136, i32 0, i32 0
  %138 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %137, align 8
  %139 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = icmp eq i64 %135, %140
  br i1 %141, label %142, label %144

142:                                              ; preds = %126
  %143 = load i32*, i32** %5, align 8
  store i32 1, i32* %143, align 4
  br label %149

144:                                              ; preds = %126
  %145 = load i32, i32* %8, align 4
  %146 = icmp ne i32 %145, 0
  br i1 %146, label %147, label %148

147:                                              ; preds = %144
  store i32 -1, i32* %3, align 4
  br label %150

148:                                              ; preds = %144
  br label %149

149:                                              ; preds = %148, %142
  store i32 0, i32* %3, align 4
  br label %150

150:                                              ; preds = %149, %147, %124, %108, %74, %40
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i64 @ieee80211_has_a4(i32) #1

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i64 @is_multicast_ether_addr(i32) #1

declare dso_local i32 @ieee80211_data_to_8023(%struct.TYPE_10__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
