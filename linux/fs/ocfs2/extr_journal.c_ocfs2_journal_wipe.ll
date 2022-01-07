; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_wipe.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_journal.c_ocfs2_journal_wipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ocfs2_journal = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_journal_wipe(%struct.ocfs2_journal* %0, i32 %1) #0 {
  %3 = alloca %struct.ocfs2_journal*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.ocfs2_journal* %0, %struct.ocfs2_journal** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %7 = icmp ne %struct.ocfs2_journal* %6, null
  %8 = xor i1 %7, true
  %9 = zext i1 %8 to i32
  %10 = call i32 @BUG_ON(i32 %9)
  %11 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %12 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %4, align 4
  %15 = call i32 @jbd2_journal_wipe(i32 %13, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* %5, align 4
  %20 = call i32 @mlog_errno(i32 %19)
  br label %32

21:                                               ; preds = %2
  %22 = load %struct.ocfs2_journal*, %struct.ocfs2_journal** %3, align 8
  %23 = getelementptr inbounds %struct.ocfs2_journal, %struct.ocfs2_journal* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @ocfs2_journal_toggle_dirty(i32 %24, i32 0, i32 0)
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %5, align 4
  %27 = icmp slt i32 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %21
  %29 = load i32, i32* %5, align 4
  %30 = call i32 @mlog_errno(i32 %29)
  br label %31

31:                                               ; preds = %28, %21
  br label %32

32:                                               ; preds = %31, %18
  %33 = load i32, i32* %5, align 4
  ret i32 %33
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @jbd2_journal_wipe(i32, i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i32 @ocfs2_journal_toggle_dirty(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
