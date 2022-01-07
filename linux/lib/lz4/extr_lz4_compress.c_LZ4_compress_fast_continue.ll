; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_fast_continue.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_compress.c_LZ4_compress_fast_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, i32, i32*, i64 }

@LZ4_ACCELERATION_DEFAULT = common dso_local global i32 0, align 4
@KB = common dso_local global i32 0, align 4
@limitedOutput = common dso_local global i32 0, align 4
@byU32 = common dso_local global i32 0, align 4
@withPrefix64k = common dso_local global i32 0, align 4
@dictSmall = common dso_local global i32 0, align 4
@noDictIssue = common dso_local global i32 0, align 4
@usingExtDict = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_compress_fast_continue(%struct.TYPE_7__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_7__*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_6__*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  store %struct.TYPE_7__* %0, %struct.TYPE_7__** %8, align 8
  store i8* %1, i8** %9, align 8
  store i8* %2, i8** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %20 = load %struct.TYPE_7__*, %struct.TYPE_7__** %8, align 8
  %21 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %20, i32 0, i32 0
  store %struct.TYPE_6__* %21, %struct.TYPE_6__** %14, align 8
  %22 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 2
  %24 = load i32*, i32** %23, align 8
  %25 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %26 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = sext i32 %27 to i64
  %29 = getelementptr inbounds i32, i32* %24, i64 %28
  store i32* %29, i32** %15, align 8
  %30 = load i8*, i8** %9, align 8
  %31 = bitcast i8* %30 to i32*
  store i32* %31, i32** %16, align 8
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 3
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %6
  store i32 0, i32* %7, align 4
  br label %235

37:                                               ; preds = %6
  %38 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 0
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load i32*, i32** %16, align 8
  %44 = load i32*, i32** %15, align 8
  %45 = icmp ugt i32* %43, %44
  br i1 %45, label %46, label %48

46:                                               ; preds = %42
  %47 = load i32*, i32** %15, align 8
  store i32* %47, i32** %16, align 8
  br label %48

48:                                               ; preds = %46, %42, %37
  %49 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %50 = load i32*, i32** %16, align 8
  %51 = call i32 @LZ4_renormDictT(%struct.TYPE_6__* %49, i32* %50)
  %52 = load i32, i32* %13, align 4
  %53 = icmp slt i32 %52, 1
  br i1 %53, label %54, label %56

54:                                               ; preds = %48
  %55 = load i32, i32* @LZ4_ACCELERATION_DEFAULT, align 4
  store i32 %55, i32* %13, align 4
  br label %56

56:                                               ; preds = %54, %48
  %57 = load i8*, i8** %9, align 8
  %58 = bitcast i8* %57 to i32*
  %59 = load i32, i32* %11, align 4
  %60 = sext i32 %59 to i64
  %61 = getelementptr inbounds i32, i32* %58, i64 %60
  store i32* %61, i32** %17, align 8
  %62 = load i32*, i32** %17, align 8
  %63 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %64 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %63, i32 0, i32 2
  %65 = load i32*, i32** %64, align 8
  %66 = icmp ugt i32* %62, %65
  br i1 %66, label %67, label %111

67:                                               ; preds = %56
  %68 = load i32*, i32** %17, align 8
  %69 = load i32*, i32** %15, align 8
  %70 = icmp ult i32* %68, %69
  br i1 %70, label %71, label %111

71:                                               ; preds = %67
  %72 = load i32*, i32** %15, align 8
  %73 = load i32*, i32** %17, align 8
  %74 = ptrtoint i32* %72 to i64
  %75 = ptrtoint i32* %73 to i64
  %76 = sub i64 %74, %75
  %77 = sdiv exact i64 %76, 4
  %78 = inttoptr i64 %77 to i8*
  %79 = ptrtoint i8* %78 to i32
  %80 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %81 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %80, i32 0, i32 0
  store i32 %79, i32* %81, align 8
  %82 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = load i32, i32* @KB, align 4
  %86 = mul nsw i32 64, %85
  %87 = icmp sgt i32 %84, %86
  br i1 %87, label %88, label %93

88:                                               ; preds = %71
  %89 = load i32, i32* @KB, align 4
  %90 = mul nsw i32 64, %89
  %91 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %92 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %91, i32 0, i32 0
  store i32 %90, i32* %92, align 8
  br label %93

93:                                               ; preds = %88, %71
  %94 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %95 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp slt i32 %96, 4
  br i1 %97, label %98, label %101

98:                                               ; preds = %93
  %99 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %100 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %99, i32 0, i32 0
  store i32 0, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %93
  %102 = load i32*, i32** %15, align 8
  %103 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %104 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %103, i32 0, i32 0
  %105 = load i32, i32* %104, align 8
  %106 = sext i32 %105 to i64
  %107 = sub i64 0, %106
  %108 = getelementptr inbounds i32, i32* %102, i64 %107
  %109 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %110 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %109, i32 0, i32 2
  store i32* %108, i32** %110, align 8
  br label %111

111:                                              ; preds = %101, %67, %56
  %112 = load i32*, i32** %15, align 8
  %113 = load i8*, i8** %9, align 8
  %114 = bitcast i8* %113 to i32*
  %115 = icmp eq i32* %112, %114
  br i1 %115, label %116, label %175

116:                                              ; preds = %111
  %117 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %118 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @KB, align 4
  %121 = mul nsw i32 64, %120
  %122 = icmp slt i32 %119, %121
  br i1 %122, label %123, label %143

123:                                              ; preds = %116
  %124 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %125 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = icmp slt i32 %126, %129
  br i1 %130, label %131, label %143

131:                                              ; preds = %123
  %132 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %133 = load i8*, i8** %9, align 8
  %134 = load i8*, i8** %10, align 8
  %135 = load i32, i32* %11, align 4
  %136 = load i32, i32* %12, align 4
  %137 = load i32, i32* @limitedOutput, align 4
  %138 = load i32, i32* @byU32, align 4
  %139 = load i32, i32* @withPrefix64k, align 4
  %140 = load i32, i32* @dictSmall, align 4
  %141 = load i32, i32* %13, align 4
  %142 = call i32 @LZ4_compress_generic(%struct.TYPE_6__* %132, i8* %133, i8* %134, i32 %135, i32 %136, i32 %137, i32 %138, i32 %139, i32 %140, i32 %141)
  store i32 %142, i32* %18, align 4
  br label %155

143:                                              ; preds = %123, %116
  %144 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %145 = load i8*, i8** %9, align 8
  %146 = load i8*, i8** %10, align 8
  %147 = load i32, i32* %11, align 4
  %148 = load i32, i32* %12, align 4
  %149 = load i32, i32* @limitedOutput, align 4
  %150 = load i32, i32* @byU32, align 4
  %151 = load i32, i32* @withPrefix64k, align 4
  %152 = load i32, i32* @noDictIssue, align 4
  %153 = load i32, i32* %13, align 4
  %154 = call i32 @LZ4_compress_generic(%struct.TYPE_6__* %144, i8* %145, i8* %146, i32 %147, i32 %148, i32 %149, i32 %150, i32 %151, i32 %152, i32 %153)
  store i32 %154, i32* %18, align 4
  br label %155

155:                                              ; preds = %143, %131
  %156 = load i32, i32* %11, align 4
  %157 = sext i32 %156 to i64
  %158 = inttoptr i64 %157 to i8*
  %159 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = sext i32 %161 to i64
  %163 = getelementptr i8, i8* %158, i64 %162
  %164 = ptrtoint i8* %163 to i32
  store i32 %164, i32* %160, align 8
  %165 = load i32, i32* %11, align 4
  %166 = sext i32 %165 to i64
  %167 = inttoptr i64 %166 to i8*
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %169 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %168, i32 0, i32 1
  %170 = load i32, i32* %169, align 4
  %171 = sext i32 %170 to i64
  %172 = getelementptr i8, i8* %167, i64 %171
  %173 = ptrtoint i8* %172 to i32
  store i32 %173, i32* %169, align 4
  %174 = load i32, i32* %18, align 4
  store i32 %174, i32* %7, align 4
  br label %235

175:                                              ; preds = %111
  %176 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %177 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %176, i32 0, i32 0
  %178 = load i32, i32* %177, align 8
  %179 = load i32, i32* @KB, align 4
  %180 = mul nsw i32 64, %179
  %181 = icmp slt i32 %178, %180
  br i1 %181, label %182, label %202

182:                                              ; preds = %175
  %183 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %184 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %186, i32 0, i32 1
  %188 = load i32, i32* %187, align 4
  %189 = icmp slt i32 %185, %188
  br i1 %189, label %190, label %202

190:                                              ; preds = %182
  %191 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %192 = load i8*, i8** %9, align 8
  %193 = load i8*, i8** %10, align 8
  %194 = load i32, i32* %11, align 4
  %195 = load i32, i32* %12, align 4
  %196 = load i32, i32* @limitedOutput, align 4
  %197 = load i32, i32* @byU32, align 4
  %198 = load i32, i32* @usingExtDict, align 4
  %199 = load i32, i32* @dictSmall, align 4
  %200 = load i32, i32* %13, align 4
  %201 = call i32 @LZ4_compress_generic(%struct.TYPE_6__* %191, i8* %192, i8* %193, i32 %194, i32 %195, i32 %196, i32 %197, i32 %198, i32 %199, i32 %200)
  store i32 %201, i32* %19, align 4
  br label %214

202:                                              ; preds = %182, %175
  %203 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %204 = load i8*, i8** %9, align 8
  %205 = load i8*, i8** %10, align 8
  %206 = load i32, i32* %11, align 4
  %207 = load i32, i32* %12, align 4
  %208 = load i32, i32* @limitedOutput, align 4
  %209 = load i32, i32* @byU32, align 4
  %210 = load i32, i32* @usingExtDict, align 4
  %211 = load i32, i32* @noDictIssue, align 4
  %212 = load i32, i32* %13, align 4
  %213 = call i32 @LZ4_compress_generic(%struct.TYPE_6__* %203, i8* %204, i8* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, i32 %211, i32 %212)
  store i32 %213, i32* %19, align 4
  br label %214

214:                                              ; preds = %202, %190
  %215 = load i8*, i8** %9, align 8
  %216 = bitcast i8* %215 to i32*
  %217 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %217, i32 0, i32 2
  store i32* %216, i32** %218, align 8
  %219 = load i32, i32* %11, align 4
  %220 = sext i32 %219 to i64
  %221 = inttoptr i64 %220 to i8*
  %222 = ptrtoint i8* %221 to i32
  %223 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %224 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %223, i32 0, i32 0
  store i32 %222, i32* %224, align 8
  %225 = load i32, i32* %11, align 4
  %226 = sext i32 %225 to i64
  %227 = inttoptr i64 %226 to i8*
  %228 = load %struct.TYPE_6__*, %struct.TYPE_6__** %14, align 8
  %229 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %228, i32 0, i32 1
  %230 = load i32, i32* %229, align 4
  %231 = sext i32 %230 to i64
  %232 = getelementptr i8, i8* %227, i64 %231
  %233 = ptrtoint i8* %232 to i32
  store i32 %233, i32* %229, align 4
  %234 = load i32, i32* %19, align 4
  store i32 %234, i32* %7, align 4
  br label %235

235:                                              ; preds = %214, %155, %36
  %236 = load i32, i32* %7, align 4
  ret i32 %236
}

declare dso_local i32 @LZ4_renormDictT(%struct.TYPE_6__*, i32*) #1

declare dso_local i32 @LZ4_compress_generic(%struct.TYPE_6__*, i8*, i8*, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
