; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_return.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_return.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ftrace_graph_ret = type { i64, i64, i32, i64, i8* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { i32, %struct.trace_array*, %struct.fgraph_data* }
%struct.trace_array = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.fgraph_cpu_data = type { i32, i64* }

@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@FTRACE_RETFUNC_DEPTH = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@TRACE_GRAPH_PRINT_TAIL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [3 x i8] c"}\0A\00", align 1
@.str.1 = private unnamed_addr constant [13 x i8] c"} /* %ps */\0A\00", align 1
@TRACE_GRAPH_PRINT_OVERRUN = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [18 x i8] c" (Overruns: %lu)\0A\00", align 1
@TRACE_GRAPH_RET = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ftrace_graph_ret*, %struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32)* @print_graph_return to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_return(%struct.ftrace_graph_ret* %0, %struct.trace_seq* %1, %struct.trace_entry* %2, %struct.trace_iterator* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ftrace_graph_ret*, align 8
  %8 = alloca %struct.trace_seq*, align 8
  %9 = alloca %struct.trace_entry*, align 8
  %10 = alloca %struct.trace_iterator*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca %struct.fgraph_data*, align 8
  %14 = alloca %struct.trace_array*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca %struct.fgraph_cpu_data*, align 8
  %20 = alloca i32, align 4
  store %struct.ftrace_graph_ret* %0, %struct.ftrace_graph_ret** %7, align 8
  store %struct.trace_seq* %1, %struct.trace_seq** %8, align 8
  store %struct.trace_entry* %2, %struct.trace_entry** %9, align 8
  store %struct.trace_iterator* %3, %struct.trace_iterator** %10, align 8
  store i32 %4, i32* %11, align 4
  %21 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %22 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %25 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  %27 = sub i64 %23, %26
  store i64 %27, i64* %12, align 8
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %29 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %28, i32 0, i32 2
  %30 = load %struct.fgraph_data*, %struct.fgraph_data** %29, align 8
  store %struct.fgraph_data* %30, %struct.fgraph_data** %13, align 8
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 1
  %33 = load %struct.trace_array*, %struct.trace_array** %32, align 8
  store %struct.trace_array* %33, %struct.trace_array** %14, align 8
  %34 = load %struct.trace_entry*, %struct.trace_entry** %9, align 8
  %35 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %15, align 4
  %37 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %38 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 8
  store i32 %39, i32* %16, align 4
  store i32 1, i32* %17, align 4
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %41 = load i32, i32* %11, align 4
  %42 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %43 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %42, i32 0, i32 2
  %44 = load i32, i32* %43, align 8
  %45 = call i64 @check_irq_return(%struct.trace_iterator* %40, i32 %41, i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %49

47:                                               ; preds = %5
  %48 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  store i32 %48, i32* %6, align 4
  br label %170

49:                                               ; preds = %5
  %50 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %51 = icmp ne %struct.fgraph_data* %50, null
  br i1 %51, label %52, label %105

52:                                               ; preds = %49
  %53 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %54 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  store i32 %55, i32* %20, align 4
  %56 = load %struct.fgraph_data*, %struct.fgraph_data** %13, align 8
  %57 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load i32, i32* %20, align 4
  %60 = call %struct.fgraph_cpu_data* @per_cpu_ptr(i32 %58, i32 %59)
  store %struct.fgraph_cpu_data* %60, %struct.fgraph_cpu_data** %19, align 8
  %61 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %62 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %61, i32 0, i32 2
  %63 = load i32, i32* %62, align 8
  %64 = sub nsw i32 %63, 1
  %65 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %19, align 8
  %66 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %65, i32 0, i32 0
  store i32 %64, i32* %66, align 8
  %67 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %68 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %67, i32 0, i32 2
  %69 = load i32, i32* %68, align 8
  %70 = load i32, i32* @FTRACE_RETFUNC_DEPTH, align 4
  %71 = icmp slt i32 %69, %70
  br i1 %71, label %72, label %104

72:                                               ; preds = %52
  %73 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %74 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 0
  %77 = zext i1 %76 to i32
  %78 = call i32 @WARN_ON_ONCE(i32 %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %104, label %80

80:                                               ; preds = %72
  %81 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %19, align 8
  %82 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %81, i32 0, i32 1
  %83 = load i64*, i64** %82, align 8
  %84 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %85 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %84, i32 0, i32 2
  %86 = load i32, i32* %85, align 8
  %87 = sext i32 %86 to i64
  %88 = getelementptr inbounds i64, i64* %83, i64 %87
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %91 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %90, i32 0, i32 3
  %92 = load i64, i64* %91, align 8
  %93 = icmp ne i64 %89, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %80
  store i32 0, i32* %17, align 4
  br label %95

95:                                               ; preds = %94, %80
  %96 = load %struct.fgraph_cpu_data*, %struct.fgraph_cpu_data** %19, align 8
  %97 = getelementptr inbounds %struct.fgraph_cpu_data, %struct.fgraph_cpu_data* %96, i32 0, i32 1
  %98 = load i64*, i64** %97, align 8
  %99 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %100 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = sext i32 %101 to i64
  %103 = getelementptr inbounds i64, i64* %98, i64 %102
  store i64 0, i64* %103, align 8
  br label %104

104:                                              ; preds = %95, %72, %52
  br label %105

105:                                              ; preds = %104, %49
  %106 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %107 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %108 = load i32, i32* %11, align 4
  %109 = call i32 @print_graph_prologue(%struct.trace_iterator* %106, %struct.trace_seq* %107, i32 0, i32 0, i32 %108)
  %110 = load %struct.trace_array*, %struct.trace_array** %14, align 8
  %111 = load i64, i64* %12, align 8
  %112 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %113 = load i32, i32* %11, align 4
  %114 = call i32 @print_graph_duration(%struct.trace_array* %110, i64 %111, %struct.trace_seq* %112, i32 %113)
  store i32 0, i32* %18, align 4
  br label %115

115:                                              ; preds = %126, %105
  %116 = load i32, i32* %18, align 4
  %117 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %118 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 8
  %120 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %121 = mul nsw i32 %119, %120
  %122 = icmp slt i32 %116, %121
  br i1 %122, label %123, label %129

123:                                              ; preds = %115
  %124 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %125 = call i32 @trace_seq_putc(%struct.trace_seq* %124, i8 signext 32)
  br label %126

126:                                              ; preds = %123
  %127 = load i32, i32* %18, align 4
  %128 = add nsw i32 %127, 1
  store i32 %128, i32* %18, align 4
  br label %115

129:                                              ; preds = %115
  %130 = load i32, i32* %17, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %140

132:                                              ; preds = %129
  %133 = load i32, i32* %11, align 4
  %134 = load i32, i32* @TRACE_GRAPH_PRINT_TAIL, align 4
  %135 = and i32 %133, %134
  %136 = icmp ne i32 %135, 0
  br i1 %136, label %140, label %137

137:                                              ; preds = %132
  %138 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %139 = call i32 @trace_seq_puts(%struct.trace_seq* %138, i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0))
  br label %147

140:                                              ; preds = %132, %129
  %141 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %142 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %143 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %142, i32 0, i32 3
  %144 = load i64, i64* %143, align 8
  %145 = inttoptr i64 %144 to i8*
  %146 = call i32 @trace_seq_printf(%struct.trace_seq* %141, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.1, i64 0, i64 0), i8* %145)
  br label %147

147:                                              ; preds = %140, %137
  %148 = load i32, i32* %11, align 4
  %149 = load i32, i32* @TRACE_GRAPH_PRINT_OVERRUN, align 4
  %150 = and i32 %148, %149
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %152, label %158

152:                                              ; preds = %147
  %153 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %154 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %155 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %154, i32 0, i32 4
  %156 = load i8*, i8** %155, align 8
  %157 = call i32 @trace_seq_printf(%struct.trace_seq* %153, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str.2, i64 0, i64 0), i8* %156)
  br label %158

