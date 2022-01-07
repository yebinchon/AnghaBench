; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_mdt.c_nilfs_mdt_get_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }

@ENOENT = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nilfs_mdt_get_block(%struct.inode* %0, i64 %1, i32 %2, void (%struct.inode*, %struct.buffer_head*, i8*)* %3, %struct.buffer_head** %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca void (%struct.inode*, %struct.buffer_head*, i8*)*, align 8
  %11 = alloca %struct.buffer_head**, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i64 %1, i64* %8, align 8
  store i32 %2, i32* %9, align 4
  store void (%struct.inode*, %struct.buffer_head*, i8*)* %3, void (%struct.inode*, %struct.buffer_head*, i8*)** %10, align 8
  store %struct.buffer_head** %4, %struct.buffer_head*** %11, align 8
  br label %13

13:                                               ; preds = %44, %5
  %14 = load %struct.inode*, %struct.inode** %7, align 8
  %15 = load i64, i64* %8, align 8
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  %18 = xor i1 %17, true
  %19 = zext i1 %18 to i32
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %21 = call i32 @nilfs_mdt_read_block(%struct.inode* %14, i64 %15, i32 %19, %struct.buffer_head** %20)
  store i32 %21, i32* %12, align 4
  %22 = load i32, i32* %9, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %29

24:                                               ; preds = %13
  %25 = load i32, i32* %12, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %24, %13
  %30 = load i32, i32* %12, align 4
  store i32 %30, i32* %6, align 4
  br label %47

31:                                               ; preds = %24
  %32 = load %struct.inode*, %struct.inode** %7, align 8
  %33 = load i64, i64* %8, align 8
  %34 = load %struct.buffer_head**, %struct.buffer_head*** %11, align 8
  %35 = load void (%struct.inode*, %struct.buffer_head*, i8*)*, void (%struct.inode*, %struct.buffer_head*, i8*)** %10, align 8
  %36 = call i32 @nilfs_mdt_create_block(%struct.inode* %32, i64 %33, %struct.buffer_head** %34, void (%struct.inode*, %struct.buffer_head*, i8*)* %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = load i32, i32* @EEXIST, align 4
  %39 = sub nsw i32 0, %38
  %40 = icmp eq i32 %37, %39
  %41 = zext i1 %40 to i32
  %42 = call i64 @unlikely(i32 %41)
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %45

44:                                               ; preds = %31
  br label %13

45:                                               ; preds = %31
  %46 = load i32, i32* %12, align 4
  store i32 %46, i32* %6, align 4
  br label %47

47:                                               ; preds = %45, %29
  %48 = load i32, i32* %6, align 4
  ret i32 %48
}

declare dso_local i32 @nilfs_mdt_read_block(%struct.inode*, i64, i32, %struct.buffer_head**) #1

declare dso_local i32 @nilfs_mdt_create_block(%struct.inode*, i64, %struct.buffer_head**, void (%struct.inode*, %struct.buffer_head*, i8*)*) #1

declare dso_local i64 @unlikely(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
