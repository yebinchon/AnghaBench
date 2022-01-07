; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_readDTableX2_wksp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_decompress.c_HUF_readDTableX2_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i8*, i8* }
%struct.TYPE_6__ = type { i8*, i64, i64 }

@HUF_TABLELOG_ABSOLUTEMAX = common dso_local global i64 0, align 8
@HUF_SYMBOLVALUE_MAX = common dso_local global i64 0, align 8
@tableLog_tooLarge = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_readDTableX2_wksp(i32* %0, i8* %1, i64 %2, i8* %3, i64 %4) #0 {
  %6 = alloca i64, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i8*, align 8
  %16 = alloca %struct.TYPE_5__*, align 8
  %17 = alloca i64*, align 8
  %18 = alloca i8**, align 8
  %19 = alloca i64, align 8
  %20 = alloca %struct.TYPE_6__, align 8
  %21 = alloca i64, align 8
  %22 = alloca i64, align 8
  %23 = alloca i64, align 8
  %24 = alloca i64, align 8
  %25 = alloca i64, align 8
  %26 = alloca i64, align 8
  %27 = alloca i64, align 8
  %28 = alloca %struct.TYPE_5__, align 8
  store i32* %0, i32** %7, align 8
  store i8* %1, i8** %8, align 8
  store i64 %2, i64* %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  store i64 0, i64* %12, align 8
  store i64 0, i64* %13, align 8
  %29 = load i32*, i32** %7, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 1
  %31 = bitcast i32* %30 to i8*
  store i8* %31, i8** %15, align 8
  %32 = load i8*, i8** %15, align 8
  %33 = bitcast i8* %32 to %struct.TYPE_5__*
  store %struct.TYPE_5__* %33, %struct.TYPE_5__** %16, align 8
  store i64 0, i64* %19, align 8
  %34 = load i8*, i8** %10, align 8
  %35 = bitcast i8* %34 to i64*
  %36 = load i64, i64* %19, align 8
  %37 = getelementptr inbounds i64, i64* %35, i64 %36
  store i64* %37, i64** %17, align 8
  %38 = load i64, i64* @HUF_TABLELOG_ABSOLUTEMAX, align 8
  %39 = add nsw i64 %38, 1
  %40 = load i64, i64* %19, align 8
  %41 = add i64 %40, %39
  store i64 %41, i64* %19, align 8
  %42 = load i8*, i8** %10, align 8
  %43 = bitcast i8* %42 to i64*
  %44 = load i64, i64* %19, align 8
  %45 = getelementptr inbounds i64, i64* %43, i64 %44
  %46 = bitcast i64* %45 to i8**
  store i8** %46, i8*** %18, align 8
  %47 = load i64, i64* @HUF_SYMBOLVALUE_MAX, align 8
  %48 = add nsw i64 %47, 1
  %49 = call i32 @ALIGN(i64 %48, i32 8)
  %50 = ashr i32 %49, 2
  %51 = sext i32 %50 to i64
  %52 = load i64, i64* %19, align 8
  %53 = add i64 %52, %51
  store i64 %53, i64* %19, align 8
  %54 = load i64, i64* %19, align 8
  %55 = shl i64 %54, 2
  %56 = load i64, i64* %11, align 8
  %57 = icmp ugt i64 %55, %56
  br i1 %57, label %58, label %61

58:                                               ; preds = %5
  %59 = load i32, i32* @tableLog_tooLarge, align 4
  %60 = call i64 @ERROR(i32 %59)
  store i64 %60, i64* %6, align 8
  br label %185

