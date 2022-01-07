; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_prep_hw_scan.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_scan.c_ieee80211_prep_hw_scan.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ieee80211_local = type { i64, %struct.TYPE_6__*, i32, i32, i32, i32, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__, i32 }
%struct.TYPE_5__ = type { i32, i32, i32, i32, i32, i32, i64, %struct.TYPE_4__** }
%struct.TYPE_4__ = type { i64 }
%struct.cfg80211_scan_request = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_4__** }
%struct.cfg80211_chan_def = type { i32 }

@SCAN_HW_CANCELLED = common dso_local global i32 0, align 4
@SINGLE_SCAN_ON_ALL_BANDS = common dso_local global i32 0, align 4
@NUM_NL80211_BANDS = common dso_local global i64 0, align 8
@NL80211_SCAN_FLAG_MIN_PREQ_CONTENT = common dso_local global i32 0, align 4
@IEEE80211_PROBE_FLAG_MIN_CONTENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ieee80211_local*)* @ieee80211_prep_hw_scan to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ieee80211_prep_hw_scan(%struct.ieee80211_local* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ieee80211_local*, align 8
  %4 = alloca %struct.cfg80211_scan_request*, align 8
  %5 = alloca %struct.cfg80211_chan_def, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.ieee80211_local* %0, %struct.ieee80211_local** %3, align 8
  store i32 0, i32* %6, align 4
  store i32 0, i32* %10, align 4
  %11 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %12 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %11, i32 0, i32 6
  %13 = load i32, i32* %12, align 8
  %14 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %15 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %14, i32 0, i32 5
  %16 = call i32 @lockdep_is_held(i32* %15)
  %17 = call %struct.cfg80211_scan_request* @rcu_dereference_protected(i32 %13, i32 %16)
  store %struct.cfg80211_scan_request* %17, %struct.cfg80211_scan_request** %4, align 8
  %18 = load i32, i32* @SCAN_HW_CANCELLED, align 4
  %19 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %20 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %19, i32 0, i32 4
  %21 = call i64 @test_bit(i32 %18, i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %240

24:                                               ; preds = %1
  %25 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %26 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %25, i32 0, i32 3
  %27 = load i32, i32* @SINGLE_SCAN_ON_ALL_BANDS, align 4
  %28 = call i64 @ieee80211_hw_check(i32* %26, i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %73

30:                                               ; preds = %24
  store i32 0, i32* %7, align 4
  br label %31

31:                                               ; preds = %66, %30
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %34 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %39 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %38, i32 0, i32 10
  %40 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %39, align 8
  %41 = load i32, i32* %7, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %40, i64 %42
  %44 = load %struct.TYPE_4__*, %struct.TYPE_4__** %43, align 8
  %45 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %46 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %45, i32 0, i32 1
  %47 = load %struct.TYPE_6__*, %struct.TYPE_6__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 7
  %50 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %49, align 8
  %51 = load i32, i32* %7, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %50, i64 %52
  store %struct.TYPE_4__* %44, %struct.TYPE_4__** %53, align 8
  %54 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %55 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %54, i32 0, i32 10
  %56 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %55, align 8
  %57 = load i32, i32* %7, align 4
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %56, i64 %58
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %59, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = call i32 @BIT(i64 %62)
  %64 = load i32, i32* %6, align 4
  %65 = or i32 %64, %63
  store i32 %65, i32* %6, align 4
  br label %66

66:                                               ; preds = %37
  %67 = load i32, i32* %7, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %7, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %71 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 8
  store i32 %72, i32* %9, align 4
  br label %147

73:                                               ; preds = %24
  br label %74

74:                                               ; preds = %142, %73
  %75 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %76 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %75, i32 0, i32 0
  %77 = load i64, i64* %76, align 8
  %78 = load i64, i64* @NUM_NL80211_BANDS, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %74
  store i32 0, i32* %2, align 4
  br label %240

81:                                               ; preds = %74
  store i32 0, i32* %9, align 4
  store i32 0, i32* %7, align 4
  br label %82

82:                                               ; preds = %134, %81
  %83 = load i32, i32* %7, align 4
  %84 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %85 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 8
  %87 = icmp slt i32 %83, %86
  br i1 %87, label %88, label %137

88:                                               ; preds = %82
  %89 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %90 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %89, i32 0, i32 10
  %91 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %90, align 8
  %92 = load i32, i32* %7, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %91, i64 %93
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %94, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 0
  %97 = load i64, i64* %96, align 8
  %98 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %99 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = icmp ne i64 %97, %100
  br i1 %101, label %102, label %103

102:                                              ; preds = %88
  br label %134

103:                                              ; preds = %88
  %104 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %105 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %104, i32 0, i32 10
  %106 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %105, align 8
  %107 = load i32, i32* %7, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %106, i64 %108
  %110 = load %struct.TYPE_4__*, %struct.TYPE_4__** %109, align 8
  %111 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %112 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %111, i32 0, i32 1
  %113 = load %struct.TYPE_6__*, %struct.TYPE_6__** %112, align 8
  %114 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %113, i32 0, i32 0
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %114, i32 0, i32 7
  %116 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %115, align 8
  %117 = load i32, i32* %9, align 4
  %118 = sext i32 %117 to i64
  %119 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %116, i64 %118
  store %struct.TYPE_4__* %110, %struct.TYPE_4__** %119, align 8
  %120 = load i32, i32* %9, align 4
  %121 = add nsw i32 %120, 1
  store i32 %121, i32* %9, align 4
  %122 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %123 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %122, i32 0, i32 10
  %124 = load %struct.TYPE_4__**, %struct.TYPE_4__*** %123, align 8
  %125 = load i32, i32* %7, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.TYPE_4__*, %struct.TYPE_4__** %124, i64 %126
  %128 = load %struct.TYPE_4__*, %struct.TYPE_4__** %127, align 8
  %129 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %128, i32 0, i32 0
  %130 = load i64, i64* %129, align 8
  %131 = call i32 @BIT(i64 %130)
  %132 = load i32, i32* %6, align 4
  %133 = or i32 %132, %131
  store i32 %133, i32* %6, align 4
  br label %134

134:                                              ; preds = %103, %102
  %135 = load i32, i32* %7, align 4
  %136 = add nsw i32 %135, 1
  store i32 %136, i32* %7, align 4
  br label %82

137:                                              ; preds = %82
  %138 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %139 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %138, i32 0, i32 0
  %140 = load i64, i64* %139, align 8
  %141 = add nsw i64 %140, 1
  store i64 %141, i64* %139, align 8
  br label %142

142:                                              ; preds = %137
  %143 = load i32, i32* %9, align 4
  %144 = icmp ne i32 %143, 0
  %145 = xor i1 %144, true
  br i1 %145, label %74, label %146

146:                                              ; preds = %142
  br label %147

147:                                              ; preds = %146, %69
  %148 = load i32, i32* %9, align 4
  %149 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %150 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %149, i32 0, i32 1
  %151 = load %struct.TYPE_6__*, %struct.TYPE_6__** %150, align 8
  %152 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %151, i32 0, i32 0
  %153 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %152, i32 0, i32 0
  store i32 %148, i32* %153, align 8
  %154 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %155 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %154, i32 0, i32 9
  %156 = load i32, i32* %155, align 4
  %157 = call i32 @ieee80211_prepare_scan_chandef(%struct.cfg80211_chan_def* %5, i32 %156)
  %158 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %159 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %158, i32 0, i32 1
  %160 = load i32, i32* %159, align 4
  %161 = load i32, i32* @NL80211_SCAN_FLAG_MIN_PREQ_CONTENT, align 4
  %162 = and i32 %160, %161
  %163 = icmp ne i32 %162, 0
  br i1 %163, label %164, label %168

164:                                              ; preds = %147
  %165 = load i32, i32* @IEEE80211_PROBE_FLAG_MIN_CONTENT, align 4
  %166 = load i32, i32* %10, align 4
  %167 = or i32 %166, %165
  store i32 %167, i32* %10, align 4
  br label %168

168:                                              ; preds = %164, %147
  %169 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %170 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %171 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %170, i32 0, i32 1
  %172 = load %struct.TYPE_6__*, %struct.TYPE_6__** %171, align 8
  %173 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %172, i32 0, i32 0
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 6
  %175 = load i64, i64* %174, align 8
  %176 = inttoptr i64 %175 to i32*
  %177 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %178 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %177, i32 0, i32 2
  %179 = load i32, i32* %178, align 8
  %180 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %181 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %180, i32 0, i32 1
  %182 = load %struct.TYPE_6__*, %struct.TYPE_6__** %181, align 8
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  %184 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %185 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %184, i32 0, i32 8
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %188 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %187, i32 0, i32 7
  %189 = load i32, i32* %188, align 4
  %190 = load i32, i32* %6, align 4
  %191 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %192 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %191, i32 0, i32 6
  %193 = load i32, i32* %192, align 8
  %194 = load i32, i32* %10, align 4
  %195 = call i32 @ieee80211_build_preq_ies(%struct.ieee80211_local* %169, i32* %176, i32 %179, i32* %183, i32 %186, i32 %189, i32 %190, i32 %193, %struct.cfg80211_chan_def* %5, i32 %194)
  store i32 %195, i32* %8, align 4
  %196 = load i32, i32* %8, align 4
  %197 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %198 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %197, i32 0, i32 1
  %199 = load %struct.TYPE_6__*, %struct.TYPE_6__** %198, align 8
  %200 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %199, i32 0, i32 0
  %201 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %200, i32 0, i32 1
  store i32 %196, i32* %201, align 4
  %202 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %203 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %202, i32 0, i32 5
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %206 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %205, i32 0, i32 1
  %207 = load %struct.TYPE_6__*, %struct.TYPE_6__** %206, align 8
  %208 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %207, i32 0, i32 0
  %209 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %208, i32 0, i32 5
  store i32 %204, i32* %209, align 4
  %210 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %211 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %210, i32 0, i32 1
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %212, i32 0, i32 0
  %214 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %213, i32 0, i32 4
  %215 = load i32, i32* %214, align 8
  %216 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %217 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %216, i32 0, i32 4
  %218 = load i32, i32* %217, align 8
  %219 = call i32 @ether_addr_copy(i32 %215, i32 %218)
  %220 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %221 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %220, i32 0, i32 1
  %222 = load %struct.TYPE_6__*, %struct.TYPE_6__** %221, align 8
  %223 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %223, i32 0, i32 3
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %227 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %226, i32 0, i32 3
  %228 = load i32, i32* %227, align 4
  %229 = call i32 @ether_addr_copy(i32 %225, i32 %228)
  %230 = load %struct.ieee80211_local*, %struct.ieee80211_local** %3, align 8
  %231 = getelementptr inbounds %struct.ieee80211_local, %struct.ieee80211_local* %230, i32 0, i32 1
  %232 = load %struct.TYPE_6__*, %struct.TYPE_6__** %231, align 8
  %233 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %232, i32 0, i32 0
  %234 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %233, i32 0, i32 2
  %235 = load i32, i32* %234, align 8
  %236 = load %struct.cfg80211_scan_request*, %struct.cfg80211_scan_request** %4, align 8
  %237 = getelementptr inbounds %struct.cfg80211_scan_request, %struct.cfg80211_scan_request* %236, i32 0, i32 2
  %238 = load i32, i32* %237, align 8
  %239 = call i32 @ether_addr_copy(i32 %235, i32 %238)
  store i32 1, i32* %2, align 4
  br label %240

240:                                              ; preds = %168, %80, %23
  %241 = load i32, i32* %2, align 4
  ret i32 %241
}

declare dso_local %struct.cfg80211_scan_request* @rcu_dereference_protected(i32, i32) #1

declare dso_local i32 @lockdep_is_held(i32*) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i64 @ieee80211_hw_check(i32*, i32) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @ieee80211_prepare_scan_chandef(%struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @ieee80211_build_preq_ies(%struct.ieee80211_local*, i32*, i32, i32*, i32, i32, i32, i32, %struct.cfg80211_chan_def*, i32) #1

declare dso_local i32 @ether_addr_copy(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
