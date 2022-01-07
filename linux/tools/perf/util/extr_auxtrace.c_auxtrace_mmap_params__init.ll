; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap_params__init.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_auxtrace.c_auxtrace_mmap_params__init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.auxtrace_mmap_params = type { i32, i32, i32, i32 }

@page_size = common dso_local global i64 0, align 8
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"AUX area mmap length %zu\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @auxtrace_mmap_params__init(%struct.auxtrace_mmap_params* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.auxtrace_mmap_params*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.auxtrace_mmap_params* %0, %struct.auxtrace_mmap_params** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %52

11:                                               ; preds = %4
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %14 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %13, i32 0, i32 3
  store i32 %12, i32* %14, align 4
  %15 = load i32, i32* %7, align 4
  %16 = zext i32 %15 to i64
  %17 = load i64, i64* @page_size, align 8
  %18 = mul i64 %16, %17
  %19 = trunc i64 %18 to i32
  %20 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %21 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 4
  %22 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %23 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = call i64 @is_power_of_2(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %11
  %28 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %29 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = sub i32 %30, 1
  br label %33

32:                                               ; preds = %11
  br label %33

33:                                               ; preds = %32, %27
  %34 = phi i32 [ %31, %27 ], [ 0, %32 ]
  %35 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %36 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load i32, i32* @PROT_READ, align 4
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %33
  br label %43

41:                                               ; preds = %33
  %42 = load i32, i32* @PROT_WRITE, align 4
  br label %43

43:                                               ; preds = %41, %40
  %44 = phi i32 [ 0, %40 ], [ %42, %41 ]
  %45 = or i32 %37, %44
  %46 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %47 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %46, i32 0, i32 2
  store i32 %45, i32* %47, align 4
  %48 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %49 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @pr_debug2(i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %50)
  br label %55

52:                                               ; preds = %4
  %53 = load %struct.auxtrace_mmap_params*, %struct.auxtrace_mmap_params** %5, align 8
  %54 = getelementptr inbounds %struct.auxtrace_mmap_params, %struct.auxtrace_mmap_params* %53, i32 0, i32 0
  store i32 0, i32* %54, align 4
  br label %55

55:                                               ; preds = %52, %43
  ret void
}

declare dso_local i64 @is_power_of_2(i32) #1

declare dso_local i32 @pr_debug2(i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
