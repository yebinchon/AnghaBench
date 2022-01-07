; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_get_create_access.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_get_create_access.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_10__ = type { %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i64, %struct.TYPE_8__*, i64, %struct.TYPE_8__* }

@.str = private unnamed_addr constant [17 x i8] c"journal_head %p\0A\00", align 1
@EROFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [6 x i8] c"entry\00", align 1
@BJ_Forget = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [20 x i8] c"file as BJ_Reserved\00", align 1
@BJ_Reserved = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [21 x i8] c"set next transaction\00", align 1
@.str.4 = private unnamed_addr constant [18 x i8] c"cancelling revoke\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jbd2_journal_get_create_access(%struct.TYPE_10__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_10__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.TYPE_8__*, align 8
  %6 = alloca %struct.TYPE_9__*, align 8
  %7 = alloca %struct.journal_head*, align 8
  %8 = alloca i32, align 4
  store %struct.TYPE_10__* %0, %struct.TYPE_10__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = load %struct.TYPE_8__*, %struct.TYPE_8__** %10, align 8
  store %struct.TYPE_8__* %11, %struct.TYPE_8__** %5, align 8
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = call %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head* %12)
  store %struct.journal_head* %13, %struct.journal_head** %7, align 8
  %14 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %15 = call i32 @jbd_debug(i32 5, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.journal_head* %14)
  %16 = load i32, i32* @EROFS, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %8, align 4
  %18 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %19 = call i64 @is_handle_aborted(%struct.TYPE_10__* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %2
  br label %126

22:                                               ; preds = %2
  %23 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %23, i32 0, i32 0
  %25 = load %struct.TYPE_9__*, %struct.TYPE_9__** %24, align 8
  store %struct.TYPE_9__* %25, %struct.TYPE_9__** %6, align 8
  store i32 0, i32* %8, align 4
  %26 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %27 = call i32 @JBUFFER_TRACE(%struct.journal_head* %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0))
  %28 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %29 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %28)
  %30 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %31 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 3
  %33 = load %struct.TYPE_8__*, %struct.TYPE_8__** %32, align 8
  %34 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %35 = icmp eq %struct.TYPE_8__* %33, %34
  br i1 %35, label %57, label %36

36:                                               ; preds = %22
  %37 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %38 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %37, i32 0, i32 3
  %39 = load %struct.TYPE_8__*, %struct.TYPE_8__** %38, align 8
  %40 = icmp eq %struct.TYPE_8__* %39, null
  br i1 %40, label %57, label %41

41:                                               ; preds = %36
  %42 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %43 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %42, i32 0, i32 3
  %44 = load %struct.TYPE_8__*, %struct.TYPE_8__** %43, align 8
  %45 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %46 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %45, i32 0, i32 1
  %47 = load %struct.TYPE_8__*, %struct.TYPE_8__** %46, align 8
  %48 = icmp eq %struct.TYPE_8__* %44, %47
  br i1 %48, label %49, label %55

49:                                               ; preds = %41
  %50 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %51 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @BJ_Forget, align 8
  %54 = icmp eq i64 %52, %53
  br label %55

55:                                               ; preds = %49, %41
  %56 = phi i1 [ false, %41 ], [ %54, %49 ]
  br label %57

57:                                               ; preds = %55, %36, %22
  %58 = phi i1 [ true, %36 ], [ true, %22 ], [ %56, %55 ]
  %59 = zext i1 %58 to i32
  %60 = call i32 @J_ASSERT_JH(%struct.journal_head* %30, i32 %59)
  %61 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %62 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %63 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %62, i32 0, i32 1
  %64 = load %struct.TYPE_8__*, %struct.TYPE_8__** %63, align 8
  %65 = icmp eq %struct.TYPE_8__* %64, null
  %66 = zext i1 %65 to i32
  %67 = call i32 @J_ASSERT_JH(%struct.journal_head* %61, i32 %66)
  %68 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %69 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %70 = call i32 @jh2bh(%struct.journal_head* %69)
  %71 = call i32 @buffer_locked(i32 %70)
  %72 = call i32 @J_ASSERT_JH(%struct.journal_head* %68, i32 %71)
  %73 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %74 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %73, i32 0, i32 3
  %75 = load %struct.TYPE_8__*, %struct.TYPE_8__** %74, align 8
  %76 = icmp eq %struct.TYPE_8__* %75, null
  br i1 %76, label %77, label %95

