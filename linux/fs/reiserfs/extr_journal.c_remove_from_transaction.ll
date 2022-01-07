; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_remove_from_transaction.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c_remove_from_transaction.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32, i32 }
%struct.reiserfs_journal_cnode = type { %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode*, %struct.buffer_head* }
%struct.reiserfs_journal = type { i32, i32, i32, %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode* }

@.str = private unnamed_addr constant [13 x i8] c"journal-1752\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"b_count < 0\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i32, i32)* @remove_from_transaction to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @remove_from_transaction(%struct.super_block* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.buffer_head*, align 8
  %9 = alloca %struct.reiserfs_journal_cnode*, align 8
  %10 = alloca %struct.reiserfs_journal*, align 8
  %11 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %12 = load %struct.super_block*, %struct.super_block** %5, align 8
  %13 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %12)
  store %struct.reiserfs_journal* %13, %struct.reiserfs_journal** %10, align 8
  store i32 0, i32* %11, align 4
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %16 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* %6, align 4
  %19 = call %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block* %14, i32 %17, i32 %18)
  store %struct.reiserfs_journal_cnode* %19, %struct.reiserfs_journal_cnode** %9, align 8
  %20 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %21 = icmp ne %struct.reiserfs_journal_cnode* %20, null
  br i1 %21, label %22, label %27

22:                                               ; preds = %3
  %23 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %24 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %23, i32 0, i32 2
  %25 = load %struct.buffer_head*, %struct.buffer_head** %24, align 8
  %26 = icmp ne %struct.buffer_head* %25, null
  br i1 %26, label %29, label %27

27:                                               ; preds = %22, %3
  %28 = load i32, i32* %11, align 4
  store i32 %28, i32* %4, align 4
  br label %125

29:                                               ; preds = %22
  %30 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %31 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %30, i32 0, i32 2
  %32 = load %struct.buffer_head*, %struct.buffer_head** %31, align 8
  store %struct.buffer_head* %32, %struct.buffer_head** %8, align 8
  %33 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %34 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %33, i32 0, i32 0
  %35 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %34, align 8
  %36 = icmp ne %struct.reiserfs_journal_cnode* %35, null
  br i1 %36, label %37, label %45

37:                                               ; preds = %29
  %38 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %39 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %38, i32 0, i32 1
  %40 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %39, align 8
  %41 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %42 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %41, i32 0, i32 0
  %43 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %42, align 8
  %44 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %43, i32 0, i32 1
  store %struct.reiserfs_journal_cnode* %40, %struct.reiserfs_journal_cnode** %44, align 8
  br label %45

45:                                               ; preds = %37, %29
  %46 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %47 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %46, i32 0, i32 1
  %48 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %47, align 8
  %49 = icmp ne %struct.reiserfs_journal_cnode* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %45
  %51 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %52 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %51, i32 0, i32 0
  %53 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %52, align 8
  %54 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %55 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %54, i32 0, i32 1
  %56 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %55, align 8
  %57 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %56, i32 0, i32 0
  store %struct.reiserfs_journal_cnode* %53, %struct.reiserfs_journal_cnode** %57, align 8
  br label %58

58:                                               ; preds = %50, %45
  %59 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %60 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %61 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %60, i32 0, i32 4
  %62 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %61, align 8
  %63 = icmp eq %struct.reiserfs_journal_cnode* %59, %62
  br i1 %63, label %64, label %70

64:                                               ; preds = %58
  %65 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %66 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %65, i32 0, i32 1
  %67 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %66, align 8
  %68 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %69 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %68, i32 0, i32 4
  store %struct.reiserfs_journal_cnode* %67, %struct.reiserfs_journal_cnode** %69, align 8
  br label %70

70:                                               ; preds = %64, %58
  %71 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %72 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %73 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %72, i32 0, i32 3
  %74 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %73, align 8
  %75 = icmp eq %struct.reiserfs_journal_cnode* %71, %74
  br i1 %75, label %76, label %82

76:                                               ; preds = %70
  %77 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %78 = getelementptr inbounds %struct.reiserfs_journal_cnode, %struct.reiserfs_journal_cnode* %77, i32 0, i32 0
  %79 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %78, align 8
  %80 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %81 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %80, i32 0, i32 3
  store %struct.reiserfs_journal_cnode* %79, %struct.reiserfs_journal_cnode** %81, align 8
  br label %82

82:                                               ; preds = %76, %70
  %83 = load %struct.super_block*, %struct.super_block** %5, align 8
  %84 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %85 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %88 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = call i32 @remove_journal_hash(%struct.super_block* %83, i32 %86, i32* null, i32 %89, i32 0)
  %91 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %92 = call i32 @clear_buffer_journaled(%struct.buffer_head* %91)
  %93 = load i32, i32* %7, align 4
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %112, label %95

95:                                               ; preds = %82
  %96 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %97 = call i32 @clear_buffer_journal_dirty(%struct.buffer_head* %96)
  %98 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %99 = call i32 @clear_buffer_dirty(%struct.buffer_head* %98)
  %100 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %101 = call i32 @clear_buffer_journal_test(%struct.buffer_head* %100)
  %102 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %103 = call i32 @put_bh(%struct.buffer_head* %102)
  %104 = load %struct.buffer_head*, %struct.buffer_head** %8, align 8
  %105 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %104, i32 0, i32 0
  %106 = call i64 @atomic_read(i32* %105)
  %107 = icmp slt i64 %106, 0
  br i1 %107, label %108, label %111

108:                                              ; preds = %95
  %109 = load %struct.super_block*, %struct.super_block** %5, align 8
  %110 = call i32 @reiserfs_warning(%struct.super_block* %109, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %95
  store i32 1, i32* %11, align 4
  br label %112

112:                                              ; preds = %111, %82
  %113 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %114 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = add nsw i32 %115, -1
  store i32 %116, i32* %114, align 4
  %117 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %10, align 8
  %118 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = add nsw i32 %119, -1
  store i32 %120, i32* %118, align 8
  %121 = load %struct.super_block*, %struct.super_block** %5, align 8
  %122 = load %struct.reiserfs_journal_cnode*, %struct.reiserfs_journal_cnode** %9, align 8
  %123 = call i32 @free_cnode(%struct.super_block* %121, %struct.reiserfs_journal_cnode* %122)
  %124 = load i32, i32* %11, align 4
  store i32 %124, i32* %4, align 4
  br label %125

125:                                              ; preds = %112, %27
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local %struct.reiserfs_journal_cnode* @get_journal_hash_dev(%struct.super_block*, i32, i32) #1

declare dso_local i32 @remove_journal_hash(%struct.super_block*, i32, i32*, i32, i32) #1

declare dso_local i32 @clear_buffer_journaled(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_journal_test(%struct.buffer_head*) #1

declare dso_local i32 @put_bh(%struct.buffer_head*) #1

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

declare dso_local i32 @free_cnode(%struct.super_block*, %struct.reiserfs_journal_cnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
