; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_print_seq.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_seq.c_trace_print_seq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.trace_seq = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_seq(%struct.seq_file* %0, %struct.trace_seq* %1) #0 {
  %3 = alloca %struct.seq_file*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %3, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %4, align 8
  %6 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %7 = call i32 @__trace_seq_init(%struct.trace_seq* %6)
  %8 = load %struct.seq_file*, %struct.seq_file** %3, align 8
  %9 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %10 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %9, i32 0, i32 0
  %11 = call i32 @seq_buf_print_seq(%struct.seq_file* %8, i32* %10)
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %2
  %15 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %16 = call i32 @trace_seq_init(%struct.trace_seq* %15)
  br label %17

17:                                               ; preds = %14, %2
  %18 = load i32, i32* %5, align 4
  ret i32 %18
}

declare dso_local i32 @__trace_seq_init(%struct.trace_seq*) #1

declare dso_local i32 @seq_buf_print_seq(%struct.seq_file*, i32*) #1

declare dso_local i32 @trace_seq_init(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
