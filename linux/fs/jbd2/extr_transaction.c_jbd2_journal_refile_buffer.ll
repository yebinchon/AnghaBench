; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_refile_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_journal_refile_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.journal_head = type { i32 }
%struct.buffer_head = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbd2_journal_refile_buffer(%struct.TYPE_3__* %0, %struct.journal_head* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.journal_head*, align 8
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.journal_head* %1, %struct.journal_head** %4, align 8
  %6 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %7 = call %struct.buffer_head* @jh2bh(%struct.journal_head* %6)
  store %struct.buffer_head* %7, %struct.buffer_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %9 = call i32 @get_bh(%struct.buffer_head* %8)
  %10 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %11 = call i32 @jbd_lock_bh_state(%struct.buffer_head* %10)
  %12 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %13 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %12, i32 0, i32 0
  %14 = call i32 @spin_lock(i32* %13)
  %15 = load %struct.journal_head*, %struct.journal_head** %4, align 8
  %16 = call i32 @__jbd2_journal_refile_buffer(%struct.journal_head* %15)
  %17 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %18 = call i32 @jbd_unlock_bh_state(%struct.buffer_head* %17)
  %19 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %20 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %19, i32 0, i32 0
  %21 = call i32 @spin_unlock(i32* %20)
  %22 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %23 = call i32 @__brelse(%struct.buffer_head* %22)
  ret void
}

declare dso_local %struct.buffer_head* @jh2bh(%struct.journal_head*) #1

declare dso_local i32 @get_bh(%struct.buffer_head*) #1

declare dso_local i32 @jbd_lock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__jbd2_journal_refile_buffer(%struct.journal_head*) #1

declare dso_local i32 @jbd_unlock_bh_state(%struct.buffer_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @__brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
