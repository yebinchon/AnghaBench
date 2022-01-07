; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_lzma.c_lzma_decompress_to_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_lzma.c_lzma_decompress_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i64, i32, i32*, i32* }

@LZMA_RUN = common dso_local global i32 0, align 4
@LZMA_STREAM_INIT = common dso_local global %struct.TYPE_5__ zeroinitializer, align 8
@BUFSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"rb\00", align 1
@.str.1 = private unnamed_addr constant [32 x i8] c"lzma: fopen failed on %s: '%s'\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@UINT64_MAX = common dso_local global i32 0, align 4
@LZMA_CONCATENATED = common dso_local global i32 0, align 4
@LZMA_OK = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [42 x i8] c"lzma: lzma_stream_decoder failed %s (%d)\0A\00", align 1
@.str.3 = private unnamed_addr constant [22 x i8] c"lzma: read error: %s\0A\00", align 1
@LZMA_FINISH = common dso_local global i32 0, align 4
@LZMA_STREAM_END = common dso_local global i64 0, align 8
@.str.4 = private unnamed_addr constant [23 x i8] c"lzma: write error: %s\0A\00", align 1
@.str.5 = private unnamed_addr constant [17 x i8] c"lzma: failed %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @lzma_decompress_to_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.TYPE_5__, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %16 = load i32, i32* @LZMA_RUN, align 4
  store i32 %16, i32* %6, align 4
  %17 = bitcast %struct.TYPE_5__* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %17, i8* align 8 bitcast (%struct.TYPE_5__* @LZMA_STREAM_INIT to i8*), i64 32, i1 false)
  store i32 -1, i32* %9, align 4
  %18 = load i32, i32* @BUFSIZE, align 4
  %19 = zext i32 %18 to i64
  %20 = call i8* @llvm.stacksave()
  store i8* %20, i8** %10, align 8
  %21 = alloca i32, i64 %19, align 16
  store i64 %19, i64* %11, align 8
  %22 = load i32, i32* @BUFSIZE, align 4
  %23 = zext i32 %22 to i64
  %24 = alloca i32, i64 %23, align 16
  store i64 %23, i64* %12, align 8
  %25 = load i8*, i8** %4, align 8
  %26 = call i32* @fopen(i8* %25, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  store i32* %26, i32** %13, align 8
  %27 = load i32*, i32** %13, align 8
  %28 = icmp ne i32* %27, null
  br i1 %28, label %34, label %29

29:                                               ; preds = %2
  %30 = load i8*, i8** %4, align 8
  %31 = load i32, i32* @errno, align 4
  %32 = call i32 @strerror(i32 %31)
  %33 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i8* %30, i32 %32)
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %140

34:                                               ; preds = %2
  %35 = load i32, i32* @UINT64_MAX, align 4
  %36 = load i32, i32* @LZMA_CONCATENATED, align 4
  %37 = call i64 @lzma_stream_decoder(%struct.TYPE_5__* %7, i32 %35, i32 %36)
  store i64 %37, i64* %8, align 8
  %38 = load i64, i64* %8, align 8
  %39 = load i64, i64* @LZMA_OK, align 8
  %40 = icmp ne i64 %38, %39
  br i1 %40, label %41, label %48

41:                                               ; preds = %34
  %42 = load i64, i64* %8, align 8
  %43 = call i32 @lzma_strerror(i64 %42)
  %44 = sext i32 %43 to i64
  %45 = inttoptr i64 %44 to i8*
  %46 = load i64, i64* %8, align 8
  %47 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.2, i64 0, i64 0), i8* %45, i64 %46)
  br label %136

48:                                               ; preds = %34
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32* null, i32** %49, align 8
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 0, i64* %50, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32* %24, i32** %51, align 8
  %52 = mul nuw i64 4, %23
  %53 = trunc i64 %52 to i32
  %54 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %53, i32* %54, align 8
  br label %55

55:                                               ; preds = %134, %48
  br label %56

56:                                               ; preds = %55
  %57 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp eq i64 %58, 0
  br i1 %59, label %60, label %87

60:                                               ; preds = %56
  %61 = load i32*, i32** %13, align 8
  %62 = call i64 @feof(i32* %61)
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %87, label %64

64:                                               ; preds = %60
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 3
  store i32* %21, i32** %65, align 8
  %66 = mul nuw i64 4, %19
  %67 = trunc i64 %66 to i32
  %68 = load i32*, i32** %13, align 8
  %69 = call i64 @fread(i32* %21, i32 1, i32 %67, i32* %68)
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 0
  store i64 %69, i64* %70, align 8
  %71 = load i32*, i32** %13, align 8
  %72 = call i64 @ferror(i32* %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %80

74:                                               ; preds = %64
  %75 = load i32, i32* @errno, align 4
  %76 = call i32 @strerror(i32 %75)
  %77 = sext i32 %76 to i64
  %78 = inttoptr i64 %77 to i8*
  %79 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.3, i64 0, i64 0), i8* %78)
  br label %136

