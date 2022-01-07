; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_ctxwake_print.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_ctxwake_print.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32 }
%struct.ctx_switch_entry = type { i32, i32, i32, i32, i32, i32, i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [37 x i8] c" %5d:%3d:%c %s [%03d] %5d:%3d:%c %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i8*)* @trace_ctxwake_print to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @trace_ctxwake_print(%struct.trace_iterator* %0, i8* %1) #0 {
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca %struct.ctx_switch_entry*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  store i8* %1, i8** %4, align 8
  %10 = load i32, i32* @TASK_COMM_LEN, align 4
  %11 = zext i32 %10 to i64
  %12 = call i8* @llvm.stacksave()
  store i8* %12, i8** %6, align 8
  %13 = alloca i8, i64 %11, align 16
  store i64 %11, i64* %7, align 8
  %14 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @trace_assign_type(%struct.ctx_switch_entry* %14, i32 %17)
  %19 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %20 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %19, i32 0, i32 6
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @task_index_to_char(i32 %21)
  store i32 %22, i32* %9, align 4
  %23 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %24 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %23, i32 0, i32 5
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @task_index_to_char(i32 %25)
  store i32 %26, i32* %8, align 4
  %27 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %28 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @trace_find_cmdline(i32 %29, i8* %13)
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 0
  %33 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %34 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %33, i32 0, i32 4
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %37 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %8, align 4
  %40 = load i8*, i8** %4, align 8
  %41 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %42 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %45 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.ctx_switch_entry*, %struct.ctx_switch_entry** %5, align 8
  %48 = getelementptr inbounds %struct.ctx_switch_entry, %struct.ctx_switch_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load i32, i32* %9, align 4
  %51 = call i32 @trace_seq_printf(i32* %32, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %35, i32 %38, i32 %39, i8* %40, i32 %43, i32 %46, i32 %49, i32 %50, i8* %13)
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %53 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %52, i32 0, i32 0
  %54 = call i32 @trace_handle_return(i32* %53)
  %55 = load i8*, i8** %6, align 8
  call void @llvm.stackrestore(i8* %55)
  ret i32 %54
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_assign_type(%struct.ctx_switch_entry*, i32) #2

declare dso_local i32 @task_index_to_char(i32) #2

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @trace_seq_printf(i32*, i8*, i32, i32, i32, i8*, i32, i32, i32, i32, i8*) #2

declare dso_local i32 @trace_handle_return(i32*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