61:                                               ; preds = %5
  %62 = load i8*, i8** %10, align 8
  %63 = bitcast i8* %62 to i64*
  %64 = load i64, i64* %19, align 8
  %65 = getelementptr inbounds i64, i64* %63, i64 %64
  %66 = bitcast i64* %65 to i8*
  store i8* %66, i8** %10, align 8
  %67 = load i64, i64* %19, align 8
  %68 = shl i64 %67, 2
  %69 = load i64, i64* %11, align 8
  %70 = sub i64 %69, %68
  store i64 %70, i64* %11, align 8
  %71 = call i32 @HUF_STATIC_ASSERT(i32 0)
  %72 = load i8**, i8*** %18, align 8
  %73 = load i64, i64* @HUF_SYMBOLVALUE_MAX, align 8
  %74 = add nsw i64 %73, 1
  %75 = load i64*, i64** %17, align 8
  %76 = load i8*, i8** %8, align 8
  %77 = load i64, i64* %9, align 8
  %78 = load i8*, i8** %10, align 8
  %79 = load i64, i64* %11, align 8
  %80 = call i64 @HUF_readStats_wksp(i8** %72, i64 %74, i64* %75, i64* %13, i64* %12, i8* %76, i64 %77, i8* %78, i64 %79)
  store i64 %80, i64* %14, align 8
  %81 = load i64, i64* %14, align 8
  %82 = call i64 @HUF_isError(i64 %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %61
  %85 = load i64, i64* %14, align 8
  store i64 %85, i64* %6, align 8
  br label %185

86:                                               ; preds = %61
  %87 = load i32*, i32** %7, align 8
  call void @HUF_getDTableDesc(%struct.TYPE_6__* sret %20, i32* %87)
  %88 = load i64, i64* %12, align 8
  %89 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = add nsw i64 %90, 1
  %92 = icmp sgt i64 %88, %91
  br i1 %92, label %93, label %96

93:                                               ; preds = %86
  %94 = load i32, i32* @tableLog_tooLarge, align 4
  %95 = call i64 @ERROR(i32 %94)
  store i64 %95, i64* %6, align 8
  br label %185

96:                                               ; preds = %86
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 1
  store i64 0, i64* %97, align 8
  %98 = load i64, i64* %12, align 8
  %99 = inttoptr i64 %98 to i8*
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  store i8* %99, i8** %100, align 8
  %101 = load i32*, i32** %7, align 8
  %102 = call i32 @memcpy(i32* %101, %struct.TYPE_6__* %20, i32 24)
  store i64 0, i64* %22, align 8
  store i64 1, i64* %21, align 8
  br label %103

103:                                              ; preds = %123, %96
  %104 = load i64, i64* %21, align 8
  %105 = load i64, i64* %12, align 8
  %106 = add nsw i64 %105, 1
  %107 = icmp slt i64 %104, %106
  br i1 %107, label %108, label %126

108:                                              ; preds = %103
  %109 = load i64, i64* %22, align 8
  store i64 %109, i64* %23, align 8
  %110 = load i64*, i64** %17, align 8
  %111 = load i64, i64* %21, align 8
  %112 = getelementptr inbounds i64, i64* %110, i64 %111
  %113 = load i64, i64* %112, align 8
  %114 = load i64, i64* %21, align 8
  %115 = sub nsw i64 %114, 1
  %116 = shl i64 %113, %115
  %117 = load i64, i64* %22, align 8
  %118 = add nsw i64 %117, %116
  store i64 %118, i64* %22, align 8
  %119 = load i64, i64* %23, align 8
  %120 = load i64*, i64** %17, align 8
  %121 = load i64, i64* %21, align 8
  %122 = getelementptr inbounds i64, i64* %120, i64 %121
  store i64 %119, i64* %122, align 8
  br label %123

123:                                              ; preds = %108
  %124 = load i64, i64* %21, align 8
  %125 = add nsw i64 %124, 1
  store i64 %125, i64* %21, align 8
  br label %103

126:                                              ; preds = %103
  store i64 0, i64* %24, align 8
  br label %127

127:                                              ; preds = %180, %126
  %128 = load i64, i64* %24, align 8
  %129 = load i64, i64* %13, align 8
  %130 = icmp slt i64 %128, %129
  br i1 %130, label %131, label %183

131:                                              ; preds = %127
  %132 = load i8**, i8*** %18, align 8
  %133 = load i64, i64* %24, align 8
  %134 = getelementptr inbounds i8*, i8** %132, i64 %133
  %135 = load i8*, i8** %134, align 8
  %136 = ptrtoint i8* %135 to i64
  store i64 %136, i64* %25, align 8
  %137 = load i64, i64* %25, align 8
  %138 = trunc i64 %137 to i32
  %139 = shl i32 1, %138
  %140 = ashr i32 %139, 1
  %141 = sext i32 %140 to i64
  store i64 %141, i64* %26, align 8
  %142 = load i64, i64* %24, align 8
  %143 = inttoptr i64 %142 to i8*
  %144 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 1
  store i8* %143, i8** %144, align 8
  %145 = load i64, i64* %12, align 8
  %146 = add nsw i64 %145, 1
  %147 = load i64, i64* %25, align 8
  %148 = sub nsw i64 %146, %147
  %149 = inttoptr i64 %148 to i8*
  %150 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  store i8* %149, i8** %150, align 8
  %151 = load i64*, i64** %17, align 8
  %152 = load i64, i64* %25, align 8
  %153 = getelementptr inbounds i64, i64* %151, i64 %152
  %154 = load i64, i64* %153, align 8
  store i64 %154, i64* %27, align 8
  br label %155

155:                                              ; preds = %170, %131
  %156 = load i64, i64* %27, align 8
  %157 = load i64*, i64** %17, align 8
  %158 = load i64, i64* %25, align 8
  %159 = getelementptr inbounds i64, i64* %157, i64 %158
  %160 = load i64, i64* %159, align 8
  %161 = load i64, i64* %26, align 8
  %162 = add nsw i64 %160, %161
  %163 = icmp slt i64 %156, %162
  br i1 %163, label %164, label %173

164:                                              ; preds = %155
  %165 = load %struct.TYPE_5__*, %struct.TYPE_5__** %16, align 8
  %166 = load i64, i64* %27, align 8
  %167 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %165, i64 %166
  %168 = bitcast %struct.TYPE_5__* %167 to i8*
  %169 = bitcast %struct.TYPE_5__* %28 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %168, i8* align 8 %169, i64 16, i1 false)
  br label %170

