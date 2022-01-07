; ModuleID = '/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_setup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/oss/dmasound/extr_dmasound_core.c_sq_setup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_7__, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_7__ = type { i32 (...)*, i32 (...)* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sound_queue = type { i32, i64, i64, i64, i64, i32, i32, i32, i32, i64, i64, i64, i64, i64 }

@EINVAL = common dso_local global i32 0, align 4
@dmasound = common dso_local global %struct.TYPE_8__ zeroinitializer, align 8
@write_sq = common dso_local global %struct.sound_queue zeroinitializer, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sound_queue*)* @sq_setup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sq_setup(%struct.sound_queue* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sound_queue*, align 8
  %4 = alloca i32 ()*, align 8
  %5 = alloca i32, align 4
  store %struct.sound_queue* %0, %struct.sound_queue** %3, align 8
  store i32 ()* null, i32 ()** %4, align 8
  %6 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %7 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %199

13:                                               ; preds = %1
  %14 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %15 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %14, i32 0, i32 0
  store i32 1, i32* %15, align 8
  %16 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 0, i32 1), align 8
  %17 = call i32 (...) %16()
  %18 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %19 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %18, i32 0, i32 1
  %20 = load i64, i64* %19, align 8
  %21 = icmp sle i64 %20, 0
  br i1 %21, label %22, label %64

22:                                               ; preds = %13
  %23 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %24 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %27 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %26, i32 0, i32 2
  store i64 %25, i64* %27, align 8
  %28 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %29 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %32 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %31, i32 0, i32 4
  store i64 %30, i64* %32, align 8
  %33 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %34 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %33, i32 0, i32 6
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %37 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %36, i32 0, i32 5
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %39 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %38, i32 0, i32 3
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %42 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %41, i32 0, i32 1
  store i64 %40, i64* %42, align 8
  %43 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %44 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %43, i32 0, i32 6
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %47 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %46, i32 0, i32 7
  store i32 %45, i32* %47, align 8
  %48 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 0), align 4
  %49 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 1), align 4
  %50 = add nsw i32 %49, 1
  %51 = mul nsw i32 %48, %50
  %52 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %53 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %52, i32 0, i32 7
  %54 = load i32, i32* %53, align 8
  %55 = mul nsw i32 %54, %51
  store i32 %55, i32* %53, align 8
  %56 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  %57 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 1), align 4
  %58 = add nsw i32 %57, 1
  %59 = mul nsw i32 %56, %58
  %60 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %61 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %60, i32 0, i32 7
  %62 = load i32, i32* %61, align 8
  %63 = sdiv i32 %62, %59
  store i32 %63, i32* %61, align 8
  br label %174

64:                                               ; preds = %13
  %65 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %66 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %65, i32 0, i32 7
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %69 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %68, i32 0, i32 5
  store i32 %67, i32* %69, align 8
  %70 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  %71 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 1), align 4
  %72 = add nsw i32 %71, 1
  %73 = mul nsw i32 %70, %72
  %74 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %75 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %74, i32 0, i32 5
  %76 = load i32, i32* %75, align 8
  %77 = mul nsw i32 %76, %73
  store i32 %77, i32* %75, align 8
  %78 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 0), align 4
  %79 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 1), align 4
  %80 = add nsw i32 %79, 1
  %81 = mul nsw i32 %78, %80
  %82 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %83 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %82, i32 0, i32 5
  %84 = load i32, i32* %83, align 8
  %85 = sdiv i32 %84, %81
  store i32 %85, i32* %83, align 8
  %86 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 2), align 8
  %87 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %88 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 8
  %90 = mul nsw i32 %89, %86
  store i32 %90, i32* %88, align 8
  %91 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 2, i32 2), align 4
  %92 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %93 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %92, i32 0, i32 5
  %94 = load i32, i32* %93, align 8
  %95 = sdiv i32 %94, %91
  store i32 %95, i32* %93, align 8
  %96 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 0), align 8
  %97 = load i32, i32* getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 1, i32 1), align 4
  %98 = add nsw i32 %97, 1
  %99 = mul nsw i32 %96, %98
  %100 = sdiv i32 %99, 8
  store i32 %100, i32* %5, align 4
  %101 = load i32, i32* %5, align 4
  %102 = sub nsw i32 %101, 1
  %103 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %104 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %103, i32 0, i32 5
  %105 = load i32, i32* %104, align 8
  %106 = add nsw i32 %105, %102
  store i32 %106, i32* %104, align 8
  %107 = load i32, i32* %5, align 4
  %108 = sub nsw i32 %107, 1
  %109 = xor i32 %108, -1
  %110 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %111 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %110, i32 0, i32 5
  %112 = load i32, i32* %111, align 8
  %113 = and i32 %112, %109
  store i32 %113, i32* %111, align 8
  %114 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %115 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %114, i32 0, i32 5
  %116 = load i32, i32* %115, align 8
  %117 = icmp sle i32 %116, 0
  br i1 %117, label %126, label %118

