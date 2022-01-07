; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_zlib_deflateInit2.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deflate.c_zlib_deflateInit2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { %struct.internal_state*, i64, i32* }
%struct.internal_state = type { i32 }
%struct.TYPE_8__ = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, i32*, i32*, i32*, i32*, i32*, i64*, %struct.TYPE_6__* }
%struct.TYPE_7__ = type { i8*, i32*, i32*, i64*, i32 }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@Z_DEFAULT_COMPRESSION = common dso_local global i32 0, align 4
@MAX_MEM_LEVEL = common dso_local global i32 0, align 4
@Z_DEFLATED = common dso_local global i32 0, align 4
@Z_HUFFMAN_ONLY = common dso_local global i32 0, align 4
@MIN_MATCH = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_deflateInit2(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.TYPE_8__*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.TYPE_7__*, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32*, align 8
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 0, i32* %15, align 4
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = icmp eq %struct.TYPE_6__* %19, null
  br i1 %20, label %21, label %23

21:                                               ; preds = %6
  %22 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %22, i32* %7, align 4
  br label %228

23:                                               ; preds = %6
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 2
  store i32* null, i32** %25, align 8
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* @Z_DEFAULT_COMPRESSION, align 4
  %28 = icmp eq i32 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  store i32 6, i32* %9, align 4
  br label %30

30:                                               ; preds = %29, %23
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to %struct.TYPE_7__*
  store %struct.TYPE_7__* %34, %struct.TYPE_7__** %16, align 8
  %35 = load i32, i32* %11, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %30
  store i32 1, i32* %15, align 4
  %38 = load i32, i32* %11, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %11, align 4
  br label %40

40:                                               ; preds = %37, %30
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %41, 1
  br i1 %42, label %70, label %43

43:                                               ; preds = %40
  %44 = load i32, i32* %12, align 4
  %45 = load i32, i32* @MAX_MEM_LEVEL, align 4
  %46 = icmp sgt i32 %44, %45
  br i1 %46, label %70, label %47

47:                                               ; preds = %43
  %48 = load i32, i32* %10, align 4
  %49 = load i32, i32* @Z_DEFLATED, align 4
  %50 = icmp ne i32 %48, %49
  br i1 %50, label %70, label %51

51:                                               ; preds = %47
  %52 = load i32, i32* %11, align 4
  %53 = icmp slt i32 %52, 9
  br i1 %53, label %70, label %54

54:                                               ; preds = %51
  %55 = load i32, i32* %11, align 4
  %56 = icmp sgt i32 %55, 15
  br i1 %56, label %70, label %57

57:                                               ; preds = %54
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %70, label %60

60:                                               ; preds = %57
  %61 = load i32, i32* %9, align 4
  %62 = icmp sgt i32 %61, 9
  br i1 %62, label %70, label %63

63:                                               ; preds = %60
  %64 = load i32, i32* %13, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %70, label %66

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* @Z_HUFFMAN_ONLY, align 4
  %69 = icmp sgt i32 %67, %68
  br i1 %69, label %70, label %72

70:                                               ; preds = %66, %63, %60, %57, %54, %51, %47, %43, %40
  %71 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %71, i32* %7, align 4
  br label %228

72:                                               ; preds = %66
  %73 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %74 = bitcast %struct.TYPE_7__* %73 to i8*
  store i8* %74, i8** %17, align 8
  %75 = load i8*, i8** %17, align 8
  %76 = getelementptr inbounds i8, i8* %75, i64 40
  store i8* %76, i8** %17, align 8
  %77 = load i8*, i8** %17, align 8
  %78 = bitcast i8* %77 to i64*
  %79 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %80 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %79, i32 0, i32 3
  store i64* %78, i64** %80, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i32 @zlib_deflate_window_memsize(i32 %81)
  %83 = load i8*, i8** %17, align 8
  %84 = sext i32 %82 to i64
  %85 = getelementptr inbounds i8, i8* %83, i64 %84
  store i8* %85, i8** %17, align 8
  %86 = load i8*, i8** %17, align 8
  %87 = bitcast i8* %86 to i32*
  %88 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %89 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %88, i32 0, i32 2
  store i32* %87, i32** %89, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @zlib_deflate_prev_memsize(i32 %90)
  %92 = load i8*, i8** %17, align 8
  %93 = sext i32 %91 to i64
  %94 = getelementptr inbounds i8, i8* %92, i64 %93
  store i8* %94, i8** %17, align 8
  %95 = load i8*, i8** %17, align 8
  %96 = bitcast i8* %95 to i32*
  %97 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %98 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %97, i32 0, i32 1
  store i32* %96, i32** %98, align 8
  %99 = load i32, i32* %12, align 4
  %100 = call i32 @zlib_deflate_head_memsize(i32 %99)
  %101 = load i8*, i8** %17, align 8
  %102 = sext i32 %100 to i64
  %103 = getelementptr inbounds i8, i8* %101, i64 %102
  store i8* %103, i8** %17, align 8
  %104 = load i8*, i8** %17, align 8
  %105 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %106 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %105, i32 0, i32 0
  store i8* %104, i8** %106, align 8
  %107 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %108 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %107, i32 0, i32 4
  %109 = bitcast i32* %108 to %struct.TYPE_8__*
  store %struct.TYPE_8__* %109, %struct.TYPE_8__** %14, align 8
  %110 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %111 = bitcast %struct.TYPE_8__* %110 to %struct.internal_state*
  %112 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %113 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %112, i32 0, i32 0
  store %struct.internal_state* %111, %struct.internal_state** %113, align 8
  %114 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 19
  store %struct.TYPE_6__* %114, %struct.TYPE_6__** %116, align 8
  %117 = load i32, i32* %15, align 4
  %118 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %119 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %118, i32 0, i32 0
  store i32 %117, i32* %119, align 8
  %120 = load i32, i32* %11, align 4
  %121 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %122 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %124 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = shl i32 1, %125
  %127 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %128 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %127, i32 0, i32 2
  store i32 %126, i32* %128, align 8
  %129 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %130 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %129, i32 0, i32 2
  %131 = load i32, i32* %130, align 8
  %132 = sub nsw i32 %131, 1
  %133 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %134 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %133, i32 0, i32 3
  store i32 %132, i32* %134, align 4
  %135 = load i32, i32* %12, align 4
  %136 = add nsw i32 %135, 7
  %137 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %138 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %137, i32 0, i32 4
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %140 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 8
  %142 = shl i32 1, %141
  %143 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %144 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %143, i32 0, i32 5
  store i32 %142, i32* %144, align 4
  %145 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %146 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %145, i32 0, i32 5
  %147 = load i32, i32* %146, align 4
  %148 = sub nsw i32 %147, 1
  %149 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %150 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %149, i32 0, i32 6
  store i32 %148, i32* %150, align 8
  %151 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %152 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %151, i32 0, i32 4
  %153 = load i32, i32* %152, align 8
  %154 = load i32, i32* @MIN_MATCH, align 4
  %155 = add nsw i32 %153, %154
  %156 = sub nsw i32 %155, 1
  %157 = load i32, i32* @MIN_MATCH, align 4
  %158 = sdiv i32 %156, %157
  %159 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %160 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %159, i32 0, i32 7
  store i32 %158, i32* %160, align 4
  %161 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %162 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %161, i32 0, i32 3
  %163 = load i64*, i64** %162, align 8
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 18
  store i64* %163, i64** %165, align 8
  %166 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %167 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %166, i32 0, i32 2
  %168 = load i32*, i32** %167, align 8
  %169 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %170 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %169, i32 0, i32 17
  store i32* %168, i32** %170, align 8
  %171 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %172 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %171, i32 0, i32 1
  %173 = load i32*, i32** %172, align 8
  %174 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %175 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %174, i32 0, i32 16
  store i32* %173, i32** %175, align 8
  %176 = load i32, i32* %12, align 4
  %177 = add nsw i32 %176, 6
  %178 = shl i32 1, %177
  %179 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %180 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %179, i32 0, i32 8
  store i32 %178, i32* %180, align 8
  %181 = load %struct.TYPE_7__*, %struct.TYPE_7__** %16, align 8
  %182 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %181, i32 0, i32 0
  %183 = load i8*, i8** %182, align 8
  %184 = bitcast i8* %183 to i32*
  store i32* %184, i32** %18, align 8
  %185 = load i32*, i32** %18, align 8
  %186 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %187 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %186, i32 0, i32 13
  store i32* %185, i32** %187, align 8
  %188 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %189 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %188, i32 0, i32 8
  %190 = load i32, i32* %189, align 8
  %191 = sext i32 %190 to i64
  %192 = mul i64 %191, 6
  %193 = trunc i64 %192 to i32
  %194 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %195 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %194, i32 0, i32 9
  store i32 %193, i32* %195, align 4
  %196 = load i32*, i32** %18, align 8
  %197 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %198 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %197, i32 0, i32 8
  %199 = load i32, i32* %198, align 8
  %200 = sext i32 %199 to i64
  %201 = udiv i64 %200, 4
  %202 = getelementptr inbounds i32, i32* %196, i64 %201
  %203 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %204 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %203, i32 0, i32 15
  store i32* %202, i32** %204, align 8
  %205 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %206 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %205, i32 0, i32 13
  %207 = load i32*, i32** %206, align 8
  %208 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %209 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %208, i32 0, i32 8
  %210 = load i32, i32* %209, align 8
  %211 = sext i32 %210 to i64
  %212 = mul i64 5, %211
  %213 = getelementptr inbounds i32, i32* %207, i64 %212
  %214 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %215 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %214, i32 0, i32 14
  store i32* %213, i32** %215, align 8
  %216 = load i32, i32* %9, align 4
  %217 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %218 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %217, i32 0, i32 10
  store i32 %216, i32* %218, align 8
  %219 = load i32, i32* %13, align 4
  %220 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %221 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %220, i32 0, i32 11
  store i32 %219, i32* %221, align 4
  %222 = load i32, i32* %10, align 4
  %223 = sext i32 %222 to i64
  %224 = load %struct.TYPE_8__*, %struct.TYPE_8__** %14, align 8
  %225 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %224, i32 0, i32 12
  store i64 %223, i64* %225, align 8
  %226 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %227 = call i32 @zlib_deflateReset(%struct.TYPE_6__* %226)
  store i32 %227, i32* %7, align 4
  br label %228

228:                                              ; preds = %72, %70, %21
  %229 = load i32, i32* %7, align 4
  ret i32 %229
}

declare dso_local i32 @zlib_deflate_window_memsize(i32) #1

declare dso_local i32 @zlib_deflate_prev_memsize(i32) #1

declare dso_local i32 @zlib_deflate_head_memsize(i32) #1

declare dso_local i32 @zlib_deflateReset(%struct.TYPE_6__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
