; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_slide_window.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_localalloc.c_ocfs2_local_alloc_slide_window.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.TYPE_4__, %struct.TYPE_5__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_5__ = type { i32, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_alloc_context = type { i32 }

@OCFS2_LA_EVENT_SLIDE = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4
@OCFS2_WINDOW_MOVE_CREDITS = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@OCFS2_JOURNAL_ACCESS_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*, %struct.inode*)* @ocfs2_local_alloc_slide_window to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_local_alloc_slide_window(%struct.ocfs2_super* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_alloc_context*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store i32 0, i32* %5, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store %struct.inode* null, %struct.inode** %7, align 8
  store i32* null, i32** %8, align 8
  store %struct.ocfs2_dinode* null, %struct.ocfs2_dinode** %10, align 8
  store %struct.ocfs2_alloc_context* null, %struct.ocfs2_alloc_context** %11, align 8
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %13 = load i32, i32* @OCFS2_LA_EVENT_SLIDE, align 4
  %14 = call i32 @ocfs2_recalc_la_window(%struct.ocfs2_super* %12, i32 %13)
  %15 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %16 = call i32 @ocfs2_local_alloc_reserve_for_window(%struct.ocfs2_super* %15, %struct.ocfs2_alloc_context** %11, %struct.inode** %7, %struct.buffer_head** %6)
  store i32 %16, i32* %5, align 4
  %17 = load i32, i32* %5, align 4
  %18 = icmp slt i32 %17, 0
  br i1 %18, label %19, label %28

19:                                               ; preds = %2
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @ENOSPC, align 4
  %22 = sub nsw i32 0, %21
  %23 = icmp ne i32 %20, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %19
  %25 = load i32, i32* %5, align 4
  %26 = call i32 @mlog_errno(i32 %25)
  br label %27

27:                                               ; preds = %24, %19
  br label %116

28:                                               ; preds = %2
  %29 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %30 = load i32, i32* @OCFS2_WINDOW_MOVE_CREDITS, align 4
  %31 = call i32* @ocfs2_start_trans(%struct.ocfs2_super* %29, i32 %30)
  store i32* %31, i32** %8, align 8
  %32 = load i32*, i32** %8, align 8
  %33 = call i64 @IS_ERR(i32* %32)
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load i32*, i32** %8, align 8
  %37 = call i32 @PTR_ERR(i32* %36)
  store i32 %37, i32* %5, align 4
  store i32* null, i32** %8, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @mlog_errno(i32 %38)
  br label %116

40:                                               ; preds = %28
  %41 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %42 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %41, i32 0, i32 1
  %43 = load %struct.TYPE_5__*, %struct.TYPE_5__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 1
  %45 = load i64, i64* %44, align 8
  %46 = inttoptr i64 %45 to %struct.ocfs2_dinode*
  store %struct.ocfs2_dinode* %46, %struct.ocfs2_dinode** %9, align 8
  %47 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %48 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %49 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %48, i32 0, i32 1
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call %struct.ocfs2_dinode* @kmemdup(%struct.ocfs2_dinode* %47, i32 %52, i32 %53)
  store %struct.ocfs2_dinode* %54, %struct.ocfs2_dinode** %10, align 8
  %55 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %56 = icmp ne %struct.ocfs2_dinode* %55, null
  br i1 %56, label %62, label %57

57:                                               ; preds = %40
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %5, align 4
  %60 = load i32, i32* %5, align 4
  %61 = call i32 @mlog_errno(i32 %60)
  br label %116

62:                                               ; preds = %40
  %63 = load i32*, i32** %8, align 8
  %64 = load %struct.inode*, %struct.inode** %4, align 8
  %65 = call i32 @INODE_CACHE(%struct.inode* %64)
  %66 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %67 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %66, i32 0, i32 1
  %68 = load %struct.TYPE_5__*, %struct.TYPE_5__** %67, align 8
  %69 = load i32, i32* @OCFS2_JOURNAL_ACCESS_WRITE, align 4
  %70 = call i32 @ocfs2_journal_access_di(i32* %63, i32 %65, %struct.TYPE_5__* %68, i32 %69)
  store i32 %70, i32* %5, align 4
  %71 = load i32, i32* %5, align 4
  %72 = icmp slt i32 %71, 0
  br i1 %72, label %73, label %76

73:                                               ; preds = %62
  %74 = load i32, i32* %5, align 4
  %75 = call i32 @mlog_errno(i32 %74)
  br label %116

76:                                               ; preds = %62
  %77 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %78 = call i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode* %77)
  %79 = load i32*, i32** %8, align 8
  %80 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %81 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %80, i32 0, i32 1
  %82 = load %struct.TYPE_5__*, %struct.TYPE_5__** %81, align 8
  %83 = call i32 @ocfs2_journal_dirty(i32* %79, %struct.TYPE_5__* %82)
  %84 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %85 = load i32*, i32** %8, align 8
  %86 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %87 = load %struct.inode*, %struct.inode** %7, align 8
  %88 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %89 = call i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super* %84, i32* %85, %struct.ocfs2_dinode* %86, %struct.inode* %87, %struct.buffer_head* %88)
  store i32 %89, i32* %5, align 4
  %90 = load i32, i32* %5, align 4
  %91 = icmp slt i32 %90, 0
  br i1 %91, label %92, label %95

