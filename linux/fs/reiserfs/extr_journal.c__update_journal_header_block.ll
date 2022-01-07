; ModuleID = '/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c__update_journal_header_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/reiserfs/extr_journal.c__update_journal_header_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.reiserfs_journal_header = type { i8*, i8*, i8* }
%struct.reiserfs_journal = type { i32, i64, i64, %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i64 }

@EIO = common dso_local global i32 0, align 4
@REQ_SYNC = common dso_local global i32 0, align 4
@REQ_PREFLUSH = common dso_local global i32 0, align 4
@REQ_FUA = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [12 x i8] c"journal-837\00", align 1
@.str.1 = private unnamed_addr constant [31 x i8] c"IO error during journal replay\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, i64, i32)* @_update_journal_header_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @_update_journal_header_block(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.reiserfs_journal_header*, align 8
  %9 = alloca %struct.reiserfs_journal*, align 8
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.super_block*, %struct.super_block** %5, align 8
  %12 = call %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block* %11)
  store %struct.reiserfs_journal* %12, %struct.reiserfs_journal** %9, align 8
  %13 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %14 = call i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal* %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %3
  %17 = load i32, i32* @EIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %4, align 4
  br label %122

19:                                               ; preds = %3
  %20 = load i32, i32* %7, align 4
  %21 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %22 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp uge i32 %20, %23
  br i1 %24, label %25, label %121

