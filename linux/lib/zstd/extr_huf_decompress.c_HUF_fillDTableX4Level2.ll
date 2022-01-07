; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_fillDTableX4Level2.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_fillDTableX4Level2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, i8*, i32 }
%struct.TYPE_5__ = type { i64, i64 }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i64, i64, i64*, i32, %struct.TYPE_5__*, i64, i64, i64)* @HUF_fillDTableX4Level2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @HUF_fillDTableX4Level2(%struct.TYPE_6__* %0, i64 %1, i64 %2, i64* %3, i32 %4, %struct.TYPE_5__* %5, i64 %6, i64 %7, i64 %8) #0 {
  %10 = alloca %struct.TYPE_6__*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64*, align 8
  %14 = alloca i32, align 4
  %15 = alloca %struct.TYPE_5__*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca %struct.TYPE_6__, align 8
  %20 = alloca i8*, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca i64, align 8
  %29 = alloca i64, align 8
  %30 = alloca i64, align 8
  %31 = alloca i64, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %10, align 8
  store i64 %1, i64* %11, align 8
  store i64 %2, i64* %12, align 8
  store i64* %3, i64** %13, align 8
  store i32 %4, i32* %14, align 4
  store %struct.TYPE_5__* %5, %struct.TYPE_5__** %15, align 8
  store i64 %6, i64* %16, align 8
  store i64 %7, i64* %17, align 8
  store i64 %8, i64* %18, align 8
  %32 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %33 = add nsw i32 %32, 1
  %34 = zext i32 %33 to i64
  %35 = call i8* @llvm.stacksave()
  store i8* %35, i8** %20, align 8
  %36 = alloca i64, i64 %34, align 16
  store i64 %34, i64* %21, align 8
  %37 = load i64*, i64** %13, align 8
  %38 = mul nuw i64 8, %34
  %39 = trunc i64 %38 to i32
  %40 = call i32 @memcpy(i64* %36, i64* %37, i32 %39)
  %41 = load i32, i32* %14, align 4
  %42 = icmp sgt i32 %41, 1
  br i1 %42, label %43, label %69

43:                                               ; preds = %9
  %44 = load i32, i32* %14, align 4
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i64, i64* %36, i64 %45
  %47 = load i64, i64* %46, align 8
  store i64 %47, i64* %23, align 8
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %49 = load i64, i64* %18, align 8
  %50 = call i32 @ZSTD_writeLE16(i32* %48, i64 %49)
  %51 = load i64, i64* %12, align 8
  %52 = inttoptr i64 %51 to i8*
  %53 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i8* %52, i8** %53, align 8
  %54 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 1, i32* %54, align 8
  store i64 0, i64* %22, align 8
  br label %55

55:                                               ; preds = %65, %43
  %56 = load i64, i64* %22, align 8
  %57 = load i64, i64* %23, align 8
  %58 = icmp ult i64 %56, %57
  br i1 %58, label %59, label %68

59:                                               ; preds = %55
  %60 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %61 = load i64, i64* %22, align 8
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %60, i64 %61
  %63 = bitcast %struct.TYPE_6__* %62 to i8*
  %64 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %63, i8* align 8 %64, i64 24, i1 false)
  br label %65

65:                                               ; preds = %59
  %66 = load i64, i64* %22, align 8
  %67 = add i64 %66, 1
  store i64 %67, i64* %22, align 8
  br label %55

68:                                               ; preds = %55
  br label %69

69:                                               ; preds = %68, %9
  store i64 0, i64* %24, align 8
  br label %70

70:                                               ; preds = %130, %69
  %71 = load i64, i64* %24, align 8
  %72 = load i64, i64* %16, align 8
  %73 = icmp ult i64 %71, %72
  br i1 %73, label %74, label %133

74:                                               ; preds = %70
  %75 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %76 = load i64, i64* %24, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %75, i64 %76
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  store i64 %79, i64* %25, align 8
  %80 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %81 = load i64, i64* %24, align 8
  %82 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %80, i64 %81
  %83 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %82, i32 0, i32 1
  %84 = load i64, i64* %83, align 8
  store i64 %84, i64* %26, align 8
  %85 = load i64, i64* %17, align 8
  %86 = load i64, i64* %26, align 8
  %87 = sub i64 %85, %86
  store i64 %87, i64* %27, align 8
  %88 = load i64, i64* %11, align 8
  %89 = load i64, i64* %27, align 8
  %90 = sub i64 %88, %89
  %91 = trunc i64 %90 to i32
  %92 = shl i32 1, %91
  %93 = sext i32 %92 to i64
  store i64 %93, i64* %28, align 8
  %94 = load i64, i64* %26, align 8
  %95 = getelementptr inbounds i64, i64* %36, i64 %94
  %96 = load i64, i64* %95, align 8
  store i64 %96, i64* %29, align 8
  %97 = load i64, i64* %29, align 8
  store i64 %97, i64* %30, align 8
  %98 = load i64, i64* %29, align 8
  %99 = load i64, i64* %28, align 8
  %100 = add i64 %98, %99
  store i64 %100, i64* %31, align 8
  %101 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 2
  %102 = load i64, i64* %18, align 8
  %103 = load i64, i64* %25, align 8
  %104 = shl i64 %103, 8
  %105 = add i64 %102, %104
  %106 = call i32 @ZSTD_writeLE16(i32* %101, i64 %105)
  %107 = load i64, i64* %27, align 8
  %108 = load i64, i64* %12, align 8
  %109 = add i64 %107, %108
  %110 = inttoptr i64 %109 to i8*
  %111 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  store i8* %110, i8** %111, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  store i32 2, i32* %112, align 8
  br label %113

113:                                              ; preds = %120, %74
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %10, align 8
  %115 = load i64, i64* %30, align 8
  %116 = add i64 %115, 1
  store i64 %116, i64* %30, align 8
  %117 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %114, i64 %115
  %118 = bitcast %struct.TYPE_6__* %117 to i8*
  %119 = bitcast %struct.TYPE_6__* %19 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 24, i1 false)
  br label %120

120:                                              ; preds = %113
  %121 = load i64, i64* %30, align 8
  %122 = load i64, i64* %31, align 8
  %123 = icmp ult i64 %121, %122
  br i1 %123, label %113, label %124

124:                                              ; preds = %120
  %125 = load i64, i64* %28, align 8
  %126 = load i64, i64* %26, align 8
  %127 = getelementptr inbounds i64, i64* %36, i64 %126
  %128 = load i64, i64* %127, align 8
  %129 = add i64 %128, %125
  store i64 %129, i64* %127, align 8
  br label %130

130:                                              ; preds = %124
  %131 = load i64, i64* %24, align 8
  %132 = add i64 %131, 1
  store i64 %132, i64* %24, align 8
  br label %70

133:                                              ; preds = %70
  %134 = load i8*, i8** %20, align 8
  call void @llvm.stackrestore(i8* %134)
  ret void
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @memcpy(i64*, i64*, i32) #2

declare dso_local i32 @ZSTD_writeLE16(i32*, i64) #2

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
