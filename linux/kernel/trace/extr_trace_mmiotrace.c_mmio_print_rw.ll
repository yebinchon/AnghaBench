; ModuleID = '/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_rw.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/trace/extr_trace_mmiotrace.c_mmio_print_rw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.trace_iterator = type { i32, %struct.trace_seq, %struct.trace_entry* }
%struct.trace_seq = type { i32 }
%struct.trace_entry = type { i32 }
%struct.trace_mmiotrace_rw = type { %struct.mmiotrace_rw }
%struct.mmiotrace_rw = type { i32, i32, i32, i64, i32, i32 }

@USEC_PER_SEC = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [40 x i8] c"R %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [40 x i8] c"W %d %u.%06lu %d 0x%llx 0x%lx 0x%lx %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [55 x i8] c"UNKNOWN %u.%06lu %d 0x%llx %02lx,%02lx,%02lx 0x%lx %d\0A\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"rw what?\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.trace_iterator*)* @mmio_print_rw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mmio_print_rw(%struct.trace_iterator* %0) #0 {
  %2 = alloca %struct.trace_iterator*, align 8
  %3 = alloca %struct.trace_entry*, align 8
  %4 = alloca %struct.trace_mmiotrace_rw*, align 8
  %5 = alloca %struct.mmiotrace_rw*, align 8
  %6 = alloca %struct.trace_seq*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store %struct.trace_iterator* %0, %struct.trace_iterator** %2, align 8
  %10 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %11 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %10, i32 0, i32 2
  %12 = load %struct.trace_entry*, %struct.trace_entry** %11, align 8
  store %struct.trace_entry* %12, %struct.trace_entry** %3, align 8
  %13 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %14 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %13, i32 0, i32 1
  store %struct.trace_seq* %14, %struct.trace_seq** %6, align 8
  %15 = load %struct.trace_iterator*, %struct.trace_iterator** %2, align 8
  %16 = getelementptr inbounds %struct.trace_iterator, %struct.trace_iterator* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = call i64 @ns2usecs(i32 %17)
  store i64 %18, i64* %7, align 8
  %19 = load i64, i64* %7, align 8
  %20 = load i32, i32* @USEC_PER_SEC, align 4
  %21 = call i64 @do_div(i64 %19, i32 %20)
  store i64 %21, i64* %8, align 8
  %22 = load i64, i64* %7, align 8
  %23 = trunc i64 %22 to i32
  store i32 %23, i32* %9, align 4
  %24 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %4, align 8
  %25 = load %struct.trace_entry*, %struct.trace_entry** %3, align 8
  %26 = call i32 @trace_assign_type(%struct.trace_mmiotrace_rw* %24, %struct.trace_entry* %25)
  %27 = load %struct.trace_mmiotrace_rw*, %struct.trace_mmiotrace_rw** %4, align 8
  %28 = getelementptr inbounds %struct.trace_mmiotrace_rw, %struct.trace_mmiotrace_rw* %27, i32 0, i32 0
  store %struct.mmiotrace_rw* %28, %struct.mmiotrace_rw** %5, align 8
  %29 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %30 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  switch i32 %31, label %108 [
    i32 130, label %32
    i32 128, label %55
    i32 129, label %78
  ]

32:                                               ; preds = %1
  %33 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %34 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %35 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %34, i32 0, i32 5
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %9, align 4
  %38 = zext i32 %37 to i64
  %39 = load i64, i64* %8, align 8
  %40 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %41 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %45 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %44, i32 0, i32 3
  %46 = load i64, i64* %45, align 8
  %47 = trunc i64 %46 to i32
  %48 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %49 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %52 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 8
  %54 = call i32 (%struct.trace_seq*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, ...) @trace_seq_printf(%struct.trace_seq* %33, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0), i32 %36, i64 %38, i64 %39, i64 %43, i32 %47, i32 %50, i32 %53, i32 0)
  br label %111

55:                                               ; preds = %1
  %56 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %57 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %58 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %57, i32 0, i32 5
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %9, align 4
  %61 = zext i32 %60 to i64
  %62 = load i64, i64* %8, align 8
  %63 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %64 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %63, i32 0, i32 4
  %65 = load i32, i32* %64, align 8
  %66 = sext i32 %65 to i64
  %67 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %68 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %67, i32 0, i32 3
  %69 = load i64, i64* %68, align 8
  %70 = trunc i64 %69 to i32
  %71 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %72 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %75 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %74, i32 0, i32 2
  %76 = load i32, i32* %75, align 8
  %77 = call i32 (%struct.trace_seq*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, ...) @trace_seq_printf(%struct.trace_seq* %56, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str.1, i64 0, i64 0), i32 %59, i64 %61, i64 %62, i64 %66, i32 %70, i32 %73, i32 %76, i32 0)
  br label %111

78:                                               ; preds = %1
  %79 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %80 = load i32, i32* %9, align 4
  %81 = load i64, i64* %8, align 8
  %82 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %83 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %82, i32 0, i32 4
  %84 = load i32, i32* %83, align 8
  %85 = sext i32 %84 to i64
  %86 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %87 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %90 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = ashr i32 %91, 16
  %93 = and i32 %92, 255
  %94 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %95 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = ashr i32 %96, 8
  %98 = and i32 %97, 255
  %99 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %100 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = ashr i32 %101, 0
  %103 = and i32 %102, 255
  %104 = load %struct.mmiotrace_rw*, %struct.mmiotrace_rw** %5, align 8
  %105 = getelementptr inbounds %struct.mmiotrace_rw, %struct.mmiotrace_rw* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 8
  %107 = call i32 (%struct.trace_seq*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, ...) @trace_seq_printf(%struct.trace_seq* %79, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str.2, i64 0, i64 0), i32 %80, i64 %81, i64 %85, i64 %88, i32 %93, i32 %98, i32 %103, i32 %106, i32 0)
  br label %111

108:                                              ; preds = %1
  %109 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %110 = call i32 @trace_seq_puts(%struct.trace_seq* %109, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0))
  br label %111

111:                                              ; preds = %108, %78, %55, %32
  %112 = load %struct.trace_seq*, %struct.trace_seq** %6, align 8
  %113 = call i32 @trace_handle_return(%struct.trace_seq* %112)
  ret i32 %113
}

declare dso_local i64 @ns2usecs(i32) #1

declare dso_local i64 @do_div(i64, i32) #1

declare dso_local i32 @trace_assign_type(%struct.trace_mmiotrace_rw*, %struct.trace_entry*) #1

declare dso_local i32 @trace_seq_printf(%struct.trace_seq*, i8*, i32, i64, i64, i64, i32, i32, i32, i32, ...) #1

declare dso_local i32 @trace_seq_puts(%struct.trace_seq*, i8*) #1

declare dso_local i32 @trace_handle_return(%struct.trace_seq*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
