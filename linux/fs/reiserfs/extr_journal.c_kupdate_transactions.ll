; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_kupdate_transactions.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_kupdate_transactions.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i32, i64, i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.list_head* }
%struct.list_head = type { i32 }
%struct.buffer_chunk = type { i64 }
%struct.reiserfs_journal = type { i32, %struct.list_head }

@LIST_TOUCHED = common dso_local global i32 0, align 4
@LIST_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list**, i32*, i32, i32)* @kupdate_transactions to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kupdate_transactions(%struct.super_block* %0, %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %2, i32* %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.reiserfs_journal_list*, align 8
  %9 = alloca %struct.reiserfs_journal_list**, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.buffer_chunk, align 8
  %18 = alloca %struct.list_head*, align 8
  %19 = alloca %struct.reiserfs_journal*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %8, align 8
  store %struct.reiserfs_journal_list** %2, %struct.reiserfs_journal_list*** %9, align 8
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %15, align 4
  %20 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %21 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  store i32 %22, i32* %16, align 4
  %23 = load %struct.super_block*, %struct.super_block** %7, align 8
  %24 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %23)
  store %struct.reiserfs_journal* %24, %struct.reiserfs_journal** %19, align 8
  %25 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %17, i32 0, i32 0
  store i64 0, i64* %25, align 8
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 0
  %28 = load %struct.super_block*, %struct.super_block** %7, align 8
  %29 = call i32 @reiserfs_mutex_lock_safe(i32* %27, %struct.super_block* %28)
  %30 = load %struct.super_block*, %struct.super_block** %7, align 8
  %31 = load i32, i32* %16, align 4
  %32 = call i32 @journal_list_still_alive(%struct.super_block* %30, i32 %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %35, label %34

34:                                               ; preds = %6
  br label %121

35:                                               ; preds = %6
  br label %36

36:                                               ; preds = %113, %35
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* %12, align 4
  %42 = icmp slt i32 %40, %41
  br i1 %42, label %52, label %43

43:                                               ; preds = %39, %36
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %50, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %14, align 4
  %48 = load i32, i32* %11, align 4
  %49 = icmp slt i32 %47, %48
  br label %50

50:                                               ; preds = %46, %43
  %51 = phi i1 [ false, %43 ], [ %49, %46 ]
  br label %52

52:                                               ; preds = %50, %39
  %53 = phi i1 [ true, %39 ], [ %51, %50 ]
  br i1 %53, label %54, label %114

54:                                               ; preds = %52
  %55 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %56 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %55, i32 0, i32 1
  %57 = load i64, i64* %56, align 8
  %58 = icmp eq i64 %57, 0
  br i1 %58, label %78, label %59

59:                                               ; preds = %54
  %60 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %61 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load i32, i32* @LIST_TOUCHED, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %78, label %66

66:                                               ; preds = %59
  %67 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %68 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %67, i32 0, i32 4
  %69 = call i64 @atomic_read(i32* %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %78, label %71

71:                                               ; preds = %66
  %72 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %73 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %72, i32 0, i32 2
  %74 = load i32, i32* %73, align 8
  %75 = load i32, i32* @LIST_DIRTY, align 4
  %76 = and i32 %74, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %82, label %78

78:                                               ; preds = %71, %66, %59, %54
  %79 = load %struct.super_block*, %struct.super_block** %7, align 8
  %80 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %81 = call i32 @del_from_work_list(%struct.super_block* %79, %struct.reiserfs_journal_list* %80)
  br label %114

82:                                               ; preds = %71
  %83 = load %struct.super_block*, %struct.super_block** %7, align 8
  %84 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %85 = call i32 @write_one_transaction(%struct.super_block* %83, %struct.reiserfs_journal_list* %84, %struct.buffer_chunk* %17)
  store i32 %85, i32* %13, align 4
  %86 = load i32, i32* %13, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %89

88:                                               ; preds = %82
  br label %121

89:                                               ; preds = %82
  %90 = load i32, i32* %15, align 4
  %91 = add nsw i32 %90, 1
  store i32 %91, i32* %15, align 4
  %92 = load i32, i32* %13, align 4
  %93 = load i32, i32* %14, align 4
  %94 = add nsw i32 %93, %92
  store i32 %94, i32* %14, align 4
  %95 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %96 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %96, i32 0, i32 0
  %98 = load %struct.list_head*, %struct.list_head** %97, align 8
  store %struct.list_head* %98, %struct.list_head** %18, align 8
  %99 = load %struct.list_head*, %struct.list_head** %18, align 8
  %100 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %101 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %100, i32 0, i32 1
  %102 = icmp eq %struct.list_head* %99, %101
  br i1 %102, label %103, label %104

103:                                              ; preds = %89
  br label %114

104:                                              ; preds = %89
  %105 = load %struct.list_head*, %struct.list_head** %18, align 8
  %106 = call %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head* %105)
  store %struct.reiserfs_journal_list* %106, %struct.reiserfs_journal_list** %8, align 8
  %107 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %8, align 8
  %108 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = load i32, i32* %16, align 4
  %111 = icmp ule i32 %109, %110
  br i1 %111, label %112, label %113

112:                                              ; preds = %104
  br label %114

113:                                              ; preds = %104
  br label %36

114:                                              ; preds = %112, %103, %78, %52
  %115 = getelementptr inbounds %struct.buffer_chunk, %struct.buffer_chunk* %17, i32 0, i32 0
  %116 = load i64, i64* %115, align 8
  %117 = icmp ne i64 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %114
  %119 = call i32 @write_chunk(%struct.buffer_chunk* %17)
  br label %120

120:                                              ; preds = %118, %114
  br label %121

121:                                              ; preds = %120, %88, %34
  %122 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %19, align 8
  %123 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %122, i32 0, i32 0
  %124 = call i32 @mutex_unlock(i32* %123)
  %125 = load i32, i32* %13, align 4
  ret i32 %125
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i32 @reiserfs_mutex_lock_safe(i32*, %struct.super_block*) #1

declare dso_local i32 @journal_list_still_alive(%struct.super_block*, i32) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @del_from_work_list(%struct.super_block*, %struct.reiserfs_journal_list*) #1

declare dso_local i32 @write_one_transaction(%struct.super_block*, %struct.reiserfs_journal_list*, %struct.buffer_chunk*) #1

declare dso_local %struct.reiserfs_journal_list* @JOURNAL_LIST_ENTRY(%struct.list_head*) #1

declare dso_local i32 @write_chunk(%struct.buffer_chunk*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
