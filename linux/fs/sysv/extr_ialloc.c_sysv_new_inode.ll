; ModuleID = '/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_new_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/sysv/extr_ialloc.c_sysv_new_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i64, i32, i32, i32, i8*, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.sysv_sb_info = type { i32, i32, i64* }
%struct.writeback_control = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@WB_SYNC_NONE = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.inode* @sysv_new_inode(%struct.inode* %0, i32 %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.sysv_sb_info*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.writeback_control, align 4
  store %struct.inode* %0, %struct.inode** %4, align 8
  store i32 %1, i32* %5, align 4
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 5
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %6, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.sysv_sb_info* @SYSV_SB(%struct.super_block* %15)
  store %struct.sysv_sb_info* %16, %struct.sysv_sb_info** %7, align 8
  %17 = getelementptr inbounds %struct.writeback_control, %struct.writeback_control* %11, i32 0, i32 0
  %18 = load i32, i32* @WB_SYNC_NONE, align 4
  store i32 %18, i32* %17, align 4
  %19 = load %struct.super_block*, %struct.super_block** %6, align 8
  %20 = call %struct.inode* @new_inode(%struct.super_block* %19)
  store %struct.inode* %20, %struct.inode** %8, align 8
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %27, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  %26 = call %struct.inode* @ERR_PTR(i32 %25)
  store %struct.inode* %26, %struct.inode** %3, align 8
  br label %120

27:                                               ; preds = %2
  %28 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %29 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %28, i32 0, i32 0
  %30 = call i32 @mutex_lock(i32* %29)
  %31 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %32 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %33 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %32, i32 0, i32 2
  %34 = load i64*, i64** %33, align 8
  %35 = load i64, i64* %34, align 8
  %36 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %31, i64 %35)
  %37 = ptrtoint i8* %36 to i32
  store i32 %37, i32* %10, align 4
  %38 = load i32, i32* %10, align 4
  %39 = icmp eq i32 %38, 0
  br i1 %39, label %47, label %40

40:                                               ; preds = %27
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = load i32, i32* %10, align 4
  %43 = sub i32 %42, 1
  %44 = call i64* @sv_sb_fic_inode(%struct.super_block* %41, i32 %43)
  %45 = load i64, i64* %44, align 8
  %46 = icmp eq i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %40, %27
  %48 = load %struct.super_block*, %struct.super_block** %6, align 8
  %49 = call i32 @refill_free_cache(%struct.super_block* %48)
  store i32 %49, i32* %10, align 4
  %50 = load i32, i32* %10, align 4
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %61

52:                                               ; preds = %47
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = call i32 @iput(%struct.inode* %53)
  %55 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %56 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %55, i32 0, i32 0
  %57 = call i32 @mutex_unlock(i32* %56)
  %58 = load i32, i32* @ENOSPC, align 4
  %59 = sub nsw i32 0, %58
  %60 = call %struct.inode* @ERR_PTR(i32 %59)
  store %struct.inode* %60, %struct.inode** %3, align 8
  br label %120

61:                                               ; preds = %47
  br label %62

62:                                               ; preds = %61, %40
  %63 = load %struct.super_block*, %struct.super_block** %6, align 8
  %64 = load i32, i32* %10, align 4
  %65 = add i32 %64, -1
  store i32 %65, i32* %10, align 4
  %66 = call i64* @sv_sb_fic_inode(%struct.super_block* %63, i32 %65)
  %67 = load i64, i64* %66, align 8
  store i64 %67, i64* %9, align 8
  %68 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %69 = load i32, i32* %10, align 4
  %70 = call i64 @cpu_to_fs16(%struct.sysv_sb_info* %68, i32 %69)
  %71 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %72 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %71, i32 0, i32 2
  %73 = load i64*, i64** %72, align 8
  store i64 %70, i64* %73, align 8
  %74 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %75 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %76 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = call i32 @fs16_add(%struct.sysv_sb_info* %74, i32 %77, i32 -1)
  %79 = load %struct.super_block*, %struct.super_block** %6, align 8
  %80 = call i32 @dirty_sb(%struct.super_block* %79)
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = load %struct.inode*, %struct.inode** %4, align 8
  %83 = load i32, i32* %5, align 4
  %84 = call i32 @inode_init_owner(%struct.inode* %81, %struct.inode* %82, i32 %83)
  %85 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %86 = load i64, i64* %9, align 8
  %87 = call i8* @fs16_to_cpu(%struct.sysv_sb_info* %85, i64 %86)
  %88 = load %struct.inode*, %struct.inode** %8, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 4
  store i8* %87, i8** %89, align 8
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = call i32 @current_time(%struct.inode* %90)
  %92 = load %struct.inode*, %struct.inode** %8, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 1
  store i32 %91, i32* %93, align 8
  %94 = load %struct.inode*, %struct.inode** %8, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 2
  store i32 %91, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 3
  store i32 %91, i32* %97, align 8
  %98 = load %struct.inode*, %struct.inode** %8, align 8
  %99 = getelementptr inbounds %struct.inode, %struct.inode* %98, i32 0, i32 0
  store i64 0, i64* %99, align 8
  %100 = load %struct.inode*, %struct.inode** %8, align 8
  %101 = call %struct.TYPE_2__* @SYSV_I(%struct.inode* %100)
  %102 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 8
  %104 = call i32 @memset(i32 %103, i32 0, i32 4)
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = call %struct.TYPE_2__* @SYSV_I(%struct.inode* %105)
  %107 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %106, i32 0, i32 0
  store i64 0, i64* %107, align 8
  %108 = load %struct.inode*, %struct.inode** %8, align 8
  %109 = call i32 @insert_inode_hash(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = call i32 @mark_inode_dirty(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %8, align 8
  %113 = call i32 @sysv_write_inode(%struct.inode* %112, %struct.writeback_control* %11)
  %114 = load %struct.inode*, %struct.inode** %8, align 8
  %115 = call i32 @mark_inode_dirty(%struct.inode* %114)
  %116 = load %struct.sysv_sb_info*, %struct.sysv_sb_info** %7, align 8
  %117 = getelementptr inbounds %struct.sysv_sb_info, %struct.sysv_sb_info* %116, i32 0, i32 0
  %118 = call i32 @mutex_unlock(i32* %117)
  %119 = load %struct.inode*, %struct.inode** %8, align 8
  store %struct.inode* %119, %struct.inode** %3, align 8
  br label %120

120:                                              ; preds = %62, %52, %23
  %121 = load %struct.inode*, %struct.inode** %3, align 8
  ret %struct.inode* %121
}

declare dso_local %struct.sysv_sb_info* @SYSV_SB(%struct.super_block*) #1

declare dso_local %struct.inode* @new_inode(%struct.super_block*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @fs16_to_cpu(%struct.sysv_sb_info*, i64) #1

declare dso_local i64* @sv_sb_fic_inode(%struct.super_block*, i32) #1

declare dso_local i32 @refill_free_cache(%struct.super_block*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i64 @cpu_to_fs16(%struct.sysv_sb_info*, i32) #1

declare dso_local i32 @fs16_add(%struct.sysv_sb_info*, i32, i32) #1

declare dso_local i32 @dirty_sb(%struct.super_block*) #1

declare dso_local i32 @inode_init_owner(%struct.inode*, %struct.inode*, i32) #1

declare dso_local i32 @current_time(%struct.inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local %struct.TYPE_2__* @SYSV_I(%struct.inode*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #1

declare dso_local i32 @sysv_write_inode(%struct.inode*, %struct.writeback_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
