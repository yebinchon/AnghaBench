; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_shutdown.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_shutdown.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_journal*, i32* }
%struct.ocfs2_journal = type { i64, i32*, i32*, i32, %struct.inode* }
%struct.inode = type { i32 }
%struct.TYPE_2__ = type { i32 }

@OCFS2_JOURNAL_LOADED = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_IN_SHUTDOWN = common dso_local global i64 0, align 8
@OCFS2_JOURNAL_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ocfs2_journal_shutdown(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store %struct.ocfs2_journal* null, %struct.ocfs2_journal** %3, align 8
  store i32 0, i32* %4, align 4
  store %struct.inode* null, %struct.inode** %5, align 8
  store i32 0, i32* %6, align 4
  %7 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %8 = icmp ne %struct.ocfs2_super* %7, null
  %9 = xor i1 %8, true
  %10 = zext i1 %9 to i32
  %11 = call i32 @BUG_ON(i32 %10)
  %12 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %13 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %12, i32 0, i32 0
  %14 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %13, align 8
  store %struct.ocfs2_journal* %14, %struct.ocfs2_journal** %3, align 8
  %15 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %16 = icmp ne %struct.ocfs2_journal* %15, null
  br i1 %16, label %18, label %17

17:                                               ; preds = %1
  br label %129

18:                                               ; preds = %1
  %19 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %20 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %19, i32 0, i32 4
  %21 = load %struct.inode*, %struct.inode** %20, align 8
  store %struct.inode* %21, %struct.inode** %5, align 8
  %22 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @OCFS2_JOURNAL_LOADED, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %28

27:                                               ; preds = %18
  br label %129

28:                                               ; preds = %18
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = call i32 @igrab(%struct.inode* %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %34, label %32

32:                                               ; preds = %28
  %33 = call i32 (...) @BUG()
  br label %34

34:                                               ; preds = %32, %28
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %36, align 8
  %38 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %37, i32 0, i32 3
  %39 = call i64 @atomic_read(i32* %38)
  %40 = trunc i64 %39 to i32
  store i32 %40, i32* %6, align 4
  %41 = load i32, i32* %6, align 4
  %42 = call i32 @trace_ocfs2_journal_shutdown(i32 %41)
  %43 = load i64, i64* @OCFS2_JOURNAL_IN_SHUTDOWN, align 8
  %44 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %45 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %44, i32 0, i32 0
  store i64 %43, i64* %45, align 8
  %46 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %47 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %46, i32 0, i32 1
  %48 = load i32*, i32** %47, align 8
  %49 = icmp ne i32* %48, null
  br i1 %49, label %50, label %61

50:                                               ; preds = %34
  %51 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %52 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %51, i32 0, i32 1
  %53 = load i32*, i32** %52, align 8
  %54 = call i32 @trace_ocfs2_journal_shutdown_wait(i32* %53)
  %55 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %56 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %55, i32 0, i32 1
  %57 = load i32*, i32** %56, align 8
  %58 = call i32 @kthread_stop(i32* %57)
  %59 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %60 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %59, i32 0, i32 1
  store i32* null, i32** %60, align 8
  br label %61

61:                                               ; preds = %50, %34
  %62 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %63 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %62, i32 0, i32 0
  %64 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %63, align 8
  %65 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %64, i32 0, i32 3
  %66 = call i64 @atomic_read(i32* %65)
  %67 = icmp ne i64 %66, 0
  %68 = zext i1 %67 to i32
  %69 = call i32 @BUG_ON(i32 %68)
  %70 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %71 = call i64 @ocfs2_mount_local(%struct.ocfs2_super* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %92

73:                                               ; preds = %61
  %74 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %75 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %74, i32 0, i32 2
  %76 = load i32*, i32** %75, align 8
  %77 = call i32 @jbd2_journal_lock_updates(i32* %76)
  %78 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %79 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %78, i32 0, i32 2
  %80 = load i32*, i32** %79, align 8
  %81 = call i32 @jbd2_journal_flush(i32* %80)
  store i32 %81, i32* %4, align 4
  %82 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %83 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %82, i32 0, i32 2
  %84 = load i32*, i32** %83, align 8
  %85 = call i32 @jbd2_journal_unlock_updates(i32* %84)
  %86 = load i32, i32* %4, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %73
  %89 = load i32, i32* %4, align 4
  %90 = call i32 @mlog_errno(i32 %89)
  br label %91

91:                                               ; preds = %88, %73
  br label %92

92:                                               ; preds = %91, %61
  %93 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %94 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %93, i32 0, i32 2
  %95 = load i32*, i32** %94, align 8
  %96 = call i32 @jbd2_journal_destroy(i32* %95)
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %110, label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %110, label %101

101:                                              ; preds = %98
  %102 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %103 = call i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super* %102, i32 0, i32 0)
  store i32 %103, i32* %4, align 4
  %104 = load i32, i32* %4, align 4
  %105 = icmp slt i32 %104, 0
  br i1 %105, label %106, label %109

106:                                              ; preds = %101
  %107 = load i32, i32* %4, align 4
  %108 = call i32 @mlog_errno(i32 %107)
  br label %109

109:                                              ; preds = %106, %101
  br label %110

110:                                              ; preds = %109, %98, %92
  %111 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %112 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %111, i32 0, i32 2
  store i32* null, i32** %112, align 8
  %113 = load %struct.inode*, %struct.inode** %5, align 8
  %114 = call %struct.TYPE_2__* @OCFS2_I(%struct.inode* %113)
  %115 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = add nsw i32 %116, -1
  store i32 %117, i32* %115, align 4
  %118 = load %struct.inode*, %struct.inode** %5, align 8
  %119 = call i32 @ocfs2_inode_unlock(%struct.inode* %118, i32 1)
  %120 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %121 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %120, i32 0, i32 1
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @brelse(i32* %122)
  %124 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %125 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %124, i32 0, i32 1
  store i32* null, i32** %125, align 8
  %126 = load i64, i64* @OCFS2_JOURNAL_FREE, align 8
  %127 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %128 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %127, i32 0, i32 0
  store i64 %126, i64* %128, align 8
  br label %129

129:                                              ; preds = %110, %27, %17
  %130 = load %struct.inode*, %struct.inode** %5, align 8
  %131 = call i32 @iput(%struct.inode* %130)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @igrab(%struct.inode*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @trace_ocfs2_journal_shutdown(i32) #1

declare dso_local i32 @trace_ocfs2_journal_shutdown_wait(i32*) #1

declare dso_local i32 @kthread_stop(i32*) #1

declare dso_local i64 @ocfs2_mount_local(%struct.ocfs2_super*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32*) #1

declare dso_local i32 @jbd2_journal_flush(i32*) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @jbd2_journal_destroy(i32*) #1

declare dso_local i32 @ocfs2_journal_toggle_dirty(%struct.ocfs2_super*, i32, i32) #1

declare dso_local %struct.TYPE_2__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_inode_unlock(%struct.inode*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @iput(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
