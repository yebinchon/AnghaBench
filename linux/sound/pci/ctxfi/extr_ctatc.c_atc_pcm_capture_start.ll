; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_pcm_capture_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ct_atc = type { i32, %struct.src_mgr** }
%struct.src_mgr = type { i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src.0*)* }
%struct.src = type opaque
%struct.src.0 = type opaque
%struct.ct_atc_pcm = type { i32, i32, i32, %struct.src.1*, %struct.src.1**, %struct.TYPE_7__*, %struct.TYPE_6__* }
%struct.src.1 = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.src.1*)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)* }
%struct.TYPE_7__ = type { i64, i64 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32, i32 }

@SRC = common dso_local global i64 0, align 8
@SRC_STATE_RUN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, %struct.ct_atc_pcm*)* @atc_pcm_capture_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_pcm_capture_start(%struct.ct_atc* %0, %struct.ct_atc_pcm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca %struct.ct_atc_pcm*, align 8
  %6 = alloca %struct.src.1*, align 8
  %7 = alloca %struct.src_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store %struct.ct_atc_pcm* %1, %struct.ct_atc_pcm** %5, align 8
  %10 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %11 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %10, i32 0, i32 1
  %12 = load %struct.src_mgr**, %struct.src_mgr*** %11, align 8
  %13 = load i64, i64* @SRC, align 8
  %14 = getelementptr inbounds %struct.src_mgr*, %struct.src_mgr** %12, i64 %13
  %15 = load %struct.src_mgr*, %struct.src_mgr** %14, align 8
  store %struct.src_mgr* %15, %struct.src_mgr** %7, align 8
  %16 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %17 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %226

21:                                               ; preds = %2
  %22 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %23 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %22, i32 0, i32 0
  store i32 1, i32* %23, align 8
  %24 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %25 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %24, i32 0, i32 6
  %26 = load %struct.TYPE_6__*, %struct.TYPE_6__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_5__*, %struct.TYPE_5__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  store i32 %30, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %31

31:                                               ; preds = %66, %21
  %32 = load i32, i32* %8, align 4
  %33 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %34 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %39 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %38, i32 0, i32 4
  %40 = load %struct.src.1**, %struct.src.1*** %39, align 8
  %41 = load i32, i32* %8, align 4
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.src.1*, %struct.src.1** %40, i64 %42
  %44 = load %struct.src.1*, %struct.src.1** %43, align 8
  store %struct.src.1* %44, %struct.src.1** %6, align 8
  %45 = load %struct.src.1*, %struct.src.1** %6, align 8
  %46 = getelementptr inbounds %struct.src.1, %struct.src.1* %45, i32 0, i32 0
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %47, i32 0, i32 7
  %49 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %48, align 8
  %50 = load %struct.src.1*, %struct.src.1** %6, align 8
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %9, align 4
  %53 = srem i32 %51, %52
  %54 = load i32, i32* %9, align 4
  %55 = sub nsw i32 %54, 1
  %56 = icmp ne i32 %53, %55
  %57 = zext i1 %56 to i32
  %58 = call i32 %49(%struct.src.1* %50, i32 %57)
  %59 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %60 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %59, i32 0, i32 2
  %61 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %60, align 8
  %62 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %63 = load %struct.src.1*, %struct.src.1** %6, align 8
  %64 = bitcast %struct.src.1* %63 to %struct.src.0*
  %65 = call i32 %61(%struct.src_mgr* %62, %struct.src.0* %64)
  br label %66

66:                                               ; preds = %37
  %67 = load i32, i32* %8, align 4
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %8, align 4
  br label %31

69:                                               ; preds = %31
  %70 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %71 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %70, i32 0, i32 3
  %72 = load %struct.src.1*, %struct.src.1** %71, align 8
  store %struct.src.1* %72, %struct.src.1** %6, align 8
  %73 = load %struct.src.1*, %struct.src.1** %6, align 8
  %74 = getelementptr inbounds %struct.src.1, %struct.src.1* %73, i32 0, i32 0
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %75, i32 0, i32 6
  %77 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %76, align 8
  %78 = load %struct.src.1*, %struct.src.1** %6, align 8
  %79 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %80 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %79, i32 0, i32 6
  %81 = load %struct.TYPE_6__*, %struct.TYPE_6__** %80, align 8
  %82 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %81, i32 0, i32 0
  %83 = load %struct.TYPE_5__*, %struct.TYPE_5__** %82, align 8
  %84 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %87 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 8
  %89 = call i32 @convert_format(i32 %85, i32 %88)
  %90 = call i32 %77(%struct.src.1* %78, i32 %89)
  %91 = load %struct.src.1*, %struct.src.1** %6, align 8
  %92 = getelementptr inbounds %struct.src.1, %struct.src.1* %91, i32 0, i32 0
  %93 = load %struct.TYPE_8__*, %struct.TYPE_8__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %93, i32 0, i32 5
  %95 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %94, align 8
  %96 = load %struct.src.1*, %struct.src.1** %6, align 8
  %97 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %98 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %97, i32 0, i32 5
  %99 = load %struct.TYPE_7__*, %struct.TYPE_7__** %98, align 8
  %100 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = call i32 %95(%struct.src.1* %96, i64 %101)
  %103 = load %struct.src.1*, %struct.src.1** %6, align 8
  %104 = getelementptr inbounds %struct.src.1, %struct.src.1* %103, i32 0, i32 0
  %105 = load %struct.TYPE_8__*, %struct.TYPE_8__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %105, i32 0, i32 4
  %107 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %106, align 8
  %108 = load %struct.src.1*, %struct.src.1** %6, align 8
  %109 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %110 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %109, i32 0, i32 5
  %111 = load %struct.TYPE_7__*, %struct.TYPE_7__** %110, align 8
  %112 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %111, i32 0, i32 0
  %113 = load i64, i64* %112, align 8
  %114 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %115 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %114, i32 0, i32 5
  %116 = load %struct.TYPE_7__*, %struct.TYPE_7__** %115, align 8
  %117 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %116, i32 0, i32 1
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %113, %118
  %120 = call i32 %107(%struct.src.1* %108, i64 %119)
  %121 = load %struct.src.1*, %struct.src.1** %6, align 8
  %122 = getelementptr inbounds %struct.src.1, %struct.src.1* %121, i32 0, i32 0
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %122, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 3
  %125 = load i32 (%struct.src.1*, i64)*, i32 (%struct.src.1*, i64)** %124, align 8
  %126 = load %struct.src.1*, %struct.src.1** %6, align 8
  %127 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %128 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %127, i32 0, i32 5
  %129 = load %struct.TYPE_7__*, %struct.TYPE_7__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = call i32 %125(%struct.src.1* %126, i64 %131)
  %133 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %134 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %133, i32 0, i32 2
  %135 = load i32 (%struct.src_mgr*, %struct.src.0*)*, i32 (%struct.src_mgr*, %struct.src.0*)** %134, align 8
  %136 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %137 = load %struct.src.1*, %struct.src.1** %6, align 8
  %138 = bitcast %struct.src.1* %137 to %struct.src.0*
  %139 = call i32 %135(%struct.src_mgr* %136, %struct.src.0* %138)
  %140 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %141 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %140, i32 0, i32 0
  %142 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %141, align 8
  %143 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %144 = call i32 %142(%struct.src_mgr* %143)
  store i32 0, i32* %8, align 4
  br label %145

145:                                              ; preds = %181, %69
  %146 = load i32, i32* %8, align 4
  %147 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %148 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %147, i32 0, i32 1
  %149 = load i32, i32* %148, align 4
  %150 = icmp slt i32 %146, %149
  br i1 %150, label %151, label %184

151:                                              ; preds = %145
  %152 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %153 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %152, i32 0, i32 4
  %154 = load %struct.src.1**, %struct.src.1*** %153, align 8
  %155 = load i32, i32* %8, align 4
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds %struct.src.1*, %struct.src.1** %154, i64 %156
  %158 = load %struct.src.1*, %struct.src.1** %157, align 8
  store %struct.src.1* %158, %struct.src.1** %6, align 8
  %159 = load %struct.src.1*, %struct.src.1** %6, align 8
  %160 = getelementptr inbounds %struct.src.1, %struct.src.1* %159, i32 0, i32 0
  %161 = load %struct.TYPE_8__*, %struct.TYPE_8__** %160, align 8
  %162 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %161, i32 0, i32 1
  %163 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %162, align 8
  %164 = load %struct.src.1*, %struct.src.1** %6, align 8
  %165 = load i32, i32* @SRC_STATE_RUN, align 4
  %166 = call i32 %163(%struct.src.1* %164, i32 %165)
  %167 = load %struct.src.1*, %struct.src.1** %6, align 8
  %168 = getelementptr inbounds %struct.src.1, %struct.src.1* %167, i32 0, i32 0
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %168, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 0
  %171 = load i32 (%struct.src.1*)*, i32 (%struct.src.1*)** %170, align 8
  %172 = load %struct.src.1*, %struct.src.1** %6, align 8
  %173 = call i32 %171(%struct.src.1* %172)
  %174 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %175 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %174, i32 0, i32 1
  %176 = load i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src*)** %175, align 8
  %177 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %178 = load %struct.src.1*, %struct.src.1** %6, align 8
  %179 = bitcast %struct.src.1* %178 to %struct.src*
  %180 = call i32 %176(%struct.src_mgr* %177, %struct.src* %179)
  br label %181

