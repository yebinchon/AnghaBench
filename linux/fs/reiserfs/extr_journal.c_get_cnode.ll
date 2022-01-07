; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_get_cnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_get_cnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, i32* }
%struct.super_block = type { i32 }
%struct.reiserfs_journal = type { i64, %struct.reiserfs_journal_cnode*, i32 }

@.str = private unnamed_addr constant [10 x i8] c"get_cnode\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.reiserfs_journal_cnode* (%struct.super_block*)* @get_cnode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.reiserfs_journal_cnode* @get_cnode(%struct.super_block* %0) #0 {
  %2 = alloca %struct.reiserfs_journal_cnode*, align 8
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_cnode*, align 8
  %5 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  %6 = load %struct.super_block*, %struct.super_block** %3, align 8
  %7 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %6)
  store %struct.reiserfs_journal* %7, %struct.reiserfs_journal** %5, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call i32 @reiserfs_check_lock_depth(%struct.super_block* %8, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0))
  %10 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %11 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sle i64 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  store %struct.reiserfs_journal_cnode* null, %struct.reiserfs_journal_cnode** %2, align 8
  br label %50

15:                                               ; preds = %1
  %16 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %17 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* %17, align 8
  %20 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = add nsw i64 %22, -1
  store i64 %23, i64* %21, align 8
  %24 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %25 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %24, i32 0, i32 1
  %26 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %25, align 8
  store %struct.reiserfs_journal_cnode* %26, %struct.reiserfs_journal_cnode** %4, align 8
  %27 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %28 = icmp ne %struct.reiserfs_journal_cnode* %27, null
  br i1 %28, label %31, label %29

29:                                               ; preds = %15
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  store %struct.reiserfs_journal_cnode* %30, %struct.reiserfs_journal_cnode** %2, align 8
  br label %50

31:                                               ; preds = %15
  %32 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %33 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %32, i32 0, i32 0
  %34 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %33, align 8
  %35 = icmp ne %struct.reiserfs_journal_cnode* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %31
  %37 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %37, i32 0, i32 0
  %39 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %38, align 8
  %40 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %39, i32 0, i32 1
  store i32* null, i32** %40, align 8
  br label %41

41:                                               ; preds = %36, %31
  %42 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %43 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %42, i32 0, i32 0
  %44 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %43, align 8
  %45 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %5, align 8
  %46 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %45, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* %44, %struct.reiserfs_journal_cnode** %46, align 8
  %47 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  %48 = call i32 @memset(%struct.reiserfs_journal_cnode* %47, i32 0, i32 16)
  %49 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %4, align 8
  store %struct.reiserfs_journal_cnode* %49, %struct.reiserfs_journal_cnode** %2, align 8
  br label %50

50:                                               ; preds = %41, %29, %14
  %51 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %2, align 8
  ret %struct.reiserfs_journal_cnode* %51
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_check_lock_depth(%struct.super_block*, i8*) #1

declare dso_local i32 @memset(%struct.reiserfs_journal_cnode*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
