; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_find_package.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/extr_soc-acpi.c_snd_soc_acpi_find_package.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.acpi_device = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i64, i64 }
%struct.snd_soc_acpi_package_context = type { i32, i64, i32, i32, i32 }
%struct.acpi_buffer = type { %union.acpi_object*, i32*, i32 }
%union.acpi_object = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }

@AE_OK = common dso_local global i32 0, align 4
@ACPI_ALLOCATE_BUFFER = common dso_local global i32 0, align 4
@ACPI_TYPE_PACKAGE = common dso_local global i32 0, align 4
@AE_CTRL_TERMINATE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, i8*, i8**)* @snd_soc_acpi_find_package to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_soc_acpi_find_package(i32 %0, i32 %1, i8* %2, i8** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i8*, align 8
  %9 = alloca i8**, align 8
  %10 = alloca %struct.acpi_device*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_acpi_package_context*, align 8
  %13 = alloca %struct.acpi_buffer, align 8
  %14 = alloca %union.acpi_object*, align 8
  store i32 %0, i32* %6, align 4
  store i32 %1, i32* %7, align 4
  store i8* %2, i8** %8, align 8
  store i8** %3, i8*** %9, align 8
  %15 = load i32, i32* @AE_OK, align 4
  store i32 %15, i32* %11, align 4
  %16 = load i8*, i8** %8, align 8
  %17 = bitcast i8* %16 to %struct.snd_soc_acpi_package_context*
  store %struct.snd_soc_acpi_package_context* %17, %struct.snd_soc_acpi_package_context** %12, align 8
  %18 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %19 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %18, i32 0, i32 0
  store i32 0, i32* %19, align 8
  %20 = load i32, i32* %6, align 4
  %21 = call i64 @acpi_bus_get_device(i32 %20, %struct.acpi_device** %10)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @AE_OK, align 4
  store i32 %24, i32* %5, align 4
  br label %100

25:                                               ; preds = %4
  %26 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %27 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %98

31:                                               ; preds = %25
  %32 = load %struct.acpi_device*, %struct.acpi_device** %10, align 8
  %33 = getelementptr inbounds %struct.acpi_device, %struct.acpi_device* %32, i32 0, i32 0
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %98

37:                                               ; preds = %31
  %38 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %39 = load i32, i32* @ACPI_ALLOCATE_BUFFER, align 4
  %40 = sext i32 %39 to i64
  %41 = inttoptr i64 %40 to %union.acpi_object*
  store %union.acpi_object* %41, %union.acpi_object** %38, align 8
  %42 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 1
  store i32* null, i32** %42, align 8
  %43 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 2
  store i32 0, i32* %43, align 8
  store %union.acpi_object* null, %union.acpi_object** %14, align 8
  %44 = load i32, i32* %6, align 4
  %45 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %46 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %45, i32 0, i32 4
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @ACPI_TYPE_PACKAGE, align 4
  %49 = call i32 @acpi_evaluate_object_typed(i32 %44, i32 %47, i32* null, %struct.acpi_buffer* %13, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = call i64 @ACPI_FAILURE(i32 %50)
  %52 = icmp ne i64 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %37
  %54 = load i32, i32* @AE_OK, align 4
  store i32 %54, i32* %5, align 4
  br label %100

55:                                               ; preds = %37
  %56 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %57 = load %union.acpi_object*, %union.acpi_object** %56, align 8
  store %union.acpi_object* %57, %union.acpi_object** %14, align 8
  %58 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %59 = icmp ne %union.acpi_object* %58, null
  br i1 %59, label %60, label %69

60:                                               ; preds = %55
  %61 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %62 = bitcast %union.acpi_object* %61 to %struct.TYPE_4__*
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %66 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %65, i32 0, i32 1
  %67 = load i64, i64* %66, align 8
  %68 = icmp ne i64 %64, %67
  br i1 %68, label %69, label %74

69:                                               ; preds = %60, %55
  %70 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %71 = load %union.acpi_object*, %union.acpi_object** %70, align 8
  %72 = call i32 @kfree(%union.acpi_object* %71)
  %73 = load i32, i32* @AE_OK, align 4
  store i32 %73, i32* %5, align 4
  br label %100

74:                                               ; preds = %60
  %75 = load %union.acpi_object*, %union.acpi_object** %14, align 8
  %76 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %77 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %76, i32 0, i32 3
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %80 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %79, i32 0, i32 2
  %81 = load i32, i32* %80, align 8
  %82 = call i32 @acpi_extract_package(%union.acpi_object* %75, i32 %78, i32 %81)
  store i32 %82, i32* %11, align 4
  %83 = load i32, i32* %11, align 4
  %84 = call i64 @ACPI_FAILURE(i32 %83)
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %91

86:                                               ; preds = %74
  %87 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %88 = load %union.acpi_object*, %union.acpi_object** %87, align 8
  %89 = call i32 @kfree(%union.acpi_object* %88)
  %90 = load i32, i32* @AE_OK, align 4
  store i32 %90, i32* %5, align 4
  br label %100

91:                                               ; preds = %74
  %92 = getelementptr inbounds %struct.acpi_buffer, %struct.acpi_buffer* %13, i32 0, i32 0
  %93 = load %union.acpi_object*, %union.acpi_object** %92, align 8
  %94 = call i32 @kfree(%union.acpi_object* %93)
  %95 = load %struct.snd_soc_acpi_package_context*, %struct.snd_soc_acpi_package_context** %12, align 8
  %96 = getelementptr inbounds %struct.snd_soc_acpi_package_context, %struct.snd_soc_acpi_package_context* %95, i32 0, i32 0
  store i32 1, i32* %96, align 8
  %97 = load i32, i32* @AE_CTRL_TERMINATE, align 4
  store i32 %97, i32* %5, align 4
  br label %100

98:                                               ; preds = %31, %25
  %99 = load i32, i32* @AE_OK, align 4
  store i32 %99, i32* %5, align 4
  br label %100

100:                                              ; preds = %98, %91, %86, %69, %53, %23
  %101 = load i32, i32* %5, align 4
  ret i32 %101
}

declare dso_local i64 @acpi_bus_get_device(i32, %struct.acpi_device**) #1

declare dso_local i32 @acpi_evaluate_object_typed(i32, i32, i32*, %struct.acpi_buffer*, i32) #1

declare dso_local i64 @ACPI_FAILURE(i32) #1

declare dso_local i32 @kfree(%union.acpi_object*) #1

declare dso_local i32 @acpi_extract_package(%union.acpi_object*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
