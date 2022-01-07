; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_superblock_sb_update_frequency_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_sysfs.c_nilfs_superblock_sb_update_frequency_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_superblock_attr = type { i32 }
%struct.the_nilfs = type { i32, i32, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"unable to convert string: err=%d\00", align 1
@NILFS_SB_FREQ = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [61 x i8] c"superblock update frequency cannot be lesser than 10 seconds\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nilfs_superblock_attr*, %struct.the_nilfs*, i8*, i64)* @nilfs_superblock_sb_update_frequency_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nilfs_superblock_sb_update_frequency_store(%struct.nilfs_superblock_attr* %0, %struct.the_nilfs* %1, i8* %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nilfs_superblock_attr*, align 8
  %7 = alloca %struct.the_nilfs*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nilfs_superblock_attr* %0, %struct.nilfs_superblock_attr** %6, align 8
  store %struct.the_nilfs* %1, %struct.the_nilfs** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  %12 = load i8*, i8** %8, align 8
  %13 = call i32 @skip_spaces(i8* %12)
  %14 = call i32 @kstrtouint(i32 %13, i32 0, i32* %10)
  store i32 %14, i32* %11, align 4
  %15 = load i32, i32* %11, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %17, label %25

17:                                               ; preds = %4
  %18 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %19 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 4
  %21 = load i32, i32* @KERN_ERR, align 4
  %22 = load i32, i32* %11, align 4
  %23 = call i32 (i32, i32, i8*, ...) @nilfs_msg(i32 %20, i32 %21, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %22)
  %24 = load i32, i32* %11, align 4
  store i32 %24, i32* %5, align 4
  br label %48

25:                                               ; preds = %4
  %26 = load i32, i32* %10, align 4
  %27 = load i32, i32* @NILFS_SB_FREQ, align 4
  %28 = icmp ult i32 %26, %27
  br i1 %28, label %29, label %36

29:                                               ; preds = %25
  %30 = load i32, i32* @NILFS_SB_FREQ, align 4
  store i32 %30, i32* %10, align 4
  %31 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %32 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 4
  %34 = load i32, i32* @KERN_WARNING, align 4
  %35 = call i32 (i32, i32, i8*, ...) @nilfs_msg(i32 %33, i32 %34, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str.1, i64 0, i64 0))
  br label %36

36:                                               ; preds = %29, %25
  %37 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %38 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %37, i32 0, i32 1
  %39 = call i32 @down_write(i32* %38)
  %40 = load i32, i32* %10, align 4
  %41 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %42 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 4
  %43 = load %struct.the_nilfs*, %struct.the_nilfs** %7, align 8
  %44 = getelementptr inbounds %struct.the_nilfs, %struct.the_nilfs* %43, i32 0, i32 1
  %45 = call i32 @up_write(i32* %44)
  %46 = load i64, i64* %9, align 8
  %47 = trunc i64 %46 to i32
  store i32 %47, i32* %5, align 4
  br label %48

48:                                               ; preds = %36, %17
  %49 = load i32, i32* %5, align 4
  ret i32 %49
}

declare dso_local i32 @kstrtouint(i32, i32, i32*) #1

declare dso_local i32 @skip_spaces(i8*) #1

declare dso_local i32 @nilfs_msg(i32, i32, i8*, ...) #1

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @up_write(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
