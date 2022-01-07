; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_commit.c_journal_end_buffer_io_sync.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_commit.c_journal_end_buffer_io_sync.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.buffer_head = type { i32, %struct.buffer_head* }

@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@BH_Shadow = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.buffer_head*, i32)* @journal_end_buffer_io_sync to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @journal_end_buffer_io_sync(%struct.buffer_head* %0, i32 %1) #0 {
  %3 = alloca %struct.buffer_head*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  store %struct.buffer_head* %0, %struct.buffer_head** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %7 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %6, i32 0, i32 1
  %8 = load %struct.buffer_head*, %struct.buffer_head** %7, align 8
  store %struct.buffer_head* %8, %struct.buffer_head** %5, align 8
  %9 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %10 = call i32 @BUFFER_TRACE(%struct.buffer_head* %9, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0))
  %11 = load i32, i32* %4, align 4
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %13, label %16

13:                                               ; preds = %2
  %14 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %15 = call i32 @set_buffer_uptodate(%struct.buffer_head* %14)
  br label %19

16:                                               ; preds = %2
  %17 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %18 = call i32 @clear_buffer_uptodate(%struct.buffer_head* %17)
  br label %19

19:                                               ; preds = %16, %13
  %20 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %21 = icmp ne %struct.buffer_head* %20, null
  br i1 %21, label %22, label %32

22:                                               ; preds = %19
  %23 = load i32, i32* @BH_Shadow, align 4
  %24 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %25 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %24, i32 0, i32 0
  %26 = call i32 @clear_bit_unlock(i32 %23, i32* %25)
  %27 = call i32 (...) @smp_mb__after_atomic()
  %28 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i32, i32* @BH_Shadow, align 4
  %31 = call i32 @wake_up_bit(i32* %29, i32 %30)
  br label %32

32:                                               ; preds = %22, %19
  %33 = load %struct.buffer_head*, %struct.buffer_head** %3, align 8
  %34 = call i32 @unlock_buffer(%struct.buffer_head* %33)
  ret void
}

declare dso_local i32 @BUFFER_TRACE(%struct.buffer_head*, i8*) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @clear_bit_unlock(i32, i32*) #1

declare dso_local i32 @smp_mb__after_atomic(...) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @unlock_buffer(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
