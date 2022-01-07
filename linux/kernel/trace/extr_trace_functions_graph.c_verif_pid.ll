; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_verif_pid.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_verif_pid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [45 x i8] c" ------------------------------------------\0A\00", align 1
@.str.1 = private unnamed_addr constant [5 x i8] c" => \00", align 1
@.str.2 = private unnamed_addr constant [47 x i8] c"\0A ------------------------------------------\0A\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.trace_seq*, i32, i32, %struct.fgraph_data*)* @verif_pid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @verif_pid(%struct.trace_seq* %0, i32 %1, i32 %2, %struct.fgraph_data* %3) #0 {
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.fgraph_data*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store %struct.fgraph_data* %3, %struct.fgraph_data** %8, align 8
  %11 = load %struct.fgraph_data*, %struct.fgraph_data** %8, align 8
  %12 = icmp ne %struct.fgraph_data* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %4
  br label %50

14:                                               ; preds = %4
  %15 = load %struct.fgraph_data*, %struct.fgraph_data** %8, align 8
  %16 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.TYPE_2__* @per_cpu_ptr(i32 %17, i32 %18)
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  store i32* %20, i32** %10, align 8
  %21 = load i32*, i32** %10, align 8
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %6, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %14
  br label %50

26:                                               ; preds = %14
  %27 = load i32*, i32** %10, align 8
  %28 = load i32, i32* %27, align 4
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %6, align 4
  %30 = load i32*, i32** %10, align 8
  store i32 %29, i32* %30, align 4
  %31 = load i32, i32* %9, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  br label %50

34:                                               ; preds = %26
  %35 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %36 = call i32 @trace_seq_puts(%struct.trace_seq* %35, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str, i64 0, i64 0))
  %37 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %38 = load i32, i32* %7, align 4
  %39 = call i32 @print_graph_cpu(%struct.trace_seq* %37, i32 %38)
  %40 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %41 = load i32, i32* %9, align 4
  %42 = call i32 @print_graph_proc(%struct.trace_seq* %40, i32 %41)
  %43 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %44 = call i32 @trace_seq_puts(%struct.trace_seq* %43, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  %45 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @print_graph_proc(%struct.trace_seq* %45, i32 %46)
  %48 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %49 = call i32 @trace_seq_puts(%struct.trace_seq* %48, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str.2, i64 0, i64 0))
  br label %50

50:                                               ; preds = %34, %33, %25, %13
  ret void
}

declare dso_local %struct.TYPE_2__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @print_graph_cpu(%struct.trace_seq*, i32) #1

declare dso_local i32 @print_graph_proc(%struct.trace_seq*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
