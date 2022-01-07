; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_write_one_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_write_one_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_list = type { i64, %struct.reiserfs_journal_cnode*, i32, i32 }
%struct.reiserfs_journal_cnode = type { i64, %struct.reiserfs_journal_cnode*, %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.buffer_chunk = type { i32 }

@LIST_TOUCHED = common dso_local global i32 0, align 4
@write_chunk = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.reiserfs_journal_list*, %struct.buffer_chunk*)* @write_one_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @write_one_transaction(%struct.super_block* %0, %struct.reiserfs_journal_list* %1, %struct.buffer_chunk* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.reiserfs_journal_list*, align 8
  %7 = alloca %struct.buffer_chunk*, align 8
  %8 = alloca %struct.reiserfs_journal_cnode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.buffer_head*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.reiserfs_journal_list* %1, %struct.reiserfs_journal_list** %6, align 8
  store %struct.buffer_chunk* %2, %struct.buffer_chunk** %7, align 8
  store i32 0, i32* %9, align 4
  %11 = load i32, i32* @LIST_TOUCHED, align 4
  %12 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %13 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = or i32 %14, %11
  store i32 %15, i32* %13, align 4
  %16 = load %struct.super_block*, %struct.super_block** %5, align 8
  %17 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %18 = call i32 @del_from_work_list(%struct.super_block* %16, %struct.reiserfs_journal_list* %17)
  %19 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %20 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %21, 0
  br i1 %22, label %28, label %23

23:                                               ; preds = %3
  %24 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %25 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %24, i32 0, i32 2
  %26 = call i64 @atomic_read(i32* %25)
  %27 = icmp eq i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23, %3
  store i32 0, i32* %4, align 4
  br label %108

29:                                               ; preds = %23
  %30 = load %struct.reiserfs_journal_list*, %struct.reiserfs_journal_list** %6, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_list, %struct.reiserfs_journal_list* %30, i32 0, i32 1
  %32 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %31, align 8
  store %struct.reiserfs_journal_cnode* %32, %struct.reiserfs_journal_cnode** %8, align 8
  br label %33

33:                                               ; preds = %101, %29
  %34 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %35 = icmp ne %struct.reiserfs_journal_cnode* %34, null
  br i1 %35, label %36, label %106

36:                                               ; preds = %33
  %37 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %38 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = icmp eq i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  br label %101

42:                                               ; preds = %36
  %43 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %44 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %43, i32 0, i32 2
  %45 = load %struct.buffer_head*, %struct.buffer_head** %44, align 8
  %46 = icmp ne %struct.buffer_head* %45, null
  br i1 %46, label %47, label %100

47:                                               ; preds = %42
  %48 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %49 = call i64 @can_dirty(%struct.reiserfs_journal_cnode* %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %100

51:                                               ; preds = %47
  %52 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %53 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %52, i32 0, i32 2
  %54 = load %struct.buffer_head*, %struct.buffer_head** %53, align 8
  %55 = call i64 @buffer_dirty(%struct.buffer_head* %54)
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %100

57:                                               ; preds = %51
  %58 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %59 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %58, i32 0, i32 2
  %60 = load %struct.buffer_head*, %struct.buffer_head** %59, align 8
  store %struct.buffer_head* %60, %struct.buffer_head** %10, align 8
  %61 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %62 = call i32 @get_bh(%struct.buffer_head* %61)
  %63 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %64 = call i32 @lock_buffer(%struct.buffer_head* %63)
  %65 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %66 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %65, i32 0, i32 2
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = icmp ne %struct.buffer_head* %67, null
  br i1 %68, label %69, label %94

69:                                               ; preds = %57
  %70 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %71 = call i64 @can_dirty(%struct.reiserfs_journal_cnode* %70)
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %94

73:                                               ; preds = %69
  %74 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %75 = call i64 @buffer_dirty(%struct.buffer_head* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %94

77:                                               ; preds = %73
  %78 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %79 = call i32 @buffer_journal_dirty(%struct.buffer_head* %78)
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %85

81:                                               ; preds = %77
  %82 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %83 = call i64 @buffer_journal_prepared(%struct.buffer_head* %82)
  %84 = icmp ne i64 %83, 0
  br i1 %84, label %85, label %87

85:                                               ; preds = %81, %77
  %86 = call i32 (...) @BUG()
  br label %87

87:                                               ; preds = %85, %81
  %88 = load %struct.buffer_chunk*, %struct.buffer_chunk** %7, align 8
  %89 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %90 = load i32, i32* @write_chunk, align 4
  %91 = call i32 @add_to_chunk(%struct.buffer_chunk* %88, %struct.buffer_head* %89, i32* null, i32 %90)
  %92 = load i32, i32* %9, align 4
  %93 = add nsw i32 %92, 1
  store i32 %93, i32* %9, align 4
  br label %97

94:                                               ; preds = %73, %69, %57
  %95 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %96 = call i32 @unlock_buffer(%struct.buffer_head* %95)
  br label %97

97:                                               ; preds = %94, %87
  %98 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %99 = call i32 @put_bh(%struct.buffer_head* %98)
  br label %100

100:                                              ; preds = %97, %51, %47, %42
  br label %101

101:                                              ; preds = %100, %41
  %102 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %8, align 8
  %103 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %102, i32 0, i32 1
  %104 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %103, align 8
  store %struct.reiserfs_journal_cnode* %104, %struct.reiserfs_journal_cnode** %8, align 8
  %105 = call i32 (...) @cond_resched()
  br label %33

106:                                              ; preds = %33
  %107 = load i32, i32* %9, align 4
  store i32 %107, i32* %4, align 4
  br label %108

108:                                              ; preds = %106, %28
  %109 = load i32, i32* %4, align 4
  ret i32 %109
}

declare dso_local i32 @del_from_work_list(%struct.super_block*, %struct.reiserfs_journal_list*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i64 @can_dirty(%struct.reiserfs_journal_cnode*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @lock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i64 @buffer_journal_prepared(%struct.buffer_head*) #1

declare dso_local i32 @BUG(...) #1

declare dso_local i32 @add_to_chunk(%struct.buffer_chunk*, %struct.buffer_head*, i32*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i32 @cond_resched(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
