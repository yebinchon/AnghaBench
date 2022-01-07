; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_copyCCtx.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_compress.c_ZSTD_copyCCtx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_12__ = type { i64, i64, i32*, i64, i32*, i32*, i32*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32*, %struct.TYPE_11__, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_9__ }
%struct.TYPE_10__ = type { i64, i32, i64 }
%struct.TYPE_9__ = type { i32 }

@ZSTDcs_init = common dso_local global i64 0, align 8
@stage_wrong = common dso_local global i32 0, align 4
@ZSTDcrp_noMemset = common dso_local global i32 0, align 4
@ZSTD_fast = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_copyCCtx(%struct.TYPE_12__* %0, %struct.TYPE_12__* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.TYPE_12__*, align 8
  %6 = alloca %struct.TYPE_12__*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.TYPE_11__, align 8
  %9 = alloca i64, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  store %struct.TYPE_12__* %0, %struct.TYPE_12__** %5, align 8
  store %struct.TYPE_12__* %1, %struct.TYPE_12__** %6, align 8
  store i64 %2, i64* %7, align 8
  %13 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %14 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @ZSTDcs_init, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @stage_wrong, align 4
  %20 = call i64 @ERROR(i32 %19)
  store i64 %20, i64* %4, align 8
  br label %177

21:                                               ; preds = %3
  %22 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %22, i32 0, i32 19
  %24 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %25 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %24, i32 0, i32 19
  %26 = call i32 @memcpy(i32* %23, i32* %25, i64 4)
  %27 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %28 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %27, i32 0, i32 18
  %29 = bitcast %struct.TYPE_11__* %8 to i8*
  %30 = bitcast %struct.TYPE_11__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %29, i8* align 8 %30, i64 32, i1 false)
  %31 = load i64, i64* %7, align 8
  %32 = icmp ugt i64 %31, 0
  %33 = zext i1 %32 to i32
  %34 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %8, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %34, i32 0, i32 0
  store i32 %33, i32* %35, align 8
  %36 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %37 = load i64, i64* %7, align 8
  %38 = load i32, i32* @ZSTDcrp_noMemset, align 4
  %39 = call i32 @ZSTD_resetCCtx_advanced(%struct.TYPE_12__* %36, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8 %8, i64 %37, i32 %38)
  %40 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %41 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %40, i32 0, i32 18
  %42 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @ZSTD_fast, align 8
  %46 = icmp eq i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %21
  br label %55

48:                                               ; preds = %21
  %49 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %50 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %49, i32 0, i32 18
  %51 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = shl i32 1, %53
  br label %55

