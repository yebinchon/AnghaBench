; ModuleID = '/home/carl/AnghaBench/linux/lib/lz4/extr_lz4hc_compress.c_LZ4_compressHC_continue_generic.c'
source_filename = "/home/carl/AnghaBench/linux/lib/lz4/extr_lz4hc_compress.c_LZ4_compressHC_continue_generic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_8__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i64, i32, i32, i32*, i32*, i32* }

@GB = common dso_local global i32 0, align 4
@KB = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.TYPE_8__*, i8*, i8*, i32, i32, i32)* @LZ4_compressHC_continue_generic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @LZ4_compressHC_continue_generic(%struct.TYPE_8__* %0, i8* %1, i8* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.TYPE_8__*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.TYPE_9__*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  store %struct.TYPE_8__* %0, %struct.TYPE_8__** %7, align 8
  store i8* %1, i8** %8, align 8
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  store %struct.TYPE_9__* %19, %struct.TYPE_9__** %13, align 8
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 5
  %22 = load i32*, i32** %21, align 8
  %23 = icmp eq i32* %22, null
  br i1 %23, label %24, label %29

24:                                               ; preds = %6
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = bitcast i8* %26 to i32*
  %28 = call i32 @LZ4HC_init(%struct.TYPE_9__* %25, i32* %27)
  br label %29

29:                                               ; preds = %24, %6
  %30 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %31 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %30, i32 0, i32 4
  %32 = load i32*, i32** %31, align 8
  %33 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %34 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %33, i32 0, i32 5
  %35 = load i32*, i32** %34, align 8
  %36 = ptrtoint i32* %32 to i64
  %37 = ptrtoint i32* %35 to i64
  %38 = sub i64 %36, %37
  %39 = sdiv exact i64 %38, 4
  %40 = load i32, i32* @GB, align 4
  %41 = mul nsw i32 2, %40
  %42 = sext i32 %41 to i64
  %43 = icmp ugt i64 %39, %42
  br i1 %43, label %44, label %80

44:                                               ; preds = %29
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 4
  %47 = load i32*, i32** %46, align 8
  %48 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 5
  %50 = load i32*, i32** %49, align 8
  %51 = ptrtoint i32* %47 to i64
  %52 = ptrtoint i32* %50 to i64
  %53 = sub i64 %51, %52
  %54 = sdiv exact i64 %53, 4
  %55 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %56 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = sub i64 %54, %57
  store i64 %58, i64* %14, align 8
  %59 = load i64, i64* %14, align 8
  %60 = load i32, i32* @KB, align 4
  %61 = mul nsw i32 64, %60
  %62 = sext i32 %61 to i64
  %63 = icmp ugt i64 %59, %62
  br i1 %63, label %64, label %68

64:                                               ; preds = %44
  %65 = load i32, i32* @KB, align 4
  %66 = mul nsw i32 64, %65
  %67 = sext i32 %66 to i64
  store i64 %67, i64* %14, align 8
  br label %68

68:                                               ; preds = %64, %44
  %69 = load %struct.TYPE_8__*, %struct.TYPE_8__** %7, align 8
  %70 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %71 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %70, i32 0, i32 4
  %72 = load i32*, i32** %71, align 8
  %73 = bitcast i32* %72 to i8*
  %74 = load i64, i64* %14, align 8
  %75 = sub i64 0, %74
  %76 = getelementptr inbounds i8, i8* %73, i64 %75
  %77 = load i64, i64* %14, align 8
  %78 = trunc i64 %77 to i32
  %79 = call i32 @LZ4_loadDictHC(%struct.TYPE_8__* %69, i8* %76, i32 %78)
  br label %80

80:                                               ; preds = %68, %29
  %81 = load i8*, i8** %8, align 8
  %82 = bitcast i8* %81 to i32*
  %83 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 4
  %85 = load i32*, i32** %84, align 8
  %86 = icmp ne i32* %82, %85
  br i1 %86, label %87, label %92

87:                                               ; preds = %80
  %88 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %89 = load i8*, i8** %8, align 8
  %90 = bitcast i8* %89 to i32*
  %91 = call i32 @LZ4HC_setExternalDict(%struct.TYPE_9__* %88, i32* %90)
  br label %92

92:                                               ; preds = %87, %80
  %93 = load i8*, i8** %8, align 8
  %94 = bitcast i8* %93 to i32*
  %95 = load i32, i32* %10, align 4
  %96 = sext i32 %95 to i64
  %97 = getelementptr inbounds i32, i32* %94, i64 %96
  store i32* %97, i32** %15, align 8
  %98 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 3
  %100 = load i32*, i32** %99, align 8
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32, i32* %100, i64 %104
  store i32* %105, i32** %16, align 8
  %106 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %107 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %106, i32 0, i32 3
  %108 = load i32*, i32** %107, align 8
  %109 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %110 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = getelementptr inbounds i32, i32* %108, i64 %111
  store i32* %112, i32** %17, align 8
  %113 = load i32*, i32** %15, align 8
  %114 = load i32*, i32** %16, align 8
  %115 = icmp ugt i32* %113, %114
  br i1 %115, label %116, label %156

116:                                              ; preds = %92
  %117 = load i8*, i8** %8, align 8
  %118 = bitcast i8* %117 to i32*
  %119 = load i32*, i32** %17, align 8
  %120 = icmp ult i32* %118, %119
  br i1 %120, label %121, label %156

121:                                              ; preds = %116
  %122 = load i32*, i32** %15, align 8
  %123 = load i32*, i32** %17, align 8
  %124 = icmp ugt i32* %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %121
  %126 = load i32*, i32** %17, align 8
  store i32* %126, i32** %15, align 8
  br label %127

127:                                              ; preds = %125, %121
  %128 = load i32*, i32** %15, align 8
  %129 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %130 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %129, i32 0, i32 3
  %131 = load i32*, i32** %130, align 8
  %132 = ptrtoint i32* %128 to i64
  %133 = ptrtoint i32* %131 to i64
  %134 = sub i64 %132, %133
  %135 = sdiv exact i64 %134, 4
  %136 = trunc i64 %135 to i32
  %137 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 1
  store i32 %136, i32* %138, align 8
  %139 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %140 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %139, i32 0, i32 0
  %141 = load i64, i64* %140, align 8
  %142 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %143 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 8
  %145 = sext i32 %144 to i64
  %146 = sub i64 %141, %145
  %147 = icmp ult i64 %146, 4
  br i1 %147, label %148, label %155

148:                                              ; preds = %127
  %149 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %150 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %149, i32 0, i32 0
  %151 = load i64, i64* %150, align 8
  %152 = trunc i64 %151 to i32
  %153 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %154 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %153, i32 0, i32 1
  store i32 %152, i32* %154, align 8
  br label %155

155:                                              ; preds = %148, %127
  br label %156

156:                                              ; preds = %155, %116, %92
  %157 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %158 = load i8*, i8** %8, align 8
  %159 = load i8*, i8** %9, align 8
  %160 = load i32, i32* %10, align 4
  %161 = load i32, i32* %11, align 4
  %162 = load %struct.TYPE_9__*, %struct.TYPE_9__** %13, align 8
  %163 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %162, i32 0, i32 2
  %164 = load i32, i32* %163, align 4
  %165 = load i32, i32* %12, align 4
  %166 = call i32 @LZ4HC_compress_generic(%struct.TYPE_9__* %157, i8* %158, i8* %159, i32 %160, i32 %161, i32 %164, i32 %165)
  ret i32 %166
}

declare dso_local i32 @LZ4HC_init(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LZ4_loadDictHC(%struct.TYPE_8__*, i8*, i32) #1

declare dso_local i32 @LZ4HC_setExternalDict(%struct.TYPE_9__*, i32*) #1

declare dso_local i32 @LZ4HC_compress_generic(%struct.TYPE_9__*, i8*, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
