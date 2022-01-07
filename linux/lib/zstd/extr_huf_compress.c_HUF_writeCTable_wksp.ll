; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_writeCTable_wksp.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_huf_compress.c_HUF_writeCTable_wksp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i64 }

@HUF_TABLELOG_MAX = common dso_local global i32 0, align 4
@HUF_SYMBOLVALUE_MAX = common dso_local global i32 0, align 4
@tableLog_tooLarge = common dso_local global i32 0, align 4
@maxSymbolValue_tooLarge = common dso_local global i32 0, align 4
@hSize = common dso_local global i32 0, align 4
@GENERIC = common dso_local global i32 0, align 4
@dstSize_tooSmall = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @HUF_writeCTable_wksp(i8* %0, i64 %1, %struct.TYPE_3__* %2, i32 %3, i32 %4, i8* %5, i64 %6) #0 {
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.TYPE_3__*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32, align 4
  %18 = alloca i32*, align 8
  %19 = alloca i32*, align 8
  %20 = alloca i64, align 8
  store i8* %0, i8** %9, align 8
  store i64 %1, i64* %10, align 8
  store %struct.TYPE_3__* %2, %struct.TYPE_3__** %11, align 8
  store i32 %3, i32* %12, align 4
  store i32 %4, i32* %13, align 4
  store i8* %5, i8** %14, align 8
  store i64 %6, i64* %15, align 8
  %21 = load i8*, i8** %9, align 8
  %22 = bitcast i8* %21 to i32*
  store i32* %22, i32** %16, align 8
  store i64 0, i64* %20, align 8
  %23 = load i8*, i8** %14, align 8
  %24 = bitcast i8* %23 to i32*
  %25 = load i64, i64* %20, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  store i32* %26, i32** %18, align 8
  %27 = load i32, i32* @HUF_TABLELOG_MAX, align 4
  %28 = add nsw i32 %27, 1
  %29 = call i32 @ALIGN(i32 %28, i32 4)
  %30 = ashr i32 %29, 2
  %31 = sext i32 %30 to i64
  %32 = load i64, i64* %20, align 8
  %33 = add i64 %32, %31
  store i64 %33, i64* %20, align 8
  %34 = load i8*, i8** %14, align 8
  %35 = bitcast i8* %34 to i32*
  %36 = load i64, i64* %20, align 8
  %37 = getelementptr inbounds i32, i32* %35, i64 %36
  store i32* %37, i32** %19, align 8
  %38 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %39 = call i32 @ALIGN(i32 %38, i32 4)
  %40 = ashr i32 %39, 2
  %41 = sext i32 %40 to i64
  %42 = load i64, i64* %20, align 8
  %43 = add i64 %42, %41
  store i64 %43, i64* %20, align 8
  %44 = load i64, i64* %20, align 8
  %45 = shl i64 %44, 2
  %46 = load i64, i64* %15, align 8
  %47 = icmp ugt i64 %45, %46
  br i1 %47, label %48, label %51

48:                                               ; preds = %7
  %49 = load i32, i32* @tableLog_tooLarge, align 4
  %50 = call i64 @ERROR(i32 %49)
  store i64 %50, i64* %8, align 8
  br label %198

51:                                               ; preds = %7
  %52 = load i8*, i8** %14, align 8
  %53 = bitcast i8* %52 to i32*
  %54 = load i64, i64* %20, align 8
  %55 = getelementptr inbounds i32, i32* %53, i64 %54
  %56 = bitcast i32* %55 to i8*
  store i8* %56, i8** %14, align 8
  %57 = load i64, i64* %20, align 8
  %58 = shl i64 %57, 2
  %59 = load i64, i64* %15, align 8
  %60 = sub i64 %59, %58
  store i64 %60, i64* %15, align 8
  %61 = load i32, i32* %12, align 4
  %62 = load i32, i32* @HUF_SYMBOLVALUE_MAX, align 4
  %63 = icmp sgt i32 %61, %62
  br i1 %63, label %64, label %67

64:                                               ; preds = %51
  %65 = load i32, i32* @maxSymbolValue_tooLarge, align 4
  %66 = call i64 @ERROR(i32 %65)
  store i64 %66, i64* %8, align 8
  br label %198

67:                                               ; preds = %51
  %68 = load i32*, i32** %18, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 0, i32* %69, align 4
  store i32 1, i32* %17, align 4
  br label %70

70:                                               ; preds = %84, %67
  %71 = load i32, i32* %17, align 4
  %72 = load i32, i32* %13, align 4
  %73 = add nsw i32 %72, 1
  %74 = icmp slt i32 %71, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %70
  %76 = load i32, i32* %13, align 4
  %77 = add nsw i32 %76, 1
  %78 = load i32, i32* %17, align 4
  %79 = sub nsw i32 %77, %78
  %80 = load i32*, i32** %18, align 8
  %81 = load i32, i32* %17, align 4
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds i32, i32* %80, i64 %82
  store i32 %79, i32* %83, align 4
  br label %84

84:                                               ; preds = %75
  %85 = load i32, i32* %17, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %17, align 4
  br label %70

87:                                               ; preds = %70
  store i32 0, i32* %17, align 4
  br label %88

88:                                               ; preds = %106, %87
  %89 = load i32, i32* %17, align 4
  %90 = load i32, i32* %12, align 4
  %91 = icmp slt i32 %89, %90
  br i1 %91, label %92, label %109

