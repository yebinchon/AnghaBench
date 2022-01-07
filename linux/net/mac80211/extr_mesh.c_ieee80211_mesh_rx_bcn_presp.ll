; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_bcn_presp.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_mesh.c_ieee80211_mesh_rx_bcn_presp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sub_if_data = type { %struct.TYPE_14__, %struct.TYPE_12__, %struct.ieee80211_local* }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { %struct.ieee80211_if_mesh }
%struct.ieee80211_if_mesh = type { i64, i64, %struct.TYPE_13__*, %struct.TYPE_11__, i32 }
%struct.TYPE_13__ = type { i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)* }
%struct.ieee802_11_elems = type { i32*, i64, i32, i32 }
%struct.TYPE_11__ = type { i64 }
%struct.ieee80211_local = type { %struct.TYPE_10__ }
%struct.TYPE_10__ = type { i32 }
%struct.ieee80211_mgmt = type { i32, i32, %struct.TYPE_9__, i32 }
%struct.TYPE_9__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i64 }
%struct.ieee80211_rx_status = type { i32, i32, i64 }
%struct.ieee80211_channel = type { i32 }

@IEEE80211_STYPE_PROBE_RESP = common dso_local global i32 0, align 4
@IEEE80211_MESH_SEC_NONE = common dso_local global i64 0, align 8
@IEEE80211_CHAN_DISABLED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"rssi_threshold=%d,rx_status->signal=%d\0A\00", align 1
@IEEE80211_MESH_CSA_ROLE_INIT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, i64, %struct.ieee80211_rx_status*)* @ieee80211_mesh_rx_bcn_presp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ieee80211_mesh_rx_bcn_presp(%struct.ieee80211_sub_if_data* %0, i32 %1, %struct.ieee80211_mgmt* %2, i64 %3, %struct.ieee80211_rx_status* %4) #0 {
  %6 = alloca %struct.ieee80211_sub_if_data*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_mgmt*, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.ieee80211_rx_status*, align 8
  %11 = alloca %struct.ieee80211_local*, align 8
  %12 = alloca %struct.ieee80211_if_mesh*, align 8
  %13 = alloca %struct.ieee802_11_elems, align 8
  %14 = alloca %struct.ieee80211_channel*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.ieee80211_sub_if_data* %0, %struct.ieee80211_sub_if_data** %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.ieee80211_mgmt* %2, %struct.ieee80211_mgmt** %8, align 8
  store i64 %3, i64* %9, align 8
  store %struct.ieee80211_rx_status* %4, %struct.ieee80211_rx_status** %10, align 8
  %18 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %19 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %18, i32 0, i32 2
  %20 = load %struct.ieee80211_local*, %struct.ieee80211_local** %19, align 8
  store %struct.ieee80211_local* %20, %struct.ieee80211_local** %11, align 8
  %21 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %22 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 0
  store %struct.ieee80211_if_mesh* %23, %struct.ieee80211_if_mesh** %12, align 8
  %24 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %25 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  store i32 %26, i32* %17, align 4
  %27 = load i32, i32* %7, align 4
  %28 = load i32, i32* @IEEE80211_STYPE_PROBE_RESP, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %5
  %31 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %32 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %31, i32 0, i32 3
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %35 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @ether_addr_equal(i32 %33, i32 %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %30
  br label %215

41:                                               ; preds = %30, %5
  %42 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %43 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %42, i32 0, i32 2
  %44 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = inttoptr i64 %46 to i32*
  %48 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %49 = bitcast %struct.ieee80211_mgmt* %48 to i32*
  %50 = ptrtoint i32* %47 to i64
  %51 = ptrtoint i32* %49 to i64
  %52 = sub i64 %50, %51
  %53 = sdiv exact i64 %52, 4
  store i64 %53, i64* %15, align 8
  %54 = load i64, i64* %15, align 8
  %55 = load i64, i64* %9, align 8
  %56 = icmp ugt i64 %54, %55
  br i1 %56, label %57, label %58

57:                                               ; preds = %41
  br label %215

58:                                               ; preds = %41
  %59 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %60 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %59, i32 0, i32 2
  %61 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* %9, align 8
  %65 = load i64, i64* %15, align 8
  %66 = sub i64 %64, %65
  %67 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %68 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @ieee802_11_parse_elems(i64 %63, i64 %66, i32 0, %struct.ieee802_11_elems* %13, i32 %69, i32* null)
  %71 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 3
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %102

74:                                               ; preds = %58
  %75 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %102

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %82, label %90

82:                                               ; preds = %78
  %83 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %84 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %83, i32 0, i32 1
  %85 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = load i64, i64* @IEEE80211_MESH_SEC_NONE, align 8
  %89 = icmp eq i64 %87, %88
  br i1 %89, label %102, label %90

90:                                               ; preds = %82, %78
  %91 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %103, label %94

94:                                               ; preds = %90
  %95 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %96 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %95, i32 0, i32 1
  %97 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* @IEEE80211_MESH_SEC_NONE, align 8
  %101 = icmp ne i64 %99, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %94, %82, %74, %58
  br label %215

103:                                              ; preds = %94, %90
  %104 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 0
  %105 = load i32*, i32** %104, align 8
  %106 = icmp ne i32* %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %103
  %108 = getelementptr inbounds %struct.ieee802_11_elems, %struct.ieee802_11_elems* %13, i32 0, i32 0
  %109 = load i32*, i32** %108, align 8
  %110 = getelementptr inbounds i32, i32* %109, i64 0
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %17, align 4
  %113 = call i32 @ieee80211_channel_to_frequency(i32 %111, i32 %112)
  store i32 %113, i32* %16, align 4
  br label %118

114:                                              ; preds = %103
  %115 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %116 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %115, i32 0, i32 1
  %117 = load i32, i32* %116, align 4
  store i32 %117, i32* %16, align 4
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.ieee80211_local*, %struct.ieee80211_local** %11, align 8
  %120 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %119, i32 0, i32 0
  %121 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = load i32, i32* %16, align 4
  %124 = call %struct.ieee80211_channel* @ieee80211_get_channel(i32 %122, i32 %123)
  store %struct.ieee80211_channel* %124, %struct.ieee80211_channel** %14, align 8
  %125 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %126 = icmp ne %struct.ieee80211_channel* %125, null
  br i1 %126, label %127, label %134

127:                                              ; preds = %118
  %128 = load %struct.ieee80211_channel*, %struct.ieee80211_channel** %14, align 8
  %129 = getelementptr inbounds %struct.ieee80211_channel, %struct.ieee80211_channel* %128, i32 0, i32 0
  %130 = load i32, i32* %129, align 4
  %131 = load i32, i32* @IEEE80211_CHAN_DISABLED, align 4
  %132 = and i32 %130, %131
  %133 = icmp ne i32 %132, 0
  br i1 %133, label %134, label %135

134:                                              ; preds = %127, %118
  br label %215

135:                                              ; preds = %127
  %136 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %137 = call i64 @mesh_matches_local(%struct.ieee80211_sub_if_data* %136, %struct.ieee802_11_elems* %13)
  %138 = icmp ne i64 %137, 0
  br i1 %138, label %139, label %184

139:                                              ; preds = %135
  %140 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %141 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %142 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 0
  %144 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %143, i32 0, i32 3
  %145 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %148 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %147, i32 0, i32 2
  %149 = load i64, i64* %148, align 8
  %150 = call i32 @mpl_dbg(%struct.ieee80211_sub_if_data* %140, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i64 %146, i64 %149)
  %151 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %152 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 0
  %154 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %153, i32 0, i32 4
  %155 = load i32, i32* %154, align 8
  %156 = icmp ne i32 %155, 0
  br i1 %156, label %157, label %176

157:                                              ; preds = %139
  %158 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %159 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 0
  %161 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %160, i32 0, i32 3
  %162 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %161, i32 0, i32 0
  %163 = load i64, i64* %162, align 8
  %164 = icmp eq i64 %163, 0
  br i1 %164, label %176, label %165

165:                                              ; preds = %157
  %166 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %167 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %166, i32 0, i32 1
  %168 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %167, i32 0, i32 0
  %169 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %168, i32 0, i32 3
  %170 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %169, i32 0, i32 0
  %171 = load i64, i64* %170, align 8
  %172 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %173 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %172, i32 0, i32 2
  %174 = load i64, i64* %173, align 8
  %175 = icmp slt i64 %171, %174
  br i1 %175, label %176, label %183

176:                                              ; preds = %165, %157, %139
  %177 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %178 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %179 = getelementptr inbounds %struct.ieee80211_mgmt, %struct.ieee80211_mgmt* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %182 = call i32 @mesh_neighbour_update(%struct.ieee80211_sub_if_data* %177, i32 %180, %struct.ieee802_11_elems* %13, %struct.ieee80211_rx_status* %181)
  br label %183

183:                                              ; preds = %176, %165
  br label %184

184:                                              ; preds = %183, %135
  %185 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %12, align 8
  %186 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %185, i32 0, i32 2
  %187 = load %struct.TYPE_13__*, %struct.TYPE_13__** %186, align 8
  %188 = icmp ne %struct.TYPE_13__* %187, null
  br i1 %188, label %189, label %200

189:                                              ; preds = %184
  %190 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %12, align 8
  %191 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %190, i32 0, i32 2
  %192 = load %struct.TYPE_13__*, %struct.TYPE_13__** %191, align 8
  %193 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %192, i32 0, i32 0
  %194 = load i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)*, i32 (%struct.ieee80211_sub_if_data*, i32, %struct.ieee80211_mgmt*, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*)** %193, align 8
  %195 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %196 = load i32, i32* %7, align 4
  %197 = load %struct.ieee80211_mgmt*, %struct.ieee80211_mgmt** %8, align 8
  %198 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %10, align 8
  %199 = call i32 %194(%struct.ieee80211_sub_if_data* %195, i32 %196, %struct.ieee80211_mgmt* %197, %struct.ieee802_11_elems* %13, %struct.ieee80211_rx_status* %198)
  br label %200

