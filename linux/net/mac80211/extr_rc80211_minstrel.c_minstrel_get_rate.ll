; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_rate.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rc80211_minstrel.c_minstrel_get_rate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_sta = type { i32 }
%struct.ieee80211_tx_rate_control = type { %struct.TYPE_5__*, i32, %struct.sk_buff* }
%struct.TYPE_5__ = type { i32 }
%struct.sk_buff = type { i32 }
%struct.ieee80211_tx_info = type { i32, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.ieee80211_tx_rate* }
%struct.ieee80211_tx_rate = type { i32, i32 }
%struct.minstrel_sta_info = type { i32, i32, i32, i32, i32, i64*, %struct.minstrel_rate* }
%struct.minstrel_rate = type { i64, i64, i32, %struct.TYPE_8__ }
%struct.TYPE_8__ = type { i32, i64 }
%struct.minstrel_priv = type { i32, i32, i32, %struct.TYPE_6__*, i64 }
%struct.TYPE_6__ = type { i32 }

@IEEE80211_TX_CTRL_PORT_CTRL_PROTO = common dso_local global i32 0, align 4
@IEEE80211_TX_CTL_RATE_CTRL_PROBE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, %struct.ieee80211_sta*, i8*, %struct.ieee80211_tx_rate_control*)* @minstrel_get_rate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @minstrel_get_rate(i8* %0, %struct.ieee80211_sta* %1, i8* %2, %struct.ieee80211_tx_rate_control* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.ieee80211_sta*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.ieee80211_tx_rate_control*, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca %struct.ieee80211_tx_info*, align 8
  %11 = alloca %struct.minstrel_sta_info*, align 8
  %12 = alloca %struct.minstrel_priv*, align 8
  %13 = alloca %struct.ieee80211_tx_rate*, align 8
  %14 = alloca %struct.minstrel_rate*, align 8
  %15 = alloca %struct.minstrel_rate*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  store i8* %0, i8** %5, align 8
  store %struct.ieee80211_sta* %1, %struct.ieee80211_sta** %6, align 8
  store i8* %2, i8** %7, align 8
  store %struct.ieee80211_tx_rate_control* %3, %struct.ieee80211_tx_rate_control** %8, align 8
  %21 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %22 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %21, i32 0, i32 2
  %23 = load %struct.sk_buff*, %struct.sk_buff** %22, align 8
  store %struct.sk_buff* %23, %struct.sk_buff** %9, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = call %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff* %24)
  store %struct.ieee80211_tx_info* %25, %struct.ieee80211_tx_info** %10, align 8
  %26 = load i8*, i8** %7, align 8
  %27 = bitcast i8* %26 to %struct.minstrel_sta_info*
  store %struct.minstrel_sta_info* %27, %struct.minstrel_sta_info** %11, align 8
  %28 = load i8*, i8** %5, align 8
  %29 = bitcast i8* %28 to %struct.minstrel_priv*
  store %struct.minstrel_priv* %29, %struct.minstrel_priv** %12, align 8
  %30 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %31 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 1
  %33 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %32, align 8
  %34 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %33, i64 0
  store %struct.ieee80211_tx_rate* %34, %struct.ieee80211_tx_rate** %13, align 8
  %35 = load %struct.minstrel_priv*, %struct.minstrel_priv** %12, align 8
  %36 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %35, i32 0, i32 4
  %37 = load i64, i64* %36, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %52

39:                                               ; preds = %4
  %40 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %41 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 8
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %52, label %44

44:                                               ; preds = %39
  %45 = load %struct.ieee80211_tx_rate_control*, %struct.ieee80211_tx_rate_control** %8, align 8
  %46 = getelementptr inbounds %struct.ieee80211_tx_rate_control, %struct.ieee80211_tx_rate_control* %45, i32 0, i32 0
  %47 = load %struct.TYPE_5__*, %struct.TYPE_5__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  %51 = xor i1 %50, true
  br label %52

52:                                               ; preds = %44, %39, %4
  %53 = phi i1 [ false, %39 ], [ false, %4 ], [ %51, %44 ]
  %54 = zext i1 %53 to i32
  store i32 %54, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %52
  %58 = load %struct.minstrel_priv*, %struct.minstrel_priv** %12, align 8
  %59 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  store i32 %60, i32* %20, align 4
  br label %65

61:                                               ; preds = %52
  %62 = load %struct.minstrel_priv*, %struct.minstrel_priv** %12, align 8
  %63 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  store i32 %64, i32* %20, align 4
  br label %65

65:                                               ; preds = %61, %57
  %66 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %67 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 8
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %67, align 8
  %70 = load %struct.minstrel_priv*, %struct.minstrel_priv** %12, align 8
  %71 = getelementptr inbounds %struct.minstrel_priv, %struct.minstrel_priv* %70, i32 0, i32 3
  %72 = load %struct.TYPE_6__*, %struct.TYPE_6__** %71, align 8
  %73 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 4
  %75 = icmp eq i32 %74, 1
  br i1 %75, label %76, label %85

