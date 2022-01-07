; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_intel-nhlt.c_intel_nhlt_init.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_intel-nhlt.c_intel_nhlt_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nhlt_acpi_table = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }
%struct.device = type { i32 }
%union.acpi_object = type { i64 }
%struct.nhlt_resource_desc = type { i64, i32 }
%struct.TYPE_3__ = type { i64 }

@.str = private unnamed_addr constant [25 x i8] c"Didn't find ACPI_HANDLE\0A\00", align 1
@osc_guid = common dso_local global i32 0, align 4
@ACPI_TYPE_BUFFER = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"No NHLT table found\0A\00", align 1
@MEMREMAP_WB = common dso_local global i32 0, align 4
@NHLT_ACPI_HEADER_SIG = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"NHLT ACPI header signature incorrect\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nhlt_acpi_table* @intel_nhlt_init(%struct.device* %0) #0 {
  %2 = alloca %struct.nhlt_acpi_table*, align 8
  %3 = alloca %struct.device*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %union.acpi_object*, align 8
  %6 = alloca %struct.nhlt_resource_desc*, align 8
  %7 = alloca %struct.nhlt_acpi_table*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.nhlt_acpi_table* null, %struct.nhlt_acpi_table** %7, align 8
  %8 = load %struct.device*, %struct.device** %3, align 8
  %9 = call i32 @ACPI_HANDLE(%struct.device* %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %15, label %12

12:                                               ; preds = %1
  %13 = load %struct.device*, %struct.device** %3, align 8
  %14 = call i32 @dev_err(%struct.device* %13, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  store %struct.nhlt_acpi_table* null, %struct.nhlt_acpi_table** %2, align 8
  br label %74

15:                                               ; preds = %1
  %16 = load i32, i32* %4, align 4
  %17 = call %union.acpi_object* @acpi_evaluate_dsm(i32 %16, i32* @osc_guid, i32 1, i32 1, i32* null)
  store %union.acpi_object* %17, %union.acpi_object** %5, align 8
  %18 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %19 = icmp ne %union.acpi_object* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %15
  store %struct.nhlt_acpi_table* null, %struct.nhlt_acpi_table** %2, align 8
  br label %74

21:                                               ; preds = %15
  %22 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %23 = bitcast %union.acpi_object* %22 to i64*
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @ACPI_TYPE_BUFFER, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %32

27:                                               ; preds = %21
  %28 = load %struct.device*, %struct.device** %3, align 8
  %29 = call i32 @dev_dbg(%struct.device* %28, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %30 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %31 = call i32 @ACPI_FREE(%union.acpi_object* %30)
  store %struct.nhlt_acpi_table* null, %struct.nhlt_acpi_table** %2, align 8
  br label %74

32:                                               ; preds = %21
  %33 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %34 = bitcast %union.acpi_object* %33 to %struct.TYPE_3__*
  %35 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = inttoptr i64 %36 to %struct.nhlt_resource_desc*
  store %struct.nhlt_resource_desc* %37, %struct.nhlt_resource_desc** %6, align 8
  %38 = load %struct.nhlt_resource_desc*, %struct.nhlt_resource_desc** %6, align 8
  %39 = getelementptr inbounds %struct.nhlt_resource_desc, %struct.nhlt_resource_desc* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %52

42:                                               ; preds = %32
  %43 = load %struct.nhlt_resource_desc*, %struct.nhlt_resource_desc** %6, align 8
  %44 = getelementptr inbounds %struct.nhlt_resource_desc, %struct.nhlt_resource_desc* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 8
  %46 = load %struct.nhlt_resource_desc*, %struct.nhlt_resource_desc** %6, align 8
  %47 = getelementptr inbounds %struct.nhlt_resource_desc, %struct.nhlt_resource_desc* %46, i32 0, i32 0
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* @MEMREMAP_WB, align 4
  %50 = call i64 @memremap(i32 %45, i64 %48, i32 %49)
  %51 = inttoptr i64 %50 to %struct.nhlt_acpi_table*
  store %struct.nhlt_acpi_table* %51, %struct.nhlt_acpi_table** %7, align 8
  br label %52

52:                                               ; preds = %42, %32
  %53 = load %union.acpi_object*, %union.acpi_object** %5, align 8
  %54 = call i32 @ACPI_FREE(%union.acpi_object* %53)
  %55 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %7, align 8
  %56 = icmp ne %struct.nhlt_acpi_table* %55, null
  br i1 %56, label %57, label %72

57:                                               ; preds = %52
  %58 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %7, align 8
  %59 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = load i32, i32* @NHLT_ACPI_HEADER_SIG, align 4
  %63 = load i32, i32* @NHLT_ACPI_HEADER_SIG, align 4
  %64 = call i32 @strlen(i32 %63)
  %65 = call i64 @strncmp(i32 %61, i32 %62, i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %72

67:                                               ; preds = %57
  %68 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %7, align 8
  %69 = call i32 @memunmap(%struct.nhlt_acpi_table* %68)
  %70 = load %struct.device*, %struct.device** %3, align 8
  %71 = call i32 @dev_err(%struct.device* %70, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  store %struct.nhlt_acpi_table* null, %struct.nhlt_acpi_table** %2, align 8
  br label %74

72:                                               ; preds = %57, %52
  %73 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %7, align 8
  store %struct.nhlt_acpi_table* %73, %struct.nhlt_acpi_table** %2, align 8
  br label %74

74:                                               ; preds = %72, %67, %27, %20, %12
  %75 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %2, align 8
  ret %struct.nhlt_acpi_table* %75
}

declare dso_local i32 @ACPI_HANDLE(%struct.device*) #1

declare dso_local i32 @dev_err(%struct.device*, i8*) #1

declare dso_local %union.acpi_object* @acpi_evaluate_dsm(i32, i32*, i32, i32, i32*) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*) #1

declare dso_local i32 @ACPI_FREE(%union.acpi_object*) #1

declare dso_local i64 @memremap(i32, i64, i32) #1

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @memunmap(%struct.nhlt_acpi_table*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