92:                                               ; preds = %76
  %93 = load i32, i32* %5, align 4
  %94 = call i32 @mlog_errno(i32 %93)
  br label %116

95:                                               ; preds = %76
  %96 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %97 = load i32*, i32** %8, align 8
  %98 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %99 = call i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super* %96, i32* %97, %struct.ocfs2_alloc_context* %98)
  store i32 %99, i32* %5, align 4
  %100 = load i32, i32* %5, align 4
  %101 = icmp slt i32 %100, 0
  br i1 %101, label %102, label %111

102:                                              ; preds = %95
  %103 = load i32, i32* %5, align 4
  %104 = load i32, i32* @ENOSPC, align 4
  %105 = sub nsw i32 0, %104
  %106 = icmp ne i32 %103, %105
  br i1 %106, label %107, label %110

107:                                              ; preds = %102
  %108 = load i32, i32* %5, align 4
  %109 = call i32 @mlog_errno(i32 %108)
  br label %110

110:                                              ; preds = %107, %102
  br label %116

111:                                              ; preds = %95
  %112 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %113 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %112, i32 0, i32 0
  %114 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %113, i32 0, i32 0
  %115 = call i32 @atomic_inc(i32* %114)
  br label %116

116:                                              ; preds = %111, %110, %92, %73, %57, %35, %27
  %117 = load i32*, i32** %8, align 8
  %118 = icmp ne i32* %117, null
  br i1 %118, label %119, label %123

119:                                              ; preds = %116
  %120 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %121 = load i32*, i32** %8, align 8
  %122 = call i32 @ocfs2_commit_trans(%struct.ocfs2_super* %120, i32* %121)
  br label %123

123:                                              ; preds = %119, %116
  %124 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %125 = call i32 @brelse(%struct.buffer_head* %124)
  %126 = load %struct.inode*, %struct.inode** %7, align 8
  %127 = call i32 @iput(%struct.inode* %126)
  %128 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %129 = call i32 @kfree(%struct.ocfs2_dinode* %128)
  %130 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %131 = icmp ne %struct.ocfs2_alloc_context* %130, null
  br i1 %131, label %132, label %135

132:                                              ; preds = %123
  %133 = load %struct.ocfs2_alloc_context*, %struct.ocfs2_alloc_context** %11, align 8
  %134 = call i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context* %133)
  br label %135

135:                                              ; preds = %132, %123
  %136 = load i32, i32* %5, align 4
  %137 = icmp ne i32 %136, 0
  br i1 %137, label %138, label %141

138:                                              ; preds = %135
  %139 = load i32, i32* %5, align 4
  %140 = call i32 @mlog_errno(i32 %139)
  br label %141

141:                                              ; preds = %138, %135
  %142 = load i32, i32* %5, align 4
  ret i32 %142
}

declare dso_local i32 @ocfs2_recalc_la_window(%struct.ocfs2_super*, i32) #1

declare dso_local i32 @ocfs2_local_alloc_reserve_for_window(%struct.ocfs2_super*, %struct.ocfs2_alloc_context**, %struct.inode**, %struct.buffer_head**) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32* @ocfs2_start_trans(%struct.ocfs2_super*, i32) #1

declare dso_local i64 @IS_ERR(i32*) #1

declare dso_local i32 @PTR_ERR(i32*) #1

declare dso_local %struct.ocfs2_dinode* @kmemdup(%struct.ocfs2_dinode*, i32, i32) #1

declare dso_local i32 @ocfs2_journal_access_di(i32*, i32, %struct.TYPE_5__*, i32) #1

declare dso_local i32 @INODE_CACHE(%struct.inode*) #1

declare dso_local i32 @ocfs2_clear_local_alloc(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_journal_dirty(i32*, %struct.TYPE_5__*) #1

declare dso_local i32 @ocfs2_sync_local_to_main(%struct.ocfs2_super*, i32*, %struct.ocfs2_dinode*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @ocfs2_local_alloc_new_window(%struct.ocfs2_super*, i32*, %struct.ocfs2_alloc_context*) #1

declare dso_local i32 @atomic_inc(i32*) #1

declare dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super*, i32*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_free_alloc_context(%struct.ocfs2_alloc_context*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
