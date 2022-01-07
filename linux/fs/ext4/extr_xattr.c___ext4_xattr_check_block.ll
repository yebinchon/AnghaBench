; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c___ext4_xattr_check_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c___ext4_xattr_check_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i64, i64, i64 }
%struct.TYPE_2__ = type { i64, i64 }

@EFSCORRUPTED = common dso_local global i32 0, align 4
@EXT4_XATTR_MAGIC = common dso_local global i32 0, align 4
@EFSBADCRC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"corrupted xattr block %llu\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.buffer_head*, i8*, i32)* @__ext4_xattr_check_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__ext4_xattr_check_block(%struct.inode* %0, %struct.buffer_head* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i32, i32* @EFSCORRUPTED, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %10, align 4
  %13 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %14 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  %17 = load i32, i32* @EXT4_XATTR_MAGIC, align 4
  %18 = call i64 @cpu_to_le32(i32 %17)
  %19 = icmp ne i64 %16, %18
  br i1 %19, label %27, label %20

20:                                               ; preds = %4
  %21 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %22 = call %struct.TYPE_2__* @BHDR(%struct.buffer_head* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = call i64 @cpu_to_le32(i32 1)
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %20, %4
  br label %55

28:                                               ; preds = %20
  %29 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %30 = call i64 @buffer_verified(%struct.buffer_head* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %28
  store i32 0, i32* %5, align 4
  br label %71

33:                                               ; preds = %28
  %34 = load i32, i32* @EFSBADCRC, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %10, align 4
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %38 = call i32 @ext4_xattr_block_csum_verify(%struct.inode* %36, %struct.buffer_head* %37)
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %33
  br label %55

41:                                               ; preds = %33
  %42 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %43 = call i32 @BFIRST(%struct.buffer_head* %42)
  %44 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %45 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %48 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = add nsw i64 %46, %49
  %51 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %52 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = call i32 @ext4_xattr_check_entries(i32 %43, i64 %50, i64 %53)
  store i32 %54, i32* %10, align 4
  br label %55

55:                                               ; preds = %41, %40, %27
  %56 = load i32, i32* %10, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %55
  %59 = load %struct.inode*, %struct.inode** %6, align 8
  %60 = load i8*, i8** %8, align 8
  %61 = load i32, i32* %9, align 4
  %62 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %63 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = call i32 @__ext4_error_inode(%struct.inode* %59, i8* %60, i32 %61, i32 0, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i64 %64)
  br label %69

66:                                               ; preds = %55
  %67 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %68 = call i32 @set_buffer_verified(%struct.buffer_head* %67)
  br label %69

69:                                               ; preds = %66, %58
  %70 = load i32, i32* %10, align 4
  store i32 %70, i32* %5, align 4
  br label %71

71:                                               ; preds = %69, %32
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

declare dso_local %struct.TYPE_2__* @BHDR(%struct.buffer_head*) #1

declare dso_local i64 @cpu_to_le32(i32) #1

declare dso_local i64 @buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_block_csum_verify(%struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ext4_xattr_check_entries(i32, i64, i64) #1

declare dso_local i32 @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @__ext4_error_inode(%struct.inode*, i8*, i32, i32, i8*, i64) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