92:                                               ; preds = %88
  %93 = load i32*, i32** %18, align 8
  %94 = load %struct.TYPE_3__*, %struct.TYPE_3__** %11, align 8
  %95 = load i32, i32* %17, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %94, i64 %96
  %98 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = getelementptr inbounds i32, i32* %93, i64 %99
  %101 = load i32, i32* %100, align 4
  %102 = load i32*, i32** %19, align 8
  %103 = load i32, i32* %17, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %102, i64 %104
  store i32 %101, i32* %105, align 4
  br label %106

106:                                              ; preds = %92
  %107 = load i32, i32* %17, align 4
  %108 = add nsw i32 %107, 1
  store i32 %108, i32* %17, align 4
  br label %88

109:                                              ; preds = %88
  %110 = load i32, i32* @hSize, align 4
  %111 = load i32*, i32** %16, align 8
  %112 = getelementptr inbounds i32, i32* %111, i64 1
  %113 = load i64, i64* %10, align 8
  %114 = sub i64 %113, 1
  %115 = load i32*, i32** %19, align 8
  %116 = load i32, i32* %12, align 4
  %117 = load i8*, i8** %14, align 8
  %118 = load i64, i64* %15, align 8
  %119 = call i32 @HUF_compressWeights_wksp(i32* %112, i64 %114, i32* %115, i32 %116, i8* %117, i64 %118)
  %120 = call i32 @CHECK_V_F(i32 %110, i32 %119)
  %121 = load i32, i32* @hSize, align 4
  %122 = icmp sgt i32 %121, 1
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* @hSize, align 4
  %125 = load i32, i32* %12, align 4
  %126 = sdiv i32 %125, 2
  %127 = icmp slt i32 %124, %126
  %128 = zext i1 %127 to i32
  %129 = and i32 %123, %128
  %130 = icmp ne i32 %129, 0
  br i1 %130, label %131, label %138

131:                                              ; preds = %109
  %132 = load i32, i32* @hSize, align 4
  %133 = load i32*, i32** %16, align 8
  %134 = getelementptr inbounds i32, i32* %133, i64 0
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* @hSize, align 4
  %136 = add nsw i32 %135, 1
  %137 = sext i32 %136 to i64
  store i64 %137, i64* %8, align 8
  br label %198

138:                                              ; preds = %109
  %139 = load i32, i32* %12, align 4
  %140 = icmp sgt i32 %139, 128
  br i1 %140, label %141, label %144

141:                                              ; preds = %138
  %142 = load i32, i32* @GENERIC, align 4
  %143 = call i64 @ERROR(i32 %142)
  store i64 %143, i64* %8, align 8
  br label %198

144:                                              ; preds = %138
  %145 = load i32, i32* %12, align 4
  %146 = add nsw i32 %145, 1
  %147 = sdiv i32 %146, 2
  %148 = add nsw i32 %147, 1
  %149 = sext i32 %148 to i64
  %150 = load i64, i64* %10, align 8
  %151 = icmp ugt i64 %149, %150
  br i1 %151, label %152, label %155

152:                                              ; preds = %144
  %153 = load i32, i32* @dstSize_tooSmall, align 4
  %154 = call i64 @ERROR(i32 %153)
  store i64 %154, i64* %8, align 8
  br label %198

155:                                              ; preds = %144
  %156 = load i32, i32* %12, align 4
  %157 = sub nsw i32 %156, 1
  %158 = add nsw i32 128, %157
  %159 = load i32*, i32** %16, align 8
  %160 = getelementptr inbounds i32, i32* %159, i64 0
  store i32 %158, i32* %160, align 4
  %161 = load i32*, i32** %19, align 8
  %162 = load i32, i32* %12, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds i32, i32* %161, i64 %163
  store i32 0, i32* %164, align 4
  store i32 0, i32* %17, align 4
  br label %165

165:                                              ; preds = %189, %155
  %166 = load i32, i32* %17, align 4
  %167 = load i32, i32* %12, align 4
  %168 = icmp slt i32 %166, %167
  br i1 %168, label %169, label %192

169:                                              ; preds = %165
  %170 = load i32*, i32** %19, align 8
  %171 = load i32, i32* %17, align 4
  %172 = sext i32 %171 to i64
  %173 = getelementptr inbounds i32, i32* %170, i64 %172
  %174 = load i32, i32* %173, align 4
  %175 = shl i32 %174, 4
  %176 = load i32*, i32** %19, align 8
  %177 = load i32, i32* %17, align 4
  %178 = add nsw i32 %177, 1
  %179 = sext i32 %178 to i64
  %180 = getelementptr inbounds i32, i32* %176, i64 %179
  %181 = load i32, i32* %180, align 4
  %182 = add nsw i32 %175, %181
  %183 = load i32*, i32** %16, align 8
  %184 = load i32, i32* %17, align 4
  %185 = sdiv i32 %184, 2
  %186 = add nsw i32 %185, 1
  %187 = sext i32 %186 to i64
  %188 = getelementptr inbounds i32, i32* %183, i64 %187
  store i32 %182, i32* %188, align 4
  br label %189

189:                                              ; preds = %169
  %190 = load i32, i32* %17, align 4
  %191 = add nsw i32 %190, 2
  store i32 %191, i32* %17, align 4
  br label %165

192:                                              ; preds = %165
  %193 = load i32, i32* %12, align 4
  %194 = add nsw i32 %193, 1
  %195 = sdiv i32 %194, 2
  %196 = add nsw i32 %195, 1
  %197 = sext i32 %196 to i64
  store i64 %197, i64* %8, align 8
  br label %198

198:                                              ; preds = %192, %152, %141, %131, %64, %48
  %199 = load i64, i64* %8, align 8
  ret i64 %199
}

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @CHECK_V_F(i32, i32) #1

declare dso_local i32 @HUF_compressWeights_wksp(i32*, i64, i32*, i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
