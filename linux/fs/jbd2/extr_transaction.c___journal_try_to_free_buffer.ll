; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___journal_try_to_free_buffer.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c___journal_try_to_free_buffer.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_3__ = type { i32 }
%struct.buffer_head = type { i32 }
%struct.journal_head = type { i32*, i32*, i32* }

@.str = private unnamed_addr constant [28 x i8] c"remove from checkpoint list\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_3__*, %struct.buffer_head*)* @__journal_try_to_free_buffer to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__journal_try_to_free_buffer(%struct.TYPE_3__* %0, %struct.buffer_head* %1) #0 {
  %3 = alloca %struct.TYPE_3__*, align 8
  %4 = alloca %struct.buffer_head*, align 8
  %5 = alloca %struct.journal_head*, align 8
  store %struct.TYPE_3__* %0, %struct.TYPE_3__** %3, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %4, align 8
  %6 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %7 = call %struct.journal_head* @bh2jh(%struct.buffer_head* %6)
  store %struct.journal_head* %7, %struct.journal_head** %5, align 8
  %8 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %9 = call i64 @buffer_locked(%struct.buffer_head* %8)
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load %struct.buffer_head*, %struct.buffer_head** %4, align 8
  %13 = call i64 @buffer_dirty(%struct.buffer_head* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %16

15:                                               ; preds = %11, %2
  br label %44

16:                                               ; preds = %11
  %17 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %18 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %17, i32 0, i32 2
  %19 = load i32*, i32** %18, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %26, label %21

21:                                               ; preds = %16
  %22 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %23 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %22, i32 0, i32 1
  %24 = load i32*, i32** %23, align 8
  %25 = icmp ne i32* %24, null
  br i1 %25, label %26, label %27

26:                                               ; preds = %21, %16
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = call i32 @spin_lock(i32* %29)
  %31 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %32 = getelementptr inbounds %struct.journal_head, %struct.journal_head* %31, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = icmp ne i32* %33, null
  br i1 %34, label %35, label %40

35:                                               ; preds = %27
  %36 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %37 = call i32 @JBUFFER_TRACE(%struct.journal_head* %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0))
  %38 = load %struct.journal_head*, %struct.journal_head** %5, align 8
  %39 = call i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head* %38)
  br label %40

40:                                               ; preds = %35, %27
  %41 = load %struct.TYPE_3__*, %struct.TYPE_3__** %3, align 8
  %42 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %41, i32 0, i32 0
  %43 = call i32 @spin_unlock(i32* %42)
  br label %44

44:                                               ; preds = %40, %26, %15
  ret void
}

declare dso_local %struct.journal_head* @bh2jh(%struct.buffer_head*) #1

declare dso_local i64 @buffer_locked(%struct.buffer_head*) #1

declare dso_local i64 @buffer_dirty(%struct.buffer_head*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @JBUFFER_TRACE(%struct.journal_head*, i8*) #1

declare dso_local i32 @__jbd2_journal_remove_checkpoint(%struct.journal_head*) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