158:                                              ; preds = %152, %147
  %159 = load %struct.trace_iterator*, %struct.trace_iterator** %10, align 8
  %160 = load %struct.ftrace_graph_ret*, %struct.ftrace_graph_ret** %7, align 8
  %161 = getelementptr inbounds %struct.ftrace_graph_ret, %struct.ftrace_graph_ret* %160, i32 0, i32 3
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* @TRACE_GRAPH_RET, align 4
  %164 = load i32, i32* %16, align 4
  %165 = load i32, i32* %15, align 4
  %166 = load i32, i32* %11, align 4
  %167 = call i32 @print_graph_irq(%struct.trace_iterator* %159, i64 %162, i32 %163, i32 %164, i32 %165, i32 %166)
  %168 = load %struct.trace_seq*, %struct.trace_seq** %8, align 8
  %169 = call i32 @trace_handle_return(%struct.trace_seq* %168)
  store i32 %169, i32* %6, align 4
  br label %170

170:                                              ; preds = %158, %47
  %171 = load i32, i32* %6, align 4
  ret i32 %171
}

declare dso_local i64 @check_irq_return(%struct.trace_iterator*, i32, i32) #1

declare dso_local %struct.fgraph_cpu_data* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @WARN_ON_ONCE(i32) #1

declare dso_local i32 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local i32 @print_graph_duration(%struct.trace_array*, i64, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*) #1

declare dso_local i32 @print_graph_irq(%struct.trace_iterator*, i64, i32, i32, i32, i32) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
