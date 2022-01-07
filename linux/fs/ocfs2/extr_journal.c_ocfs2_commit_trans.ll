; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_trans.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_commit_trans.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_super = type { i32, %struct.ocfs2_journal* }
%struct.ocfs2_journal = type { i32 }
%struct.TYPE_4__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_commit_trans(%struct.ocfs2_super* %0, %struct.TYPE_4__* %1) #0 {
  %3 = alloca %struct.ocfs2_super*, align 8
  %4 = alloca %struct.TYPE_4__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ocfs2_journal*, align 8
  store %struct.ocfs2_super* %0, %struct.ocfs2_super** %3, align 8
  store %struct.TYPE_4__* %1, %struct.TYPE_4__** %4, align 8
  %8 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %9 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %8, i32 0, i32 1
  %10 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %9, align 8
  store %struct.ocfs2_journal* %10, %struct.ocfs2_journal** %7, align 8
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %12 = icmp ne %struct.TYPE_4__* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i32 @BUG_ON(i32 %14)
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp sgt i32 %18, 1
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %6, align 4
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %4, align 8
  %22 = call i32 @jbd2_journal_stop(%struct.TYPE_4__* %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* %5, align 4
  %24 = icmp slt i32 %23, 0
  br i1 %24, label %25, label %28

25:                                               ; preds = %2
  %26 = load i32, i32* %5, align 4
  %27 = call i32 @mlog_errno(i32 %26)
  br label %28

28:                                               ; preds = %25, %2
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %39, label %31

31:                                               ; preds = %28
  %32 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %7, align 8
  %33 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %32, i32 0, i32 0
  %34 = call i32 @up_read(i32* %33)
  %35 = load %struct.ocfs2_super*, %struct.ocfs2_super** %3, align 8
  %36 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @sb_end_intwrite(i32 %37)
  br label %39

39:                                               ; preds = %31, %28
  %40 = load i32, i32* %5, align 4
  ret i32 %40
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jbd2_journal_stop(%struct.TYPE_4__*) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i32 @sb_end_intwrite(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
