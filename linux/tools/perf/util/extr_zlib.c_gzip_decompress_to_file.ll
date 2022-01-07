; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_zlib.c_gzip_decompress_to_file.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_zlib.c_gzip_decompress_to_file.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.stat = type { i32 }
%struct.TYPE_5__ = type { i8*, i32, i32, i8*, i8*, i8*, i8* }

@Z_STREAM_ERROR = common dso_local global i32 0, align 4
@CHUNK_SIZE = common dso_local global i32 0, align 4
@Z_NULL = common dso_local global i8* null, align 8
@O_RDONLY = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@MAP_PRIVATE = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@MAX_WBITS = common dso_local global i64 0, align 8
@Z_OK = common dso_local global i64 0, align 8
@Z_NO_FLUSH = common dso_local global i32 0, align 4
@Z_STREAM_END = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @gzip_decompress_to_file(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.stat, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.TYPE_5__, align 8
  %14 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %15 = load i32, i32* @Z_STREAM_ERROR, align 4
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* @CHUNK_SIZE, align 4
  %17 = zext i32 %16 to i64
  %18 = call i8* @llvm.stacksave()
  store i8* %18, i8** %11, align 8
  %19 = alloca i8, i64 %17, align 16
  store i64 %17, i64* %12, align 8
  %20 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i8* null, i8** %20, align 8
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 0, i32* %21, align 8
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 0, i32* %22, align 4
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  %24 = load i8*, i8** @Z_NULL, align 8
  store i8* %24, i8** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 4
  %26 = load i8*, i8** @Z_NULL, align 8
  store i8* %26, i8** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 5
  %28 = load i8*, i8** @Z_NULL, align 8
  store i8* %28, i8** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 6
  %30 = load i8*, i8** @Z_NULL, align 8
  store i8* %30, i8** %29, align 8
  %31 = load i8*, i8** %4, align 8
  %32 = load i32, i32* @O_RDONLY, align 4
  %33 = call i32 @open(i8* %31, i32 %32)
  store i32 %33, i32* %7, align 4
  %34 = load i32, i32* %7, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %37

36:                                               ; preds = %2
  store i32 -1, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %108

37:                                               ; preds = %2
  %38 = load i32, i32* %7, align 4
  %39 = call i64 @fstat(i32 %38, %struct.stat* %10)
  %40 = icmp slt i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %37
  br label %100

42:                                               ; preds = %37
  %43 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* @PROT_READ, align 4
  %46 = load i32, i32* @MAP_PRIVATE, align 4
  %47 = load i32, i32* %7, align 4
  %48 = call i8* @mmap(i32* null, i32 %44, i32 %45, i32 %46, i32 %47, i32 0)
  store i8* %48, i8** %8, align 8
  %49 = load i8*, i8** %8, align 8
  %50 = load i8*, i8** @MAP_FAILED, align 8
  %51 = icmp eq i8* %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %42
  br label %100

53:                                               ; preds = %42
  %54 = load i64, i64* @MAX_WBITS, align 8
  %55 = add nsw i64 16, %54
  %56 = call i64 @inflateInit2(%struct.TYPE_5__* %13, i64 %55)
  %57 = load i64, i64* @Z_OK, align 8
  %58 = icmp ne i64 %56, %57
  br i1 %58, label %59, label %60

59:                                               ; preds = %53
  br label %95

60:                                               ; preds = %53
  %61 = load i8*, i8** %8, align 8
  %62 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 3
  store i8* %61, i8** %62, align 8
  %63 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 2
  store i32 %64, i32* %65, align 4
  br label %66

66:                                               ; preds = %88, %60
  %67 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 0
  store i8* %19, i8** %67, align 8
  %68 = load i32, i32* @CHUNK_SIZE, align 4
  %69 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  store i32 %68, i32* %69, align 8
  %70 = load i32, i32* @Z_NO_FLUSH, align 4
  %71 = call i32 @inflate(%struct.TYPE_5__* %13, i32 %70)
  store i32 %71, i32* %6, align 4
  %72 = load i32, i32* %6, align 4
  switch i32 %72, label %75 [
    i32 128, label %73
    i32 130, label %74
    i32 129, label %74
  ]

73:                                               ; preds = %66
  store i32 130, i32* %6, align 4
  br label %74

74:                                               ; preds = %66, %66, %73
  br label %93

75:                                               ; preds = %66
  br label %76

76:                                               ; preds = %75
  %77 = load i32, i32* @CHUNK_SIZE, align 4
  %78 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %13, i32 0, i32 1
  %79 = load i32, i32* %78, align 8
  %80 = sub nsw i32 %77, %79
  store i32 %80, i32* %9, align 4
  %81 = load i32, i32* %5, align 4
  %82 = load i32, i32* %9, align 4
  %83 = call i32 @writen(i32 %81, i8* %19, i32 %82)
  %84 = load i32, i32* %9, align 4
  %85 = icmp ne i32 %83, %84
  br i1 %85, label %86, label %87

86:                                               ; preds = %76
  store i32 130, i32* %6, align 4
  br label %93

87:                                               ; preds = %76
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %6, align 4
  %90 = load i32, i32* @Z_STREAM_END, align 4
  %91 = icmp ne i32 %89, %90
  br i1 %91, label %66, label %92

92:                                               ; preds = %88
  br label %93

93:                                               ; preds = %92, %86, %74
  %94 = call i32 @inflateEnd(%struct.TYPE_5__* %13)
  br label %95

95:                                               ; preds = %93, %59
  %96 = load i8*, i8** %8, align 8
  %97 = getelementptr inbounds %struct.stat, %struct.stat* %10, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @munmap(i8* %96, i32 %98)
  br label %100

100:                                              ; preds = %95, %52, %41
  %101 = load i32, i32* %7, align 4
  %102 = call i32 @close(i32 %101)
  %103 = load i32, i32* %6, align 4
  %104 = load i32, i32* @Z_STREAM_END, align 4
  %105 = icmp eq i32 %103, %104
  %106 = zext i1 %105 to i64
  %107 = select i1 %105, i32 0, i32 -1
  store i32 %107, i32* %3, align 4
  store i32 1, i32* %14, align 4
  br label %108

108:                                              ; preds = %100, %36
  %109 = load i8*, i8** %11, align 8
  call void @llvm.stackrestore(i8* %109)
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @open(i8*, i32) #2

declare dso_local i64 @fstat(i32, %struct.stat*) #2

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #2

declare dso_local i64 @inflateInit2(%struct.TYPE_5__*, i64) #2

declare dso_local i32 @inflate(%struct.TYPE_5__*, i32) #2

declare dso_local i32 @writen(i32, i8*, i32) #2

declare dso_local i32 @inflateEnd(%struct.TYPE_5__*) #2

declare dso_local i32 @munmap(i8*, i32) #2

declare dso_local i32 @close(i32) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
