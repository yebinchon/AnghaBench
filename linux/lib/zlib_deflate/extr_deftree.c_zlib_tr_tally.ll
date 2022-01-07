; ModuleID = '/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_zlib_tr_tally.c'
source_filename = "/home/carl/AnghaBench/linux/lib/zlib_deflate/extr_deftree.c_zlib_tr_tally.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { i64, i32, i32, i32, %struct.TYPE_7__*, i64, i64, %struct.TYPE_6__*, i64*, i64* }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32 }

@MAX_MATCH = common dso_local global i64 0, align 8
@MIN_MATCH = common dso_local global i64 0, align 8
@D_CODES = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [25 x i8] c"zlib_tr_tally: bad match\00", align 1
@length_code = common dso_local global i32* null, align 8
@LITERALS = common dso_local global i32 0, align 4
@extra_dbits = common dso_local global i64* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"\0Alast_lit %u, in %ld, out ~%ld(%ld%%) \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @zlib_tr_tally(%struct.TYPE_8__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %11 = load i32, i32* %6, align 4
  %12 = zext i32 %11 to i64
  %13 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 9
  %15 = load i64*, i64** %14, align 8
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds i64, i64* %15, i64 %18
  store i64 %12, i64* %19, align 8
  %20 = load i32, i32* %7, align 4
  %21 = zext i32 %20 to i64
  %22 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %23 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %22, i32 0, i32 8
  %24 = load i64*, i64** %23, align 8
  %25 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %26 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = add i64 %27, 1
  store i64 %28, i64* %26, align 8
  %29 = getelementptr inbounds i64, i64* %24, i64 %27
  store i64 %21, i64* %29, align 8
  %30 = load i32, i32* %6, align 4
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %42

32:                                               ; preds = %3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %34 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %33, i32 0, i32 7
  %35 = load %struct.TYPE_6__*, %struct.TYPE_6__** %34, align 8
  %36 = load i32, i32* %7, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = add nsw i32 %40, 1
  store i32 %41, i32* %39, align 4
  br label %96

42:                                               ; preds = %3
  %43 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %44 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %44, align 8
  %47 = load i32, i32* %6, align 4
  %48 = add i32 %47, -1
  store i32 %48, i32* %6, align 4
  %49 = load i32, i32* %6, align 4
  %50 = zext i32 %49 to i64
  %51 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %52 = call i64 @MAX_DIST(%struct.TYPE_8__* %51)
  %53 = icmp slt i64 %50, %52
  br i1 %53, label %54, label %67

54:                                               ; preds = %42
  %55 = load i32, i32* %7, align 4
  %56 = zext i32 %55 to i64
  %57 = load i64, i64* @MAX_MATCH, align 8
  %58 = load i64, i64* @MIN_MATCH, align 8
  %59 = sub nsw i64 %57, %58
  %60 = icmp sle i64 %56, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load i32, i32* %6, align 4
  %63 = call i64 @d_code(i32 %62)
  %64 = load i32, i32* @D_CODES, align 4
  %65 = sext i32 %64 to i64
  %66 = icmp slt i64 %63, %65
  br label %67

