; ModuleID = '/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_cfg80211_beacon_dup.c'
source_filename = "/home/carl/AnghaBench/linux/net/mac80211/extr_cfg.c_cfg80211_beacon_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cfg80211_beacon_data = type { i32, i32, i32, i32, i32, i32, i32, i32, i32*, i32*, i32, i32*, i32*, i32*, i32*, i32*, i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.cfg80211_beacon_data* (%struct.cfg80211_beacon_data*)* @cfg80211_beacon_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.cfg80211_beacon_data* @cfg80211_beacon_dup(%struct.cfg80211_beacon_data* %0) #0 {
  %2 = alloca %struct.cfg80211_beacon_data*, align 8
  %3 = alloca %struct.cfg80211_beacon_data*, align 8
  %4 = alloca %struct.cfg80211_beacon_data*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  store %struct.cfg80211_beacon_data* %0, %struct.cfg80211_beacon_data** %3, align 8
  %7 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %8 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %11 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = add nsw i32 %9, %12
  %14 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %15 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 8
  %17 = add nsw i32 %13, %16
  %18 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %19 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = add nsw i32 %17, %20
  %22 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %23 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 8
  %25 = add nsw i32 %21, %24
  %26 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %27 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %26, i32 0, i32 5
  %28 = load i32, i32* %27, align 4
  %29 = add nsw i32 %25, %28
  %30 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %31 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %30, i32 0, i32 6
  %32 = load i32, i32* %31, align 8
  %33 = add nsw i32 %29, %32
  %34 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %35 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %34, i32 0, i32 7
  %36 = load i32, i32* %35, align 4
  %37 = add nsw i32 %33, %36
  store i32 %37, i32* %6, align 4
  %38 = load i32, i32* %6, align 4
  %39 = sext i32 %38 to i64
  %40 = add i64 104, %39
  %41 = trunc i64 %40 to i32
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.cfg80211_beacon_data* @kzalloc(i32 %41, i32 %42)
  store %struct.cfg80211_beacon_data* %43, %struct.cfg80211_beacon_data** %4, align 8
  %44 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %45 = icmp ne %struct.cfg80211_beacon_data* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %1
  store %struct.cfg80211_beacon_data* null, %struct.cfg80211_beacon_data** %2, align 8
  br label %281

47:                                               ; preds = %1
  %48 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %49 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %48, i64 1
  %50 = bitcast %struct.cfg80211_beacon_data* %49 to i32*
  store i32* %50, i32** %5, align 8
  %51 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %52 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 8
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %78

55:                                               ; preds = %47
  %56 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %57 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %60 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load i32*, i32** %5, align 8
  %62 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %63 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %62, i32 0, i32 16
  store i32* %61, i32** %63, align 8
  %64 = load i32*, i32** %5, align 8
  %65 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %66 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %65, i32 0, i32 16
  %67 = load i32*, i32** %66, align 8
  %68 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %69 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @memcpy(i32* %64, i32* %67, i32 %70)
  %72 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %73 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %72, i32 0, i32 0
  %74 = load i32, i32* %73, align 8
  %75 = load i32*, i32** %5, align 8
  %76 = sext i32 %74 to i64
  %77 = getelementptr inbounds i32, i32* %75, i64 %76
  store i32* %77, i32** %5, align 8
  br label %78

78:                                               ; preds = %55, %47
  %79 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %80 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %106

83:                                               ; preds = %78
  %84 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %85 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %84, i32 0, i32 1
  %86 = load i32, i32* %85, align 4
  %87 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %88 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %87, i32 0, i32 1
  store i32 %86, i32* %88, align 4
  %89 = load i32*, i32** %5, align 8
  %90 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %91 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %90, i32 0, i32 15
  store i32* %89, i32** %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %94 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %93, i32 0, i32 15
  %95 = load i32*, i32** %94, align 8
  %96 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %97 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %96, i32 0, i32 1
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @memcpy(i32* %92, i32* %95, i32 %98)
  %100 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %101 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %100, i32 0, i32 1
  %102 = load i32, i32* %101, align 4
  %103 = load i32*, i32** %5, align 8
  %104 = sext i32 %102 to i64
  %105 = getelementptr inbounds i32, i32* %103, i64 %104
  store i32* %105, i32** %5, align 8
  br label %106