200:                                              ; preds = %189, %184
  %201 = load %struct.ieee80211_if_mesh*, %struct.ieee80211_if_mesh** %12, align 8
  %202 = getelementptr inbounds %struct.ieee80211_if_mesh, %struct.ieee80211_if_mesh* %201, i32 0, i32 1
  %203 = load i64, i64* %202, align 8
  %204 = load i64, i64* @IEEE80211_MESH_CSA_ROLE_INIT, align 8
  %205 = icmp ne i64 %203, %204
  br i1 %205, label %206, label %215

206:                                              ; preds = %200
  %207 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %208 = getelementptr inbounds %struct.ieee80211_sub_if_data, %struct.ieee80211_sub_if_data* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %208, i32 0, i32 0
  %210 = load i32, i32* %209, align 8
  %211 = icmp ne i32 %210, 0
  br i1 %211, label %215, label %212

212:                                              ; preds = %206
  %213 = load %struct.ieee80211_sub_if_data*, %struct.ieee80211_sub_if_data** %6, align 8
  %214 = call i32 @ieee80211_mesh_process_chnswitch(%struct.ieee80211_sub_if_data* %213, %struct.ieee802_11_elems* %13, i32 1)
  br label %215

215:                                              ; preds = %40, %57, %102, %134, %212, %206, %200
  ret void
}

declare dso_local i32 @ether_addr_equal(i32, i32) #1

declare dso_local i32 @ieee802_11_parse_elems(i64, i64, i32, %struct.ieee802_11_elems*, i32, i32*) #1

declare dso_local i32 @ieee80211_channel_to_frequency(i32, i32) #1

declare dso_local %struct.ieee80211_channel* @ieee80211_get_channel(i32, i32) #1

declare dso_local i64 @mesh_matches_local(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*) #1

declare dso_local i32 @mpl_dbg(%struct.ieee80211_sub_if_data*, i8*, i64, i64) #1

declare dso_local i32 @mesh_neighbour_update(%struct.ieee80211_sub_if_data*, i32, %struct.ieee802_11_elems*, %struct.ieee80211_rx_status*) #1

declare dso_local i32 @ieee80211_mesh_process_chnswitch(%struct.ieee80211_sub_if_data*, %struct.ieee802_11_elems*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