80:                                               ; preds = %64
  %81 = load i32*, i32** %13, align 8
  %82 = call i64 @feof(i32* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %86

84:                                               ; preds = %80
  %85 = load i32, i32* @LZMA_FINISH, align 4
  store i32 %85, i32* %6, align 4
  br label %86

86:                                               ; preds = %84, %80
  br label %87

87:                                               ; preds = %86, %60, %56
  %88 = load i32, i32* %6, align 4
  %89 = call i64 @lzma_code(%struct.TYPE_5__* %7, i32 %88)
  store i64 %89, i64* %8, align 8
  %90 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %91 = load i32, i32* %90, align 8
  %92 = icmp eq i32 %91, 0
  br i1 %92, label %97, label %93

93:                                               ; preds = %87
  %94 = load i64, i64* %8, align 8
  %95 = load i64, i64* @LZMA_STREAM_END, align 8
  %96 = icmp eq i64 %94, %95
  br i1 %96, label %97, label %119

97:                                               ; preds = %93, %87
  %98 = mul nuw i64 4, %23
  %99 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  %100 = load i32, i32* %99, align 8
  %101 = sext i32 %100 to i64
  %102 = sub i64 %98, %101
  store i64 %102, i64* %15, align 8
  %103 = load i32, i32* %5, align 4
  %104 = load i64, i64* %15, align 8
  %105 = call i64 @writen(i32 %103, i32* %24, i64 %104)
  %106 = load i64, i64* %15, align 8
  %107 = icmp ne i64 %105, %106
  br i1 %107, label %108, label %114

108:                                              ; preds = %97
  %109 = load i32, i32* @errno, align 4
  %110 = call i32 @strerror(i32 %109)
  %111 = sext i32 %110 to i64
  %112 = inttoptr i64 %111 to i8*
  %113 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.4, i64 0, i64 0), i8* %112)
  br label %136

114:                                              ; preds = %97
  %115 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 2
  store i32* %24, i32** %115, align 8
  %116 = mul nuw i64 4, %23
  %117 = trunc i64 %116 to i32
  %118 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %7, i32 0, i32 1
  store i32 %117, i32* %118, align 8
  br label %119

119:                                              ; preds = %114, %93
  %120 = load i64, i64* %8, align 8
  %121 = load i64, i64* @LZMA_OK, align 8
  %122 = icmp ne i64 %120, %121
  br i1 %122, label %123, label %134

123:                                              ; preds = %119
  %124 = load i64, i64* %8, align 8
  %125 = load i64, i64* @LZMA_STREAM_END, align 8
  %126 = icmp eq i64 %124, %125
  br i1 %126, label %127, label %128

127:                                              ; preds = %123
  br label %135

128:                                              ; preds = %123
  %129 = load i64, i64* %8, align 8
  %130 = call i32 @lzma_strerror(i64 %129)
  %131 = sext i32 %130 to i64
  %132 = inttoptr i64 %131 to i8*
  %133 = call i32 (i8*, i8*, ...) @pr_err(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.5, i64 0, i64 0), i8* %132)
  br label %136

134:                                              ; preds = %119
  br label %55

135:                                              ; preds = %127
  store i32 0, i32* %9, align 4
  br label %136

136:                                              ; preds = %135, %128, %108, %74, %41
  %137 = load i32*, i32** %13, align 8
  %138 = call i32 @fclose(i32* %137)
  %139 = load i32, i32* %9, align 4
  store i32 %139, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %140

140:                                              ; preds = %136, %29
  %141 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %141)
  %142 = load i32, i32* %3, align 4
  ret i32 %142
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32* @fopen(i8*, i8*) #3

declare dso_local i32 @pr_err(i8*, i8*, ...) #3

declare dso_local i32 @strerror(i32) #3

declare dso_local i64 @lzma_stream_decoder(%struct.TYPE_5__*, i32, i32) #3

declare dso_local i32 @lzma_strerror(i64) #3

declare dso_local i64 @feof(i32*) #3

declare dso_local i64 @fread(i32*, i32, i32, i32*) #3

declare dso_local i64 @ferror(i32*) #3

declare dso_local i64 @lzma_code(%struct.TYPE_5__*, i32) #3

declare dso_local i64 @writen(i32, i32*, i64) #3

declare dso_local i32 @fclose(i32*) #3

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { nounwind }
attributes #3 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
