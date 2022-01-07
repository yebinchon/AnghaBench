; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_block_change_owner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_block_change_owner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, i32, i64 }
%struct.xfs_btree_block_change_owner_info = type { i32, i32 }
%struct.xfs_btree_block = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.xfs_buf = type { i32 }

@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@XFS_BTREE_ROOT_IN_INODE = common dso_local global i32 0, align 4
@XFS_BB_OWNER = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xfs_btree_cur*, i32, i8*)* @xfs_btree_block_change_owner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xfs_btree_block_change_owner(%struct.xfs_btree_cur* %0, i32 %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  %8 = alloca %struct.xfs_btree_block_change_owner_info*, align 8
  %9 = alloca %struct.xfs_btree_block*, align 8
  %10 = alloca %struct.xfs_buf*, align 8
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.xfs_btree_block_change_owner_info*
  store %struct.xfs_btree_block_change_owner_info* %12, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %13 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur* %13, i32 %14, %struct.xfs_buf** %10)
  store %struct.xfs_btree_block* %15, %struct.xfs_btree_block** %9, align 8
  %16 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %20 = and i32 %18, %19
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %43

22:                                               ; preds = %3
  %23 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %24 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.xfs_btree_block_change_owner_info*, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %29 = getelementptr inbounds %struct.xfs_btree_block_change_owner_info, %struct.xfs_btree_block_change_owner_info* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = call i64 @cpu_to_be64(i32 %30)
  %32 = icmp eq i64 %27, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %22
  store i32 0, i32* %4, align 4
  br label %109

34:                                               ; preds = %22
  %35 = load %struct.xfs_btree_block_change_owner_info*, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %36 = getelementptr inbounds %struct.xfs_btree_block_change_owner_info, %struct.xfs_btree_block_change_owner_info* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i64 @cpu_to_be64(i32 %37)
  %39 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %40 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 0
  store i64 %38, i64* %42, align 8
  br label %64

43:                                               ; preds = %3
  %44 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %45 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load %struct.xfs_btree_block_change_owner_info*, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %50 = getelementptr inbounds %struct.xfs_btree_block_change_owner_info, %struct.xfs_btree_block_change_owner_info* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = call i64 @cpu_to_be32(i32 %51)
  %53 = icmp eq i64 %48, %52
  br i1 %53, label %54, label %55

54:                                               ; preds = %43
  store i32 0, i32* %4, align 4
  br label %109

55:                                               ; preds = %43
  %56 = load %struct.xfs_btree_block_change_owner_info*, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %57 = getelementptr inbounds %struct.xfs_btree_block_change_owner_info, %struct.xfs_btree_block_change_owner_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i64 @cpu_to_be32(i32 %58)
  %60 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %61 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i32 0, i32 0
  store i64 %59, i64* %63, align 8
  br label %64

64:                                               ; preds = %55, %34
  %65 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %66 = icmp ne %struct.xfs_buf* %65, null
  br i1 %66, label %82, label %67

67:                                               ; preds = %64
  %68 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %69 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = load i32, i32* @XFS_BTREE_ROOT_IN_INODE, align 4
  %72 = and i32 %70, %71
  %73 = call i32 @ASSERT(i32 %72)
  %74 = load i32, i32* %6, align 4
  %75 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %76 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = sub nsw i32 %77, 1
  %79 = icmp eq i32 %74, %78
  %80 = zext i1 %79 to i32
  %81 = call i32 @ASSERT(i32 %80)
  store i32 0, i32* %4, align 4
  br label %109

82:                                               ; preds = %64
  %83 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %84 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %83, i32 0, i32 2
  %85 = load i64, i64* %84, align 8
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %102

87:                                               ; preds = %82
  %88 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %89 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %92 = call i32 @xfs_trans_ordered_buf(i64 %90, %struct.xfs_buf* %91)
  %93 = icmp ne i32 %92, 0
  br i1 %93, label %101, label %94

94:                                               ; preds = %87
  %95 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %96 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %97 = load i32, i32* @XFS_BB_OWNER, align 4
  %98 = call i32 @xfs_btree_log_block(%struct.xfs_btree_cur* %95, %struct.xfs_buf* %96, i32 %97)
  %99 = load i32, i32* @EAGAIN, align 4
  %100 = sub nsw i32 0, %99
  store i32 %100, i32* %4, align 4
  br label %109

101:                                              ; preds = %87
  br label %108

102:                                              ; preds = %82
  %103 = load %struct.xfs_buf*, %struct.xfs_buf** %10, align 8
  %104 = load %struct.xfs_btree_block_change_owner_info*, %struct.xfs_btree_block_change_owner_info** %8, align 8
  %105 = getelementptr inbounds %struct.xfs_btree_block_change_owner_info, %struct.xfs_btree_block_change_owner_info* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i32 @xfs_buf_delwri_queue(%struct.xfs_buf* %103, i32 %106)
  br label %108

108:                                              ; preds = %102, %101
  store i32 0, i32* %4, align 4
  br label %109

109:                                              ; preds = %108, %94, %67, %54, %33
  %110 = load i32, i32* %4, align 4
  ret i32 %110
}

declare dso_local %struct.xfs_btree_block* @xfs_btree_get_block(%struct.xfs_btree_cur*, i32, %struct.xfs_buf**) #1

declare dso_local i64 @cpu_to_be64(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_trans_ordered_buf(i64, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_btree_log_block(%struct.xfs_btree_cur*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_buf_delwri_queue(%struct.xfs_buf*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