25:                                               ; preds = %19
  %26 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %27 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %26, i32 0, i32 3
  %28 = load %struct.TYPE_7__*, %struct.TYPE_7__** %27, align 8
  %29 = call i64 @buffer_locked(%struct.TYPE_7__* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %54

31:                                               ; preds = %25
  %32 = load %struct.super_block*, %struct.super_block** %5, align 8
  %33 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %32)
  store i32 %33, i32* %10, align 4
  %34 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %35 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %34, i32 0, i32 3
  %36 = load %struct.TYPE_7__*, %struct.TYPE_7__** %35, align 8
  %37 = call i32 @__wait_on_buffer(%struct.TYPE_7__* %36)
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = load i32, i32* %10, align 4
  %40 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %38, i32 %39)
  %41 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %42 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %41, i32 0, i32 3
  %43 = load %struct.TYPE_7__*, %struct.TYPE_7__** %42, align 8
  %44 = call i32 @buffer_uptodate(%struct.TYPE_7__* %43)
  %45 = icmp ne i32 %44, 0
  %46 = xor i1 %45, true
  %47 = zext i1 %46 to i32
  %48 = call i64 @unlikely(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %53

50:                                               ; preds = %31
  %51 = load i32, i32* @EIO, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %4, align 4
  br label %122

53:                                               ; preds = %31
  br label %54

54:                                               ; preds = %53, %25
  %55 = load i32, i32* %7, align 4
  %56 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %57 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %56, i32 0, i32 0
  store i32 %55, i32* %57, align 8
  %58 = load i64, i64* %6, align 8
  %59 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %60 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %59, i32 0, i32 1
  store i64 %58, i64* %60, align 8
  %61 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %62 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %61, i32 0, i32 3
  %63 = load %struct.TYPE_7__*, %struct.TYPE_7__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = inttoptr i64 %65 to %struct.reiserfs_journal_header*
  store %struct.reiserfs_journal_header* %66, %struct.reiserfs_journal_header** %8, align 8
  %67 = load i32, i32* %7, align 4
  %68 = zext i32 %67 to i64
  %69 = call i8* @cpu_to_le32(i64 %68)
  %70 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %71 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %70, i32 0, i32 2
  store i8* %69, i8** %71, align 8
  %72 = load i64, i64* %6, align 8
  %73 = call i8* @cpu_to_le32(i64 %72)
  %74 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %75 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %74, i32 0, i32 1
  store i8* %73, i8** %75, align 8
  %76 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %77 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %76, i32 0, i32 2
  %78 = load i64, i64* %77, align 8
  %79 = call i8* @cpu_to_le32(i64 %78)
  %80 = load %struct.reiserfs_journal_header*, %struct.reiserfs_journal_header** %8, align 8
  %81 = getelementptr inbounds %struct.reiserfs_journal_header, %struct.reiserfs_journal_header* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %83 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %82, i32 0, i32 3
  %84 = load %struct.TYPE_7__*, %struct.TYPE_7__** %83, align 8
  %85 = call i32 @set_buffer_dirty(%struct.TYPE_7__* %84)
  %86 = load %struct.super_block*, %struct.super_block** %5, align 8
  %87 = call i32 @reiserfs_write_unlock_nested(%struct.super_block* %86)
  store i32 %87, i32* %10, align 4
  %88 = load %struct.super_block*, %struct.super_block** %5, align 8
  %89 = call i64 @reiserfs_barrier_flush(%struct.super_block* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %101

91:                                               ; preds = %54
  %92 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %93 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %92, i32 0, i32 3
  %94 = load %struct.TYPE_7__*, %struct.TYPE_7__** %93, align 8
  %95 = load i32, i32* @REQ_SYNC, align 4
  %96 = load i32, i32* @REQ_PREFLUSH, align 4
  %97 = or i32 %95, %96
  %98 = load i32, i32* @REQ_FUA, align 4
  %99 = or i32 %97, %98
  %100 = call i32 @__sync_dirty_buffer(%struct.TYPE_7__* %94, i32 %99)
  br label %106

101:                                              ; preds = %54
  %102 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %103 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %102, i32 0, i32 3
  %104 = load %struct.TYPE_7__*, %struct.TYPE_7__** %103, align 8
  %105 = call i32 @sync_dirty_buffer(%struct.TYPE_7__* %104)
  br label %106

106:                                              ; preds = %101, %91
  %107 = load %struct.super_block*, %struct.super_block** %5, align 8
  %108 = load i32, i32* %10, align 4
  %109 = call i32 @reiserfs_write_lock_nested(%struct.super_block* %107, i32 %108)
  %110 = load %struct.reiserfs_journal*, %struct.reiserfs_journal** %9, align 8
  %111 = getelementptr inbounds %struct.reiserfs_journal, %struct.reiserfs_journal* %110, i32 0, i32 3
  %112 = load %struct.TYPE_7__*, %struct.TYPE_7__** %111, align 8
  %113 = call i32 @buffer_uptodate(%struct.TYPE_7__* %112)
  %114 = icmp ne i32 %113, 0
  br i1 %114, label %120, label %115

115:                                              ; preds = %106
  %116 = load %struct.super_block*, %struct.super_block** %5, align 8
  %117 = call i32 @reiserfs_warning(%struct.super_block* %116, i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.1, i64 0, i64 0))
  %118 = load i32, i32* @EIO, align 4
  %119 = sub nsw i32 0, %118
  store i32 %119, i32* %4, align 4
  br label %122

120:                                              ; preds = %106
  br label %121

121:                                              ; preds = %120, %19
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %121, %115, %50, %16
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local %struct.reiserfs_journal* @SB_JOURNAL(%struct.super_block*) #1

declare dso_local i64 @reiserfs_is_journal_aborted(%struct.reiserfs_journal*) #1

declare dso_local i64 @buffer_locked(%struct.TYPE_7__*) #1

declare dso_local i32 @reiserfs_write_unlock_nested(%struct.super_block*) #1

declare dso_local i32 @__wait_on_buffer(%struct.TYPE_7__*) #1

declare dso_local i32 @reiserfs_write_lock_nested(%struct.super_block*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buffer_uptodate(%struct.TYPE_7__*) #1

declare dso_local i8* @cpu_to_le32(i64) #1

declare dso_local i32 @set_buffer_dirty(%struct.TYPE_7__*) #1

declare dso_local i64 @reiserfs_barrier_flush(%struct.super_block*) #1

declare dso_local i32 @__sync_dirty_buffer(%struct.TYPE_7__*, i32) #1

declare dso_local i32 @sync_dirty_buffer(%struct.TYPE_7__*) #1

declare dso_local i32 @reiserfs_warning(%struct.super_block*, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
