; ModuleID = '/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_buffer_abort_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jbd2/extr_transaction.c_jbd2_buffer_abort_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.journal_head = type { i32 }
%struct.jbd2_buffer_trigger_type = type { i32 (%struct.jbd2_buffer_trigger_type*, i32)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @jbd2_buffer_abort_trigger(%struct.journal_head* %0, %struct.jbd2_buffer_trigger_type* %1) #0 {
  %3 = alloca %struct.journal_head*, align 8
  %4 = alloca %struct.jbd2_buffer_trigger_type*, align 8
  store %struct.journal_head* %0, %struct.journal_head** %3, align 8
  store %struct.jbd2_buffer_trigger_type* %1, %struct.jbd2_buffer_trigger_type** %4, align 8
  %5 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %4, align 8
  %6 = icmp ne %struct.jbd2_buffer_trigger_type* %5, null
  br i1 %6, label %7, label %12

7:                                                ; preds = %2
  %8 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %4, align 8
  %9 = getelementptr inbounds %struct.jbd2_buffer_trigger_type, %struct.jbd2_buffer_trigger_type* %8, i32 0, i32 0
  %10 = load i32 (%struct.jbd2_buffer_trigger_type*, i32)*, i32 (%struct.jbd2_buffer_trigger_type*, i32)** %9, align 8
  %11 = icmp ne i32 (%struct.jbd2_buffer_trigger_type*, i32)* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %7, %2
  br label %21

13:                                               ; preds = %7
  %14 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %4, align 8
  %15 = getelementptr inbounds %struct.jbd2_buffer_trigger_type, %struct.jbd2_buffer_trigger_type* %14, i32 0, i32 0
  %16 = load i32 (%struct.jbd2_buffer_trigger_type*, i32)*, i32 (%struct.jbd2_buffer_trigger_type*, i32)** %15, align 8
  %17 = load %struct.jbd2_buffer_trigger_type*, %struct.jbd2_buffer_trigger_type** %4, align 8
  %18 = load %struct.journal_head*, %struct.journal_head** %3, align 8
  %19 = call i32 @jh2bh(%struct.journal_head* %18)
  %20 = call i32 %16(%struct.jbd2_buffer_trigger_type* %17, i32 %19)
  br label %21

21:                                               ; preds = %13, %12
  ret void
}

declare dso_local i32 @jh2bh(%struct.journal_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