77:                                               ; preds = %57
  %78 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %79 = call i32 @jh2bh(%struct.journal_head* %78)
  %80 = call i32 @clear_buffer_dirty(i32 %79)
  %81 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %82 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %81, i32 0, i32 2
  store i64 0, i64* %82, align 8
  %83 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %84 = call i32 @JBUFFER_TRACE(%struct.journal_head* %83, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.2, i64 0, i64 0))
  %85 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %86 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %85, i32 0, i32 0
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %89 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %90 = load i32, i32* @BJ_Reserved, align 4
  %91 = call i32 @__jbd2_journal_file_buffer(%struct.journal_head* %88, %struct.TYPE_8__* %89, i32 %90)
  %92 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 0
  %94 = call i32 @spin_unlock(i32* %93)
  br label %118

95:                                               ; preds = %57
  %96 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %97 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %96, i32 0, i32 3
  %98 = load %struct.TYPE_8__*, %struct.TYPE_8__** %97, align 8
  %99 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %100 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %99, i32 0, i32 1
  %101 = load %struct.TYPE_8__*, %struct.TYPE_8__** %100, align 8
  %102 = icmp eq %struct.TYPE_8__* %98, %101
  br i1 %102, label %103, label %117

103:                                              ; preds = %95
  %104 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %105 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %104, i32 0, i32 2
  store i64 0, i64* %105, align 8
  %106 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %107 = call i32 @JBUFFER_TRACE(%struct.journal_head* %106, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %108 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %109 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %108, i32 0, i32 0
  %110 = call i32 @spin_lock(i32* %109)
  %111 = load %struct.TYPE_8__*, %struct.TYPE_8__** %5, align 8
  %112 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %113 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %112, i32 0, i32 1
  store %struct.TYPE_8__* %111, %struct.TYPE_8__** %113, align 8
  %114 = load %struct.TYPE_9__*, %struct.TYPE_9__** %6, align 8
  %115 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %114, i32 0, i32 0
  %116 = call i32 @spin_unlock(i32* %115)
  br label %117

117:                                              ; preds = %103, %95
  br label %118

118:                                              ; preds = %117, %77
  %119 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %120 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %119)
  %121 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %122 = call i32 @JBUFFER_TRACE(%struct.journal_head* %121, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.4, i64 0, i64 0))
  %123 = load %struct.TYPE_10__*, %struct.TYPE_10__** %3, align 8
  %124 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %125 = call i32 @jbd2_journal_cancel_revoke(%struct.TYPE_10__* %123, %struct.journal_head* %124)
  br label %126

126:                                              ; preds = %118, %21
  %127 = load %struct.journal_head*, %struct.journal_head** %7, align 8
  %128 = call i32 @jbd2_journal_put_journal_head(%struct.journal_head* %127)
  %129 = load i32, i32* %8, align 4
  ret i32 %129
}

declare dso_local %struct.journal_head* @jbd2_journal_add_journal_head(%struct.buffer_head*) #1

declare dso_local i32 @jbd_debug(i32, i8*, %struct.journal_head*) #1

declare dso_local i64 @is_handle_aborted(%struct.TYPE_10__*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @buffer_locked(i32) #1

declare dso_local i32 @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @clear_buffer_dirty(i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_file_buffer(%struct.journal_head*, %struct.TYPE_8__*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @jbd2_journal_cancel_revoke(%struct.TYPE_10__*, %struct.journal_head*) #1

declare dso_local i32 @jbd2_journal_put_journal_head(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
