; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_dirty_one_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_dirty_one_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { %struct.reiserfs_journal_cnode*, i32 }
%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, i64, i64 }

@LIST_DIRTY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.reiserfs_journal_list*)* @dirty_one_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dirty_one_transaction(%struct.super_block* %0, %struct.reiserfs_journal_list* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.reiserfs_journal_list*, align 8
  %5 = alloca %struct.reiserfs_journal_cnode*, align 8
  %6 = alloca %struct.reiserfs_journal_list*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %4, align 8
  %7 = load i32, i32* @LIST_DIRTY, align 4
  %8 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %9 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %8, i32 0, i32 1
  %10 = load i32, i32* %9, align 8
  %11 = or i32 %10, %7
  store i32 %11, i32* %9, align 8
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %4, align 8
  %13 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %12, i32 0, i32 0
  %14 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %13, align 8
  store %struct.reiserfs_journal_cnode* %14, %struct.reiserfs_journal_cnode** %5, align 8
  br label %15

15:                                               ; preds = %70, %2
  %16 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %17 = icmp ne %struct.reiserfs_journal_cnode* %16, null
  br i1 %17, label %18, label %74

18:                                               ; preds = %15
  %19 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %20 = call %struct.reiserfs_journal_list* @find_newer_jl_for_cn(%struct.reiserfs_journal_cnode* %19)
  store %struct.reiserfs_journal_list* %20, %struct.reiserfs_journal_list** %6, align 8
  %21 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %22 = icmp ne %struct.reiserfs_journal_list* %21, null
  br i1 %22, label %70, label %23

23:                                               ; preds = %18
  %24 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %25 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %24, i32 0, i32 2
  %26 = load i64, i64* %25, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %70

28:                                               ; preds = %23
  %29 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %30 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %29, i32 0, i32 1
  %31 = load i64, i64* %30, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %70

33:                                               ; preds = %28
  %34 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %35 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = call i64 @buffer_journal_dirty(i64 %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %70

39:                                               ; preds = %33
  %40 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %41 = call i32 @can_dirty(%struct.reiserfs_journal_cnode* %40)
  %42 = icmp ne i32 %41, 0
  %43 = xor i1 %42, true
  %44 = zext i1 %43 to i32
  %45 = call i32 @BUG_ON(i32 %44)
  %46 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %47 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = call i32 @clear_buffer_journal_new(i64 %48)
  %50 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %51 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = call i64 @buffer_journal_prepared(i64 %52)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %39
  %56 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %57 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %56, i32 0, i32 1
  %58 = load i64, i64* %57, align 8
  %59 = call i32 @set_buffer_journal_restore_dirty(i64 %58)
  br label %69

60:                                               ; preds = %39
  %61 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %62 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = call i32 @set_buffer_journal_test(i64 %63)
  %65 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %66 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = call i32 @mark_buffer_dirty(i64 %67)
  br label %69

69:                                               ; preds = %60, %55
  br label %70

70:                                               ; preds = %69, %33, %28, %23, %18
  %71 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %5, align 8
  %72 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %71, i32 0, i32 0
  %73 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %72, align 8
  store %struct.reiserfs_journal_cnode* %73, %struct.reiserfs_journal_cnode** %5, align 8
  br label %15

74:                                               ; preds = %15
  ret void
}

declare dso_local %struct.reiserfs_journal_list* @find_newer_jl_for_cn(%struct.reiserfs_journal_cnode*) #1

declare dso_local i64 @buffer_journal_dirty(i64) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @can_dirty(%struct.reiserfs_journal_cnode*) #1

declare dso_local i32 @clear_buffer_journal_new(i64) #1

declare dso_local i64 @buffer_journal_prepared(i64) #1

declare dso_local i32 @set_buffer_journal_restore_dirty(i64) #1

declare dso_local i32 @set_buffer_journal_test(i64) #1

declare dso_local i32 @mark_buffer_dirty(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