55:                                               ; preds = %48, %47
  %56 = phi i32 [ 0, %47 ], [ %54, %48 ]
  %57 = sext i32 %56 to i64
  store i64 %57, i64* %9, align 8
  %58 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %59 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %58, i32 0, i32 18
  %60 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %59, i32 0, i32 0
  %61 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = shl i64 1, %62
  store i64 %63, i64* %10, align 8
  %64 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %65 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %64, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = shl i64 1, %66
  store i64 %67, i64* %11, align 8
  %68 = load i64, i64* %9, align 8
  %69 = load i64, i64* %10, align 8
  %70 = add i64 %68, %69
  %71 = load i64, i64* %11, align 8
  %72 = add i64 %70, %71
  %73 = mul i64 %72, 4
  store i64 %73, i64* %12, align 8
  %74 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %75 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %74, i32 0, i32 17
  %76 = load i32*, i32** %75, align 8
  %77 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %78 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %77, i32 0, i32 17
  %79 = load i32*, i32** %78, align 8
  %80 = load i64, i64* %12, align 8
  %81 = call i32 @memcpy(i32* %76, i32* %79, i64 %80)
  %82 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %83 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %82, i32 0, i32 16
  %84 = load i32, i32* %83, align 8
  %85 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %86 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %85, i32 0, i32 16
  store i32 %84, i32* %86, align 8
  %87 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %88 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %87, i32 0, i32 15
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %91 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %90, i32 0, i32 15
  store i32 %89, i32* %91, align 4
  %92 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %92, i32 0, i32 14
  %94 = load i32, i32* %93, align 8
  %95 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 14
  store i32 %94, i32* %96, align 8
  %97 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %98 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %97, i32 0, i32 13
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %101 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %100, i32 0, i32 13
  store i32 %99, i32* %101, align 4
  %102 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %103 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %102, i32 0, i32 12
  %104 = load i32, i32* %103, align 8
  %105 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %106 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %105, i32 0, i32 12
  store i32 %104, i32* %106, align 8
  %107 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %107, i32 0, i32 11
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %110, i32 0, i32 11
  store i32 %109, i32* %111, align 4
  %112 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %113 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %112, i32 0, i32 10
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %115, i32 0, i32 10
  store i32 %114, i32* %116, align 8
  %117 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %118 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %117, i32 0, i32 9
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %121 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %120, i32 0, i32 9
  store i32 %119, i32* %121, align 4
  %122 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %122, i32 0, i32 8
  %124 = load i32, i32* %123, align 8
  %125 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %126 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %125, i32 0, i32 8
  store i32 %124, i32* %126, align 8
  %127 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 7
  %129 = load i64, i64* %128, align 8
  %130 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %130, i32 0, i32 7
  store i64 %129, i64* %131, align 8
  %132 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %133 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %132, i32 0, i32 3
  %134 = load i64, i64* %133, align 8
  %135 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 3
  store i64 %134, i64* %136, align 8
  %137 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %137, i32 0, i32 7
  %139 = load i64, i64* %138, align 8
  %140 = icmp ne i64 %139, 0
  br i1 %140, label %141, label %163

141:                                              ; preds = %55
  %142 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %143 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %142, i32 0, i32 6
  %144 = load i32*, i32** %143, align 8
  %145 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %146 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %145, i32 0, i32 6
  %147 = load i32*, i32** %146, align 8
  %148 = call i32 @memcpy(i32* %144, i32* %147, i64 8)
  %149 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %150 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %149, i32 0, i32 5
  %151 = load i32*, i32** %150, align 8
  %152 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %153 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %152, i32 0, i32 5
  %154 = load i32*, i32** %153, align 8
  %155 = call i32 @memcpy(i32* %151, i32* %154, i64 8)
  %156 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %157 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %156, i32 0, i32 4
  %158 = load i32*, i32** %157, align 8
  %159 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %160 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %159, i32 0, i32 4
  %161 = load i32*, i32** %160, align 8
  %162 = call i32 @memcpy(i32* %158, i32* %161, i64 8)
  br label %163

163:                                              ; preds = %141, %55
  %164 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %165 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %164, i32 0, i32 3
  %166 = load i64, i64* %165, align 8
  %167 = icmp ne i64 %166, 0
  br i1 %167, label %168, label %176

168:                                              ; preds = %163
  %169 = load %struct.TYPE_12__*, %struct.TYPE_12__** %5, align 8
  %170 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %169, i32 0, i32 2
  %171 = load i32*, i32** %170, align 8
  %172 = load %struct.TYPE_12__*, %struct.TYPE_12__** %6, align 8
  %173 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %172, i32 0, i32 2
  %174 = load i32*, i32** %173, align 8
  %175 = call i32 @memcpy(i32* %171, i32* %174, i64 1024)
  br label %176

176:                                              ; preds = %168, %163
  store i64 0, i64* %4, align 8
  br label %177

177:                                              ; preds = %176, %18
  %178 = load i64, i64* %4, align 8
  ret i64 %178
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i64) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ZSTD_resetCCtx_advanced(%struct.TYPE_12__*, %struct.TYPE_11__* byval(%struct.TYPE_11__) align 8, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
