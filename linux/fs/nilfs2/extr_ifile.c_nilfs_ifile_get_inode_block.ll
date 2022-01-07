; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_get_inode_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_ifile.c_nilfs_ifile_get_inode_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }

@.str = private unnamed_addr constant [22 x i8] c"bad inode number: %lu\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@KERN_WARNING = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"error %d reading inode: ino=%lu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_ifile_get_inode_block(%struct.inode* %0, i64 %1, %struct.buffer_head** %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.buffer_head**, align 8
  %8 = alloca %struct.super_block*, align 8
  %9 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.buffer_head** %2, %struct.buffer_head*** %7, align 8
  %10 = load %struct.inode*, %struct.inode** %5, align 8
  %11 = getelementptr inbounds %struct.inode, %struct.inode* %10, i32 0, i32 0
  %12 = load %struct.super_block*, %struct.super_block** %11, align 8
  store %struct.super_block* %12, %struct.super_block** %8, align 8
  %13 = load %struct.super_block*, %struct.super_block** %8, align 8
  %14 = load i64, i64* %6, align 8
  %15 = call i32 @NILFS_VALID_INODE(%struct.super_block* %13, i64 %14)
  %16 = icmp ne i32 %15, 0
  %17 = xor i1 %16, true
  %18 = zext i1 %17 to i32
  %19 = call i64 @unlikely(i32 %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %27

21:                                               ; preds = %3
  %22 = load %struct.super_block*, %struct.super_block** %8, align 8
  %23 = load i64, i64* %6, align 8
  %24 = call i32 @nilfs_error(%struct.super_block* %22, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i64 %23)
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %43

27:                                               ; preds = %3
  %28 = load %struct.inode*, %struct.inode** %5, align 8
  %29 = load i64, i64* %6, align 8
  %30 = load %struct.buffer_head**, %struct.buffer_head*** %7, align 8
  %31 = call i32 @nilfs_palloc_get_entry_block(%struct.inode* %28, i64 %29, i32 0, %struct.buffer_head** %30)
  store i32 %31, i32* %9, align 4
  %32 = load i32, i32* %9, align 4
  %33 = call i64 @unlikely(i32 %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %41

35:                                               ; preds = %27
  %36 = load %struct.super_block*, %struct.super_block** %8, align 8
  %37 = load i32, i32* @KERN_WARNING, align 4
  %38 = load i32, i32* %9, align 4
  %39 = load i64, i64* %6, align 8
  %40 = call i32 @nilfs_msg(%struct.super_block* %36, i32 %37, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0), i32 %38, i64 %39)
  br label %41

41:                                               ; preds = %35, %27
  %42 = load i32, i32* %9, align 4
  store i32 %42, i32* %4, align 4
  br label %43

43:                                               ; preds = %41, %21
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @NILFS_VALID_INODE(%struct.super_block*, i64) #1

declare dso_local i32 @nilfs_error(%struct.super_block*, i8*, i64) #1

declare dso_local i32 @nilfs_palloc_get_entry_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_msg(%struct.super_block*, i32, i8*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
