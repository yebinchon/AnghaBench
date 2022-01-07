; ModuleID = '/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_supported_squashfs_filesystem.c'
source_filename = "/home/carl/AnghaBench/linux/fs/squashfs/extr_super.c_supported_squashfs_filesystem.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.squashfs_decompressor = type { i32, i32 }
%struct.fs_context = type { i32 }

@SQUASHFS_MAJOR = common dso_local global i16 0, align 2
@.str = private unnamed_addr constant [71 x i8] c"Major/Minor mismatch, older Squashfs %d.%d filesystems are unsupported\00", align 1
@SQUASHFS_MINOR = common dso_local global i16 0, align 2
@.str.1 = private unnamed_addr constant [61 x i8] c"Major/Minor mismatch, trying to mount newer %d.%d filesystem\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"Please update your kernel\00", align 1
@.str.3 = private unnamed_addr constant [56 x i8] c"Filesystem uses \22%s\22 compression. This is not supported\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.squashfs_decompressor* (%struct.fs_context*, i16, i16, i16)* @supported_squashfs_filesystem to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.squashfs_decompressor* @supported_squashfs_filesystem(%struct.fs_context* %0, i16 signext %1, i16 signext %2, i16 signext %3) #0 {
  %5 = alloca %struct.squashfs_decompressor*, align 8
  %6 = alloca %struct.fs_context*, align 8
  %7 = alloca i16, align 2
  %8 = alloca i16, align 2
  %9 = alloca i16, align 2
  %10 = alloca %struct.squashfs_decompressor*, align 8
  store %struct.fs_context* %0, %struct.fs_context** %6, align 8
  store i16 %1, i16* %7, align 2
  store i16 %2, i16* %8, align 2
  store i16 %3, i16* %9, align 2
  %11 = load i16, i16* %7, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* @SQUASHFS_MAJOR, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp slt i32 %12, %14
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %18 = load i16, i16* %7, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* %8, align 2
  %21 = sext i16 %20 to i32
  %22 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %17, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %21)
  store %struct.squashfs_decompressor* null, %struct.squashfs_decompressor** %5, align 8
  br label %60

23:                                               ; preds = %4
  %24 = load i16, i16* %7, align 2
  %25 = sext i16 %24 to i32
  %26 = load i16, i16* @SQUASHFS_MAJOR, align 2
  %27 = sext i16 %26 to i32
  %28 = icmp sgt i32 %25, %27
  br i1 %28, label %35, label %29

29:                                               ; preds = %23
  %30 = load i16, i16* %8, align 2
  %31 = sext i16 %30 to i32
  %32 = load i16, i16* @SQUASHFS_MINOR, align 2
  %33 = sext i16 %32 to i32
  %34 = icmp sgt i32 %31, %33
  br i1 %34, label %35, label %44

35:                                               ; preds = %29, %23
  %36 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %37 = load i16, i16* %7, align 2
  %38 = sext i16 %37 to i32
  %39 = load i16, i16* %8, align 2
  %40 = sext i16 %39 to i32
  %41 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %36, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0), i32 %38, i32 %40)
  %42 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %43 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %42, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  store %struct.squashfs_decompressor* null, %struct.squashfs_decompressor** %5, align 8
  br label %60

44:                                               ; preds = %29
  br label %45

45:                                               ; preds = %44
  %46 = load i16, i16* %9, align 2
  %47 = call %struct.squashfs_decompressor* @squashfs_lookup_decompressor(i16 signext %46)
  store %struct.squashfs_decompressor* %47, %struct.squashfs_decompressor** %10, align 8
  %48 = load %struct.squashfs_decompressor*, %struct.squashfs_decompressor** %10, align 8
  %49 = getelementptr inbounds %struct.squashfs_decompressor, %struct.squashfs_decompressor* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = icmp ne i32 %50, 0
  br i1 %51, label %58, label %52

52:                                               ; preds = %45
  %53 = load %struct.fs_context*, %struct.fs_context** %6, align 8
  %54 = load %struct.squashfs_decompressor*, %struct.squashfs_decompressor** %10, align 8
  %55 = getelementptr inbounds %struct.squashfs_decompressor, %struct.squashfs_decompressor* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 (%struct.fs_context*, i8*, ...) @errorf(%struct.fs_context* %53, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.3, i64 0, i64 0), i32 %56)
  store %struct.squashfs_decompressor* null, %struct.squashfs_decompressor** %5, align 8
  br label %60

58:                                               ; preds = %45
  %59 = load %struct.squashfs_decompressor*, %struct.squashfs_decompressor** %10, align 8
  store %struct.squashfs_decompressor* %59, %struct.squashfs_decompressor** %5, align 8
  br label %60

60:                                               ; preds = %58, %52, %35, %16
  %61 = load %struct.squashfs_decompressor*, %struct.squashfs_decompressor** %5, align 8
  ret %struct.squashfs_decompressor* %61
}

declare dso_local i32 @errorf(%struct.fs_context*, i8*, ...) #1

declare dso_local %struct.squashfs_decompressor* @squashfs_lookup_decompressor(i16 signext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
