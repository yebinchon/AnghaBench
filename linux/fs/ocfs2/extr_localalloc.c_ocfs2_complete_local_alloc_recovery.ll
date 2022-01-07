; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_complete_local_alloc_recovery.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_complete_local_alloc_recovery.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.TYPE_7__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.inode = type { i32 }

@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_complete_local_alloc_recovery(%struct.ocfs2_super* %0, %struct.ocfs2_dinode* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.ocfs2_dinode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.TYPE_7__*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.ocfs2_dinode* %1, %struct.ocfs2_dinode** %4, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  %9 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %10 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %11 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %12 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %9, i32 %10, i32 %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load %struct.inode*, %struct.inode** %8, align 8
  %14 = icmp ne %struct.inode* %13, null
  br i1 %14, label %20, label %15

15:                                               ; preds = %2
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mlog_errno(i32 %18)
  br label %70

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = call i32 @inode_lock(%struct.inode* %21)
  %23 = load %struct.inode*, %struct.inode** %8, align 8
  %24 = call i32 @ocfs2_inode_lock(%struct.inode* %23, %struct.buffer_head** %7, i32 1)
  store i32 %24, i32* %5, align 4
  %25 = load i32, i32* %5, align 4
  %26 = icmp slt i32 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %20
  %28 = load i32, i32* %5, align 4
  %29 = call i32 @mlog_errno(i32 %28)
  br label %63

30:                                               ; preds = %20
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %32 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %33 = call %struct.TYPE_7__* @ocfs2_start_trans(%struct.ocfs2_super* %31, i32 %32)
  store %struct.TYPE_7__* %33, %struct.TYPE_7__** %6, align 8
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %35 = call i64 @IS_ERR(%struct.TYPE_7__* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %42

37:                                               ; preds = %30
  %38 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %39 = call i32 @PTR_ERR(%struct.TYPE_7__* %38)
  store i32 %39, i32* %5, align 4
  store %struct.TYPE_7__* null, %struct.TYPE_7__** %6, align 8
  %40 = load i32, i32* %5, align 4
  %41 = call i32 @mlog_errno(i32 %40)
  br label %60

42:                                               ; preds = %30
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %44 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %43, i32 0, i32 0
  store i32 1, i32* %44, align 4
  %45 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %46 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %4, align 8
  %48 = load %struct.inode*, %struct.inode** %8, align 8
  %49 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %50 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %45, %struct.TYPE_7__* %46, %struct.ocfs2_dinode* %47, %struct.inode* %48, %struct.buffer_head* %49)
  store i32 %50, i32* %5, align 4
  %51 = load i32, i32* %5, align 4
  %52 = icmp slt i32 %51, 0
  br i1 %52, label %53, label %56

53:                                               ; preds = %42
  %54 = load i32, i32* %5, align 4
  %55 = call i32 @mlog_errno(i32 %54)
  br label %56

56:                                               ; preds = %53, %42
  %57 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %58 = load %struct.TYPE_7__*, %struct.TYPE_7__** %6, align 8
  %59 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %57, %struct.TYPE_7__* %58)
  br label %60

60:                                               ; preds = %56, %37
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = call i32 @ocfs2_inode_unlock(%struct.inode* %61, i32 1)
  br label %63

63:                                               ; preds = %60, %27
  %64 = load %struct.inode*, %struct.inode** %8, align 8
  %65 = call i32 @inode_unlock(%struct.inode* %64)
  %66 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %67 = call i32 @brelse(%struct.buffer_head* %66)
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = call i32 @iput(%struct.inode* %68)
  br label %70

70:                                               ; preds = %63, %15
  %71 = load i32, i32* %5, align 4
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %76, label %73

73:                                               ; preds = %70
  %74 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %75 = call i32 @ocfs2_init_steal_slots(%struct.ocfs2_super* %74)
  br label %76

76:                                               ; preds = %73, %70
  %77 = load i32, i32* %5, align 4
  %78 = icmp ne i32 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %76
  %80 = load i32, i32* %5, align 4
  %81 = call i32 @mlog_errno(i32 %80)
  br label %82

82:                                               ; preds = %79, %76
  %83 = load i32, i32* %5, align 4
  ret i32 %83
}

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local %struct.TYPE_7__* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @PTR_ERR(%struct.TYPE_7__*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, %struct.TYPE_7__*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, %struct.TYPE_7__*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ocfs2_init_steal_slots(%struct.ocfs2_super*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
