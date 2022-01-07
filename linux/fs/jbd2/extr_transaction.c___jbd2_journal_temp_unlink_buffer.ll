; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___jbd2_journal_temp_unlink_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___jbd2_journal_temp_unlink_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.TYPE_4__*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, %struct.journal_head*, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.buffer_head = type { i32 }

@BJ_Types = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.journal_head*)* @__jbd2_journal_temp_unlink_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__jbd2_journal_temp_unlink_buffer(%struct.journal_head* %0) #0 {
  %2 = alloca %struct.journal_head*, align 8
  %3 = alloca %struct.journal_head**, align 8
  %4 = alloca %struct.TYPE_3__*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %2, align 8
  store %struct.journal_head** null, %struct.journal_head*** %3, align 8
  %6 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %7 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %6)
  store %struct.buffer_head* %7, %struct.buffer_head** %5, align 8
  %8 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %10 = call i32 @jbd_is_locked_bh_state(%struct.buffer_head* %9)
  %11 = call i32 @J_ASSERT_JH(%struct.journal_head* %8, i32 %10)
  %12 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %13 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %12, i32 0, i32 1
  %14 = load %struct.TYPE_3__*, %struct.TYPE_3__** %13, align 8
  store %struct.TYPE_3__* %14, %struct.TYPE_3__** %4, align 8
  %15 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %16 = icmp ne %struct.TYPE_3__* %15, null
  br i1 %16, label %17, label %23

17:                                               ; preds = %1
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_4__*, %struct.TYPE_4__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 0
  %22 = call i32 @assert_spin_locked(i32* %21)
  br label %23

23:                                               ; preds = %17, %1
  %24 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %25 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %26 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = load i32, i32* @BJ_Types, align 4
  %29 = icmp slt i32 %27, %28
  %30 = zext i1 %29 to i32
  %31 = call i32 @J_ASSERT_JH(%struct.journal_head* %24, i32 %30)
  %32 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %33 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 130
  br i1 %35, label %36, label %42

36:                                               ; preds = %23
  %37 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %38 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %39 = icmp ne %struct.TYPE_3__* %38, null
  %40 = zext i1 %39 to i32
  %41 = call i32 @J_ASSERT_JH(%struct.journal_head* %37, i32 %40)
  br label %42

42:                                               ; preds = %36, %23
  %43 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %44 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  switch i32 %45, label %70 [
    i32 130, label %46
    i32 131, label %47
    i32 132, label %61
    i32 128, label %64
    i32 129, label %67
  ]

46:                                               ; preds = %42
  br label %95

47:                                               ; preds = %42
  %48 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %49 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %48, i32 0, i32 5
  %50 = load i32, i32* %49, align 8
  %51 = add nsw i32 %50, -1
  store i32 %51, i32* %49, align 8
  %52 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %53 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %54 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %53, i32 0, i32 5
  %55 = load i32, i32* %54, align 8
  %56 = icmp sge i32 %55, 0
  %57 = zext i1 %56 to i32
  %58 = call i32 @J_ASSERT_JH(%struct.journal_head* %52, i32 %57)
  %59 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %60 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %59, i32 0, i32 4
  store %struct.journal_head** %60, %struct.journal_head*** %3, align 8
  br label %70

61:                                               ; preds = %42
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 3
  store %struct.journal_head** %63, %struct.journal_head*** %3, align 8
  br label %70

64:                                               ; preds = %42
  %65 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %65, i32 0, i32 2
  store %struct.journal_head** %66, %struct.journal_head*** %3, align 8
  br label %70

67:                                               ; preds = %42
  %68 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %69 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %68, i32 0, i32 1
  store %struct.journal_head** %69, %struct.journal_head*** %3, align 8
  br label %70

70:                                               ; preds = %42, %67, %64, %61, %47
  %71 = load %struct.journal_head**, %struct.journal_head*** %3, align 8
  %72 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %73 = call i32 @__blist_del_buffer(%struct.journal_head** %71, %struct.journal_head* %72)
  %74 = load %struct.journal_head*, %struct.journal_head** %2, align 8
  %75 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %74, i32 0, i32 0
  store i32 130, i32* %75, align 8
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %77 = icmp ne %struct.TYPE_3__* %76, null
  br i1 %77, label %78, label %87

78:                                               ; preds = %70
  %79 = load %struct.TYPE_3__*, %struct.TYPE_3__** %4, align 8
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  %81 = load %struct.TYPE_4__*, %struct.TYPE_4__** %80, align 8
  %82 = call i64 @is_journal_aborted(%struct.TYPE_4__* %81)
  %83 = icmp ne i64 %82, 0
  br i1 %83, label %84, label %87

84:                                               ; preds = %78
  %85 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %86 = call i32 @clear_buffer_jbddirty(%struct.buffer_head* %85)
  br label %95

87:                                               ; preds = %78, %70
  %88 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %89 = call i64 @test_clear_buffer_jbddirty(%struct.buffer_head* %88)
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %91, label %94

91:                                               ; preds = %87
  %92 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %93 = call i32 @mark_buffer_dirty(%struct.buffer_head* %92)
  br label %94

94:                                               ; preds = %91, %87
  br label %95

95:                                               ; preds = %46, %94, %84
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @J_ASSERT_JH(%struct.journal_head*, i32) #1

declare dso_local i32 @jbd_is_locked_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @assert_spin_locked(i32*) #1

declare dso_local i32 @__blist_del_buffer(%struct.journal_head**, %struct.journal_head*) #1

declare dso_local i64 @is_journal_aborted(%struct.TYPE_4__*) #1

declare dso_local i32 @clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i64 @test_clear_buffer_jbddirty(%struct.buffer_head*) #1

declare dso_local i32 @mark_buffer_dirty(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
