; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_print_entry_header.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_ring_buffer.c_ring_buffer_print_entry_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_seq = type { i32 }

@.str = private unnamed_addr constant [27 x i8] c"# compressed entry header\0A\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"\09type_len    :    5 bits\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"\09time_delta  :   27 bits\0A\00", align 1
@.str.3 = private unnamed_addr constant [26 x i8] c"\09array       :   32 bits\0A\00", align 1
@.str.4 = private unnamed_addr constant [27 x i8] c"\09padding     : type == %d\0A\00", align 1
@RINGBUF_TYPE_PADDING = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [27 x i8] c"\09time_extend : type == %d\0A\00", align 1
@RINGBUF_TYPE_TIME_EXTEND = common dso_local global i32 0, align 4
@.str.6 = private unnamed_addr constant [26 x i8] c"\09time_stamp : type == %d\0A\00", align 1
@RINGBUF_TYPE_TIME_STAMP = common dso_local global i32 0, align 4
@.str.7 = private unnamed_addr constant [27 x i8] c"\09data max type_len  == %d\0A\00", align 1
@RINGBUF_TYPE_DATA_TYPE_LEN_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ring_buffer_print_entry_header(%struct.trace_seq* %0) #0 {
  %2 = alloca %struct.trace_seq*, align 8
  store %struct.trace_seq* %0, %struct.trace_seq** %2, align 8
  %3 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %4 = call i32 @trace_seq_puts(%struct.trace_seq* %3, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0))
  %5 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %6 = call i32 @trace_seq_puts(%struct.trace_seq* %5, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  %7 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %8 = call i32 @trace_seq_puts(%struct.trace_seq* %7, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  %9 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %10 = call i32 @trace_seq_puts(%struct.trace_seq* %9, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.3, i64 0, i64 0))
  %11 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %12 = call i32 @trace_seq_putc(%struct.trace_seq* %11, i8 signext 10)
  %13 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %14 = load i32, i32* @RINGBUF_TYPE_PADDING, align 4
  %15 = call i32 @trace_seq_printf(%struct.trace_seq* %13, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.4, i64 0, i64 0), i32 %14)
  %16 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %17 = load i32, i32* @RINGBUF_TYPE_TIME_EXTEND, align 4
  %18 = call i32 @trace_seq_printf(%struct.trace_seq* %16, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.5, i64 0, i64 0), i32 %17)
  %19 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %20 = load i32, i32* @RINGBUF_TYPE_TIME_STAMP, align 4
  %21 = call i32 @trace_seq_printf(%struct.trace_seq* %19, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.6, i64 0, i64 0), i32 %20)
  %22 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %23 = load i32, i32* @RINGBUF_TYPE_DATA_TYPE_LEN_MAX, align 4
  %24 = call i32 @trace_seq_printf(%struct.trace_seq* %22, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.7, i64 0, i64 0), i32 %23)
  %25 = load %struct.trace_seq*, %struct.trace_seq** %2, align 8
  %26 = call i32 @trace_seq_has_overflowed(%struct.trace_seq* %25)
  %27 = icmp ne i32 %26, 0
  %28 = xor i1 %27, true
  %29 = zext i1 %28 to i32
  ret i32 %29
}

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_seq_putc(%struct.trace_seq*, i8 signext) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32) #1

declare dso_local i32 @trace_seq_has_overflowed(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
