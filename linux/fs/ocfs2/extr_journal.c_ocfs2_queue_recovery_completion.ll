; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_recovery_completion.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_queue_recovery_completion.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.ocfs2_dinode = type { i32 }
%struct.ocfs2_quota_recovery = type { i32 }
%struct.ocfs2_la_recovery_item = type { i32, i32, i32, %struct.ocfs2_quota_recovery*, %struct.ocfs2_dinode*, %struct.ocfs2_dinode* }

@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.ocfs2_journal*, i32, %struct.ocfs2_dinode*, %struct.ocfs2_dinode*, %struct.ocfs2_quota_recovery*, i32)* @ocfs2_queue_recovery_completion to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ocfs2_queue_recovery_completion(%struct.ocfs2_journal* %0, i32 %1, %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode* %3, %struct.ocfs2_quota_recovery* %4, i32 %5) #0 {
  %7 = alloca %struct.ocfs2_journal*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.ocfs2_dinode*, align 8
  %10 = alloca %struct.ocfs2_dinode*, align 8
  %11 = alloca %struct.ocfs2_quota_recovery*, align 8
  %12 = alloca i32, align 4
  %13 = alloca %struct.ocfs2_la_recovery_item*, align 8
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.ocfs2_dinode* %2, %struct.ocfs2_dinode** %9, align 8
  store %struct.ocfs2_dinode* %3, %struct.ocfs2_dinode** %10, align 8
  store %struct.ocfs2_quota_recovery* %4, %struct.ocfs2_quota_recovery** %11, align 8
  store i32 %5, i32* %12, align 4
  %14 = load i32, i32* @GFP_NOFS, align 4
  %15 = call %struct.ocfs2_la_recovery_item* @kmalloc(i32 40, i32 %14)
  store %struct.ocfs2_la_recovery_item* %15, %struct.ocfs2_la_recovery_item** %13, align 8
  %16 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %17 = icmp ne %struct.ocfs2_la_recovery_item* %16, null
  br i1 %17, label %32, label %18

18:                                               ; preds = %6
  %19 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %20 = call i32 @kfree(%struct.ocfs2_dinode* %19)
  %21 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %22 = call i32 @kfree(%struct.ocfs2_dinode* %21)
  %23 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %24 = icmp ne %struct.ocfs2_quota_recovery* %23, null
  br i1 %24, label %25, label %28

25:                                               ; preds = %18
  %26 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %27 = call i32 @ocfs2_free_quota_recovery(%struct.ocfs2_quota_recovery* %26)
  br label %28

28:                                               ; preds = %25, %18
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  %31 = call i32 @mlog_errno(i32 %30)
  br label %70

32:                                               ; preds = %6
  %33 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %34 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %33, i32 0, i32 2
  %35 = call i32 @INIT_LIST_HEAD(i32* %34)
  %36 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %9, align 8
  %37 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %38 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %37, i32 0, i32 5
  store %struct.ocfs2_dinode* %36, %struct.ocfs2_dinode** %38, align 8
  %39 = load i32, i32* %8, align 4
  %40 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %41 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %40, i32 0, i32 0
  store i32 %39, i32* %41, align 8
  %42 = load %struct.ocfs2_dinode*, %struct.ocfs2_dinode** %10, align 8
  %43 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %44 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %43, i32 0, i32 4
  store %struct.ocfs2_dinode* %42, %struct.ocfs2_dinode** %44, align 8
  %45 = load %struct.ocfs2_quota_recovery*, %struct.ocfs2_quota_recovery** %11, align 8
  %46 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %47 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %46, i32 0, i32 3
  store %struct.ocfs2_quota_recovery* %45, %struct.ocfs2_quota_recovery** %47, align 8
  %48 = load i32, i32* %12, align 4
  %49 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %50 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %52 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %51, i32 0, i32 0
  %53 = call i32 @spin_lock(i32* %52)
  %54 = load %struct.ocfs2_la_recovery_item*, %struct.ocfs2_la_recovery_item** %13, align 8
  %55 = getelementptr inbounds %struct.ocfs2_la_recovery_item, %struct.ocfs2_la_recovery_item* %54, i32 0, i32 2
  %56 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %57 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %56, i32 0, i32 3
  %58 = call i32 @list_add_tail(i32* %55, i32* %57)
  %59 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %60 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %59, i32 0, i32 2
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %65 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %64, i32 0, i32 1
  %66 = call i32 @queue_work(i32 %63, i32* %65)
  %67 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %68 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %67, i32 0, i32 0
  %69 = call i32 @spin_unlock(i32* %68)
  br label %70

70:                                               ; preds = %32, %28
  ret void
}

declare dso_local %struct.ocfs2_la_recovery_item* @kmalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.ocfs2_dinode*) #1

declare dso_local i32 @ocfs2_free_quota_recovery(%struct.ocfs2_quota_recovery*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
