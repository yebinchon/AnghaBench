; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_enable_disable_all_channels.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_iio_generic_buffer.c_enable_disable_all_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dirent = type { i8* }

@FORMAT_SCAN_ELEMENTS_DIR = common dso_local global i8* null, align 8
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [44 x i8] c"Enabling/disabling channels: can't open %s\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [4 x i8] c"_en\00", align 1
@.str.2 = private unnamed_addr constant [14 x i8] c"%sabling: %s\0A\00", align 1
@.str.3 = private unnamed_addr constant [3 x i8] c"En\00", align 1
@.str.4 = private unnamed_addr constant [4 x i8] c"Dis\00", align 1
@.str.5 = private unnamed_addr constant [29 x i8] c"Failed to enable/disable %s\0A\00", align 1
@.str.6 = private unnamed_addr constant [55 x i8] c"Enabling/disabling channels: Failed to close directory\00", align 1
@errno = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32)* @enable_disable_all_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @enable_disable_all_channels(i8* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.dirent*, align 8
  %7 = alloca [256 x i8], align 16
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %11 = load i8*, i8** @FORMAT_SCAN_ELEMENTS_DIR, align 8
  %12 = load i8*, i8** %4, align 8
  %13 = call i32 @snprintf(i8* %10, i32 256, i8* %11, i8* %12)
  %14 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 255
  store i8 0, i8* %14, align 1
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %16 = call i32* @opendir(i8* %15)
  store i32* %16, i32** %8, align 8
  %17 = load i32*, i32** %8, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %25, label %19

19:                                               ; preds = %2
  %20 = load i32, i32* @stderr, align 4
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %22 = call i32 @fprintf(i32 %20, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i8* %21)
  %23 = load i32, i32* @EIO, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %73

25:                                               ; preds = %2
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %9, align 4
  br label %28

28:                                               ; preds = %63, %25
  %29 = load i32*, i32** %8, align 8
  %30 = call %struct.dirent* @readdir(i32* %29)
  store %struct.dirent* %30, %struct.dirent** %6, align 8
  %31 = load %struct.dirent*, %struct.dirent** %6, align 8
  %32 = icmp ne %struct.dirent* %31, null
  br i1 %32, label %33, label %64

33:                                               ; preds = %28
  %34 = load %struct.dirent*, %struct.dirent** %6, align 8
  %35 = getelementptr inbounds %struct.dirent, %struct.dirent* %34, i32 0, i32 0
  %36 = load i8*, i8** %35, align 8
  %37 = call i64 @iioutils_check_suffix(i8* %36, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %63

39:                                               ; preds = %33
  %40 = load i32, i32* %5, align 4
  %41 = icmp ne i32 %40, 0
  %42 = zext i1 %41 to i64
  %43 = select i1 %41, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str.3, i64 0, i64 0), i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.4, i64 0, i64 0)
  %44 = load %struct.dirent*, %struct.dirent** %6, align 8
  %45 = getelementptr inbounds %struct.dirent, %struct.dirent* %44, i32 0, i32 0
  %46 = load i8*, i8** %45, align 8
  %47 = call i32 @printf(i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.2, i64 0, i64 0), i8* %43, i8* %46)
  %48 = load %struct.dirent*, %struct.dirent** %6, align 8
  %49 = getelementptr inbounds %struct.dirent, %struct.dirent* %48, i32 0, i32 0
  %50 = load i8*, i8** %49, align 8
  %51 = getelementptr inbounds [256 x i8], [256 x i8]* %7, i64 0, i64 0
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @write_sysfs_int(i8* %50, i8* %51, i32 %52)
  store i32 %53, i32* %9, align 4
  %54 = load i32, i32* %9, align 4
  %55 = icmp slt i32 %54, 0
  br i1 %55, label %56, label %62

56:                                               ; preds = %39
  %57 = load i32, i32* @stderr, align 4
  %58 = load %struct.dirent*, %struct.dirent** %6, align 8
  %59 = getelementptr inbounds %struct.dirent, %struct.dirent* %58, i32 0, i32 0
  %60 = load i8*, i8** %59, align 8
  %61 = call i32 @fprintf(i32 %57, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.5, i64 0, i64 0), i8* %60)
  br label %62

62:                                               ; preds = %56, %39
  br label %63

63:                                               ; preds = %62, %33
  br label %28

64:                                               ; preds = %28
  %65 = load i32*, i32** %8, align 8
  %66 = call i32 @closedir(i32* %65)
  %67 = icmp eq i32 %66, -1
  br i1 %67, label %68, label %72

68:                                               ; preds = %64
  %69 = call i32 @perror(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.6, i64 0, i64 0))
  %70 = load i32, i32* @errno, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %3, align 4
  br label %73

72:                                               ; preds = %64
  store i32 0, i32* %3, align 4
  br label %73

73:                                               ; preds = %72, %68, %19
  %74 = load i32, i32* %3, align 4
  ret i32 %74
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i8*) #1

declare dso_local i32* @opendir(i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i8*) #1

declare dso_local %struct.dirent* @readdir(i32*) #1

declare dso_local i64 @iioutils_check_suffix(i8*, i8*) #1

declare dso_local i32 @printf(i8*, i8*, i8*) #1

declare dso_local i32 @write_sysfs_int(i8*, i8*, i32) #1

declare dso_local i32 @closedir(i32*) #1

declare dso_local i32 @perror(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
