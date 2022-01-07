; ModuleID = '/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_hangul_decompose.c'
source_filename = "/home/carl/AnghaBench/linux/fs/unicode/extr_mkutf8data.c_hangul_decompose.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32*, i32*, i8* }

@verbose = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"Decomposing hangul\0A\00", align 1
@unicode_data = common dso_local global %struct.TYPE_2__* null, align 8
@HANGUL = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [20 x i8] c"Created %d entries\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @hangul_decompose to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hangul_decompose() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca [4 x i32], align 16
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i32 44032, i32* %1, align 4
  store i32 4352, i32* %2, align 4
  store i32 4449, i32* %3, align 4
  store i32 4519, i32* %4, align 4
  store i32 21, i32* %5, align 4
  store i32 28, i32* %6, align 4
  %17 = load i32, i32* %5, align 4
  %18 = load i32, i32* %6, align 4
  %19 = mul i32 %17, %18
  store i32 %19, i32* %7, align 4
  %20 = load i32, i32* @verbose, align 4
  %21 = icmp sgt i32 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %0
  %23 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  br label %24

24:                                               ; preds = %22, %0
  store i32 0, i32* %11, align 4
  store i32 44032, i32* %8, align 4
  br label %25

25:                                               ; preds = %159, %24
  %26 = load i32, i32* %8, align 4
  %27 = icmp ule i32 %26, 55203
  br i1 %27, label %28, label %162

28:                                               ; preds = %25
  %29 = load i32, i32* %8, align 4
  %30 = load i32, i32* %1, align 4
  %31 = sub i32 %29, %30
  store i32 %31, i32* %13, align 4
  %32 = load i32, i32* %13, align 4
  %33 = load i32, i32* %7, align 4
  %34 = udiv i32 %32, %33
  store i32 %34, i32* %14, align 4
  %35 = load i32, i32* %13, align 4
  %36 = load i32, i32* %7, align 4
  %37 = urem i32 %35, %36
  %38 = load i32, i32* %6, align 4
  %39 = udiv i32 %37, %38
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %13, align 4
  %41 = load i32, i32* %6, align 4
  %42 = urem i32 %40, %41
  store i32 %42, i32* %16, align 4
  store i32 0, i32* %12, align 4
  %43 = load i32, i32* %2, align 4
  %44 = load i32, i32* %14, align 4
  %45 = add i32 %43, %44
  %46 = load i32, i32* %12, align 4
  %47 = add nsw i32 %46, 1
  store i32 %47, i32* %12, align 4
  %48 = sext i32 %46 to i64
  %49 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %48
  store i32 %45, i32* %49, align 4
  %50 = load i32, i32* %3, align 4
  %51 = load i32, i32* %15, align 4
  %52 = add i32 %50, %51
  %53 = load i32, i32* %12, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %12, align 4
  %55 = sext i32 %53 to i64
  %56 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %55
  store i32 %52, i32* %56, align 4
  %57 = load i32, i32* %16, align 4
  %58 = icmp ne i32 %57, 0
  br i1 %58, label %59, label %67

59:                                               ; preds = %28
  %60 = load i32, i32* %4, align 4
  %61 = load i32, i32* %16, align 4
  %62 = add i32 %60, %61
  %63 = load i32, i32* %12, align 4
  %64 = add nsw i32 %63, 1
  store i32 %64, i32* %12, align 4
  %65 = sext i32 %63 to i64
  %66 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %65
  store i32 %62, i32* %66, align 4
  br label %67