76:                                               ; preds = %65
  %77 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %78 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %77, i32 0, i32 1
  %79 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @IEEE80211_TX_CTRL_PORT_CTRL_PROTO, align 4
  %82 = and i32 %80, %81
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %85

84:                                               ; preds = %76
  br label %252

85:                                               ; preds = %76, %65
  %86 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %87 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = load i32, i32* %20, align 4
  %90 = mul nsw i32 %88, %89
  %91 = sdiv i32 %90, 100
  %92 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %93 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %96 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 8
  %98 = sdiv i32 %97, 2
  %99 = add nsw i32 %94, %98
  %100 = sub nsw i32 %91, %99
  store i32 %100, i32* %19, align 4
  %101 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %102 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 4
  store i32 %103, i32* %18, align 4
  %104 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %105 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %104, i32 0, i32 3
  store i32 0, i32* %105, align 4
  %106 = load i32, i32* %19, align 4
  %107 = icmp slt i32 %106, 0
  br i1 %107, label %114, label %108

108:                                              ; preds = %85
  %109 = load i32, i32* %17, align 4
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %115, label %111

111:                                              ; preds = %108
  %112 = load i32, i32* %18, align 4
  %113 = icmp ne i32 %112, 0
  br i1 %113, label %114, label %115

114:                                              ; preds = %111, %85
  br label %252

115:                                              ; preds = %111, %108
  %116 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %117 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = icmp sge i32 %118, 10000
  br i1 %119, label %120, label %127

120:                                              ; preds = %115
  %121 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %122 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %121, i32 0, i32 2
  store i32 0, i32* %122, align 8
  %123 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %124 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %123, i32 0, i32 1
  store i32 0, i32* %124, align 4
  %125 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %126 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %125, i32 0, i32 0
  store i32 0, i32* %126, align 8
  br label %146

127:                                              ; preds = %115
  %128 = load i32, i32* %19, align 4
  %129 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %130 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %129, i32 0, i32 4
  %131 = load i32, i32* %130, align 8
  %132 = mul nsw i32 %131, 2
  %133 = icmp sgt i32 %128, %132
  br i1 %133, label %134, label %145

134:                                              ; preds = %127
  %135 = load i32, i32* %19, align 4
  %136 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %137 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %136, i32 0, i32 4
  %138 = load i32, i32* %137, align 8
  %139 = mul nsw i32 %138, 2
  %140 = sub nsw i32 %135, %139
  %141 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %142 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, %140
  store i32 %144, i32* %142, align 4
  br label %145

145:                                              ; preds = %134, %127
  br label %146

146:                                              ; preds = %145, %120
  %147 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %148 = call i32 @minstrel_get_next_sample(%struct.minstrel_sta_info* %147)
  store i32 %148, i32* %16, align 4
  %149 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %150 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %149, i32 0, i32 6
  %151 = load %struct.minstrel_rate*, %struct.minstrel_rate** %150, align 8
  %152 = load i32, i32* %16, align 4
  %153 = zext i32 %152 to i64
  %154 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %151, i64 %153
  store %struct.minstrel_rate* %154, %struct.minstrel_rate** %14, align 8
  %155 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %156 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %155, i32 0, i32 6
  %157 = load %struct.minstrel_rate*, %struct.minstrel_rate** %156, align 8
  %158 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %159 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %158, i32 0, i32 5
  %160 = load i64*, i64** %159, align 8
  %161 = getelementptr inbounds i64, i64* %160, i64 0
  %162 = load i64, i64* %161, align 8
  %163 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %157, i64 %162
  store %struct.minstrel_rate* %163, %struct.minstrel_rate** %15, align 8
  %164 = load i32, i32* %17, align 4
  %165 = icmp ne i32 %164, 0
  br i1 %165, label %166, label %192

166:                                              ; preds = %146
  %167 = load %struct.minstrel_rate*, %struct.minstrel_rate** %14, align 8
  %168 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %167, i32 0, i32 0
  %169 = load i64, i64* %168, align 8
  %170 = load %struct.minstrel_rate*, %struct.minstrel_rate** %15, align 8
  %171 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %170, i32 0, i32 0
  %172 = load i64, i64* %171, align 8
  %173 = icmp sgt i64 %169, %172
  br i1 %173, label %174, label %192

174:                                              ; preds = %166
  %175 = load %struct.minstrel_rate*, %struct.minstrel_rate** %14, align 8
  %176 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = icmp slt i32 %178, 20
  br i1 %179, label %180, label %192

