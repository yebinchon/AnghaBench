; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_dir_lseek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_dir.c_hpfs_dir_lseek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.file = type { i32 }
%struct.quad_buffer_head = type { i32 }
%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.hpfs_inode_info = type { i32 }

@SEEK_DATA = common dso_local global i32 0, align 4
@SEEK_HOLE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ESPIPE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.file*, i32, i32)* @hpfs_dir_lseek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hpfs_dir_lseek(%struct.file* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.file*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.quad_buffer_head, align 4
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.hpfs_inode_info*, align 8
  %13 = alloca %struct.super_block*, align 8
  store %struct.file* %0, %struct.file** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* %7, align 4
  %16 = icmp eq i32 %15, 1
  br i1 %16, label %17, label %21

17:                                               ; preds = %3
  %18 = load %struct.file*, %struct.file** %5, align 8
  %19 = getelementptr inbounds %struct.file, %struct.file* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  br label %22

21:                                               ; preds = %3
  br label %22

22:                                               ; preds = %21, %17
  %23 = phi i32 [ %20, %17 ], [ 0, %21 ]
  %24 = add nsw i32 %14, %23
  store i32 %24, i32* %8, align 4
  %25 = load %struct.file*, %struct.file** %5, align 8
  %26 = call %struct.inode* @file_inode(%struct.file* %25)
  store %struct.inode* %26, %struct.inode** %11, align 8
  %27 = load %struct.inode*, %struct.inode** %11, align 8
  %28 = call %struct.hpfs_inode_info* @hpfs_i(%struct.inode* %27)
  store %struct.hpfs_inode_info* %28, %struct.hpfs_inode_info** %12, align 8
  %29 = load %struct.inode*, %struct.inode** %11, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 0
  %31 = load %struct.super_block*, %struct.super_block** %30, align 8
  store %struct.super_block* %31, %struct.super_block** %13, align 8
  %32 = load i32, i32* %7, align 4
  %33 = load i32, i32* @SEEK_DATA, align 4
  %34 = icmp eq i32 %32, %33
  br i1 %34, label %39, label %35

35:                                               ; preds = %22
  %36 = load i32, i32* %7, align 4
  %37 = load i32, i32* @SEEK_HOLE, align 4
  %38 = icmp eq i32 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %35, %22
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %120

42:                                               ; preds = %35
  %43 = load %struct.inode*, %struct.inode** %11, align 8
  %44 = call i32 @inode_lock(%struct.inode* %43)
  %45 = load %struct.super_block*, %struct.super_block** %13, align 8
  %46 = call i32 @hpfs_lock(%struct.super_block* %45)
  %47 = load i32, i32* %8, align 4
  %48 = icmp eq i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %42
  %50 = load i32, i32* %8, align 4
  %51 = icmp eq i32 %50, 1
  br i1 %51, label %61, label %52

52:                                               ; preds = %49
  %53 = load i32, i32* %8, align 4
  %54 = icmp eq i32 %53, 11
  br i1 %54, label %61, label %55

55:                                               ; preds = %52
  %56 = load i32, i32* %8, align 4
  %57 = icmp eq i32 %56, 12
  br i1 %57, label %61, label %58

58:                                               ; preds = %55
  %59 = load i32, i32* %8, align 4
  %60 = icmp eq i32 %59, 13
  br i1 %60, label %61, label %62

61:                                               ; preds = %58, %55, %52, %49, %42
  br label %104

62:                                               ; preds = %58
  %63 = load %struct.super_block*, %struct.super_block** %13, align 8
  %64 = load %struct.hpfs_inode_info*, %struct.hpfs_inode_info** %12, align 8
  %65 = getelementptr inbounds %struct.hpfs_inode_info, %struct.hpfs_inode_info* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i64 @hpfs_de_as_down_as_possible(%struct.super_block* %63, i32 %66)
  %68 = trunc i64 %67 to i32
  %69 = shl i32 %68, 4
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %9, align 4
  br label %71

71:                                               ; preds = %86, %62
  %72 = load i32, i32* %9, align 4
  %73 = load i32, i32* %8, align 4
  %74 = icmp ne i32 %72, %73
  br i1 %74, label %75, label %87

75:                                               ; preds = %71
  %76 = load %struct.inode*, %struct.inode** %11, align 8
  %77 = call i64 @map_pos_dirent(%struct.inode* %76, i32* %9, %struct.quad_buffer_head* %10)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %81

79:                                               ; preds = %75
  %80 = call i32 @hpfs_brelse4(%struct.quad_buffer_head* %10)
  br label %82

81:                                               ; preds = %75
  br label %113

82:                                               ; preds = %79
  %83 = load i32, i32* %9, align 4
  %84 = icmp eq i32 %83, 12
  br i1 %84, label %85, label %86

85:                                               ; preds = %82
  br label %113

86:                                               ; preds = %82
  br label %71

87:                                               ; preds = %71
  %88 = load %struct.inode*, %struct.inode** %11, align 8
  %89 = load %struct.file*, %struct.file** %5, align 8
  %90 = getelementptr inbounds %struct.file, %struct.file* %89, i32 0, i32 0
  %91 = call i64 @hpfs_add_pos(%struct.inode* %88, i32* %90)
  %92 = icmp slt i64 %91, 0
  %93 = zext i1 %92 to i32
  %94 = call i64 @unlikely(i32 %93)
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %103

96:                                               ; preds = %87
  %97 = load %struct.super_block*, %struct.super_block** %13, align 8
  %98 = call i32 @hpfs_unlock(%struct.super_block* %97)
  %99 = load %struct.inode*, %struct.inode** %11, align 8
  %100 = call i32 @inode_unlock(%struct.inode* %99)
  %101 = load i32, i32* @ENOMEM, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %4, align 4
  br label %120

103:                                              ; preds = %87
  br label %104

104:                                              ; preds = %103, %61
  %105 = load i32, i32* %8, align 4
  %106 = load %struct.file*, %struct.file** %5, align 8
  %107 = getelementptr inbounds %struct.file, %struct.file* %106, i32 0, i32 0
  store i32 %105, i32* %107, align 4
  %108 = load %struct.super_block*, %struct.super_block** %13, align 8
  %109 = call i32 @hpfs_unlock(%struct.super_block* %108)
  %110 = load %struct.inode*, %struct.inode** %11, align 8
  %111 = call i32 @inode_unlock(%struct.inode* %110)
  %112 = load i32, i32* %8, align 4
  store i32 %112, i32* %4, align 4
  br label %120

113:                                              ; preds = %85, %81
  %114 = load %struct.super_block*, %struct.super_block** %13, align 8
  %115 = call i32 @hpfs_unlock(%struct.super_block* %114)
  %116 = load %struct.inode*, %struct.inode** %11, align 8
  %117 = call i32 @inode_unlock(%struct.inode* %116)
  %118 = load i32, i32* @ESPIPE, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %120

120:                                              ; preds = %113, %104, %96, %39
  %121 = load i32, i32* %4, align 4
  ret i32 %121
}

declare dso_local %struct.inode* @file_inode(%struct.file*) #1

declare dso_local %struct.hpfs_inode_info* @hpfs_i(%struct.inode*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @hpfs_lock(%struct.super_block*) #1

declare dso_local i64 @hpfs_de_as_down_as_possible(%struct.super_block*, i32) #1

declare dso_local i64 @map_pos_dirent(%struct.inode*, i32*, %struct.quad_buffer_head*) #1

declare dso_local i32 @hpfs_brelse4(%struct.quad_buffer_head*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @hpfs_add_pos(%struct.inode*, i32*) #1

declare dso_local i32 @hpfs_unlock(%struct.super_block*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
