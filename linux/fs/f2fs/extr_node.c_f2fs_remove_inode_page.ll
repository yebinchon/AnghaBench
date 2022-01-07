; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_remove_inode_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_f2fs_remove_inode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dnode_of_data = type { i32 }

@LOOKUP_NODE = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [45 x i8] c"Inconsistent i_blocks, ino:%lu, iblocks:%llu\00", align 1
@SBI_NEED_FSCK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @f2fs_remove_inode_page(%struct.inode* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.dnode_of_data, align 4
  %5 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = load %struct.inode*, %struct.inode** %3, align 8
  %8 = getelementptr inbounds %struct.inode, %struct.inode* %7, i32 0, i32 1
  %9 = load i32, i32* %8, align 4
  %10 = call i32 @set_new_dnode(%struct.dnode_of_data* %4, %struct.inode* %6, i32* null, i32* null, i32 %9)
  %11 = load i32, i32* @LOOKUP_NODE, align 4
  %12 = call i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data* %4, i32 0, i32 %11)
  store i32 %12, i32* %5, align 4
  %13 = load i32, i32* %5, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %17

15:                                               ; preds = %1
  %16 = load i32, i32* %5, align 4
  store i32 %16, i32* %2, align 4
  br label %93

17:                                               ; preds = %1
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call i32 @f2fs_truncate_xattr_node(%struct.inode* %18)
  store i32 %19, i32* %5, align 4
  %20 = load i32, i32* %5, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %25

22:                                               ; preds = %17
  %23 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %4)
  %24 = load i32, i32* %5, align 4
  store i32 %24, i32* %2, align 4
  br label %93

25:                                               ; preds = %17
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = getelementptr inbounds %struct.inode, %struct.inode* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 4
  %29 = call i64 @S_ISREG(i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %43, label %31

31:                                               ; preds = %25
  %32 = load %struct.inode*, %struct.inode** %3, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 4
  %35 = call i64 @S_ISDIR(i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %31
  %38 = load %struct.inode*, %struct.inode** %3, align 8
  %39 = getelementptr inbounds %struct.inode, %struct.inode* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @S_ISLNK(i32 %40)
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %37, %31, %25
  %44 = call i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data* %4, i32 1)
  br label %45

45:                                               ; preds = %43, %37
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call i32 @F2FS_I_SB(%struct.inode* %46)
  %48 = call i32 @f2fs_cp_error(i32 %47)
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %55

51:                                               ; preds = %45
  %52 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %4)
  %53 = load i32, i32* @EIO, align 4
  %54 = sub nsw i32 0, %53
  store i32 %54, i32* %2, align 4
  br label %93

55:                                               ; preds = %45
  %56 = load %struct.inode*, %struct.inode** %3, align 8
  %57 = getelementptr inbounds %struct.inode, %struct.inode* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %55
  %61 = load %struct.inode*, %struct.inode** %3, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = icmp ne i32 %63, 8
  br label %65

65:                                               ; preds = %60, %55
  %66 = phi i1 [ false, %55 ], [ %64, %60 ]
  %67 = zext i1 %66 to i32
  %68 = call i64 @unlikely(i32 %67)
  %69 = icmp ne i64 %68, 0
  br i1 %69, label %70, label %85

70:                                               ; preds = %65
  %71 = load %struct.inode*, %struct.inode** %3, align 8
  %72 = call i32 @F2FS_I_SB(%struct.inode* %71)
  %73 = load %struct.inode*, %struct.inode** %3, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.inode*, %struct.inode** %3, align 8
  %77 = getelementptr inbounds %struct.inode, %struct.inode* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = sext i32 %78 to i64
  %80 = call i32 @f2fs_warn(i32 %72, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0), i32 %75, i64 %79)
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = call i32 @F2FS_I_SB(%struct.inode* %81)
  %83 = load i32, i32* @SBI_NEED_FSCK, align 4
  %84 = call i32 @set_sbi_flag(i32 %82, i32 %83)
  br label %85

85:                                               ; preds = %70, %65
  %86 = call i32 @truncate_node(%struct.dnode_of_data* %4)
  store i32 %86, i32* %5, align 4
  %87 = load i32, i32* %5, align 4
  %88 = icmp ne i32 %87, 0
  br i1 %88, label %89, label %92

89:                                               ; preds = %85
  %90 = call i32 @f2fs_put_dnode(%struct.dnode_of_data* %4)
  %91 = load i32, i32* %5, align 4
  store i32 %91, i32* %2, align 4
  br label %93

92:                                               ; preds = %85
  store i32 0, i32* %2, align 4
  br label %93

93:                                               ; preds = %92, %89, %51, %22, %15
  %94 = load i32, i32* %2, align 4
  ret i32 %94
}

declare dso_local i32 @set_new_dnode(%struct.dnode_of_data*, %struct.inode*, i32*, i32*, i32) #1

declare dso_local i32 @f2fs_get_dnode_of_data(%struct.dnode_of_data*, i32, i32) #1

declare dso_local i32 @f2fs_truncate_xattr_node(%struct.inode*) #1

declare dso_local i32 @f2fs_put_dnode(%struct.dnode_of_data*) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @f2fs_truncate_data_blocks_range(%struct.dnode_of_data*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @f2fs_cp_error(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.inode*) #1

declare dso_local i32 @f2fs_warn(i32, i8*, i32, i64) #1

declare dso_local i32 @set_sbi_flag(i32, i32) #1

declare dso_local i32 @truncate_node(%struct.dnode_of_data*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
