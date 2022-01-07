; ModuleID = '/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decodeSeqHeaders.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zstd/extr_decompress.c_ZSTD_decodeSeqHeaders.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__, i32, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@MIN_SEQUENCES_SIZE = common dso_local global i64 0, align 8
@srcSize_wrong = common dso_local global i32 0, align 4
@LONGNBSEQ = common dso_local global i32 0, align 4
@MaxLL = common dso_local global i32 0, align 4
@LLFSELog = common dso_local global i32 0, align 4
@LL_defaultDTable = common dso_local global i32 0, align 4
@corruption_detected = common dso_local global i32 0, align 4
@MaxOff = common dso_local global i32 0, align 4
@OffFSELog = common dso_local global i32 0, align 4
@OF_defaultDTable = common dso_local global i32 0, align 4
@MaxML = common dso_local global i32 0, align 4
@MLFSELog = common dso_local global i32 0, align 4
@ML_defaultDTable = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i64 @ZSTD_decodeSeqHeaders(%struct.TYPE_5__* %0, i32* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i64, align 8
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32*, align 8
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i64, align 8
  %18 = alloca i64, align 8
  %19 = alloca i64, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i32* %1, i32** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %20 = load i8*, i8** %8, align 8
  %21 = bitcast i8* %20 to i32*
  store i32* %21, i32** %10, align 8
  %22 = load i32*, i32** %10, align 8
  %23 = load i64, i64* %9, align 8
  %24 = getelementptr inbounds i32, i32* %22, i64 %23
  store i32* %24, i32** %11, align 8
  %25 = load i32*, i32** %10, align 8
  store i32* %25, i32** %12, align 8
  %26 = load i64, i64* %9, align 8
  %27 = load i64, i64* @MIN_SEQUENCES_SIZE, align 8
  %28 = icmp ult i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %4
  %30 = load i32, i32* @srcSize_wrong, align 4
  %31 = call i64 @ERROR(i32 %30)
  store i64 %31, i64* %5, align 8
  br label %215

32:                                               ; preds = %4
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i32 1
  store i32* %34, i32** %12, align 8
  %35 = load i32, i32* %33, align 4
  store i32 %35, i32* %13, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %40, label %38

38:                                               ; preds = %32
  %39 = load i32*, i32** %7, align 8
  store i32 0, i32* %39, align 4
  store i64 1, i64* %5, align 8
  br label %215

40:                                               ; preds = %32
  %41 = load i32, i32* %13, align 4
  %42 = icmp sgt i32 %41, 127
  br i1 %42, label %43, label %77

43:                                               ; preds = %40
  %44 = load i32, i32* %13, align 4
  %45 = icmp eq i32 %44, 255
  br i1 %45, label %46, label %61

46:                                               ; preds = %43
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 2
  %49 = load i32*, i32** %11, align 8
  %50 = icmp ugt i32* %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %46
  %52 = load i32, i32* @srcSize_wrong, align 4
  %53 = call i64 @ERROR(i32 %52)
  store i64 %53, i64* %5, align 8
  br label %215

54:                                               ; preds = %46
  %55 = load i32*, i32** %12, align 8
  %56 = call i32 @ZSTD_readLE16(i32* %55)
  %57 = load i32, i32* @LONGNBSEQ, align 4
  %58 = add nsw i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32*, i32** %12, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 2
  store i32* %60, i32** %12, align 8
  br label %76

61:                                               ; preds = %43
  %62 = load i32*, i32** %12, align 8
  %63 = load i32*, i32** %11, align 8
  %64 = icmp uge i32* %62, %63
  br i1 %64, label %65, label %68

65:                                               ; preds = %61
  %66 = load i32, i32* @srcSize_wrong, align 4
  %67 = call i64 @ERROR(i32 %66)
  store i64 %67, i64* %5, align 8
  br label %215

68:                                               ; preds = %61
  %69 = load i32, i32* %13, align 4
  %70 = sub nsw i32 %69, 128
  %71 = shl i32 %70, 8
  %72 = load i32*, i32** %12, align 8
  %73 = getelementptr inbounds i32, i32* %72, i32 1
  store i32* %73, i32** %12, align 8
  %74 = load i32, i32* %72, align 4
  %75 = add nsw i32 %71, %74
  store i32 %75, i32* %13, align 4
  br label %76

76:                                               ; preds = %68, %54
  br label %77

77:                                               ; preds = %76, %40
  %78 = load i32, i32* %13, align 4
  %79 = load i32*, i32** %7, align 8
  store i32 %78, i32* %79, align 4
  %80 = load i32*, i32** %12, align 8
  %81 = getelementptr inbounds i32, i32* %80, i64 4
  %82 = load i32*, i32** %11, align 8
  %83 = icmp ugt i32* %81, %82
  br i1 %83, label %84, label %87

84:                                               ; preds = %77
  %85 = load i32, i32* @srcSize_wrong, align 4
  %86 = call i64 @ERROR(i32 %85)
  store i64 %86, i64* %5, align 8
  br label %215

87:                                               ; preds = %77
  %88 = load i32*, i32** %12, align 8
  %89 = load i32, i32* %88, align 4
  %90 = ashr i32 %89, 6
  store i32 %90, i32* %14, align 4
  %91 = load i32*, i32** %12, align 8
  %92 = load i32, i32* %91, align 4
  %93 = ashr i32 %92, 4
  %94 = and i32 %93, 3
  store i32 %94, i32* %15, align 4
  %95 = load i32*, i32** %12, align 8
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 2
  %98 = and i32 %97, 3
  store i32 %98, i32* %16, align 4
  %99 = load i32*, i32** %12, align 8
  %100 = getelementptr inbounds i32, i32* %99, i32 1
  store i32* %100, i32** %12, align 8
  %101 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %102 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 3
  %104 = load i32, i32* %103, align 4
  %105 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %106 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %105, i32 0, i32 4
  %107 = load i32, i32* %14, align 4
  %108 = load i32, i32* @MaxLL, align 4
  %109 = load i32, i32* @LLFSELog, align 4
  %110 = load i32*, i32** %12, align 8
  %111 = load i32*, i32** %11, align 8
  %112 = load i32*, i32** %12, align 8
  %113 = ptrtoint i32* %111 to i64
  %114 = ptrtoint i32* %112 to i64
  %115 = sub i64 %113, %114
  %116 = sdiv exact i64 %115, 4
  %117 = trunc i64 %116 to i32
  %118 = load i32, i32* @LL_defaultDTable, align 4
  %119 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %120 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %119, i32 0, i32 1
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %123 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %122, i32 0, i32 0
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 0
  %125 = load i32, i32* %124, align 4
  %126 = call i64 @ZSTD_buildSeqTable(i32 %104, i32* %106, i32 %107, i32 %108, i32 %109, i32* %110, i32 %117, i32 %118, i32 %121, i32 %125, i32 4)
  store i64 %126, i64* %17, align 8
  %127 = load i64, i64* %17, align 8
  %128 = call i64 @ZSTD_isError(i64 %127)
  %129 = icmp ne i64 %128, 0
  br i1 %129, label %130, label %133

130:                                              ; preds = %87
  %131 = load i32, i32* @corruption_detected, align 4
  %132 = call i64 @ERROR(i32 %131)
  store i64 %132, i64* %5, align 8
  br label %215

133:                                              ; preds = %87
  %134 = load i64, i64* %17, align 8
  %135 = load i32*, i32** %12, align 8
  %136 = getelementptr inbounds i32, i32* %135, i64 %134
  store i32* %136, i32** %12, align 8
  %137 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %138 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %137, i32 0, i32 0
  %139 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %138, i32 0, i32 2
  %140 = load i32, i32* %139, align 4
  %141 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %142 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %141, i32 0, i32 3
  %143 = load i32, i32* %15, align 4
  %144 = load i32, i32* @MaxOff, align 4
  %145 = load i32, i32* @OffFSELog, align 4
  %146 = load i32*, i32** %12, align 8
  %147 = load i32*, i32** %11, align 8
  %148 = load i32*, i32** %12, align 8
  %149 = ptrtoint i32* %147 to i64
  %150 = ptrtoint i32* %148 to i64
  %151 = sub i64 %149, %150
  %152 = sdiv exact i64 %151, 4
  %153 = trunc i64 %152 to i32
  %154 = load i32, i32* @OF_defaultDTable, align 4
  %155 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %156 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %159 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %158, i32 0, i32 0
  %160 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @ZSTD_buildSeqTable(i32 %140, i32* %142, i32 %143, i32 %144, i32 %145, i32* %146, i32 %153, i32 %154, i32 %157, i32 %161, i32 4)
  store i64 %162, i64* %18, align 8
  %163 = load i64, i64* %18, align 8
  %164 = call i64 @ZSTD_isError(i64 %163)
  %165 = icmp ne i64 %164, 0
  br i1 %165, label %166, label %169

166:                                              ; preds = %133
  %167 = load i32, i32* @corruption_detected, align 4
  %168 = call i64 @ERROR(i32 %167)
  store i64 %168, i64* %5, align 8
  br label %215

169:                                              ; preds = %133
  %170 = load i64, i64* %18, align 8
  %171 = load i32*, i32** %12, align 8
  %172 = getelementptr inbounds i32, i32* %171, i64 %170
  store i32* %172, i32** %12, align 8
  %173 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %174 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %173, i32 0, i32 0
  %175 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %178 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %177, i32 0, i32 2
  %179 = load i32, i32* %16, align 4
  %180 = load i32, i32* @MaxML, align 4
  %181 = load i32, i32* @MLFSELog, align 4
  %182 = load i32*, i32** %12, align 8
  %183 = load i32*, i32** %11, align 8
  %184 = load i32*, i32** %12, align 8
  %185 = ptrtoint i32* %183 to i64
  %186 = ptrtoint i32* %184 to i64
  %187 = sub i64 %185, %186
  %188 = sdiv exact i64 %187, 4
  %189 = trunc i64 %188 to i32
  %190 = load i32, i32* @ML_defaultDTable, align 4
  %191 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %192 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %191, i32 0, i32 1
  %193 = load i32, i32* %192, align 4
  %194 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %195 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %194, i32 0, i32 0
  %196 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i64 @ZSTD_buildSeqTable(i32 %176, i32* %178, i32 %179, i32 %180, i32 %181, i32* %182, i32 %189, i32 %190, i32 %193, i32 %197, i32 4)
  store i64 %198, i64* %19, align 8
  %199 = load i64, i64* %19, align 8
  %200 = call i64 @ZSTD_isError(i64 %199)
  %201 = icmp ne i64 %200, 0
  br i1 %201, label %202, label %205

202:                                              ; preds = %169
  %203 = load i32, i32* @corruption_detected, align 4
  %204 = call i64 @ERROR(i32 %203)
  store i64 %204, i64* %5, align 8
  br label %215

205:                                              ; preds = %169
  %206 = load i64, i64* %19, align 8
  %207 = load i32*, i32** %12, align 8
  %208 = getelementptr inbounds i32, i32* %207, i64 %206
  store i32* %208, i32** %12, align 8
  %209 = load i32*, i32** %12, align 8
  %210 = load i32*, i32** %10, align 8
  %211 = ptrtoint i32* %209 to i64
  %212 = ptrtoint i32* %210 to i64
  %213 = sub i64 %211, %212
  %214 = sdiv exact i64 %213, 4
  store i64 %214, i64* %5, align 8
  br label %215

215:                                              ; preds = %205, %202, %166, %130, %84, %65, %51, %38, %29
  %216 = load i64, i64* %5, align 8
  ret i64 %216
}

declare dso_local i64 @ERROR(i32) #1

declare dso_local i32 @ZSTD_readLE16(i32*) #1

declare dso_local i64 @ZSTD_buildSeqTable(i32, i32*, i32, i32, i32, i32*, i32, i32, i32, i32, i32) #1

declare dso_local i64 @ZSTD_isError(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
