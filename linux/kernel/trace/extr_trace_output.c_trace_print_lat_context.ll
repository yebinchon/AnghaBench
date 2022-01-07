; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_lat_context.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_output.c_trace_print_lat_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, i32, i32, i32, %struct.trace_entry*, %struct.trace_seq, %struct.trace_array* }
%struct.trace_entry = type { i32, i32, i32 }
%struct.trace_seq = type { i32 }
%struct.trace_array = type { i64 }

@TRACE_ITER_VERBOSE = common dso_local global i64 0, align 8
@TASK_COMM_LEN = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"%16s %5d %3d %d %08x %08lx \00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @trace_print_lat_context(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_array*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.trace_seq*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.trace_entry*, align 8
  %8 = alloca %struct.trace_entry*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %12 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %13 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %12, i32 0, i32 6
  %14 = load %struct.trace_array*, %struct.trace_array** %13, align 8
  store %struct.trace_array* %14, %struct.trace_array** %3, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  store i32 %17, i32* %4, align 4
  %18 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %19 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %18, i32 0, i32 5
  store %struct.trace_seq* %19, %struct.trace_seq** %5, align 8
  %20 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %21 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %20, i32 0, i32 4
  %22 = load %struct.trace_entry*, %struct.trace_entry** %21, align 8
  store %struct.trace_entry* %22, %struct.trace_entry** %7, align 8
  %23 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %24 = call %struct.trace_entry* @trace_find_next_entry(%struct.trace_iterator* %23, i32* null, i32* %6)
  store %struct.trace_entry* %24, %struct.trace_entry** %8, align 8
  %25 = load %struct.trace_array*, %struct.trace_array** %3, align 8
  %26 = getelementptr inbounds %struct.trace_array, %struct.trace_array* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @TRACE_ITER_VERBOSE, align 8
  %29 = and i64 %27, %28
  store i64 %29, i64* %9, align 8
  %30 = load i32, i32* %4, align 4
  %31 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %32 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %31, i32 0, i32 0
  store i32 %30, i32* %32, align 8
  %33 = load %struct.trace_entry*, %struct.trace_entry** %8, align 8
  %34 = icmp ne %struct.trace_entry* %33, null
  br i1 %34, label %39, label %35

35:                                               ; preds = %1
  %36 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %37 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %36, i32 0, i32 3
  %38 = load i32, i32* %37, align 4
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %1
  %40 = load i64, i64* %9, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %69

42:                                               ; preds = %39
  %43 = load i32, i32* @TASK_COMM_LEN, align 4
  %44 = zext i32 %43 to i64
  %45 = call i8* @llvm.stacksave()
  store i8* %45, i8** %10, align 8
  %46 = alloca i8, i64 %44, align 16
  store i64 %44, i64* %11, align 8
  %47 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %48 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %47, i32 0, i32 2
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @trace_find_cmdline(i32 %49, i8* %46)
  %51 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %52 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %53 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 4
  %55 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %56 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %59 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %62 = getelementptr inbounds %struct.trace_entry, %struct.trace_entry* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %65 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 8
  %67 = call i32 @trace_seq_printf(%struct.trace_seq* %51, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i8* %46, i32 %54, i32 %57, i32 %60, i32 %63, i32 %66)
  %68 = load i8*, i8** %10, align 8
  call void @llvm.stackrestore(i8* %68)
  br label %76

69:                                               ; preds = %39
  %70 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %71 = load %struct.trace_entry*, %struct.trace_entry** %7, align 8
  %72 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %73 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %72, i32 0, i32 1
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @lat_print_generic(%struct.trace_seq* %70, %struct.trace_entry* %71, i32 %74)
  br label %76

76:                                               ; preds = %69, %42
  %77 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %78 = load i32, i32* %6, align 4
  %79 = call i32 @lat_print_timestamp(%struct.trace_iterator* %77, i32 %78)
  %80 = load %struct.trace_seq*, %struct.trace_seq** %5, align 8
  %81 = call i32 @trace_seq_has_overflowed(%struct.trace_seq* %80)
  %82 = icmp ne i32 %81, 0
  %83 = xor i1 %82, true
  %84 = zext i1 %83 to i32
  ret i32 %84
}

declare dso_local %struct.trace_entry* @trace_find_next_entry(%struct.trace_iterator*, i32*, i32*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @trace_find_cmdline(i32, i8*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i8*, i32, i32, i32, i32, i32) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

declare dso_local i32 @lat_print_generic(%struct.trace_seq*, %struct.trace_entry*, i32) #1

declare dso_local i32 @lat_print_timestamp(%struct.trace_iterator*, i32) #1

declare dso_local i32 @trace_seq_has_overflowed(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
