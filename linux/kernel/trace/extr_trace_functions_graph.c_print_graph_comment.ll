; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_comment.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_functions_graph.c_print_graph_comment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i8*, %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_iterator = type { %struct.TYPE_5__*, i32, %struct.fgraph_data*, %struct.trace_array* }
%struct.TYPE_5__ = type { i32 }
%struct.fgraph_data = type { i32 }
%struct.trace_array = type { i64 }
%struct.trace_event = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 (%struct.trace_iterator*, i64, %struct.trace_event*)* }
%struct.TYPE_8__ = type { i32 }

@TRACE_ITER_SYM_MASK = common dso_local global i64 0, align 8
@FLAGS_FILL_FULL = common dso_local global i32 0, align 4
@TRACE_GRAPH_INDENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [4 x i8] c"/* \00", align 1
@TRACE_TYPE_HANDLED = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [5 x i8] c" */\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_seq*, %struct.trace_entry*, %struct.trace_iterator*, i32)* @print_graph_comment to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @print_graph_comment(%struct.trace_seq* %0, %struct.trace_entry* %1, %struct.trace_iterator* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_iterator*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.trace_array*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.fgraph_data*, align 8
  %13 = alloca %struct.trace_event*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.trace_seq* %0, %struct.trace_seq** %6, align 8
  store %struct.trace_entry* %1, %struct.trace_entry** %7, align 8
  store %struct.trace_iterator* %2, %struct.trace_iterator** %8, align 8
  store i32 %3, i32* %9, align 4
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 3
  %19 = load %struct.trace_array*, %struct.trace_array** %18, align 8
  store %struct.trace_array* %19, %struct.trace_array** %10, align 8
  %20 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %21 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %20, i32 0, i32 0
  %22 = load i64, i64* %21, align 8
  %23 = load i64, i64* @TRACE_ITER_SYM_MASK, align 8
  %24 = and i64 %22, %23
  store i64 %24, i64* %11, align 8
  %25 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %26 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %25, i32 0, i32 2
  %27 = load %struct.fgraph_data*, %struct.fgraph_data** %26, align 8
  store %struct.fgraph_data* %27, %struct.fgraph_data** %12, align 8
  store i32 0, i32* %14, align 4
  %28 = load %struct.fgraph_data*, %struct.fgraph_data** %12, align 8
  %29 = icmp ne %struct.fgraph_data* %28, null
  br i1 %29, label %30, label %40

30:                                               ; preds = %4
  %31 = load %struct.fgraph_data*, %struct.fgraph_data** %12, align 8
  %32 = getelementptr inbounds %struct.fgraph_data, %struct.fgraph_data* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %35 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call %struct.TYPE_8__* @per_cpu_ptr(i32 %33, i32 %36)
  %38 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  store i32 %39, i32* %14, align 4
  br label %40

40:                                               ; preds = %30, %4
  %41 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %42 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @print_graph_prologue(%struct.trace_iterator* %41, %struct.trace_seq* %42, i32 0, i32 0, i32 %43)
  %45 = load %struct.trace_array*, %struct.trace_array** %10, align 8
  %46 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @FLAGS_FILL_FULL, align 4
  %49 = or i32 %47, %48
  %50 = call i32 @print_graph_duration(%struct.trace_array* %45, i32 0, %struct.trace_seq* %46, i32 %49)
  %51 = load i32, i32* %14, align 4
  %52 = icmp sgt i32 %51, 0
  br i1 %52, label %53, label %68

53:                                               ; preds = %40
  store i32 0, i32* %16, align 4
  br label %54

54:                                               ; preds = %64, %53
  %55 = load i32, i32* %16, align 4
  %56 = load i32, i32* %14, align 4
  %57 = add nsw i32 %56, 1
  %58 = load i32, i32* @TRACE_GRAPH_INDENT, align 4
  %59 = mul nsw i32 %57, %58
  %60 = icmp slt i32 %55, %59
  br i1 %60, label %61, label %67

61:                                               ; preds = %54
  %62 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %63 = call i32 @trace_seq_putc(%struct.trace_seq* %62, i8 signext 32)
  br label %64

64:                                               ; preds = %61
  %65 = load i32, i32* %16, align 4
  %66 = add nsw i32 %65, 1
  store i32 %66, i32* %16, align 4
  br label %54

67:                                               ; preds = %54
  br label %68

68:                                               ; preds = %67, %40
  %69 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %70 = call i32 @trace_seq_puts(%struct.trace_seq* %69, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0))
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %72 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %71, i32 0, i32 0
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  switch i32 %75, label %103 [
    i32 129, label %76
    i32 130, label %85
    i32 128, label %94
  ]

76:                                               ; preds = %68
  %77 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %78 = call i32 @trace_print_bputs_msg_only(%struct.trace_iterator* %77)
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %15, align 4
  %80 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %81 = icmp ne i32 %79, %80
  br i1 %81, label %82, label %84

82:                                               ; preds = %76
  %83 = load i32, i32* %15, align 4
  store i32 %83, i32* %5, align 4
  br label %169

84:                                               ; preds = %76
  br label %128

