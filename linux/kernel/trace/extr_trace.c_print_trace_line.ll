; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_trace_line.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace.c_print_trace_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { %struct.TYPE_4__*, %struct.TYPE_3__*, i32, i64, i32, %struct.trace_array* }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.trace_iterator*)* }
%struct.trace_array = type { i64 }

@.str = private unnamed_addr constant [26 x i8] c"CPU:%d [LOST %lu EVENTS]\0A\00", align 1
@TRACE_TYPE_PARTIAL_LINE = common dso_local global i32 0, align 4
@TRACE_TYPE_UNHANDLED = common dso_local global i32 0, align 4
@TRACE_BPUTS = common dso_local global i64 0, align 8
@TRACE_ITER_PRINTK = common dso_local global i64 0, align 8
@TRACE_ITER_PRINTK_MSGONLY = common dso_local global i64 0, align 8
@TRACE_BPRINT = common dso_local global i64 0, align 8
@TRACE_PRINT = common dso_local global i64 0, align 8
@TRACE_ITER_BIN = common dso_local global i64 0, align 8
@TRACE_ITER_HEX = common dso_local global i64 0, align 8
@TRACE_ITER_RAW = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @print_trace_line(%struct.trace_iterator* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca %struct.trace_array*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  %7 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %8 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %7, i32 0, i32 5
  %9 = load %struct.trace_array*, %struct.trace_array** %8, align 8
  store %struct.trace_array* %9, %struct.trace_array** %4, align 8
  %10 = load %struct.trace_array*, %struct.trace_array** %4, align 8
  %11 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  store i64 %12, i64* %5, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 3
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %34

17:                                               ; preds = %1
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 2
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 4
  %22 = load i32, i32* %21, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = call i32 @trace_seq_printf(i32* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %22, i64 %25)
  %27 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %28 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %27, i32 0, i32 2
  %29 = call i64 @trace_seq_has_overflowed(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %17
  %32 = load i32, i32* @TRACE_TYPE_PARTIAL_LINE, align 4
  store i32 %32, i32* %2, align 4
  br label %150

33:                                               ; preds = %17
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %36 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %35, i32 0, i32 1
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = icmp ne %struct.TYPE_3__* %37, null
  br i1 %38, label %39, label %60

39:                                               ; preds = %34
  %40 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %41 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %40, i32 0, i32 1
  %42 = load %struct.TYPE_3__*, %struct.TYPE_3__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %42, i32 0, i32 0
  %44 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %43, align 8
  %45 = icmp ne i32 (%struct.trace_iterator*)* %44, null
  br i1 %45, label %46, label %60

46:                                               ; preds = %39
  %47 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %48 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %47, i32 0, i32 1
  %49 = load %struct.TYPE_3__*, %struct.TYPE_3__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %49, i32 0, i32 0
  %51 = load i32 (%struct.trace_iterator*)*, i32 (%struct.trace_iterator*)** %50, align 8
  %52 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %53 = call i32 %51(%struct.trace_iterator* %52)
  store i32 %53, i32* %6, align 4
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @TRACE_TYPE_UNHANDLED, align 4
  %56 = icmp ne i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %46
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %2, align 4
  br label %150

59:                                               ; preds = %46
  br label %60

60:                                               ; preds = %59, %39, %34
  %61 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %62 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %61, i32 0, i32 0
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = load i64, i64* @TRACE_BPUTS, align 8
  %67 = icmp eq i64 %65, %66
  br i1 %67, label %68, label %81

68:                                               ; preds = %60
  %69 = load i64, i64* %5, align 8
  %70 = load i64, i64* @TRACE_ITER_PRINTK, align 8
  %71 = and i64 %69, %70
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %81

73:                                               ; preds = %68
  %74 = load i64, i64* %5, align 8
  %75 = load i64, i64* @TRACE_ITER_PRINTK_MSGONLY, align 8
  %76 = and i64 %74, %75
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %80 = call i32 @trace_print_bputs_msg_only(%struct.trace_iterator* %79)
  store i32 %80, i32* %2, align 4
  br label %150

81:                                               ; preds = %73, %68, %60
  %82 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %83 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 0
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* @TRACE_BPRINT, align 8
  %88 = icmp eq i64 %86, %87
  br i1 %88, label %89, label %102

89:                                               ; preds = %81
  %90 = load i64, i64* %5, align 8
  %91 = load i64, i64* @TRACE_ITER_PRINTK, align 8
  %92 = and i64 %90, %91
  %93 = icmp ne i64 %92, 0
  br i1 %93, label %94, label %102

94:                                               ; preds = %89
  %95 = load i64, i64* %5, align 8
  %96 = load i64, i64* @TRACE_ITER_PRINTK_MSGONLY, align 8
  %97 = and i64 %95, %96
  %98 = icmp ne i64 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %101 = call i32 @trace_print_bprintk_msg_only(%struct.trace_iterator* %100)
  store i32 %101, i32* %2, align 4
  br label %150

102:                                              ; preds = %94, %89, %81
  %103 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %104 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %103, i32 0, i32 0
  %105 = load %struct.TYPE_4__*, %struct.TYPE_4__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = load i64, i64* @TRACE_PRINT, align 8
  %109 = icmp eq i64 %107, %108
  br i1 %109, label %110, label %123

110:                                              ; preds = %102
  %111 = load i64, i64* %5, align 8
  %112 = load i64, i64* @TRACE_ITER_PRINTK, align 8
  %113 = and i64 %111, %112
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %123

115:                                              ; preds = %110
  %116 = load i64, i64* %5, align 8
  %117 = load i64, i64* @TRACE_ITER_PRINTK_MSGONLY, align 8
  %118 = and i64 %116, %117
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %123

120:                                              ; preds = %115
  %121 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %122 = call i32 @trace_print_printk_msg_only(%struct.trace_iterator* %121)
  store i32 %122, i32* %2, align 4
  br label %150

123:                                              ; preds = %115, %110, %102
  %124 = load i64, i64* %5, align 8
  %125 = load i64, i64* @TRACE_ITER_BIN, align 8
  %126 = and i64 %124, %125
  %127 = icmp ne i64 %126, 0
  br i1 %127, label %128, label %131

128:                                              ; preds = %123
  %129 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %130 = call i32 @print_bin_fmt(%struct.trace_iterator* %129)
  store i32 %130, i32* %2, align 4
  br label %150

131:                                              ; preds = %123
  %132 = load i64, i64* %5, align 8
  %133 = load i64, i64* @TRACE_ITER_HEX, align 8
  %134 = and i64 %132, %133
  %135 = icmp ne i64 %134, 0
  br i1 %135, label %136, label %139

136:                                              ; preds = %131
  %137 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %138 = call i32 @print_hex_fmt(%struct.trace_iterator* %137)
  store i32 %138, i32* %2, align 4
  br label %150

139:                                              ; preds = %131
  %140 = load i64, i64* %5, align 8
  %141 = load i64, i64* @TRACE_ITER_RAW, align 8
  %142 = and i64 %140, %141
  %143 = icmp ne i64 %142, 0
  br i1 %143, label %144, label %147

144:                                              ; preds = %139
  %145 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %146 = call i32 @print_raw_fmt(%struct.trace_iterator* %145)
  store i32 %146, i32* %2, align 4
  br label %150

147:                                              ; preds = %139
  %148 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %149 = call i32 @print_trace_fmt(%struct.trace_iterator* %148)
  store i32 %149, i32* %2, align 4
  br label %150

150:                                              ; preds = %147, %144, %136, %128, %120, %99, %78, %57, %31
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local i32 @trace_seq_printf(i32*, i8*, i32, i64) #1

declare dso_local i64 @trace_seq_has_overflowed(i32*) #1

declare dso_local i32 @trace_print_bputs_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_bprintk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @trace_print_printk_msg_only(%struct.trace_iterator*) #1

declare dso_local i32 @print_bin_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_hex_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_raw_fmt(%struct.trace_iterator*) #1

declare dso_local i32 @print_trace_fmt(%struct.trace_iterator*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
