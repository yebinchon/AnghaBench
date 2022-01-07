; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_shutdown_local_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_shutdown_local_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i64, %struct.buffer_head*, i32, i32, i64, i32 }
%struct.buffer_head = type { i32, i64 }
%struct.inode = type { i32 }
%struct.ocfs2_dinode = type { i32 }

@OCFS2_LA_UNUSED = common dso_local global i64 0, align 8
@LOCAL_ALLOC_SYSTEM_INODE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@OCFS2_LA_DISABLED = common dso_local global i64 0, align 8
@GLOBAL_BITMAP_SYSTEM_INODE = common dso_local global i32 0, align 4
@OCFS2_INVALID_SLOT = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_shutdown_local_alloc(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.buffer_head*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %7, align 8
  store %struct.inode* null, %struct.inode** %8, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %9, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  %11 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %12 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %11, i32 0, i32 5
  %13 = call i32 @cancel_delayed_work(i32* %12)
  %14 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %15 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %23

18:                                               ; preds = %1
  %19 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %20 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %19, i32 0, i32 4
  %21 = load i64, i64* %20, align 8
  %22 = call i32 @flush_workqueue(i64 %21)
  br label %23

23:                                               ; preds = %18, %1
  %24 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %25 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @OCFS2_LA_UNUSED, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %153

30:                                               ; preds = %23
  %31 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %32 = load i32, i32* @LOCAL_ALLOC_SYSTEM_INODE, align 4
  %33 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %34 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %33, i32 0, i32 3
  %35 = load i32, i32* %34, align 4
  %36 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %31, i32 %32, i32 %35)
  store %struct.inode* %36, %struct.inode** %5, align 8
  %37 = load %struct.inode*, %struct.inode** %5, align 8
  %38 = icmp ne %struct.inode* %37, null
  br i1 %38, label %44, label %39

39:                                               ; preds = %30
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %3, align 4
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %153

44:                                               ; preds = %30
  %45 = load i64, i64* @OCFS2_LA_DISABLED, align 8
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 0
  store i64 %45, i64* %47, align 8
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 2
  %50 = call i32 @ocfs2_resmap_uninit(i32* %49)
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %52 = load i32, i32* @GLOBAL_BITMAP_SYSTEM_INODE, align 4
  %53 = load i32, i32* @OCFS2_INVALID_SLOT, align 4
  %54 = call %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super* %51, i32 %52, i32 %53)
  store %struct.inode* %54, %struct.inode** %8, align 8
  %55 = load %struct.inode*, %struct.inode** %8, align 8
  %56 = icmp ne %struct.inode* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @EINVAL, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %3, align 4
  %60 = load i32, i32* %3, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %153

62:                                               ; preds = %44
  %63 = load %struct.inode*, %struct.inode** %8, align 8
  %64 = call i32 @inode_lock(%struct.inode* %63)
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = call i32 @ocfs2_inode_lock(%struct.inode* %65, %struct.buffer_head** %7, i32 1)
  store i32 %66, i32* %3, align 4
  %67 = load i32, i32* %3, align 4
  %68 = icmp slt i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %62
  %70 = load i32, i32* %3, align 4
  %71 = call i32 @mlog_errno(i32 %70)
  br label %148