118:                                              ; preds = %64
  %119 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %120 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %119, i32 0, i32 5
  %121 = load i32, i32* %120, align 8
  %122 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %123 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %122, i32 0, i32 6
  %124 = load i32, i32* %123, align 4
  %125 = icmp sgt i32 %121, %124
  br i1 %125, label %126, label %132

126:                                              ; preds = %118, %64
  %127 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %128 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %127, i32 0, i32 6
  %129 = load i32, i32* %128, align 4
  %130 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %131 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %130, i32 0, i32 5
  store i32 %129, i32* %131, align 8
  br label %132

132:                                              ; preds = %126, %118
  %133 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %134 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %133, i32 0, i32 1
  %135 = load i64, i64* %134, align 8
  %136 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %137 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %136, i32 0, i32 3
  %138 = load i64, i64* %137, align 8
  %139 = icmp sle i64 %135, %138
  br i1 %139, label %140, label %165

140:                                              ; preds = %132
  %141 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %142 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %141, i32 0, i32 1
  %143 = load i64, i64* %142, align 8
  %144 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %145 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %144, i32 0, i32 2
  store i64 %143, i64* %145, align 8
  %146 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %147 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %146, i32 0, i32 4
  %148 = load i64, i64* %147, align 8
  %149 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %150 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %149, i32 0, i32 2
  %151 = load i64, i64* %150, align 8
  %152 = icmp sle i64 %148, %151
  br i1 %152, label %153, label %157

153:                                              ; preds = %140
  %154 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %155 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %154, i32 0, i32 4
  %156 = load i64, i64* %155, align 8
  br label %161

157:                                              ; preds = %140
  %158 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %159 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %158, i32 0, i32 2
  %160 = load i64, i64* %159, align 8
  br label %161

161:                                              ; preds = %157, %153
  %162 = phi i64 [ %156, %153 ], [ %160, %157 ]
  %163 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %164 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %163, i32 0, i32 4
  store i64 %162, i64* %164, align 8
  br label %173

165:                                              ; preds = %132
  %166 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %167 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %166, i32 0, i32 3
  %168 = load i64, i64* %167, align 8
  %169 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %170 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %169, i32 0, i32 4
  store i64 %168, i64* %170, align 8
  %171 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %172 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %171, i32 0, i32 2
  store i64 %168, i64* %172, align 8
  br label %173

173:                                              ; preds = %165, %161
  br label %174

174:                                              ; preds = %173, %22
  %175 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %176 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %175, i32 0, i32 11
  store i64 0, i64* %176, align 8
  %177 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %178 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %177, i32 0, i32 12
  store i64 0, i64* %178, align 8
  %179 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %180 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %179, i32 0, i32 13
  store i64 0, i64* %180, align 8
  %181 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %182 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %181, i32 0, i32 10
  store i64 0, i64* %182, align 8
  %183 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %184 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %183, i32 0, i32 9
  store i64 0, i64* %184, align 8
  %185 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %186 = icmp eq %struct.sound_queue* %185, @write_sq
  br i1 %186, label %187, label %192

187:                                              ; preds = %174
  %188 = load %struct.sound_queue*, %struct.sound_queue** %3, align 8
  %189 = getelementptr inbounds %struct.sound_queue, %struct.sound_queue* %188, i32 0, i32 8
  store i32 -1, i32* %189, align 4
  %190 = load i32 (...)*, i32 (...)** getelementptr inbounds (%struct.TYPE_8__, %struct.TYPE_8__* @dmasound, i32 0, i32 0, i32 0), align 8
  %191 = bitcast i32 (...)* %190 to i32 ()*
  store i32 ()* %191, i32 ()** %4, align 8
  br label %192

192:                                              ; preds = %187, %174
  %193 = load i32 ()*, i32 ()** %4, align 8
  %194 = icmp ne i32 ()* %193, null
  br i1 %194, label %195, label %198

195:                                              ; preds = %192
  %196 = load i32 ()*, i32 ()** %4, align 8
  %197 = call i32 %196()
  store i32 %197, i32* %2, align 4
  br label %199

198:                                              ; preds = %192
  store i32 0, i32* %2, align 4
  br label %199

199:                                              ; preds = %198, %195, %10
  %200 = load i32, i32* %2, align 4
  ret i32 %200
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