170:                                              ; preds = %164
  %171 = load i64, i64* %27, align 8
  %172 = add nsw i64 %171, 1
  store i64 %172, i64* %27, align 8
  br label %155

173:                                              ; preds = %155
  %174 = load i64, i64* %26, align 8
  %175 = load i64*, i64** %17, align 8
  %176 = load i64, i64* %25, align 8
  %177 = getelementptr inbounds i64, i64* %175, i64 %176
  %178 = load i64, i64* %177, align 8
  %179 = add nsw i64 %178, %174
  store i64 %179, i64* %177, align 8
  br label %180

180:                                              ; preds = %173
  %181 = load i64, i64* %24, align 8
  %182 = add nsw i64 %181, 1
  store i64 %182, i64* %24, align 8
  br label %127

183:                                              ; preds = %127
  %184 = load i64, i64* %14, align 8
  store i64 %184, i64* %6, align 8
  br label %185

185:                                              ; preds = %183, %93, %84, %58
  %186 = load i64, i64* %6, align 8
  ret i64 %186
}

declare dso_local i32 @ALIGN(i64, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @HUF_STATIC_ASSERT(i32) #1

declare dso_local i64 @HUF_readStats_wksp(i8**, i64, i64*, i64*, i64*, i8*, i64, i8*, i64) #1

declare dso_local i64 @HUF_isError(i64) #1

declare dso_local void @HUF_getDTableDesc(%struct.TYPE_6__* sret, i32*) #1

declare dso_local i32 @memcpy(i32*, %struct.TYPE_6__*, i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