67:                                               ; preds = %59, %28
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 1
  store i32 %69, i32* %12, align 4
  %70 = sext i32 %68 to i64
  %71 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 %70
  store i32 0, i32* %71, align 4
  %72 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %73 = load i32, i32* %8, align 4
  %74 = zext i32 %73 to i64
  %75 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %72, i64 %74
  %76 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %75, i32 0, i32 0
  %77 = load i32*, i32** %76, align 8
  %78 = icmp ne i32* %77, null
  %79 = xor i1 %78, true
  %80 = zext i1 %79 to i32
  %81 = call i32 @assert(i32 %80)
  %82 = load i32, i32* %12, align 4
  %83 = sext i32 %82 to i64
  %84 = mul i64 %83, 4
  %85 = trunc i64 %84 to i32
  %86 = call i8* @malloc(i32 %85)
  %87 = bitcast i8* %86 to i32*
  store i32* %87, i32** %10, align 8
  %88 = load i32*, i32** %10, align 8
  %89 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %90 = load i32, i32* %12, align 4
  %91 = sext i32 %90 to i64
  %92 = mul i64 %91, 4
  %93 = trunc i64 %92 to i32
  %94 = call i32 @memcpy(i32* %88, i32* %89, i32 %93)
  %95 = load i32*, i32** %10, align 8
  %96 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %97 = load i32, i32* %8, align 4
  %98 = zext i32 %97 to i64
  %99 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i64 %98
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 0
  store i32* %95, i32** %100, align 8
  %101 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %102 = load i32, i32* %8, align 4
  %103 = zext i32 %102 to i64
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i64 %103
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 1
  %106 = load i32*, i32** %105, align 8
  %107 = icmp ne i32* %106, null
  %108 = xor i1 %107, true
  %109 = zext i1 %108 to i32
  %110 = call i32 @assert(i32 %109)
  %111 = load i32, i32* %12, align 4
  %112 = sext i32 %111 to i64
  %113 = mul i64 %112, 4
  %114 = trunc i64 %113 to i32
  %115 = call i8* @malloc(i32 %114)
  %116 = bitcast i8* %115 to i32*
  store i32* %116, i32** %10, align 8
  %117 = load i32*, i32** %10, align 8
  %118 = getelementptr inbounds [4 x i32], [4 x i32]* %9, i64 0, i64 0
  %119 = load i32, i32* %12, align 4
  %120 = sext i32 %119 to i64
  %121 = mul i64 %120, 4
  %122 = trunc i64 %121 to i32
  %123 = call i32 @memcpy(i32* %117, i32* %118, i32 %122)
  %124 = load i32*, i32** %10, align 8
  %125 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %126 = load i32, i32* %8, align 4
  %127 = zext i32 %126 to i64
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %125, i64 %127
  %129 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %128, i32 0, i32 1
  store i32* %124, i32** %129, align 8
  %130 = call i8* @malloc(i32 2)
  %131 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %132 = load i32, i32* %8, align 4
  %133 = zext i32 %132 to i64
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %131, i64 %133
  %135 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %134, i32 0, i32 2
  store i8* %130, i8** %135, align 8
  %136 = load i8, i8* @HANGUL, align 1
  %137 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %138 = load i32, i32* %8, align 4
  %139 = zext i32 %138 to i64
  %140 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %137, i64 %139
  %141 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %140, i32 0, i32 2
  %142 = load i8*, i8** %141, align 8
  %143 = getelementptr inbounds i8, i8* %142, i64 0
  store i8 %136, i8* %143, align 1
  %144 = load %struct.TYPE_2__*, %struct.TYPE_2__** @unicode_data, align 8
  %145 = load i32, i32* %8, align 4
  %146 = zext i32 %145 to i64
  %147 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %144, i64 %146
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i8*, i8** %148, align 8
  %150 = getelementptr inbounds i8, i8* %149, i64 1
  store i8 0, i8* %150, align 1
  %151 = load i32, i32* @verbose, align 4
  %152 = icmp sgt i32 %151, 1
  br i1 %152, label %153, label %156

153:                                              ; preds = %67
  %154 = load i32, i32* %8, align 4
  %155 = call i32 @print_utf32nfdi(i32 %154)
  br label %156

156:                                              ; preds = %153, %67
  %157 = load i32, i32* %11, align 4
  %158 = add nsw i32 %157, 1
  store i32 %158, i32* %11, align 4
  br label %159

159:                                              ; preds = %156
  %160 = load i32, i32* %8, align 4
  %161 = add i32 %160, 1
  store i32 %161, i32* %8, align 4
  br label %25

162:                                              ; preds = %25
  %163 = load i32, i32* @verbose, align 4
  %164 = icmp sgt i32 %163, 0
  br i1 %164, label %165, label %168

165:                                              ; preds = %162
  %166 = load i32, i32* %11, align 4
  %167 = call i32 (i8*, ...) @printf(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %166)
  br label %168

168:                                              ; preds = %165, %162
  ret void
}

declare dso_local i32 @printf(i8*, ...) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i8* @malloc(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @print_utf32nfdi(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
