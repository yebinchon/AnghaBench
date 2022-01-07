; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i32 }

@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [11 x i8] c"%16s-%-5d \00", align 1
@TRACE_ITER_RECORD_TGID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [9 x i8] c"(-----) \00", align 1
@.str.2 = private unnamed_addr constant [7 x i8] c"(%5d) \00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"[%03d] \00", align 1
@TRACE_ITER_IRQ_INFO = common dso_local global i32 0, align 4
@TRACE_FILE_TIME_IN_NS = common dso_local global i32 0, align 4
@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str.4 = private unnamed_addr constant [14 x i8] c" %5lu.%06lu: \00", align 1
@.str.5 = private unnamed_addr constant [10 x i8] c" %12llu: \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_context(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca %struct.trace_seq*, align 8
  %5 = alloca %struct.trace_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i8*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 5
  %14 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  store %struct.trace_array* %14, %struct.trace_array** %3, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 4
  store %struct.trace_seq* %16, %struct.trace_seq** %4, align 8
  %17 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %18 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %17, i32 0, i32 3
  %19 = load %struct.trace_entry*, %struct.trace_entry** %18, align 8
  store %struct.trace_entry* %19, %struct.trace_entry** %5, align 8
  %20 = load i32, i32* @TASK_COMM_LEN, align 4
  %21 = zext i32 %20 to i64
  %22 = call i8* @llvm.stacksave()
  store i8* %22, i8** %9, align 8
  %23 = alloca i8, i64 %21, align 16
  store i64 %21, i64* %10, align 8
  %24 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %25 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = call i32 @trace_find_cmdline(i32 %26, i8* %23)
  %28 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %29 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %30 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %28, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %23, i32 %31)
  %33 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %34 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* @TRACE_ITER_RECORD_TGID, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %54

39:                                               ; preds = %1
  %40 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %41 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = call i32 @trace_find_tgid(i32 %42)
  store i32 %43, i32* %11, align 4
  %44 = load i32, i32* %11, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %49, label %46

46:                                               ; preds = %39
  %47 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %48 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %47, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.1, i64 0, i64 0))
  br label %53

49:                                               ; preds = %39
  %50 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %51 = load i32, i32* %11, align 4
  %52 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %50, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.2, i64 0, i64 0), i32 %51)
  br label %53

53:                                               ; preds = %49, %46
  br label %54

54:                                               ; preds = %53, %1
  %55 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %56 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %57 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 8
  %59 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %55, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i64 0, i64 0), i32 %58)
  %60 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %61 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = load i32, i32* @TRACE_ITER_IRQ_INFO, align 4
  %64 = and i32 %62, %63
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %54
  %67 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %68 = load %struct.trace_entry*, %struct.trace_entry** %5, align 8
  %69 = call i32 @trace_print_lat_fmt(%struct.trace_seq* %67, %struct.trace_entry* %68)
  br label %70

70:                                               ; preds = %66, %54
  %71 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %72 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i32, i32* @TRACE_FILE_TIME_IN_NS, align 4
  %75 = and i32 %73, %74
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %90

77:                                               ; preds = %70
  %78 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %79 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 8
  %81 = call i64 @ns2usecs(i32 %80)
  store i64 %81, i64* %6, align 8
  %82 = load i64, i64* %6, align 8
  %83 = load i32, i32* @USEC_PER_SEC, align 4
  %84 = call i64 @do_div(i64 %82, i32 %83)
  store i64 %84, i64* %8, align 8
  %85 = load i64, i64* %6, align 8
  store i64 %85, i64* %7, align 8
  %86 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %87 = load i64, i64* %7, align 8
  %88 = load i64, i64* %8, align 8
  %89 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %86, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str.4, i64 0, i64 0), i64 %87, i64 %88)
  br label %96

90:                                               ; preds = %70
  %91 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %92 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %93 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %92, i32 0, i32 2
  %94 = load i32, i32* %93, align 8
  %95 = call i32 (%struct.trace_seq*, i8*, ...) @trace_seq_printf(%struct.trace_seq* %91, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.5, i64 0, i64 0), i32 %94)
  br label %96

96:                                               ; preds = %90, %77
  %97 = load %struct.trace_seq*, %struct.trace_seq** %4, align 8
  %98 = call i32 @trace_seq_has_overflowed(%struct.trace_seq* %97)
  %99 = icmp ne i32 %98, 0
  %100 = xor i1 %99, true
  %101 = zext i1 %100 to i32
  %102 = load i8*, i8** %9, align 8
  call void @llvm.stackrestore(i8* %102)
  ret i32 %101
}

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #1

declare dso_local i32 @trace_find_cmdline(i32, i8*) #2

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, ...) #2

declare dso_local i32 @trace_find_tgid(i32) #2

declare dso_local i32 @trace_print_lat_fmt(%struct.trace_seq*, %struct.trace_entry*) #2

declare dso_local i64 @ns2usecs(i32) #2

declare dso_local i64 @do_div(i64, i32) #2

declare dso_local i32 @trace_seq_has_overflowed(%struct.trace_seq*) #2

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
