; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_parse_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_fuse_parse_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fuse_file = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.dir_context = type { i32 }
%struct.fuse_dirent = type { i64, i32, i32, i32, i32 }

@PAGE_MASK = common dso_local global i32 0, align 4
@FOUND_NONE = common dso_local global i32 0, align 4
@FUSE_NAME_OFFSET = common dso_local global i32 0, align 4
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@FOUND_ERR = common dso_local global i32 0, align 4
@FOUND_SOME = common dso_local global i32 0, align 4
@FOUND_ALL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fuse_file*, i8*, i32, %struct.dir_context*)* @fuse_parse_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fuse_parse_cache(%struct.fuse_file* %0, i8* %1, i32 %2, %struct.dir_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fuse_file*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_dirent*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i64, align 8
  store %struct.fuse_file* %0, %struct.fuse_file** %6, align 8
  store i8* %1, i8** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.dir_context* %3, %struct.dir_context** %9, align 8
  %15 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %16 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load i32, i32* @PAGE_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %10, align 4
  %22 = load i32, i32* @FOUND_NONE, align 4
  store i32 %22, i32* %11, align 4
  %23 = load i32, i32* %10, align 4
  %24 = load i32, i32* %8, align 4
  %25 = icmp uge i32 %23, %24
  %26 = zext i1 %25 to i32
  %27 = call i64 @WARN_ON(i32 %26)
  br label %28

28:                                               ; preds = %117, %4
  %29 = load i8*, i8** %7, align 8
  %30 = load i32, i32* %10, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr i8, i8* %29, i64 %31
  %33 = bitcast i8* %32 to %struct.fuse_dirent*
  store %struct.fuse_dirent* %33, %struct.fuse_dirent** %12, align 8
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* %10, align 4
  %36 = sub i32 %34, %35
  store i32 %36, i32* %13, align 4
  %37 = load i32, i32* %13, align 4
  %38 = load i32, i32* @FUSE_NAME_OFFSET, align 4
  %39 = icmp ult i32 %37, %38
  br i1 %39, label %45, label %40

40:                                               ; preds = %28
  %41 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %42 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %46, label %45

45:                                               ; preds = %40, %28
  br label %137

46:                                               ; preds = %40
  %47 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %48 = call i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent* %47)
  store i64 %48, i64* %14, align 8
  %49 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %50 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %49, i32 0, i32 0
  %51 = load i64, i64* %50, align 8
  %52 = load i64, i64* @FUSE_NAME_MAX, align 8
  %53 = icmp sgt i64 %51, %52
  %54 = zext i1 %53 to i32
  %55 = call i64 @WARN_ON(i32 %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* @FOUND_ERR, align 4
  store i32 %58, i32* %5, align 4
  br label %139

59:                                               ; preds = %46
  %60 = load i64, i64* %14, align 8
  %61 = load i32, i32* %13, align 4
  %62 = zext i32 %61 to i64
  %63 = icmp ugt i64 %60, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @WARN_ON(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %69

67:                                               ; preds = %59
  %68 = load i32, i32* @FOUND_ERR, align 4
  store i32 %68, i32* %5, align 4
  br label %139

69:                                               ; preds = %59
  %70 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %71 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %70, i32 0, i32 4
  %72 = load i32, i32* %71, align 4
  %73 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %74 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = call i32* @memchr(i32 %72, i8 signext 47, i64 %75)
  %77 = icmp ne i32* %76, null
  %78 = zext i1 %77 to i32
  %79 = call i64 @WARN_ON(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %69
  %82 = load i32, i32* @FOUND_ERR, align 4
  store i32 %82, i32* %5, align 4
  br label %139

83:                                               ; preds = %69
  %84 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %85 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %84, i32 0, i32 0
  %86 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %85, i32 0, i32 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %89 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %88, i32 0, i32 0
  %90 = load i32, i32* %89, align 4
  %91 = icmp eq i32 %87, %90
  br i1 %91, label %92, label %117

92:                                               ; preds = %83
  %93 = load i32, i32* @FOUND_SOME, align 4
  store i32 %93, i32* %11, align 4
  %94 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %95 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %96 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %95, i32 0, i32 4
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %99 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %102 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %105 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @dir_emit(%struct.dir_context* %94, i32 %97, i64 %100, i32 %103, i32 %106)
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %111, label %109

109:                                              ; preds = %92
  %110 = load i32, i32* @FOUND_ALL, align 4
  store i32 %110, i32* %5, align 4
  br label %139

111:                                              ; preds = %92
  %112 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %113 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %112, i32 0, i32 1
  %114 = load i32, i32* %113, align 8
  %115 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %116 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %115, i32 0, i32 0
  store i32 %114, i32* %116, align 4
  br label %117

117:                                              ; preds = %111, %83
  %118 = load %struct.fuse_dirent*, %struct.fuse_dirent** %12, align 8
  %119 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %118, i32 0, i32 1
  %120 = load i32, i32* %119, align 8
  %121 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %122 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %121, i32 0, i32 0
  %123 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %122, i32 0, i32 1
  store i32 %120, i32* %123, align 4
  %124 = load i64, i64* %14, align 8
  %125 = load %struct.fuse_file*, %struct.fuse_file** %6, align 8
  %126 = getelementptr inbounds %struct.fuse_file, %struct.fuse_file* %125, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = zext i32 %128 to i64
  %130 = add i64 %129, %124
  %131 = trunc i64 %130 to i32
  store i32 %131, i32* %127, align 4
  %132 = load i64, i64* %14, align 8
  %133 = load i32, i32* %10, align 4
  %134 = zext i32 %133 to i64
  %135 = add i64 %134, %132
  %136 = trunc i64 %135 to i32
  store i32 %136, i32* %10, align 4
  br label %28

137:                                              ; preds = %45
  %138 = load i32, i32* %11, align 4
  store i32 %138, i32* %5, align 4
  br label %139

139:                                              ; preds = %137, %109, %81, %67, %57
  %140 = load i32, i32* %5, align 4
  ret i32 %140
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent*) #1

declare dso_local i32* @memchr(i32, i8 signext, i64) #1

declare dso_local i32 @dir_emit(%struct.dir_context*, i32, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