106:                                              ; preds = %83, %78
  %107 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %108 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %107, i32 0, i32 2
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %134

111:                                              ; preds = %106
  %112 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %113 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %112, i32 0, i32 2
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %116 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %115, i32 0, i32 2
  store i32 %114, i32* %116, align 8
  %117 = load i32*, i32** %5, align 8
  %118 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %119 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %118, i32 0, i32 14
  store i32* %117, i32** %119, align 8
  %120 = load i32*, i32** %5, align 8
  %121 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %122 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %121, i32 0, i32 14
  %123 = load i32*, i32** %122, align 8
  %124 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %125 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @memcpy(i32* %120, i32* %123, i32 %126)
  %128 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %129 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %128, i32 0, i32 2
  %130 = load i32, i32* %129, align 8
  %131 = load i32*, i32** %5, align 8
  %132 = sext i32 %130 to i64
  %133 = getelementptr inbounds i32, i32* %131, i64 %132
  store i32* %133, i32** %5, align 8
  br label %134

134:                                              ; preds = %111, %106
  %135 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %136 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = icmp ne i32 %137, 0
  br i1 %138, label %139, label %162

139:                                              ; preds = %134
  %140 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %141 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %140, i32 0, i32 3
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %144 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %143, i32 0, i32 3
  store i32 %142, i32* %144, align 4
  %145 = load i32*, i32** %5, align 8
  %146 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %147 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %146, i32 0, i32 13
  store i32* %145, i32** %147, align 8
  %148 = load i32*, i32** %5, align 8
  %149 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %150 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %149, i32 0, i32 13
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %153 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = call i32 @memcpy(i32* %148, i32* %151, i32 %154)
  %156 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %157 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %156, i32 0, i32 3
  %158 = load i32, i32* %157, align 4
  %159 = load i32*, i32** %5, align 8
  %160 = sext i32 %158 to i64
  %161 = getelementptr inbounds i32, i32* %159, i64 %160
  store i32* %161, i32** %5, align 8
  br label %162

162:                                              ; preds = %139, %134
  %163 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %164 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %163, i32 0, i32 4
  %165 = load i32, i32* %164, align 8
  %166 = icmp ne i32 %165, 0
  br i1 %166, label %167, label %190

167:                                              ; preds = %162
  %168 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %169 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %168, i32 0, i32 4
  %170 = load i32, i32* %169, align 8
  %171 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %172 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %171, i32 0, i32 4
  store i32 %170, i32* %172, align 8
  %173 = load i32*, i32** %5, align 8
  %174 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %175 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %174, i32 0, i32 12
  store i32* %173, i32** %175, align 8
  %176 = load i32*, i32** %5, align 8
  %177 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %178 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %177, i32 0, i32 12
  %179 = load i32*, i32** %178, align 8
  %180 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %181 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %180, i32 0, i32 4
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @memcpy(i32* %176, i32* %179, i32 %182)
  %184 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %185 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %184, i32 0, i32 4
  %186 = load i32, i32* %185, align 8
  %187 = load i32*, i32** %5, align 8
  %188 = sext i32 %186 to i64
  %189 = getelementptr inbounds i32, i32* %187, i64 %188
  store i32* %189, i32** %5, align 8
  br label %190

190:                                              ; preds = %167, %162
  %191 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %192 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %191, i32 0, i32 5
  %193 = load i32, i32* %192, align 4
  %194 = icmp ne i32 %193, 0
  br i1 %194, label %195, label %218

