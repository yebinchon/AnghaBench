; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_hole.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_file.c_f2fs_truncate_hole.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.dnode_of_data = type { i64, i32 }

@LOOKUP_NODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_truncate_hole(%struct.inode* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.dnode_of_data, align 8
  %10 = alloca i64, align 8
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  br label %12

12:                                               ; preds = %55, %29, %3
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %7, align 8
  %15 = icmp slt i64 %13, %14
  br i1 %15, label %16, label %65

16:                                               ; preds = %12
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = call i32 @set_new_dnode(%struct.dnode_of_data* %9, %struct.inode* %17, i32* null, i32* null, i32 0)
  %19 = load i64, i64* %6, align 8
  %20 = load i32, i32* @LOOKUP_NODE, align 4
  %21 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %9, i64 %19, i32 %20)
  store i32 %21, i32* %8, align 4
  %22 = load i32, i32* %8, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %34

24:                                               ; preds = %16
  %25 = load i32, i32* %8, align 4
  %26 = load i32, i32* @ENOENT, align 4
  %27 = sub nsw i32 0, %26
  %28 = icmp eq i32 %25, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load i64, i64* %6, align 8
  %31 = call i64 @f2fs_get_next_page_offset(%struct.dnode_of_data* %9, i64 %30)
  store i64 %31, i64* %6, align 8
  br label %12

32:                                               ; preds = %24
  %33 = load i32, i32* %8, align 4
  store i32 %33, i32* %4, align 4
  br label %66

34:                                               ; preds = %16
  %35 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %9, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = call i64 @ADDRS_PER_PAGE(i32 %36, %struct.inode* %37)
  store i64 %38, i64* %10, align 8
  %39 = load i64, i64* %10, align 8
  %40 = getelementptr inbounds %struct.dnode_of_data, %struct.dnode_of_data* %9, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = sub nsw i64 %39, %41
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %6, align 8
  %45 = sub nsw i64 %43, %44
  %46 = call i64 @min(i64 %42, i64 %45)
  store i64 %46, i64* %11, align 8
  %47 = load %struct.inode*, %struct.inode** %5, align 8
  %48 = call i32 @F2FS_I_SB(%struct.inode* %47)
  %49 = load i64, i64* %11, align 8
  %50 = icmp eq i64 %49, 0
  br i1 %50, label %55, label %51

51:                                               ; preds = %34
  %52 = load i64, i64* %11, align 8
  %53 = load i64, i64* %10, align 8
  %54 = icmp sgt i64 %52, %53
  br label %55

55:                                               ; preds = %51, %34
  %56 = phi i1 [ true, %34 ], [ %54, %51 ]
  %57 = zext i1 %56 to i32
  %58 = call i32 @f2fs_bug_on(i32 %48, i32 %57)
  %59 = load i64, i64* %11, align 8
  %60 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %9, i64 %59)
  %61 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %9)
  %62 = load i64, i64* %11, align 8
  %63 = load i64, i64* %6, align 8
  %64 = add nsw i64 %63, %62
  store i64 %64, i64* %6, align 8
  br label %12

65:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %65, %32
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i64, i32) #1

declare dso_local i64 @f2fs_get_next_page_offset(%struct.dnode_of_data*, i64) #1

declare dso_local i64 @ADDRS_PER_PAGE(i32, %struct.inode*) #1

declare dso_local i64 @min(i64, i64) #1

declare dso_local i32 @f2fs_bug_on(i32, i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i64) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
