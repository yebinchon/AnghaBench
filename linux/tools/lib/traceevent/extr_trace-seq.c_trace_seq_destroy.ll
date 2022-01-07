; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_trace-seq.c_trace_seq_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@TRACE_SEQ_POISON = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @trace_seq_destroy(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %3 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %4 = icmp ne %struct.trace_seq* %3, null
  br i1 %4, label %6, label %5

5:                                                ; preds = %1
  br label %16

6:                                                ; preds = %1
  %7 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %8 = call i32 @TRACE_SEQ_CHECK_RET(%struct.trace_seq* %7)
  %9 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %10 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = call i32 @free(i32 %11)
  %13 = load i32, i32* @TRACE_SEQ_POISON, align 4
  %14 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %15 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 4
  br label %16

16:                                               ; preds = %6, %5
  ret void
}

declare dso_local i32 @TRACE_SEQ_CHECK_RET(%struct.trace_seq*) #1

declare dso_local i32 @free(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