180:                                              ; preds = %174
  %181 = load i32, i32* @IEEE80211_TX_CTL_RATE_CTRL_PROBE, align 4
  %182 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %183 = getelementptr inbounds %struct.ieee80211_tx_info, %struct.ieee80211_tx_info* %182, i32 0, i32 0
  %184 = load i32, i32* %183, align 8
  %185 = or i32 %184, %181
  store i32 %185, i32* %183, align 8
  %186 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %13, align 8
  %187 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %186, i32 1
  store %struct.ieee80211_tx_rate* %187, %struct.ieee80211_tx_rate** %13, align 8
  %188 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %189 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %188, i32 0, i32 2
  %190 = load i32, i32* %189, align 8
  %191 = add nsw i32 %190, 1
  store i32 %191, i32* %189, align 8
  br label %213

192:                                              ; preds = %174, %166, %146
  %193 = load %struct.minstrel_rate*, %struct.minstrel_rate** %14, align 8
  %194 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %193, i32 0, i32 1
  %195 = load i64, i64* %194, align 8
  %196 = icmp ne i64 %195, 0
  br i1 %196, label %198, label %197

197:                                              ; preds = %192
  br label %252

198:                                              ; preds = %192
  %199 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %200 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %199, i32 0, i32 1
  %201 = load i32, i32* %200, align 4
  %202 = add nsw i32 %201, 1
  store i32 %202, i32* %200, align 4
  %203 = load %struct.minstrel_rate*, %struct.minstrel_rate** %14, align 8
  %204 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %203, i32 0, i32 1
  %205 = load i64, i64* %204, align 8
  %206 = icmp sgt i64 %205, 0
  br i1 %206, label %207, label %212

207:                                              ; preds = %198
  %208 = load %struct.minstrel_rate*, %struct.minstrel_rate** %14, align 8
  %209 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %208, i32 0, i32 1
  %210 = load i64, i64* %209, align 8
  %211 = add nsw i64 %210, -1
  store i64 %211, i64* %209, align 8
  br label %212

212:                                              ; preds = %207, %198
  br label %213

213:                                              ; preds = %212, %180
  %214 = load i32, i32* %17, align 4
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %229, label %216

216:                                              ; preds = %213
  %217 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %218 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %217, i32 0, i32 6
  %219 = load %struct.minstrel_rate*, %struct.minstrel_rate** %218, align 8
  %220 = load i32, i32* %16, align 4
  %221 = zext i32 %220 to i64
  %222 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %219, i64 %221
  %223 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %222, i32 0, i32 3
  %224 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %223, i32 0, i32 1
  %225 = load i64, i64* %224, align 8
  %226 = call i64 @MINSTREL_FRAC(i32 95, i32 100)
  %227 = icmp sgt i64 %225, %226
  br i1 %227, label %228, label %229

228:                                              ; preds = %216
  br label %252

229:                                              ; preds = %216, %213
  %230 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %231 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %230, i32 0, i32 3
  store i32 1, i32* %231, align 4
  %232 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %233 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %232, i32 0, i32 6
  %234 = load %struct.minstrel_rate*, %struct.minstrel_rate** %233, align 8
  %235 = load i32, i32* %16, align 4
  %236 = zext i32 %235 to i64
  %237 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %234, i64 %236
  %238 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %237, i32 0, i32 2
  %239 = load i32, i32* %238, align 8
  %240 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %13, align 8
  %241 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %240, i32 0, i32 1
  store i32 %239, i32* %241, align 4
  %242 = load %struct.minstrel_sta_info*, %struct.minstrel_sta_info** %11, align 8
  %243 = getelementptr inbounds %struct.minstrel_sta_info, %struct.minstrel_sta_info* %242, i32 0, i32 6
  %244 = load %struct.minstrel_rate*, %struct.minstrel_rate** %243, align 8
  %245 = load i32, i32* %16, align 4
  %246 = zext i32 %245 to i64
  %247 = getelementptr inbounds %struct.minstrel_rate, %struct.minstrel_rate* %244, i64 %246
  %248 = load %struct.ieee80211_tx_info*, %struct.ieee80211_tx_info** %10, align 8
  %249 = call i32 @minstrel_get_retry_count(%struct.minstrel_rate* %247, %struct.ieee80211_tx_info* %248)
  %250 = load %struct.ieee80211_tx_rate*, %struct.ieee80211_tx_rate** %13, align 8
  %251 = getelementptr inbounds %struct.ieee80211_tx_rate, %struct.ieee80211_tx_rate* %250, i32 0, i32 0
  store i32 %249, i32* %251, align 4
  br label %252

252:                                              ; preds = %229, %228, %197, %114, %84
  ret void
}

declare dso_local %struct.ieee80211_tx_info* @IEEE80211_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @minstrel_get_next_sample(%struct.minstrel_sta_info*) #1

declare dso_local i64 @MINSTREL_FRAC(i32, i32) #1

declare dso_local i32 @minstrel_get_retry_count(%struct.minstrel_rate*, %struct.ieee80211_tx_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