181:                                              ; preds = %151
  %182 = load i32, i32* %8, align 4
  %183 = add nsw i32 %182, 1
  store i32 %183, i32* %8, align 4
  br label %145

184:                                              ; preds = %145
  %185 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %186 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %185, i32 0, i32 3
  %187 = load %struct.src.1*, %struct.src.1** %186, align 8
  store %struct.src.1* %187, %struct.src.1** %6, align 8
  %188 = load %struct.src.1*, %struct.src.1** %6, align 8
  %189 = getelementptr inbounds %struct.src.1, %struct.src.1* %188, i32 0, i32 0
  %190 = load %struct.TYPE_8__*, %struct.TYPE_8__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %190, i32 0, i32 2
  %192 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %191, align 8
  %193 = load %struct.src.1*, %struct.src.1** %6, align 8
  %194 = call i32 %192(%struct.src.1* %193, i32 1)
  %195 = load %struct.src.1*, %struct.src.1** %6, align 8
  %196 = getelementptr inbounds %struct.src.1, %struct.src.1* %195, i32 0, i32 0
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %196, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 1
  %199 = load i32 (%struct.src.1*, i32)*, i32 (%struct.src.1*, i32)** %198, align 8
  %200 = load %struct.src.1*, %struct.src.1** %6, align 8
  %201 = load i32, i32* @SRC_STATE_RUN, align 4
  %202 = call i32 %199(%struct.src.1* %200, i32 %201)
  %203 = load %struct.src.1*, %struct.src.1** %6, align 8
  %204 = getelementptr inbounds %struct.src.1, %struct.src.1* %203, i32 0, i32 0
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %204, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 0
  %207 = load i32 (%struct.src.1*)*, i32 (%struct.src.1*)** %206, align 8
  %208 = load %struct.src.1*, %struct.src.1** %6, align 8
  %209 = call i32 %207(%struct.src.1* %208)
  %210 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %211 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %210, i32 0, i32 1
  %212 = load i32 (%struct.src_mgr*, %struct.src*)*, i32 (%struct.src_mgr*, %struct.src*)** %211, align 8
  %213 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %214 = load %struct.src.1*, %struct.src.1** %6, align 8
  %215 = bitcast %struct.src.1* %214 to %struct.src*
  %216 = call i32 %212(%struct.src_mgr* %213, %struct.src* %215)
  %217 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %218 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %217, i32 0, i32 0
  %219 = load i32 (%struct.src_mgr*)*, i32 (%struct.src_mgr*)** %218, align 8
  %220 = load %struct.src_mgr*, %struct.src_mgr** %7, align 8
  %221 = call i32 %219(%struct.src_mgr* %220)
  %222 = load %struct.ct_atc_pcm*, %struct.ct_atc_pcm** %5, align 8
  %223 = getelementptr inbounds %struct.ct_atc_pcm, %struct.ct_atc_pcm* %222, i32 0, i32 2
  %224 = load i32, i32* %223, align 8
  %225 = call i32 @ct_timer_start(i32 %224)
  store i32 0, i32* %3, align 4
  br label %226

226:                                              ; preds = %184, %20
  %227 = load i32, i32* %3, align 4
  ret i32 %227
}

declare dso_local i32 @convert_format(i32, i32) #1

declare dso_local i32 @ct_timer_start(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
