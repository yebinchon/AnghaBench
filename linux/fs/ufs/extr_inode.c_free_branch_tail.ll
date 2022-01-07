; ModuleID = '/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_branch_tail.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ufs/extr_inode.c_free_branch_tail.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.ufs_buffer_head = type { i32 }
%struct.ufs_sb_private_info = type { i32, i32 }
%struct.to_free = type { %struct.inode* }
%struct.TYPE_3__ = type { %struct.ufs_sb_private_info* }
%struct.TYPE_4__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, i32, %struct.ufs_buffer_head*, i32)* @free_branch_tail to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_branch_tail(%struct.inode* %0, i32 %1, %struct.ufs_buffer_head* %2, i32 %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.ufs_buffer_head*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.ufs_sb_private_info*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i8*, align 8
  %13 = alloca i64, align 8
  %14 = alloca %struct.to_free, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.ufs_buffer_head* %2, %struct.ufs_buffer_head** %7, align 8
  store i32 %3, i32* %8, align 4
  %17 = load %struct.inode*, %struct.inode** %5, align 8
  %18 = getelementptr inbounds %struct.inode, %struct.inode* %17, i32 0, i32 0
  %19 = load %struct.super_block*, %struct.super_block** %18, align 8
  store %struct.super_block* %19, %struct.super_block** %9, align 8
  %20 = load %struct.super_block*, %struct.super_block** %9, align 8
  %21 = call %struct.TYPE_3__* @UFS_SB(%struct.super_block* %20)
  %22 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %21, i32 0, i32 0
  %23 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %22, align 8
  store %struct.ufs_sb_private_info* %23, %struct.ufs_sb_private_info** %10, align 8
  %24 = load i32, i32* %8, align 4
  %25 = add nsw i32 %24, -1
  store i32 %25, i32* %8, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %68

27:                                               ; preds = %4
  %28 = load i32, i32* %6, align 4
  store i32 %28, i32* %11, align 4
  br label %29

29:                                               ; preds = %64, %27
  %30 = load i32, i32* %11, align 4
  %31 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %32 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = icmp ult i32 %30, %33
  br i1 %34, label %35, label %67

35:                                               ; preds = %29
  %36 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %37 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %38 = load i32, i32* %11, align 4
  %39 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %36, %struct.ufs_buffer_head* %37, i32 %38)
  store i8* %39, i8** %12, align 8
  %40 = load %struct.super_block*, %struct.super_block** %9, align 8
  %41 = load i8*, i8** %12, align 8
  %42 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %40, i8* %41)
  store i64 %42, i64* %13, align 8
  %43 = load i64, i64* %13, align 8
  %44 = icmp ne i64 %43, 0
  br i1 %44, label %45, label %63

45:                                               ; preds = %35
  %46 = load %struct.inode*, %struct.inode** %5, align 8
  %47 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %46)
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @write_seqlock(i32* %48)
  %50 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %51 = load i8*, i8** %12, align 8
  %52 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %50, i8* %51)
  %53 = load %struct.inode*, %struct.inode** %5, align 8
  %54 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %53)
  %55 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %54, i32 0, i32 0
  %56 = call i32 @write_sequnlock(i32* %55)
  %57 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %58 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %57)
  %59 = load %struct.inode*, %struct.inode** %5, align 8
  %60 = load i64, i64* %13, align 8
  %61 = load i32, i32* %8, align 4
  %62 = call i32 @free_full_branch(%struct.inode* %59, i64 %60, i32 %61)
  br label %63

63:                                               ; preds = %45, %35
  br label %64

64:                                               ; preds = %63
  %65 = load i32, i32* %11, align 4
  %66 = add i32 %65, 1
  store i32 %66, i32* %11, align 4
  br label %29

67:                                               ; preds = %29
  br label %113

68:                                               ; preds = %4
  %69 = getelementptr inbounds %struct.to_free, %struct.to_free* %14, i32 0, i32 0
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  store %struct.inode* %70, %struct.inode** %69, align 8
  %71 = load i32, i32* %6, align 4
  store i32 %71, i32* %11, align 4
  br label %72

