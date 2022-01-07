; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_older_journal_lists.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_flush_older_journal_lists.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i64 }
%struct.list_head = type { %struct.list_head* }
%struct.reiserfs_journal = type { %struct.list_head }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*)* @flush_older_journal_lists to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @flush_older_journal_lists(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.reiserfs_journal_list*, align 8
  %6 = alloca %struct.list_head*, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.reiserfs_journal*, align 8
  %9 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %5, align 8
  %10 = load %struct.super_block*, %struct.super_block** %4, align 8
  %11 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %10)
  store %struct.reiserfs_journal* %11, %struct.reiserfs_journal** %8, align 8
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %5, align 8
  %13 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  store i32 %14, i32* %9, align 4
  br label %15

15:                                               ; preds = %33, %2
  %16 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %17 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.list_head, %struct.list_head* %17, i32 0, i32 0
  %19 = load %struct.list_head*, %struct.list_head** %18, align 8
  store %struct.list_head* %19, %struct.list_head** %6, align 8
  %20 = load %struct.list_head*, %struct.list_head** %6, align 8
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %8, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  %23 = icmp eq %struct.list_head* %20, %22
  br i1 %23, label %24, label %25

24:                                               ; preds = %15
  store i32 0, i32* %3, align 4
  br label %44

25:                                               ; preds = %15
  %26 = load %struct.list_head*, %struct.list_head** %6, align 8
  %27 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %26)
  store %struct.reiserfs_journal_list* %27, %struct.reiserfs_journal_list** %7, align 8
  %28 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %29 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* %9, align 4
  %32 = icmp ult i32 %30, %31
  br i1 %32, label %33, label %43

33:                                               ; preds = %25
  %34 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %35 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = icmp sle i64 %36, 0
  %38 = zext i1 %37 to i32
  %39 = call i32 @BUG_ON(i32 %38)
  %40 = load %struct.super_block*, %struct.super_block** %4, align 8
  %41 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %42 = call i32 @flush_journal_list(%struct.super_block* %40, %struct.reiserfs_journal_list* %41, i32 0)
  br label %15

43:                                               ; preds = %25
  store i32 0, i32* %3, align 4
  br label %44

44:                                               ; preds = %43, %24
  %45 = load i32, i32* %3, align 4
  ret i32 %45
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @flush_journal_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
