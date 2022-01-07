; ModuleID = '/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_parse_dirfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fuse/extr_readdir.c_parse_dirfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.dir_context = type { i32 }
%struct.fuse_dirent = type { i64, i32, i32 }

@FUSE_NAME_OFFSET = common dso_local global i64 0, align 8
@FUSE_NAME_MAX = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i64, %struct.file*, %struct.dir_context*)* @parse_dirfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @parse_dirfile(i8* %0, i64 %1, %struct.file* %2, %struct.dir_context* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.file*, align 8
  %9 = alloca %struct.dir_context*, align 8
  %10 = alloca %struct.fuse_dirent*, align 8
  %11 = alloca i64, align 8
  store i8* %0, i8** %6, align 8
  store i64 %1, i64* %7, align 8
  store %struct.file* %2, %struct.file** %8, align 8
  store %struct.dir_context* %3, %struct.dir_context** %9, align 8
  br label %12

12:                                               ; preds = %58, %4
  %13 = load i64, i64* %7, align 8
  %14 = load i64, i64* @FUSE_NAME_OFFSET, align 8
  %15 = icmp uge i64 %13, %14
  br i1 %15, label %16, label %70

16:                                               ; preds = %12
  %17 = load i8*, i8** %6, align 8
  %18 = bitcast i8* %17 to %struct.fuse_dirent*
  store %struct.fuse_dirent* %18, %struct.fuse_dirent** %10, align 8
  %19 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %20 = call i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent* %19)
  store i64 %20, i64* %11, align 8
  %21 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %22 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %31

25:                                               ; preds = %16
  %26 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %27 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @FUSE_NAME_MAX, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %25, %16
  %32 = load i32, i32* @EIO, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %5, align 4
  br label %71

34:                                               ; preds = %25
  %35 = load i64, i64* %11, align 8
  %36 = load i64, i64* %7, align 8
  %37 = icmp ugt i64 %35, %36
  br i1 %37, label %38, label %39

38:                                               ; preds = %34
  br label %70

39:                                               ; preds = %34
  %40 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %41 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %44 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = call i32* @memchr(i32 %42, i8 signext 47, i64 %45)
  %47 = icmp ne i32* %46, null
  br i1 %47, label %48, label %51

48:                                               ; preds = %39
  %49 = load i32, i32* @EIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %5, align 4
  br label %71

51:                                               ; preds = %39
  %52 = load %struct.file*, %struct.file** %8, align 8
  %53 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %54 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %55 = call i32 @fuse_emit(%struct.file* %52, %struct.dir_context* %53, %struct.fuse_dirent* %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %70

58:                                               ; preds = %51
  %59 = load i64, i64* %11, align 8
  %60 = load i8*, i8** %6, align 8
  %61 = getelementptr inbounds i8, i8* %60, i64 %59
  store i8* %61, i8** %6, align 8
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %7, align 8
  %64 = sub i64 %63, %62
  store i64 %64, i64* %7, align 8
  %65 = load %struct.fuse_dirent*, %struct.fuse_dirent** %10, align 8
  %66 = getelementptr inbounds %struct.fuse_dirent, %struct.fuse_dirent* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.dir_context*, %struct.dir_context** %9, align 8
  %69 = getelementptr inbounds %struct.dir_context, %struct.dir_context* %68, i32 0, i32 0
  store i32 %67, i32* %69, align 4
  br label %12

70:                                               ; preds = %57, %38, %12
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %48, %31
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local i64 @FUSE_DIRENT_SIZE(%struct.fuse_dirent*) #1

declare dso_local i32* @memchr(i32, i8 signext, i64) #1

declare dso_local i32 @fuse_emit(%struct.file*, %struct.dir_context*, %struct.fuse_dirent*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