85:                                               ; preds = %68
  %86 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %87 = call i32 @trace_print_bprintk_msg_only(%struct.trace_iterator* %86)
  store i32 %87, i32* %15, align 4
  %88 = load i32, i32* %15, align 4
  %89 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %90 = icmp ne i32 %88, %89
  br i1 %90, label %91, label %93

91:                                               ; preds = %85
  %92 = load i32, i32* %15, align 4
  store i32 %92, i32* %5, align 4
  br label %169

93:                                               ; preds = %85
  br label %128

94:                                               ; preds = %68
  %95 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %96 = call i32 @trace_print_printk_msg_only(%struct.trace_iterator* %95)
  store i32 %96, i32* %15, align 4
  %97 = load i32, i32* %15, align 4
  %98 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %99 = icmp ne i32 %97, %98
  br i1 %99, label %100, label %102

100:                                              ; preds = %94
  %101 = load i32, i32* %15, align 4
  store i32 %101, i32* %5, align 4
  br label %169

102:                                              ; preds = %94
  br label %128

103:                                              ; preds = %68
  %104 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %105 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call %struct.trace_event* @ftrace_find_event(i32 %106)
  store %struct.trace_event* %107, %struct.trace_event** %13, align 8
  %108 = load %struct.trace_event*, %struct.trace_event** %13, align 8
  %109 = icmp ne %struct.trace_event* %108, null
  br i1 %109, label %112, label %110

110:                                              ; preds = %103
  %111 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  store i32 %111, i32* %5, align 4
  br label %169

112:                                              ; preds = %103
  %113 = load %struct.trace_event*, %struct.trace_event** %13, align 8
  %114 = getelementptr inbounds %struct.trace_event, %struct.trace_event* %113, i32 0, i32 0
  %115 = load %struct.TYPE_6__*, %struct.TYPE_6__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %115, i32 0, i32 0
  %117 = load i32 (%struct.trace_iterator*, i64, %struct.trace_event*)*, i32 (%struct.trace_iterator*, i64, %struct.trace_event*)** %116, align 8
  %118 = load %struct.trace_iterator*, %struct.trace_iterator** %8, align 8
  %119 = load i64, i64* %11, align 8
  %120 = load %struct.trace_event*, %struct.trace_event** %13, align 8
  %121 = call i32 %117(%struct.trace_iterator* %118, i64 %119, %struct.trace_event* %120)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = load i32, i32* @TRACE_TYPE_HANDLED, align 4
  %124 = icmp ne i32 %122, %123
  br i1 %124, label %125, label %127

125:                                              ; preds = %112
  %126 = load i32, i32* %15, align 4
  store i32 %126, i32* %5, align 4
  br label %169

127:                                              ; preds = %112
  br label %128

128:                                              ; preds = %127, %102, %93, %84
  %129 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %130 = call i64 @trace_seq_has_overflowed(%struct.trace_seq* %129)
  %131 = icmp ne i64 %130, 0
  br i1 %131, label %132, label %133

132:                                              ; preds = %128
  br label %166

133:                                              ; preds = %128
  %134 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %135 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %134, i32 0, i32 0
  %136 = load i8*, i8** %135, align 8
  %137 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %138 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %137, i32 0, i32 1
  %139 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %138, i32 0, i32 0
  %140 = load i32, i32* %139, align 8
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds i8, i8* %136, i64 %142
  %144 = load i8, i8* %143, align 1
  %145 = sext i8 %144 to i32
  %146 = icmp eq i32 %145, 10
  br i1 %146, label %147, label %163

147:                                              ; preds = %133
  %148 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %149 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %148, i32 0, i32 0
  %150 = load i8*, i8** %149, align 8
  %151 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %152 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %151, i32 0, i32 1
  %153 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = sub nsw i32 %154, 1
  %156 = sext i32 %155 to i64
  %157 = getelementptr inbounds i8, i8* %150, i64 %156
  store i8 0, i8* %157, align 1
  %158 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %159 = getelementptr inbounds %struct.trace_seq, %struct.trace_seq* %158, i32 0, i32 1
  %160 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %159, i32 0, i32 0
  %161 = load i32, i32* %160, align 8
  %162 = add nsw i32 %161, -1
  store i32 %162, i32* %160, align 8
  br label %163

163:                                              ; preds = %147, %133
  %164 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %165 = call i32 @trace_seq_puts(%struct.trace_seq* %164, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0))
  br label %166

166:                                              ; preds = %163, %132
  %167 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %168 = call i32 @trace_handle_return(%struct.trace_seq* %167)
  store i32 %168, i32* %5, align 4
  br label %169

169:                                              ; preds = %166, %125, %110, %100, %91, %82
  %170 = load i32, i32* %5, align 4
  ret i32 %170
}

declare dso_local %struct.TYPE_8__* @per_cpu_ptr(i32, i32) #1

declare dso_local i32 @print_graph_prologue(%struct.trace_iterator*, %struct.trace_seq*, i32, i32, i32) #1

declare dso_local i32 @print_graph_duration(%struct.trace_array*, i32, %struct.trace_seq*, i32) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_print_bputs_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_bprintk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_printk_msg_only(%struct.trace_iterator*) #1

declare dso_local %struct.trace_event* @ftrace_find_event(i32) #1

declare dso_local i64 @trace_seq_has_overflowed(%struct.trace_seq*) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
