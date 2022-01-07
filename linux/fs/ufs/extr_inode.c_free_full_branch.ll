; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_full_branch.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_full_branch.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32, i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.to_free = type { %struct.inode* }
%struct.TYPE_2__ = type { %struct.ufs_sb_private_info* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i64, i32)* @free_full_branch to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_full_branch(%struct.inode* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.ufs_sb_private_info*, align 8
  %9 = alloca %struct.ufs_buffer_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  %12 = alloca i64, align 8
  %13 = alloca %struct.to_free, align 8
  %14 = alloca i8*, align 8
  %15 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %16 = load %struct.inode*, %struct.inode** %4, align 8
  %17 = getelementptr inbounds %struct.inode, %struct.inode* %16, i32 0, i32 0
  %18 = load %struct.super_block*, %struct.super_block** %17, align 8
  store %struct.super_block* %18, %struct.super_block** %7, align 8
  %19 = load %struct.super_block*, %struct.super_block** %7, align 8
  %20 = call %struct.TYPE_2__* @UFS_SB(%struct.super_block* %19)
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %21, align 8
  store %struct.ufs_sb_private_info* %22, %struct.ufs_sb_private_info** %8, align 8
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = load i64, i64* %5, align 8
  %25 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %26 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = call %struct.ufs_buffer_head* @ubh_bread(%struct.super_block* %23, i64 %24, i32 %27)
  store %struct.ufs_buffer_head* %28, %struct.ufs_buffer_head** %9, align 8
  %29 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %9, align 8
  %30 = icmp ne %struct.ufs_buffer_head* %29, null
  br i1 %30, label %32, label %31

31:                                               ; preds = %3
  br label %102

32:                                               ; preds = %3
  %33 = load i32, i32* %6, align 4
  %34 = add nsw i32 %33, -1
  store i32 %34, i32* %6, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %62

36:                                               ; preds = %32
  store i32 0, i32* %10, align 4
  br label %37

37:                                               ; preds = %58, %36
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %40 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = icmp ult i32 %38, %41
  br i1 %42, label %43, label %61

43:                                               ; preds = %37
  %44 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %45 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %9, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %44, %struct.ufs_buffer_head* %45, i32 %46)
  store i8* %47, i8** %11, align 8
  %48 = load %struct.super_block*, %struct.super_block** %7, align 8
  %49 = load i8*, i8** %11, align 8
  %50 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %48, i8* %49)
  store i64 %50, i64* %12, align 8
  %51 = load i64, i64* %12, align 8
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %57

53:                                               ; preds = %43
  %54 = load %struct.inode*, %struct.inode** %4, align 8
  %55 = load i64, i64* %12, align 8
  %56 = load i32, i32* %6, align 4
  call void @free_full_branch(%struct.inode* %54, i64 %55, i32 %56)
  br label %57

57:                                               ; preds = %53, %43
  br label %58

58:                                               ; preds = %57
  %59 = load i32, i32* %10, align 4
  %60 = add i32 %59, 1
  store i32 %60, i32* %10, align 4
  br label %37

61:                                               ; preds = %37
  br label %93

62:                                               ; preds = %32
  %63 = getelementptr inbounds %struct.to_free, %struct.to_free* %13, i32 0, i32 0
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  store %struct.inode* %64, %struct.inode** %63, align 8
  store i32 0, i32* %10, align 4
  br label %65

65:                                               ; preds = %88, %62
  %66 = load i32, i32* %10, align 4
  %67 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %68 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  %70 = icmp ult i32 %66, %69
  br i1 %70, label %71, label %91

71:                                               ; preds = %65
  %72 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %73 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %9, align 8
  %74 = load i32, i32* %10, align 4
  %75 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %72, %struct.ufs_buffer_head* %73, i32 %74)
  store i8* %75, i8** %14, align 8
  %76 = load %struct.super_block*, %struct.super_block** %7, align 8
  %77 = load i8*, i8** %14, align 8
  %78 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %76, i8* %77)
  store i64 %78, i64* %15, align 8
  %79 = load i64, i64* %15, align 8
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %87

81:                                               ; preds = %71
  %82 = load i64, i64* %15, align 8
  %83 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %84 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i32 @free_data(%struct.to_free* %13, i64 %82, i32 %85)
  br label %87

87:                                               ; preds = %81, %71
  br label %88

88:                                               ; preds = %87
  %89 = load i32, i32* %10, align 4
  %90 = add i32 %89, 1
  store i32 %90, i32* %10, align 4
  br label %65

91:                                               ; preds = %65
  %92 = call i32 @free_data(%struct.to_free* %13, i64 0, i32 0)
  br label %93

93:                                               ; preds = %91, %61
  %94 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %9, align 8
  %95 = call i32 @ubh_bforget(%struct.ufs_buffer_head* %94)
  %96 = load %struct.inode*, %struct.inode** %4, align 8
  %97 = load i64, i64* %5, align 8
  %98 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %8, align 8
  %99 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @ufs_free_blocks(%struct.inode* %96, i64 %97, i32 %100)
  br label %102

102:                                              ; preds = %93, %31
  ret void
}

declare dso_local %struct.TYPE_2__* @UFS_SB(%struct.super_block*) #1

declare dso_local %struct.ufs_buffer_head* @ubh_bread(%struct.super_block*, i64, i32) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @free_data(%struct.to_free*, i64, i32) #1

declare dso_local i32 @ubh_bforget(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ufs_free_blocks(%struct.inode*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
