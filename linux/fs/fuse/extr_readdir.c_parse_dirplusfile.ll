; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_parse_dirplusfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_parse_dirplusfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.fuse_direntplus = type { %struct.TYPE_2__, %struct.fuse_dirent }
%struct.TYPE_2__ = type { i32 }
%struct.fuse_dirent = type { i64, i32, i32 }

@FUSE_NAME_OFFSET_DIRENTPLUS = common dso_local global i64 0, align 8
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.file*, %struct.dir_context*, i32)* @parse_dirplusfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dirplusfile(i8* %0, i64 %1, %struct.file* %2, %struct.dir_context* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.file*, align 8
  %10 = alloca %struct.dir_context*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.fuse_direntplus*, align 8
  %13 = alloca %struct.fuse_dirent*, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store i8* %0, i8** %7, align 8
  store i64 %1, i64* %8, align 8
  store %struct.file* %2, %struct.file** %9, align 8
  store %struct.dir_context* %3, %struct.dir_context** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %15, align 4
  br label %17

17:                                               ; preds = %98, %5
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* @FUSE_NAME_OFFSET_DIRENTPLUS, align 8
  %20 = icmp uge i64 %18, %19
  br i1 %20, label %21, label %99

21:                                               ; preds = %17
  %22 = load i8*, i8** %7, align 8
  %23 = bitcast i8* %22 to %struct.fuse_direntplus*
  store %struct.fuse_direntplus* %23, %struct.fuse_direntplus** %12, align 8
  %24 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %12, align 8
  %25 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %24, i32 0, i32 1
  store %struct.fuse_dirent* %25, %struct.fuse_dirent** %13, align 8
  %26 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %12, align 8
  %27 = call i64 @FUSE_DIRENTPLUS_SIZE(%struct.fuse_direntplus* %26)
  store i64 %27, i64* %14, align 8
  %28 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %29 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %38

32:                                               ; preds = %21
  %33 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %34 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = load i64, i64* @FUSE_NAME_MAX, align 8
  %37 = icmp sgt i64 %35, %36
  br i1 %37, label %38, label %41

38:                                               ; preds = %32, %21
  %39 = load i32, i32* @EIO, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %100

41:                                               ; preds = %32
  %42 = load i64, i64* %14, align 8
  %43 = load i64, i64* %8, align 8
  %44 = icmp ugt i64 %42, %43
  br i1 %44, label %45, label %46

45:                                               ; preds = %41
  br label %99

46:                                               ; preds = %41
  %47 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %48 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %51 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = call i32* @memchr(i32 %49, i8 signext 47, i64 %52)
  %54 = icmp ne i32* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @EIO, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %6, align 4
  br label %100

58:                                               ; preds = %46
  %59 = load i32, i32* %15, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %78, label %61

61:                                               ; preds = %58
  %62 = load %struct.file*, %struct.file** %9, align 8
  %63 = load %struct.dir_context*, %struct.dir_context** %10, align 8
  %64 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %65 = call i32 @fuse_emit(%struct.file* %62, %struct.dir_context* %63, %struct.fuse_dirent* %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  store i32 %68, i32* %15, align 4
  %69 = load i32, i32* %15, align 4
  %70 = icmp ne i32 %69, 0
  br i1 %70, label %77, label %71

71:                                               ; preds = %61
  %72 = load %struct.fuse_dirent*, %struct.fuse_dirent** %13, align 8
  %73 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 8
  %75 = load %struct.dir_context*, %struct.dir_context** %10, align 8
  %76 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %75, i32 0, i32 0
  store i32 %74, i32* %76, align 4
  br label %77

77:                                               ; preds = %71, %61
  br label %78

78:                                               ; preds = %77, %58
  %79 = load i64, i64* %14, align 8
  %80 = load i8*, i8** %7, align 8
  %81 = getelementptr inbounds i8, i8* %80, i64 %79
  store i8* %81, i8** %7, align 8
  %82 = load i64, i64* %14, align 8
  %83 = load i64, i64* %8, align 8
  %84 = sub i64 %83, %82
  store i64 %84, i64* %8, align 8
  %85 = load %struct.file*, %struct.file** %9, align 8
  %86 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %12, align 8
  %87 = load i32, i32* %11, align 4
  %88 = call i32 @fuse_direntplus_link(%struct.file* %85, %struct.fuse_direntplus* %86, i32 %87)
  store i32 %88, i32* %16, align 4
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %91, label %98

91:                                               ; preds = %78
  %92 = load %struct.file*, %struct.file** %9, align 8
  %93 = load %struct.fuse_direntplus*, %struct.fuse_direntplus** %12, align 8
  %94 = getelementptr inbounds %struct.fuse_direntplus, %struct.fuse_direntplus* %93, i32 0, i32 0
  %95 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = call i32 @fuse_force_forget(%struct.file* %92, i32 %96)
  br label %98

98:                                               ; preds = %91, %78
  br label %17

99:                                               ; preds = %45, %17
  store i32 0, i32* %6, align 4
  br label %100

100:                                              ; preds = %99, %55, %38
  %101 = load i32, i32* %6, align 4
  ret i32 %101
}

declare dso_local i64 @FUSE_DIRENTPLUS_SIZE(%struct.fuse_direntplus*) #1

declare dso_local i32* @memchr(i32, i8 signext, i64) #1

declare dso_local i32 @fuse_emit(%struct.file*, %struct.dir_context*, %struct.fuse_dirent*) #1

declare dso_local i32 @fuse_direntplus_link(%struct.file*, %struct.fuse_direntplus*, i32) #1

declare dso_local i32 @fuse_force_forget(%struct.file*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
