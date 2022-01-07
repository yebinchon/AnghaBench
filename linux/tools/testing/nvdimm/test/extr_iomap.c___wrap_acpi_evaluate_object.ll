; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c___wrap_acpi_evaluate_object.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/nvdimm/test/extr_iomap.c___wrap_acpi_evaluate_object.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_object_list = type { i32 }
%struct.acpi_buffer = type { i32, %union.acpi_object* }
%union.acpi_object = type { i32 }
%struct.nfit_test_resource = type { %union.acpi_object** }

@.str = private unnamed_addr constant [5 x i8] c"_FIT\00", align 1
@AE_OK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__wrap_acpi_evaluate_object(i64 %0, i32 %1, %struct.acpi_object_list* %2, %struct.acpi_buffer* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.acpi_object_list*, align 8
  %9 = alloca %struct.acpi_buffer*, align 8
  %10 = alloca %struct.nfit_test_resource*, align 8
  %11 = alloca %union.acpi_object**, align 8
  store i64 %0, i64* %6, align 8
  store i32 %1, i32* %7, align 4
  store %struct.acpi_object_list* %2, %struct.acpi_object_list** %8, align 8
  store %struct.acpi_buffer* %3, %struct.acpi_buffer** %9, align 8
  %12 = load i64, i64* %6, align 8
  %13 = call %struct.nfit_test_resource* @get_nfit_res(i64 %12)
  store %struct.nfit_test_resource* %13, %struct.nfit_test_resource** %10, align 8
  %14 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %10, align 8
  %15 = icmp ne %struct.nfit_test_resource* %14, null
  br i1 %15, label %16, label %23

16:                                               ; preds = %4
  %17 = load i32, i32* %7, align 4
  %18 = call i64 @strcmp(i32 %17, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %16
  %21 = load %struct.acpi_buffer*, %struct.acpi_buffer** %9, align 8
  %22 = icmp ne %struct.acpi_buffer* %21, null
  br i1 %22, label %29, label %23

23:                                               ; preds = %20, %16, %4
  %24 = load i64, i64* %6, align 8
  %25 = load i32, i32* %7, align 4
  %26 = load %struct.acpi_object_list*, %struct.acpi_object_list** %8, align 8
  %27 = load %struct.acpi_buffer*, %struct.acpi_buffer** %9, align 8
  %28 = call i32 @acpi_evaluate_object(i64 %24, i32 %25, %struct.acpi_object_list* %26, %struct.acpi_buffer* %27)
  store i32 %28, i32* %5, align 4
  br label %40

29:                                               ; preds = %20
  %30 = load %struct.nfit_test_resource*, %struct.nfit_test_resource** %10, align 8
  %31 = getelementptr inbounds %struct.nfit_test_resource, %struct.nfit_test_resource* %30, i32 0, i32 0
  %32 = load %union.acpi_object**, %union.acpi_object*** %31, align 8
  store %union.acpi_object** %32, %union.acpi_object*** %11, align 8
  %33 = load %struct.acpi_buffer*, %struct.acpi_buffer** %9, align 8
  %34 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %33, i32 0, i32 0
  store i32 4, i32* %34, align 8
  %35 = load %union.acpi_object**, %union.acpi_object*** %11, align 8
  %36 = load %union.acpi_object*, %union.acpi_object** %35, align 8
  %37 = load %struct.acpi_buffer*, %struct.acpi_buffer** %9, align 8
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %37, i32 0, i32 1
  store %union.acpi_object* %36, %union.acpi_object** %38, align 8
  %39 = load i32, i32* @AE_OK, align 4
  store i32 %39, i32* %5, align 4
  br label %40

40:                                               ; preds = %29, %23
  %41 = load i32, i32* %5, align 4
  ret i32 %41
}

declare dso_local %struct.nfit_test_resource* @get_nfit_res(i64) #1

declare dso_local i64 @strcmp(i32, i8*) #1

declare dso_local i32 @acpi_evaluate_object(i64, i32, %struct.acpi_object_list*, %struct.acpi_buffer*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