67:                                               ; preds = %61, %54, %42
  %68 = phi i1 [ false, %54 ], [ false, %42 ], [ %66, %61 ]
  %69 = zext i1 %68 to i32
  %70 = call i32 @Assert(i32 %69, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %72 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %71, i32 0, i32 7
  %73 = load %struct.TYPE_6__*, %struct.TYPE_6__** %72, align 8
  %74 = load i32*, i32** @length_code, align 8
  %75 = load i32, i32* %7, align 4
  %76 = zext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  %79 = load i32, i32* @LITERALS, align 4
  %80 = add nsw i32 %78, %79
  %81 = add nsw i32 %80, 1
  %82 = sext i32 %81 to i64
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %73, i64 %82
  %84 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %84, align 4
  %87 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %88 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %87, i32 0, i32 4
  %89 = load %struct.TYPE_7__*, %struct.TYPE_7__** %88, align 8
  %90 = load i32, i32* %6, align 4
  %91 = call i64 @d_code(i32 %90)
  %92 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %89, i64 %91
  %93 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = add nsw i64 %94, 1
  store i64 %95, i64* %93, align 8
  br label %96

96:                                               ; preds = %67, %32
  %97 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %98 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = and i64 %99, 4095
  %101 = icmp eq i64 %100, 0
  br i1 %101, label %102, label %176

102:                                              ; preds = %96
  %103 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %104 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %103, i32 0, i32 2
  %105 = load i32, i32* %104, align 4
  %106 = icmp sgt i32 %105, 2
  br i1 %106, label %107, label %176

107:                                              ; preds = %102
  %108 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %109 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %108, i32 0, i32 0
  %110 = load i64, i64* %109, align 8
  %111 = mul nsw i64 %110, 8
  store i64 %111, i64* %8, align 8
  %112 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %113 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %112, i32 0, i32 6
  %114 = load i64, i64* %113, align 8
  %115 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %116 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %115, i32 0, i32 5
  %117 = load i64, i64* %116, align 8
  %118 = sub nsw i64 %114, %117
  store i64 %118, i64* %9, align 8
  store i32 0, i32* %10, align 4
  br label %119

119:                                              ; preds = %141, %107
  %120 = load i32, i32* %10, align 4
  %121 = load i32, i32* @D_CODES, align 4
  %122 = icmp slt i32 %120, %121
  br i1 %122, label %123, label %144

123:                                              ; preds = %119
  %124 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %125 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %124, i32 0, i32 4
  %126 = load %struct.TYPE_7__*, %struct.TYPE_7__** %125, align 8
  %127 = load i32, i32* %10, align 4
  %128 = sext i32 %127 to i64
  %129 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %126, i64 %128
  %130 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64*, i64** @extra_dbits, align 8
  %133 = load i32, i32* %10, align 4
  %134 = sext i32 %133 to i64
  %135 = getelementptr inbounds i64, i64* %132, i64 %134
  %136 = load i64, i64* %135, align 8
  %137 = add nsw i64 5, %136
  %138 = mul nsw i64 %131, %137
  %139 = load i64, i64* %8, align 8
  %140 = add nsw i64 %139, %138
  store i64 %140, i64* %8, align 8
  br label %141

141:                                              ; preds = %123
  %142 = load i32, i32* %10, align 4
  %143 = add nsw i32 %142, 1
  store i32 %143, i32* %10, align 4
  br label %119

144:                                              ; preds = %119
  %145 = load i64, i64* %8, align 8
  %146 = ashr i64 %145, 3
  store i64 %146, i64* %8, align 8
  %147 = load i32, i32* @stderr, align 4
  %148 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %149 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %148, i32 0, i32 0
  %150 = load i64, i64* %149, align 8
  %151 = load i64, i64* %9, align 8
  %152 = load i64, i64* %8, align 8
  %153 = load i64, i64* %8, align 8
  %154 = mul nsw i64 %153, 100
  %155 = load i64, i64* %9, align 8
  %156 = sdiv i64 %154, %155
  %157 = sub nsw i64 100, %156
  %158 = trunc i64 %157 to i32
  %159 = call i32 @Tracev(i32 %158)
  %160 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 1
  %162 = load i32, i32* %161, align 8
  %163 = sext i32 %162 to i64
  %164 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %165 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %164, i32 0, i32 0
  %166 = load i64, i64* %165, align 8
  %167 = udiv i64 %166, 2
  %168 = icmp ult i64 %163, %167
  br i1 %168, label %169, label %175

169:                                              ; preds = %144
  %170 = load i64, i64* %8, align 8
  %171 = load i64, i64* %9, align 8
  %172 = sdiv i64 %171, 2
  %173 = icmp slt i64 %170, %172
  br i1 %173, label %174, label %175

174:                                              ; preds = %169
  store i32 1, i32* %4, align 4
  br label %187

175:                                              ; preds = %169, %144
  br label %176

176:                                              ; preds = %175, %102, %96
  %177 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %178 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %177, i32 0, i32 0
  %179 = load i64, i64* %178, align 8
  %180 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %181 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %180, i32 0, i32 3
  %182 = load i32, i32* %181, align 8
  %183 = sub nsw i32 %182, 1
  %184 = sext i32 %183 to i64
  %185 = icmp eq i64 %179, %184
  %186 = zext i1 %185 to i32
  store i32 %186, i32* %4, align 4
  br label %187

187:                                              ; preds = %176, %174
  %188 = load i32, i32* %4, align 4
  ret i32 %188
}

declare dso_local i32 @Assert(i32, i8*) #1

declare dso_local i64 @MAX_DIST(%struct.TYPE_8__*) #1

declare dso_local i64 @d_code(i32) #1

declare dso_local i32 @Tracev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