195:                                              ; preds = %190
  %196 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %197 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %196, i32 0, i32 5
  %198 = load i32, i32* %197, align 4
  %199 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %200 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %199, i32 0, i32 5
  store i32 %198, i32* %200, align 4
  %201 = load i32*, i32** %5, align 8
  %202 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %203 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %202, i32 0, i32 11
  store i32* %201, i32** %203, align 8
  %204 = load i32*, i32** %5, align 8
  %205 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %206 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %205, i32 0, i32 11
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %209 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %208, i32 0, i32 5
  %210 = load i32, i32* %209, align 4
  %211 = call i32 @memcpy(i32* %204, i32* %207, i32 %210)
  %212 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %213 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %212, i32 0, i32 5
  %214 = load i32, i32* %213, align 4
  %215 = load i32*, i32** %5, align 8
  %216 = sext i32 %214 to i64
  %217 = getelementptr inbounds i32, i32* %215, i64 %216
  store i32* %217, i32** %5, align 8
  br label %218

218:                                              ; preds = %195, %190
  %219 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %220 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %219, i32 0, i32 10
  %221 = load i32, i32* %220, align 8
  %222 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %223 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %222, i32 0, i32 10
  store i32 %221, i32* %223, align 8
  %224 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %225 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %224, i32 0, i32 9
  %226 = load i32*, i32** %225, align 8
  %227 = icmp ne i32* %226, null
  br i1 %227, label %228, label %251

228:                                              ; preds = %218
  %229 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %230 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %229, i32 0, i32 6
  %231 = load i32, i32* %230, align 8
  %232 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %233 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %232, i32 0, i32 6
  store i32 %231, i32* %233, align 8
  %234 = load i32*, i32** %5, align 8
  %235 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %236 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %235, i32 0, i32 9
  store i32* %234, i32** %236, align 8
  %237 = load i32*, i32** %5, align 8
  %238 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %239 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %238, i32 0, i32 9
  %240 = load i32*, i32** %239, align 8
  %241 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %242 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %241, i32 0, i32 6
  %243 = load i32, i32* %242, align 8
  %244 = call i32 @memcpy(i32* %237, i32* %240, i32 %243)
  %245 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %246 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %245, i32 0, i32 6
  %247 = load i32, i32* %246, align 8
  %248 = load i32*, i32** %5, align 8
  %249 = sext i32 %247 to i64
  %250 = getelementptr inbounds i32, i32* %248, i64 %249
  store i32* %250, i32** %5, align 8
  br label %251

251:                                              ; preds = %228, %218
  %252 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %253 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %252, i32 0, i32 8
  %254 = load i32*, i32** %253, align 8
  %255 = icmp ne i32* %254, null
  br i1 %255, label %256, label %279

256:                                              ; preds = %251
  %257 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %258 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %257, i32 0, i32 7
  %259 = load i32, i32* %258, align 4
  %260 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %261 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %260, i32 0, i32 7
  store i32 %259, i32* %261, align 4
  %262 = load i32*, i32** %5, align 8
  %263 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  %264 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %263, i32 0, i32 8
  store i32* %262, i32** %264, align 8
  %265 = load i32*, i32** %5, align 8
  %266 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %267 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %266, i32 0, i32 8
  %268 = load i32*, i32** %267, align 8
  %269 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %270 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %269, i32 0, i32 7
  %271 = load i32, i32* %270, align 4
  %272 = call i32 @memcpy(i32* %265, i32* %268, i32 %271)
  %273 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %3, align 8
  %274 = getelementptr inbounds %struct.cfg80211_beacon_data, %struct.cfg80211_beacon_data* %273, i32 0, i32 7
  %275 = load i32, i32* %274, align 4
  %276 = load i32*, i32** %5, align 8
  %277 = sext i32 %275 to i64
  %278 = getelementptr inbounds i32, i32* %276, i64 %277
  store i32* %278, i32** %5, align 8
  br label %279

279:                                              ; preds = %256, %251
  %280 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %4, align 8
  store %struct.cfg80211_beacon_data* %280, %struct.cfg80211_beacon_data** %2, align 8
  br label %281

281:                                              ; preds = %279, %46
  %282 = load %struct.cfg80211_beacon_data*, %struct.cfg80211_beacon_data** %2, align 8
  ret %struct.cfg80211_beacon_data* %282
}

declare dso_local %struct.cfg80211_beacon_data* @kzalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
