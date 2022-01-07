; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_radiotap_hdrlen.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_rx.c_ieee80211_rx_radiotap_hdrlen.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64 }
%struct.ieee80211_rx_status = type { i32, i64, i64 }
%struct.sk_buff = type { i32* }
%struct.ieee80211_vendor_radiotap = type { i32, i64, i64 }

@RX_FLAG_RADIOTAP_VENDOR_DATA = common dso_local global i32 0, align 4
@SIGNAL_DBM = common dso_local global i32 0, align 4
@RX_ENC_HT = common dso_local global i64 0, align 8
@RX_FLAG_AMPDU_DETAILS = common dso_local global i32 0, align 4
@RX_ENC_VHT = common dso_local global i64 0, align 8
@RX_ENC_HE = common dso_local global i64 0, align 8
@RX_FLAG_RADIOTAP_HE = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_HE_MU = common dso_local global i32 0, align 4
@RX_FLAG_NO_PSDU = common dso_local global i32 0, align 4
@RX_FLAG_RADIOTAP_LSIG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*, %struct.ieee80211_rx_status*, %struct.sk_buff*)* @ieee80211_rx_radiotap_hdrlen to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_rx_radiotap_hdrlen(%struct.ieee80211_local* %0, %struct.ieee80211_rx_status* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca %struct.ieee80211_local*, align 8
  %5 = alloca %struct.ieee80211_rx_status*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.ieee80211_vendor_radiotap*, align 8
  %9 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %4, align 8
  store %struct.ieee80211_rx_status* %1, %struct.ieee80211_rx_status** %5, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %6, align 8
  store i32 12, i32* %7, align 4
  %10 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %11 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %10, i32 0, i32 2
  %12 = load i64, i64* %11, align 8
  %13 = icmp ne i64 %12, 0
  br i1 %13, label %14, label %22

14:                                               ; preds = %3
  %15 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %16 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %15, i32 0, i32 2
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @hweight8(i64 %17)
  %19 = mul nsw i32 4, %18
  %20 = load i32, i32* %7, align 4
  %21 = add nsw i32 %20, %19
  store i32 %21, i32* %7, align 4
  br label %22

22:                                               ; preds = %14, %3
  %23 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %24 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = load i32, i32* @RX_FLAG_RADIOTAP_VENDOR_DATA, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %22
  %30 = load i32, i32* %7, align 4
  %31 = add nsw i32 %30, 4
  store i32 %31, i32* %7, align 4
  br label %32

32:                                               ; preds = %29, %22
  %33 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %34 = call i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status* %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %32
  %37 = load i32, i32* %7, align 4
  %38 = call i32 @ALIGN(i32 %37, i32 8)
  store i32 %38, i32* %7, align 4
  %39 = load i32, i32* %7, align 4
  %40 = add nsw i32 %39, 8
  store i32 %40, i32* %7, align 4
  br label %41

41:                                               ; preds = %36, %32
  %42 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %43 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %42, i32 0, i32 0
  %44 = load i32, i32* @SIGNAL_DBM, align 4
  %45 = call i64 @ieee80211_hw_check(%struct.TYPE_4__* %43, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %41
  %48 = load i32, i32* %7, align 4
  %49 = add nsw i32 %48, 1
  store i32 %49, i32* %7, align 4
  br label %50

50:                                               ; preds = %47, %41
  %51 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %52 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %51, i32 0, i32 2
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %50
  %56 = load i32, i32* %7, align 4
  %57 = add nsw i32 %56, 1
  store i32 %57, i32* %7, align 4
  br label %58

58:                                               ; preds = %55, %50
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @ALIGN(i32 %59, i32 2)
  store i32 %60, i32* %7, align 4
  %61 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %62 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @RX_ENC_HT, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %69

66:                                               ; preds = %58
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 3
  store i32 %68, i32* %7, align 4
  br label %69

69:                                               ; preds = %66, %58
  %70 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %71 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  %73 = load i32, i32* @RX_FLAG_AMPDU_DETAILS, align 4
  %74 = and i32 %72, %73
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %81

76:                                               ; preds = %69
  %77 = load i32, i32* %7, align 4
  %78 = call i32 @ALIGN(i32 %77, i32 4)
  store i32 %78, i32* %7, align 4
  %79 = load i32, i32* %7, align 4
  %80 = add nsw i32 %79, 8
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %76, %69
  %82 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %83 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @RX_ENC_VHT, align 8
  %86 = icmp eq i64 %84, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %81
  %88 = load i32, i32* %7, align 4
  %89 = call i32 @ALIGN(i32 %88, i32 2)
  store i32 %89, i32* %7, align 4
  %90 = load i32, i32* %7, align 4
  %91 = add nsw i32 %90, 12
  store i32 %91, i32* %7, align 4
  br label %92

92:                                               ; preds = %87, %81
  %93 = load %struct.ieee80211_local*, %struct.ieee80211_local** %4, align 8
  %94 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %94, i32 0, i32 0
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = icmp sge i64 %97, 0
  br i1 %98, label %99, label %104

99:                                               ; preds = %92
  %100 = load i32, i32* %7, align 4
  %101 = call i32 @ALIGN(i32 %100, i32 8)
  store i32 %101, i32* %7, align 4
  %102 = load i32, i32* %7, align 4
  %103 = add nsw i32 %102, 12
  store i32 %103, i32* %7, align 4
  br label %104

104:                                              ; preds = %99, %92
  %105 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %106 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %105, i32 0, i32 1
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @RX_ENC_HE, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %104
  %111 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %112 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i32, i32* @RX_FLAG_RADIOTAP_HE, align 4
  %115 = and i32 %113, %114
  %116 = icmp ne i32 %115, 0
  br i1 %116, label %117, label %123

117:                                              ; preds = %110
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @ALIGN(i32 %118, i32 2)
  store i32 %119, i32* %7, align 4
  %120 = load i32, i32* %7, align 4
  %121 = add nsw i32 %120, 12
  store i32 %121, i32* %7, align 4
  %122 = call i32 @BUILD_BUG_ON(i32 1)
  br label %123

123:                                              ; preds = %117, %110, %104
  %124 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %125 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %124, i32 0, i32 1
  %126 = load i64, i64* %125, align 8
  %127 = load i64, i64* @RX_ENC_HE, align 8
  %128 = icmp eq i64 %126, %127
  br i1 %128, label %129, label %142

129:                                              ; preds = %123
  %130 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %131 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %130, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = load i32, i32* @RX_FLAG_RADIOTAP_HE_MU, align 4
  %134 = and i32 %132, %133
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %142

136:                                              ; preds = %129
  %137 = load i32, i32* %7, align 4
  %138 = call i32 @ALIGN(i32 %137, i32 2)
  store i32 %138, i32* %7, align 4
  %139 = load i32, i32* %7, align 4
  %140 = add nsw i32 %139, 12
  store i32 %140, i32* %7, align 4
  %141 = call i32 @BUILD_BUG_ON(i32 1)
  br label %142

142:                                              ; preds = %136, %129, %123
  %143 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %144 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 8
  %146 = load i32, i32* @RX_FLAG_NO_PSDU, align 4
  %147 = and i32 %145, %146
  %148 = icmp ne i32 %147, 0
  br i1 %148, label %149, label %152

149:                                              ; preds = %142
  %150 = load i32, i32* %7, align 4
  %151 = add nsw i32 %150, 1
  store i32 %151, i32* %7, align 4
  br label %152

152:                                              ; preds = %149, %142
  %153 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %154 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = load i32, i32* @RX_FLAG_RADIOTAP_LSIG, align 4
  %157 = and i32 %155, %156
  %158 = icmp ne i32 %157, 0
  br i1 %158, label %159, label %165

159:                                              ; preds = %152
  %160 = load i32, i32* %7, align 4
  %161 = call i32 @ALIGN(i32 %160, i32 2)
  store i32 %161, i32* %7, align 4
  %162 = load i32, i32* %7, align 4
  %163 = add nsw i32 %162, 4
  store i32 %163, i32* %7, align 4
  %164 = call i32 @BUILD_BUG_ON(i32 0)
  br label %165

165:                                              ; preds = %159, %152
  %166 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %167 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %166, i32 0, i32 2
  %168 = load i64, i64* %167, align 8
  %169 = icmp ne i64 %168, 0
  br i1 %169, label %170, label %178

170:                                              ; preds = %165
  %171 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %172 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %171, i32 0, i32 2
  %173 = load i64, i64* %172, align 8
  %174 = call i32 @hweight8(i64 %173)
  %175 = mul nsw i32 2, %174
  %176 = load i32, i32* %7, align 4
  %177 = add nsw i32 %176, %175
  store i32 %177, i32* %7, align 4
  br label %178

178:                                              ; preds = %170, %165
  %179 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %180 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = load i32, i32* @RX_FLAG_RADIOTAP_VENDOR_DATA, align 4
  %183 = and i32 %181, %182
  %184 = icmp ne i32 %183, 0
  br i1 %184, label %185, label %261

185:                                              ; preds = %178
  store i32 0, i32* %9, align 4
  %186 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %187 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = load i32, i32* @RX_FLAG_RADIOTAP_HE, align 4
  %190 = and i32 %188, %189
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %197

192:                                              ; preds = %185
  %193 = load i32, i32* %9, align 4
  %194 = sext i32 %193 to i64
  %195 = add i64 %194, 4
  %196 = trunc i64 %195 to i32
  store i32 %196, i32* %9, align 4
  br label %197

197:                                              ; preds = %192, %185
  %198 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %199 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 8
  %201 = load i32, i32* @RX_FLAG_RADIOTAP_HE_MU, align 4
  %202 = and i32 %200, %201
  %203 = icmp ne i32 %202, 0
  br i1 %203, label %204, label %209

204:                                              ; preds = %197
  %205 = load i32, i32* %9, align 4
  %206 = sext i32 %205 to i64
  %207 = add i64 %206, 4
  %208 = trunc i64 %207 to i32
  store i32 %208, i32* %9, align 4
  br label %209

209:                                              ; preds = %204, %197
  %210 = load %struct.ieee80211_rx_status*, %struct.ieee80211_rx_status** %5, align 8
  %211 = getelementptr inbounds %struct.ieee80211_rx_status, %struct.ieee80211_rx_status* %210, i32 0, i32 0
  %212 = load i32, i32* %211, align 8
  %213 = load i32, i32* @RX_FLAG_RADIOTAP_LSIG, align 4
  %214 = and i32 %212, %213
  %215 = icmp ne i32 %214, 0
  br i1 %215, label %216, label %221

216:                                              ; preds = %209
  %217 = load i32, i32* %9, align 4
  %218 = sext i32 %217 to i64
  %219 = add i64 %218, 4
  %220 = trunc i64 %219 to i32
  store i32 %220, i32* %9, align 4
  br label %221

221:                                              ; preds = %216, %209
  %222 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %223 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %222, i32 0, i32 0
  %224 = load i32*, i32** %223, align 8
  %225 = load i32, i32* %9, align 4
  %226 = sext i32 %225 to i64
  %227 = getelementptr inbounds i32, i32* %224, i64 %226
  %228 = bitcast i32* %227 to i8*
  %229 = bitcast i8* %228 to %struct.ieee80211_vendor_radiotap*
  store %struct.ieee80211_vendor_radiotap* %229, %struct.ieee80211_vendor_radiotap** %8, align 8
  %230 = load i32, i32* %7, align 4
  %231 = call i32 @ALIGN(i32 %230, i32 2)
  store i32 %231, i32* %7, align 4
  %232 = load i32, i32* %7, align 4
  %233 = add nsw i32 %232, 6
  store i32 %233, i32* %7, align 4
  %234 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %8, align 8
  %235 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %234, i32 0, i32 0
  %236 = load i32, i32* %235, align 8
  %237 = icmp eq i32 %236, 0
  %238 = zext i1 %237 to i32
  %239 = call i64 @WARN_ON(i32 %238)
  %240 = icmp ne i64 %239, 0
  br i1 %240, label %241, label %244

241:                                              ; preds = %221
  %242 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %8, align 8
  %243 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %242, i32 0, i32 0
  store i32 1, i32* %243, align 8
  br label %244

244:                                              ; preds = %241, %221
  %245 = load i32, i32* %7, align 4
  %246 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %8, align 8
  %247 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %246, i32 0, i32 0
  %248 = load i32, i32* %247, align 8
  %249 = call i32 @ALIGN(i32 %245, i32 %248)
  store i32 %249, i32* %7, align 4
  %250 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %8, align 8
  %251 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %250, i32 0, i32 2
  %252 = load i64, i64* %251, align 8
  %253 = load %struct.ieee80211_vendor_radiotap*, %struct.ieee80211_vendor_radiotap** %8, align 8
  %254 = getelementptr inbounds %struct.ieee80211_vendor_radiotap, %struct.ieee80211_vendor_radiotap* %253, i32 0, i32 1
  %255 = load i64, i64* %254, align 8
  %256 = add nsw i64 %252, %255
  %257 = load i32, i32* %7, align 4
  %258 = sext i32 %257 to i64
  %259 = add nsw i64 %258, %256
  %260 = trunc i64 %259 to i32
  store i32 %260, i32* %7, align 4
  br label %261

261:                                              ; preds = %244, %178
  %262 = load i32, i32* %7, align 4
  ret i32 %262
}

declare dso_local i32 @hweight8(i64) #1

declare dso_local i64 @ieee80211_have_rx_timestamp(%struct.ieee80211_rx_status*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ieee80211_hw_check(%struct.TYPE_4__*, i32) #1

declare dso_local i32 @BUILD_BUG_ON(i32) #1

declare dso_local i64 @WARN_ON(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
