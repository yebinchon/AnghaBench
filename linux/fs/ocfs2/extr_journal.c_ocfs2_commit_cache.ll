; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_cache.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_cache.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ocfs2_super*)* @ocfs2_commit_cache to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ocfs2_commit_cache(%struct.ocfs2_super* %0) #0 {
  %2 = alloca %struct.ocfs2_super*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.ocfs2_journal*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %2, align 8
  store i32 0, i32* %3, align 4
  store %struct.ocfs2_journal* null, %struct.ocfs2_journal** %5, align 8
  %6 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %7 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %6, i32 0, i32 0
  %8 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  store %struct.ocfs2_journal* %8, %struct.ocfs2_journal** %5, align 8
  %9 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %10 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %9, i32 0, i32 2
  %11 = call i32 @down_write(i32* %10)
  %12 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %13 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %12, i32 0, i32 3
  %14 = call i32 @atomic_read(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 @trace_ocfs2_commit_cache_begin(i32 %15)
  %17 = load i32, i32* %4, align 4
  %18 = icmp eq i32 %17, 0
  br i1 %18, label %19, label %23

19:                                               ; preds = %1
  %20 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %21 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %20, i32 0, i32 2
  %22 = call i32 @up_write(i32* %21)
  br label %66

23:                                               ; preds = %1
  %24 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %25 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @jbd2_journal_lock_updates(i32 %26)
  %28 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %29 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %28, i32 0, i32 4
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @jbd2_journal_flush(i32 %30)
  store i32 %31, i32* %3, align 4
  %32 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %33 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %32, i32 0, i32 4
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @jbd2_journal_unlock_updates(i32 %34)
  %36 = load i32, i32* %3, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %44

38:                                               ; preds = %23
  %39 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %40 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %39, i32 0, i32 2
  %41 = call i32 @up_write(i32* %40)
  %42 = load i32, i32* %3, align 4
  %43 = call i32 @mlog_errno(i32 %42)
  br label %66

44:                                               ; preds = %23
  %45 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %46 = call i32 @ocfs2_inc_trans_id(%struct.ocfs2_journal* %45)
  %47 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %48 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %47, i32 0, i32 3
  %49 = call i32 @atomic_read(i32* %48)
  store i32 %49, i32* %4, align 4
  %50 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %51 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %50, i32 0, i32 3
  %52 = call i32 @atomic_set(i32* %51, i32 0)
  %53 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %54 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %53, i32 0, i32 2
  %55 = call i32 @up_write(i32* %54)
  %56 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %57 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %4, align 4
  %60 = call i32 @trace_ocfs2_commit_cache_end(i32 %58, i32 %59)
  %61 = load %struct.ocfs2_super*, %struct.ocfs2_super** %2, align 8
  %62 = call i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super* %61)
  %63 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %5, align 8
  %64 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %63, i32 0, i32 0
  %65 = call i32 @wake_up(i32* %64)
  br label %66

66:                                               ; preds = %44, %38, %19
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @down_write(i32*) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @trace_ocfs2_commit_cache_begin(i32) #1

declare dso_local i32 @up_write(i32*) #1

declare dso_local i32 @jbd2_journal_lock_updates(i32) #1

declare dso_local i32 @jbd2_journal_flush(i32) #1

declare dso_local i32 @jbd2_journal_unlock_updates(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_inc_trans_id(%struct.ocfs2_journal*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @trace_ocfs2_commit_cache_end(i32, i32) #1

declare dso_local i32 @ocfs2_wake_downconvert_thread(%struct.ocfs2_super*) #1

declare dso_local i32 @wake_up(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