72:                                               ; preds = %62
  %73 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %74 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %75 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %73, i32 %74)
  store i32* %75, i32** %4, align 8
  %76 = load i32*, i32** %4, align 8
  %77 = call i64 @IS_ERR(i32* %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %83

79:                                               ; preds = %72
  %80 = load i32*, i32** %4, align 8
  %81 = call i32 @PTR_ERR(i32* %80)
  %82 = call i32 @mlog_errno(i32 %81)
  store i32* null, i32** %4, align 8
  br label %143

83:                                               ; preds = %72
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %85 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %84, i32 0, i32 1
  %86 = load %struct.buffer_head*, %struct.buffer_head** %85, align 8
  store %struct.buffer_head* %86, %struct.buffer_head** %6, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = inttoptr i64 %89 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %90, %struct.ocfs2_dinode** %10, align 8
  %91 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %92 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %93 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @GFP_NOFS, align 4
  %96 = call %struct.ocfs2_dinode* @kmemdup(%struct.ocfs2_dinode* %91, i32 %94, i32 %95)
  store %struct.ocfs2_dinode* %96, %struct.ocfs2_dinode** %9, align 8
  %97 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %98 = icmp ne %struct.ocfs2_dinode* %97, null
  br i1 %98, label %102, label %99

99:                                               ; preds = %83
  %100 = load i32, i32* @ENOMEM, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %3, align 4
  br label %139

102:                                              ; preds = %83
  %103 = load i32*, i32** %4, align 8
  %104 = load %struct.inode*, %struct.inode** %5, align 8
  %105 = call i32 @INODE_CACHE(%struct.inode* %104)
  %106 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %107 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %108 = call i32 @ocfs2_journal_access_di(i32* %103, i32 %105, %struct.buffer_head* %106, i32 %107)
  store i32 %108, i32* %3, align 4
  %109 = load i32, i32* %3, align 4
  %110 = icmp slt i32 %109, 0
  br i1 %110, label %111, label %114

111:                                              ; preds = %102
  %112 = load i32, i32* %3, align 4
  %113 = call i32 @mlog_errno(i32 %112)
  br label %139

114:                                              ; preds = %102
  %115 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %116 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %115)
  %117 = load i32*, i32** %4, align 8
  %118 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %119 = call i32 @ocfs2_journal_dirty(i32* %117, %struct.buffer_head* %118)
  %120 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %121 = call i32 @brelse(%struct.buffer_head* %120)
  %122 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %123 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %122, i32 0, i32 1
  store %struct.buffer_head* null, %struct.buffer_head** %123, align 8
  %124 = load i64, i64* @OCFS2_LA_UNUSED, align 8
  %125 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %126 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %125, i32 0, i32 0
  store i64 %124, i64* %126, align 8
  %127 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %128 = load i32*, i32** %4, align 8
  %129 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %130 = load %struct.inode*, %struct.inode** %8, align 8
  %131 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %132 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %127, i32* %128, %struct.ocfs2_dinode* %129, %struct.inode* %130, %struct.buffer_head* %131)
  store i32 %132, i32* %3, align 4
  %133 = load i32, i32* %3, align 4
  %134 = icmp slt i32 %133, 0
  br i1 %134, label %135, label %138

135:                                              ; preds = %114
  %136 = load i32, i32* %3, align 4
  %137 = call i32 @mlog_errno(i32 %136)
  br label %138

138:                                              ; preds = %135, %114
  br label %139

139:                                              ; preds = %138, %111, %99
  %140 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %141 = load i32*, i32** %4, align 8
  %142 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %140, i32* %141)
  br label %143

143:                                              ; preds = %139, %79
  %144 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  %145 = call i32 @brelse(%struct.buffer_head* %144)
  %146 = load %struct.inode*, %struct.inode** %8, align 8
  %147 = call i32 @ocfs2_inode_unlock(%struct.inode* %146, i32 1)
  br label %148

148:                                              ; preds = %143, %69
  %149 = load %struct.inode*, %struct.inode** %8, align 8
  %150 = call i32 @inode_unlock(%struct.inode* %149)
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = call i32 @iput(%struct.inode* %151)
  br label %153

153:                                              ; preds = %148, %57, %39, %29
  %154 = load %struct.inode*, %struct.inode** %5, align 8
  %155 = call i32 @iput(%struct.inode* %154)
  %156 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %157 = call i32 @kfree(%struct.ocfs2_dinode* %156)
  ret void
}

declare dso_local i32 @cancel_delayed_work(i32*) #1

declare dso_local i32 @flush_workqueue(i64) #1

declare dso_local %struct.inode* @ocfs2_get_system_file_inode(%struct.ocfs2_super*, i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_resmap_uninit(i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_lock(%struct.inode*, %struct.buffer_head**, i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.ocfs2_dinode* @kmemdup(%struct.ocfs2_dinode*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.buffer_head*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.buffer_head*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
