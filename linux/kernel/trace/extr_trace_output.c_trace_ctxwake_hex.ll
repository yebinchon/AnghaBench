; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_ctxwake_hex.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_ctxwake_hex.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq }
%struct.trace_seq = type { i32 }
%struct.ctx_switch_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i8)* @trace_ctxwake_hex to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_ctxwake_hex(%struct.trace_iterator* %0, i8 signext %1) #0 {
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i8, align 1
  %5 = alloca %struct.ctx_switch_entry*, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  store i8 %1, i8* %4, align 1
  %8 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %9 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %8, i32 0, i32 1
  store %struct.trace_seq* %9, %struct.trace_seq** %6, align 8
  %10 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %11 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %12 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @trace_assign_type(%struct.ctx_switch_entry* %10, i32 %13)
  %15 = load i8, i8* %4, align 1
  %16 = icmp ne i8 %15, 0
  br i1 %16, label %23, label %17

17:                                               ; preds = %2
  %18 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %19 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %18, i32 0, i32 6
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @task_index_to_char(i32 %20)
  %22 = ptrtoint i8* %21 to i8
  store i8 %22, i8* %4, align 1
  br label %23

23:                                               ; preds = %17, %2
  %24 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %25 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = call i8* @task_index_to_char(i32 %26)
  %28 = ptrtoint i8* %27 to i32
  store i32 %28, i32* %7, align 4
  %29 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %30 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %31 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %29, i32 %32)
  %34 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %35 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %36 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %34, i32 %37)
  %39 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %40 = load i8, i8* %4, align 1
  %41 = sext i8 %40 to i32
  %42 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %39, i32 %41)
  %43 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %44 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %45 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %44, i32 0, i32 2
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %43, i32 %46)
  %48 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %49 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %50 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %49, i32 0, i32 3
  %51 = load i32, i32* %50, align 4
  %52 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %48, i32 %51)
  %53 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %54 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %55 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %54, i32 0, i32 4
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %53, i32 %56)
  %58 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %59 = load i32, i32* %7, align 4
  %60 = call i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq* %58, i32 %59)
  %61 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %62 = call i32 @trace_handle_return(%struct.trace_seq* %61)
  ret i32 %62
}

declare dso_local i32 @trace_assign_type(%struct.ctx_switch_entry*, i32) #1

declare dso_local i8* @task_index_to_char(i32) #1

declare dso_local i32 @SEQ_PUT_HEX_FIELD(%struct.trace_seq*, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