72:                                               ; preds = %108, %68
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %75 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp ult i32 %73, %76
  br i1 %77, label %78, label %111

78:                                               ; preds = %72
  %79 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %80 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %81 = load i32, i32* %11, align 4
  %82 = call i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info* %79, %struct.ufs_buffer_head* %80, i32 %81)
  store i8* %82, i8** %15, align 8
  %83 = load %struct.super_block*, %struct.super_block** %9, align 8
  %84 = load i8*, i8** %15, align 8
  %85 = call i64 @ufs_data_ptr_to_cpu(%struct.super_block* %83, i8* %84)
  store i64 %85, i64* %16, align 8
  %86 = load i64, i64* %16, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %107

88:                                               ; preds = %78
  %89 = load %struct.inode*, %struct.inode** %5, align 8
  %90 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %89)
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %90, i32 0, i32 0
  %92 = call i32 @write_seqlock(i32* %91)
  %93 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %94 = load i8*, i8** %15, align 8
  %95 = call i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info* %93, i8* %94)
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = call %struct.TYPE_4__* @UFS_I(%struct.inode* %96)
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = call i32 @write_sequnlock(i32* %98)
  %100 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %101 = call i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head* %100)
  %102 = load i64, i64* %16, align 8
  %103 = load %struct.ufs_sb_private_info*, %struct.ufs_sb_private_info** %10, align 8
  %104 = getelementptr inbounds %struct.ufs_sb_private_info, %struct.ufs_sb_private_info* %103, i32 0, i32 1
  %105 = load i32, i32* %104, align 4
  %106 = call i32 @free_data(%struct.to_free* %14, i64 %102, i32 %105)
  br label %107

107:                                              ; preds = %88, %78
  br label %108

108:                                              ; preds = %107
  %109 = load i32, i32* %11, align 4
  %110 = add i32 %109, 1
  store i32 %110, i32* %11, align 4
  br label %72

111:                                              ; preds = %72
  %112 = call i32 @free_data(%struct.to_free* %14, i64 0, i32 0)
  br label %113

113:                                              ; preds = %111, %67
  %114 = load %struct.inode*, %struct.inode** %5, align 8
  %115 = call i64 @IS_SYNC(%struct.inode* %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %124

117:                                              ; preds = %113
  %118 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %119 = call i64 @ubh_buffer_dirty(%struct.ufs_buffer_head* %118)
  %120 = icmp ne i64 %119, 0
  br i1 %120, label %121, label %124

121:                                              ; preds = %117
  %122 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %123 = call i32 @ubh_sync_block(%struct.ufs_buffer_head* %122)
  br label %124

124:                                              ; preds = %121, %117, %113
  %125 = load %struct.ufs_buffer_head*, %struct.ufs_buffer_head** %7, align 8
  %126 = call i32 @ubh_brelse(%struct.ufs_buffer_head* %125)
  ret void
}

declare dso_local %struct.TYPE_3__* @UFS_SB(%struct.super_block*) #1

declare dso_local i8* @ubh_get_data_ptr(%struct.ufs_sb_private_info*, %struct.ufs_buffer_head*, i32) #1

declare dso_local i64 @ufs_data_ptr_to_cpu(%struct.super_block*, i8*) #1

declare dso_local i32 @write_seqlock(i32*) #1

declare dso_local %struct.TYPE_4__* @UFS_I(%struct.inode*) #1

declare dso_local i32 @ufs_data_ptr_clear(%struct.ufs_sb_private_info*, i8*) #1

declare dso_local i32 @write_sequnlock(i32*) #1

declare dso_local i32 @ubh_mark_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @free_full_branch(%struct.inode*, i64, i32) #1

declare dso_local i32 @free_data(%struct.to_free*, i64, i32) #1

declare dso_local i64 @IS_SYNC(%struct.inode*) #1

declare dso_local i64 @ubh_buffer_dirty(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_sync_block(%struct.ufs_buffer_head*) #1

declare dso_local i32 @ubh_brelse(%struct.ufs_buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
