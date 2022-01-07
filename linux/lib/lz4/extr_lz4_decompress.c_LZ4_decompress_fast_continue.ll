; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_fast_continue.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4_decompress.c_LZ4_decompress_fast_continue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32*, i32* }

@KB = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @LZ4_decompress_fast_continue(%struct.TYPE_5__* %0, i8* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_5__*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.TYPE_4__*, align 8
  %11 = alloca i32, align 4
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %6, align 8
  store i8* %1, i8** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** %6, align 8
  %13 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %12, i32 0, i32 0
  store %struct.TYPE_4__* %13, %struct.TYPE_4__** %10, align 8
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %18, label %44

18:                                               ; preds = %4
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp eq i32 %21, 0
  %23 = zext i1 %22 to i32
  %24 = call i32 @assert(i32 %23)
  %25 = load i8*, i8** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = call i32 @LZ4_decompress_fast(i8* %25, i8* %26, i32 %27)
  store i32 %28, i32* %11, align 4
  %29 = load i32, i32* %11, align 4
  %30 = icmp sle i32 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %18
  %32 = load i32, i32* %11, align 4
  store i32 %32, i32* %5, align 4
  br label %145

33:                                               ; preds = %18
  %34 = load i32, i32* %9, align 4
  %35 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 0
  store i32 %34, i32* %36, align 8
  %37 = load i8*, i8** %8, align 8
  %38 = bitcast i8* %37 to i32*
  %39 = load i32, i32* %9, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds i32, i32* %38, i64 %40
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 2
  store i32* %41, i32** %43, align 8
  br label %143

44:                                               ; preds = %4
  %45 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 2
  %47 = load i32*, i32** %46, align 8
  %48 = load i8*, i8** %8, align 8
  %49 = bitcast i8* %48 to i32*
  %50 = icmp eq i32* %47, %49
  br i1 %50, label %51, label %100

51:                                               ; preds = %44
  %52 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %53 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* @KB, align 4
  %56 = mul nsw i32 64, %55
  %57 = sub nsw i32 %56, 1
  %58 = icmp sge i32 %54, %57
  br i1 %58, label %64, label %59

59:                                               ; preds = %51
  %60 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %61 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 0
  br i1 %63, label %64, label %69

64:                                               ; preds = %59, %51
  %65 = load i8*, i8** %7, align 8
  %66 = load i8*, i8** %8, align 8
  %67 = load i32, i32* %9, align 4
  %68 = call i32 @LZ4_decompress_fast(i8* %65, i8* %66, i32 %67)
  store i32 %68, i32* %11, align 4
  br label %83

69:                                               ; preds = %59
  %70 = load i8*, i8** %7, align 8
  %71 = load i8*, i8** %8, align 8
  %72 = load i32, i32* %9, align 4
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 3
  %78 = load i32*, i32** %77, align 8
  %79 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 1
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @LZ4_decompress_fast_doubleDict(i8* %70, i8* %71, i32 %72, i32 %75, i32* %78, i32 %81)
  store i32 %82, i32* %11, align 4
  br label %83

83:                                               ; preds = %69, %64
  %84 = load i32, i32* %11, align 4
  %85 = icmp sle i32 %84, 0
  br i1 %85, label %86, label %88

86:                                               ; preds = %83
  %87 = load i32, i32* %11, align 4
  store i32 %87, i32* %5, align 4
  br label %145

88:                                               ; preds = %83
  %89 = load i32, i32* %9, align 4
  %90 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 8
  %93 = add nsw i32 %92, %89
  store i32 %93, i32* %91, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %96 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %95, i32 0, i32 2
  %97 = load i32*, i32** %96, align 8
  %98 = sext i32 %94 to i64
  %99 = getelementptr inbounds i32, i32* %97, i64 %98
  store i32* %99, i32** %96, align 8
  br label %142

100:                                              ; preds = %44
  %101 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %105 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %104, i32 0, i32 1
  store i32 %103, i32* %105, align 4
  %106 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %107 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %106, i32 0, i32 2
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %110 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = sext i32 %111 to i64
  %113 = sub i64 0, %112
  %114 = getelementptr inbounds i32, i32* %108, i64 %113
  %115 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %116 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %115, i32 0, i32 3
  store i32* %114, i32** %116, align 8
  %117 = load i8*, i8** %7, align 8
  %118 = load i8*, i8** %8, align 8
  %119 = load i32, i32* %9, align 4
  %120 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %121 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %120, i32 0, i32 3
  %122 = load i32*, i32** %121, align 8
  %123 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %124 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %123, i32 0, i32 1
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @LZ4_decompress_fast_extDict(i8* %117, i8* %118, i32 %119, i32* %122, i32 %125)
  store i32 %126, i32* %11, align 4
  %127 = load i32, i32* %11, align 4
  %128 = icmp sle i32 %127, 0
  br i1 %128, label %129, label %131

129:                                              ; preds = %100
  %130 = load i32, i32* %11, align 4
  store i32 %130, i32* %5, align 4
  br label %145

131:                                              ; preds = %100
  %132 = load i32, i32* %9, align 4
  %133 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %134 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %133, i32 0, i32 0
  store i32 %132, i32* %134, align 8
  %135 = load i8*, i8** %8, align 8
  %136 = bitcast i8* %135 to i32*
  %137 = load i32, i32* %9, align 4
  %138 = sext i32 %137 to i64
  %139 = getelementptr inbounds i32, i32* %136, i64 %138
  %140 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %141 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %140, i32 0, i32 2
  store i32* %139, i32** %141, align 8
  br label %142

142:                                              ; preds = %131, %88
  br label %143

143:                                              ; preds = %142, %33
  %144 = load i32, i32* %11, align 4
  store i32 %144, i32* %5, align 4
  br label %145

145:                                              ; preds = %143, %129, %86, %31
  %146 = load i32, i32* %5, align 4
  ret i32 %146
}

declare dso_local i32 @assert(i32) #1

declare dso_local i32 @LZ4_decompress_fast(i8*, i8*, i32) #1

declare dso_local i32 @LZ4_decompress_fast_doubleDict(i8*, i8*, i32, i32, i32*, i32) #1

declare dso_local i32 @LZ4_decompress_fast_extDict(i8*, i8*, i32, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
