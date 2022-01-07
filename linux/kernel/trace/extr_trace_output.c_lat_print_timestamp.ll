; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_lat_print_timestamp.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_lat_print_timestamp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i64, i64, %struct.trace_seq, %struct.TYPE_2__*, %struct.trace_array* }
%struct.trace_seq = type { i32 }
%struct.TYPE_2__ = type { i64 }
%struct.trace_array = type { i64 }

@TRACE_ITER_VERBOSE = common dso_local global i64 0, align 8
@TRACE_FILE_TIME_IN_NS = common dso_local global i64 0, align 8
@USEC_PER_MSEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [38 x i8] c"[%08llx] %ld.%03ldms (+%ld.%03ldms): \00", align 1
@.str.1 = private unnamed_addr constant [25 x i8] c"[%016llx] %lld (+%lld): \00", align 1
@.str.2 = private unnamed_addr constant [13 x i8] c" %4lldus%c: \00", align 1
@NSEC_PER_USEC = common dso_local global i64 0, align 8
@.str.3 = private unnamed_addr constant [9 x i8] c" %4lld: \00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*, i64)* @lat_print_timestamp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @lat_print_timestamp(%struct.trace_iterator* %0, i64 %1) #0 {
  %3 = alloca %struct.trace_iterator*, align 8
  %4 = alloca i64, align 8
  %5 = alloca %struct.trace_array*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.trace_seq*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %3, align 8
  store i64 %1, i64* %4, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 4
  %17 = load %struct.trace_array*, %struct.trace_array** %16, align 8
  store %struct.trace_array* %17, %struct.trace_array** %5, align 8
  %18 = load %struct.trace_array*, %struct.trace_array** %5, align 8
  %19 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %22 = and i64 %20, %21
  store i64 %22, i64* %6, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %24 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @TRACE_FILE_TIME_IN_NS, align 8
  %27 = and i64 %25, %26
  store i64 %27, i64* %7, align 8
  %28 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %29 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %28, i32 0, i32 1
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 3
  %33 = load %struct.TYPE_2__*, %struct.TYPE_2__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = sub i64 %30, %35
  store i64 %36, i64* %8, align 8
  %37 = load i64, i64* %4, align 8
  %38 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %39 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = sub i64 %37, %40
  store i64 %41, i64* %9, align 8
  %42 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %43 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %42, i32 0, i32 2
  store %struct.trace_seq* %43, %struct.trace_seq** %10, align 8
  %44 = load i64, i64* %7, align 8
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %51

46:                                               ; preds = %2
  %47 = load i64, i64* %8, align 8
  %48 = call i64 @ns2usecs(i64 %47)
  store i64 %48, i64* %8, align 8
  %49 = load i64, i64* %9, align 8
  %50 = call i64 @ns2usecs(i64 %49)
  store i64 %50, i64* %9, align 8
  br label %51

51:                                               ; preds = %46, %2
  %52 = load i64, i64* %6, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %76

54:                                               ; preds = %51
  %55 = load i64, i64* %7, align 8
  %56 = icmp ne i64 %55, 0
  br i1 %56, label %57, label %76

57:                                               ; preds = %54
  %58 = load i64, i64* %8, align 8
  %59 = load i32, i32* @USEC_PER_MSEC, align 4
  %60 = call i64 @do_div(i64 %58, i32 %59)
  store i64 %60, i64* %11, align 8
  %61 = load i64, i64* %8, align 8
  store i64 %61, i64* %12, align 8
  %62 = load i64, i64* %9, align 8
  %63 = load i32, i32* @USEC_PER_MSEC, align 4
  %64 = call i64 @do_div(i64 %62, i32 %63)
  store i64 %64, i64* %13, align 8
  %65 = load i64, i64* %9, align 8
  store i64 %65, i64* %14, align 8
  %66 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %67 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %68 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %67, i32 0, i32 1
  %69 = load i64, i64* %68, align 8
  %70 = call i64 @ns2usecs(i64 %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i64, i64* %14, align 8
  %74 = load i64, i64* %13, align 8
  %75 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %66, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str, i64 0, i64 0), i64 %70, i64 %71, i64 %72, i64 %73, i64 %74)
  br label %110

76:                                               ; preds = %54, %51
  %77 = load i64, i64* %6, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %90

79:                                               ; preds = %76
  %80 = load i64, i64* %7, align 8
  %81 = icmp ne i64 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %79
  %83 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %84 = load %struct.trace_iterator*, %struct.trace_iterator** %3, align 8
  %85 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = load i64, i64* %8, align 8
  %88 = load i64, i64* %9, align 8
  %89 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %83, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i64 %86, i64 %87, i64 %88)
  br label %109

90:                                               ; preds = %79, %76
  %91 = load i64, i64* %6, align 8
  %92 = icmp ne i64 %91, 0
  br i1 %92, label %104, label %93

93:                                               ; preds = %90
  %94 = load i64, i64* %7, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %104

96:                                               ; preds = %93
  %97 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %98 = load i64, i64* %8, align 8
  %99 = load i64, i64* %9, align 8
  %100 = load i64, i64* @NSEC_PER_USEC, align 8
  %101 = mul i64 %99, %100
  %102 = call i32 @trace_find_mark(i64 %101)
  %103 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %97, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i64 %98, i32 %102)
  br label %108

104:                                              ; preds = %93, %90
  %105 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %106 = load i64, i64* %8, align 8
  %107 = call i32 (%struct.trace_seq*, i8*, i64, ...) @trace_seq_printf(%struct.trace_seq* %105, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str.3, i64 0, i64 0), i64 %106)
  br label %108

108:                                              ; preds = %104, %96
  br label %109

109:                                              ; preds = %108, %82
  br label %110

110:                                              ; preds = %109, %57
  %111 = load %struct.trace_seq*, %struct.trace_seq** %10, align 8
  %112 = call i32 @trace_seq_has_overflowed(%struct.trace_seq* %111)
  %113 = icmp ne i32 %112, 0
  %114 = xor i1 %113, true
  %115 = zext i1 %114 to i32
  ret i32 %115
}

declare dso_local i64 @ns2usecs(i64) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i64, ...) #1

declare dso_local i32 @trace_find_mark(i64) #1

declare dso_local i32 @trace_seq_has_overflowed(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
