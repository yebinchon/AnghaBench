; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_resize_begin.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_resize.c_ext4_resize_begin.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.ext4_sb_info = type { i32, i32, %struct.TYPE_3__*, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i32 }

@CAP_SYS_RESOURCE = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"won't resize using backup superblock at %llu\00", align 1
@EXT4_ERROR_FS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [70 x i8] c"There are errors in the filesystem, so online resizing is not allowed\00", align 1
@EXT4_FLAGS_RESIZING = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_resize_begin(%struct.super_block* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.ext4_sb_info*, align 8
  %5 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %6)
  store %struct.ext4_sb_info* %7, %struct.ext4_sb_info** %4, align 8
  store i32 0, i32* %5, align 4
  %8 = load i32, i32* @CAP_SYS_RESOURCE, align 4
  %9 = call i32 @capable(i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %14, label %11

11:                                               ; preds = %1
  %12 = load i32, i32* @EPERM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %2, align 4
  br label %66

14:                                               ; preds = %1
  %15 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %16 = load %struct.ext4_sb_info*, %struct.ext4_sb_info** %4, align 8
  %17 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %16, i32 0, i32 2
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = call i64 @EXT4_B2C(%struct.ext4_sb_info* %15, i64 %20)
  %22 = load %struct.super_block*, %struct.super_block** %3, align 8
  %23 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %23, i32 0, i32 3
  %25 = load %struct.TYPE_4__*, %struct.TYPE_4__** %24, align 8
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i64 @le32_to_cpu(i32 %27)
  %29 = icmp ne i64 %21, %28
  br i1 %29, label %30, label %41

30:                                               ; preds = %14
  %31 = load %struct.super_block*, %struct.super_block** %3, align 8
  %32 = load %struct.super_block*, %struct.super_block** %3, align 8
  %33 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %32)
  %34 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %33, i32 0, i32 2
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %31, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i64 %37)
  %39 = load i32, i32* @EPERM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %66

41:                                               ; preds = %14
  %42 = load %struct.super_block*, %struct.super_block** %3, align 8
  %43 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %42)
  %44 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = load i32, i32* @EXT4_ERROR_FS, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %54

49:                                               ; preds = %41
  %50 = load %struct.super_block*, %struct.super_block** %3, align 8
  %51 = call i32 (%struct.super_block*, i8*, ...) @ext4_warning(%struct.super_block* %50, i8* getelementptr inbounds ([70 x i8], [70 x i8]* @.str.1, i64 0, i64 0))
  %52 = load i32, i32* @EPERM, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %2, align 4
  br label %66

54:                                               ; preds = %41
  %55 = load i32, i32* @EXT4_FLAGS_RESIZING, align 4
  %56 = load %struct.super_block*, %struct.super_block** %3, align 8
  %57 = call %struct.ext4_sb_info* @EXT4_SB(%struct.super_block* %56)
  %58 = getelementptr inbounds %struct.ext4_sb_info, %struct.ext4_sb_info* %57, i32 0, i32 1
  %59 = call i64 @test_and_set_bit_lock(i32 %55, i32* %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %54
  %62 = load i32, i32* @EBUSY, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %61, %54
  %65 = load i32, i32* %5, align 4
  store i32 %65, i32* %2, align 4
  br label %66

66:                                               ; preds = %64, %49, %30, %11
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.ext4_sb_info* @EXT4_SB(%struct.super_block*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local i64 @EXT4_B2C(%struct.ext4_sb_info*, i64) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @ext4_warning(%struct.super_block*, i8*, ...) #1

declare dso_local i64 @test_and_set_bit_lock(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
