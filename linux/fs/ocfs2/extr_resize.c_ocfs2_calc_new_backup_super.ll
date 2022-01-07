; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_calc_new_backup_super.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_resize.c_ocfs2_calc_new_backup_super.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ocfs2_group_desc = type { i64, i32 }

@OCFS2_MAX_BACKUP_SUPERBLOCKS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ocfs2_group_desc*, i32, i32, i32)* @ocfs2_calc_new_backup_super to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_calc_new_backup_super(%struct.inode* %0, %struct.ocfs2_group_desc* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ocfs2_group_desc*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i64, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ocfs2_group_desc* %1, %struct.ocfs2_group_desc** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %12, align 4
  %18 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %19 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 8
  %21 = call i64 @le64_to_cpu(i32 %20)
  store i64 %21, i64* %17, align 8
  store i32 0, i32* %11, align 4
  br label %22

22:                                               ; preds = %87, %5
  %23 = load i32, i32* %11, align 4
  %24 = load i32, i32* @OCFS2_MAX_BACKUP_SUPERBLOCKS, align 4
  %25 = icmp slt i32 %23, %24
  br i1 %25, label %26, label %90

26:                                               ; preds = %22
  %27 = load %struct.inode*, %struct.inode** %6, align 8
  %28 = getelementptr inbounds %struct.inode, %struct.inode* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %11, align 4
  %31 = call i64 @ocfs2_backup_super_blkno(i32 %29, i32 %30)
  store i64 %31, i64* %15, align 8
  %32 = load %struct.inode*, %struct.inode** %6, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = load i64, i64* %15, align 8
  %36 = call i32 @ocfs2_blocks_to_clusters(i32 %34, i64 %35)
  store i32 %36, i32* %13, align 4
  %37 = load %struct.inode*, %struct.inode** %6, align 8
  %38 = load i32, i32* %13, align 4
  %39 = call i64 @ocfs2_which_cluster_group(%struct.inode* %37, i32 %38)
  store i64 %39, i64* %16, align 8
  %40 = load i64, i64* %16, align 8
  %41 = load i64, i64* %17, align 8
  %42 = icmp slt i64 %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %26
  br label %87

44:                                               ; preds = %26
  %45 = load i64, i64* %16, align 8
  %46 = load i64, i64* %17, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %44
  br label %90

49:                                               ; preds = %44
  br label %50

50:                                               ; preds = %49
  %51 = load %struct.inode*, %struct.inode** %6, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = load i64, i64* %17, align 8
  %55 = call i32 @ocfs2_blocks_to_clusters(i32 %53, i64 %54)
  store i32 %55, i32* %14, align 4
  %56 = load i32, i32* %9, align 4
  %57 = load i32, i32* %14, align 4
  %58 = add nsw i32 %57, %56
  store i32 %58, i32* %14, align 4
  %59 = load i32, i32* %14, align 4
  %60 = load i32, i32* %13, align 4
  %61 = icmp sge i32 %59, %60
  br i1 %61, label %62, label %63

62:                                               ; preds = %50
  br label %87

63:                                               ; preds = %50
  %64 = load i32, i32* %10, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %75

66:                                               ; preds = %63
  %67 = load i32, i32* %13, align 4
  %68 = load i32, i32* %8, align 4
  %69 = srem i32 %67, %68
  %70 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %71 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = inttoptr i64 %72 to i64*
  %74 = call i32 @ocfs2_set_bit(i32 %69, i64* %73)
  br label %84

75:                                               ; preds = %63
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %8, align 4
  %78 = srem i32 %76, %77
  %79 = load %struct.ocfs2_group_desc*, %struct.ocfs2_group_desc** %7, align 8
  %80 = getelementptr inbounds %struct.ocfs2_group_desc, %struct.ocfs2_group_desc* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = inttoptr i64 %81 to i64*
  %83 = call i32 @ocfs2_clear_bit(i32 %78, i64* %82)
  br label %84

84:                                               ; preds = %75, %66
  %85 = load i32, i32* %12, align 4
  %86 = add nsw i32 %85, 1
  store i32 %86, i32* %12, align 4
  br label %87

87:                                               ; preds = %84, %62, %43
  %88 = load i32, i32* %11, align 4
  %89 = add nsw i32 %88, 1
  store i32 %89, i32* %11, align 4
  br label %22

90:                                               ; preds = %48, %22
  %91 = load i32, i32* %12, align 4
  ret i32 %91
}

declare dso_local i64 @le64_to_cpu(i32) #1

declare dso_local i64 @ocfs2_backup_super_blkno(i32, i32) #1

declare dso_local i32 @ocfs2_blocks_to_clusters(i32, i64) #1

declare dso_local i64 @ocfs2_which_cluster_group(%struct.inode*, i32) #1

declare dso_local i32 @ocfs2_set_bit(i32, i64*) #1

declare dso_local i32 @ocfs2_clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
