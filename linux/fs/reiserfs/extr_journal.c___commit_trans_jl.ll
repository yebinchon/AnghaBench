; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c___commit_trans_jl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c___commit_trans_jl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32 }
%struct.reiserfs_transaction_handle = type { i32 }
%struct.reiserfs_journal = type { i64, i32, %struct.reiserfs_journal_list* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, i64, %struct.reiserfs_journal_list*)* @__commit_trans_jl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__commit_trans_jl(%struct.inode* %0, i64 %1, %struct.reiserfs_journal_list* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.reiserfs_journal_list*, align 8
  %8 = alloca %struct.reiserfs_transaction_handle, align 4
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.reiserfs_journal*, align 8
  %11 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.reiserfs_journal_list* %2, %struct.reiserfs_journal_list** %7, align 8
  %12 = load %struct.inode*, %struct.inode** %5, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load %struct.super_block*, %struct.super_block** %13, align 8
  store %struct.super_block* %14, %struct.super_block** %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %9, align 8
  %16 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %15)
  store %struct.reiserfs_journal* %16, %struct.reiserfs_journal** %10, align 8
  store i32 0, i32* %11, align 4
  %17 = load i64, i64* %6, align 8
  %18 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %19 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp eq i64 %17, %20
  br i1 %21, label %22, label %63

22:                                               ; preds = %3
  %23 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %23, i32 0, i32 2
  %25 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %24, align 8
  store %struct.reiserfs_journal_list* %25, %struct.reiserfs_journal_list** %7, align 8
  %26 = load %struct.super_block*, %struct.super_block** %9, align 8
  %27 = load i64, i64* %6, align 8
  %28 = call i32 @let_transaction_grow(%struct.super_block* %26, i64 %27)
  %29 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %30 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* %6, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %22
  br label %64

35:                                               ; preds = %22
  %36 = load %struct.super_block*, %struct.super_block** %9, align 8
  %37 = call i32 @journal_begin(%struct.reiserfs_transaction_handle* %8, %struct.super_block* %36, i32 1)
  store i32 %37, i32* %11, align 4
  %38 = load i32, i32* %11, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %35
  %41 = load i32, i32* %11, align 4
  store i32 %41, i32* %4, align 4
  br label %93

42:                                               ; preds = %35
  %43 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %44 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* %6, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %57

48:                                               ; preds = %42
  %49 = load %struct.super_block*, %struct.super_block** %9, align 8
  %50 = load %struct.super_block*, %struct.super_block** %9, align 8
  %51 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %50)
  %52 = call i32 @reiserfs_prepare_for_journal(%struct.super_block* %49, i32 %51, i32 1)
  %53 = load %struct.super_block*, %struct.super_block** %9, align 8
  %54 = call i32 @SB_BUFFER_WITH_SB(%struct.super_block* %53)
  %55 = call i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle* %8, i32 %54)
  %56 = call i32 @journal_end(%struct.reiserfs_transaction_handle* %8)
  store i32 %56, i32* %11, align 4
  br label %64

57:                                               ; preds = %42
  %58 = call i32 @journal_end_sync(%struct.reiserfs_transaction_handle* %8)
  store i32 %58, i32* %11, align 4
  %59 = load i32, i32* %11, align 4
  %60 = icmp ne i32 %59, 0
  br i1 %60, label %62, label %61

61:                                               ; preds = %57
  store i32 1, i32* %11, align 4
  br label %62

62:                                               ; preds = %61, %57
  br label %91

63:                                               ; preds = %3
  br label %64

64:                                               ; preds = %63, %48, %34
  %65 = load %struct.inode*, %struct.inode** %5, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = load %struct.super_block*, %struct.super_block** %66, align 8
  %68 = load i64, i64* %6, align 8
  %69 = call i64 @journal_list_still_alive(%struct.super_block* %67, i64 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %90

71:                                               ; preds = %64
  %72 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %73 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %72, i32 0, i32 0
  %74 = call i32 @atomic_read(i32* %73)
  %75 = icmp sgt i32 %74, 1
  br i1 %75, label %76, label %77

76:                                               ; preds = %71
  store i32 1, i32* %11, align 4
  br label %77

77:                                               ; preds = %76, %71
  %78 = load %struct.super_block*, %struct.super_block** %9, align 8
  %79 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %7, align 8
  %80 = call i32 @flush_commit_list(%struct.super_block* %78, %struct.reiserfs_journal_list* %79, i32 1)
  %81 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %82 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %81, i32 0, i32 1
  %83 = load i32, i32* %82, align 8
  %84 = icmp ne i32 %83, 0
  br i1 %84, label %85, label %89

85:                                               ; preds = %77
  %86 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %87 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 8
  store i32 %88, i32* %11, align 4
  br label %89

89:                                               ; preds = %85, %77
  br label %90

90:                                               ; preds = %89, %64
  br label %91

91:                                               ; preds = %90, %62
  %92 = load i32, i32* %11, align 4
  store i32 %92, i32* %4, align 4
  br label %93

93:                                               ; preds = %91, %40
  %94 = load i32, i32* %4, align 4
  ret i32 %94
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @let_transaction_grow(%struct.super_block*, i64) #1

declare dso_local i32 @journal_begin(%struct.reiserfs_transaction_handle*, %struct.super_block*, i32) #1

declare dso_local i32 @reiserfs_prepare_for_journal(%struct.super_block*, i32, i32) #1

declare dso_local i32 @SB_BUFFER_WITH_SB(%struct.super_block*) #1

declare dso_local i32 @journal_mark_dirty(%struct.reiserfs_transaction_handle*, i32) #1

declare dso_local i32 @journal_end(%struct.reiserfs_transaction_handle*) #1

declare dso_local i32 @journal_end_sync(%struct.reiserfs_transaction_handle*) #1

declare dso_local i64 @journal_list_still_alive(%struct.super_block*, i64) #1

declare dso_local i32 @atomic_read(i32*) #1

declare dso_local i32 @flush_commit_list(%struct.super_block*, %struct.reiserfs_journal_list*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
