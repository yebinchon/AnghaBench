; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_intel-nhlt.c_intel_nhlt_get_dmic_geo.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_intel-nhlt.c_intel_nhlt_get_dmic_geo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.nhlt_acpi_table = type { i64, i64 }
%struct.nhlt_endpoint = type { i64, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.nhlt_dmic_array_config = type { i32 }
%struct.nhlt_vendor_dmic_array_config = type { i32 }

@NHLT_LINK_DMIC = common dso_local global i64 0, align 8
@MIC_ARRAY_2CH = common dso_local global i32 0, align 4
@MIC_ARRAY_4CH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"undefined DMIC array_type 0x%0x\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @intel_nhlt_get_dmic_geo(%struct.device* %0, %struct.nhlt_acpi_table* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.nhlt_acpi_table*, align 8
  %6 = alloca %struct.nhlt_endpoint*, align 8
  %7 = alloca %struct.nhlt_dmic_array_config*, align 8
  %8 = alloca %struct.nhlt_vendor_dmic_array_config*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.nhlt_acpi_table* %1, %struct.nhlt_acpi_table** %5, align 8
  store i32 0, i32* %9, align 4
  %11 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %12 = icmp ne %struct.nhlt_acpi_table* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %71

14:                                               ; preds = %2
  %15 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %16 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %15, i32 0, i32 1
  %17 = load i64, i64* %16, align 8
  %18 = inttoptr i64 %17 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %18, %struct.nhlt_endpoint** %6, align 8
  store i64 0, i64* %10, align 8
  br label %19

19:                                               ; preds = %66, %14
  %20 = load i64, i64* %10, align 8
  %21 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %5, align 8
  %22 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = icmp slt i64 %20, %23
  br i1 %24, label %25, label %69

25:                                               ; preds = %19
  %26 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %27 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @NHLT_LINK_DMIC, align 8
  %30 = icmp eq i64 %28, %29
  br i1 %30, label %31, label %57

31:                                               ; preds = %25
  %32 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %33 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %32, i32 0, i32 2
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = inttoptr i64 %35 to %struct.nhlt_dmic_array_config*
  store %struct.nhlt_dmic_array_config* %36, %struct.nhlt_dmic_array_config** %7, align 8
  %37 = load %struct.nhlt_dmic_array_config*, %struct.nhlt_dmic_array_config** %7, align 8
  %38 = getelementptr inbounds %struct.nhlt_dmic_array_config, %struct.nhlt_dmic_array_config* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  switch i32 %39, label %50 [
    i32 132, label %40
    i32 133, label %40
    i32 131, label %42
    i32 129, label %42
    i32 130, label %42
    i32 128, label %44
  ]

40:                                               ; preds = %31, %31
  %41 = load i32, i32* @MIC_ARRAY_2CH, align 4
  store i32 %41, i32* %9, align 4
  br label %56

42:                                               ; preds = %31, %31, %31
  %43 = load i32, i32* @MIC_ARRAY_4CH, align 4
  store i32 %43, i32* %9, align 4
  br label %56

44:                                               ; preds = %31
  %45 = load %struct.nhlt_dmic_array_config*, %struct.nhlt_dmic_array_config** %7, align 8
  %46 = bitcast %struct.nhlt_dmic_array_config* %45 to %struct.nhlt_vendor_dmic_array_config*
  store %struct.nhlt_vendor_dmic_array_config* %46, %struct.nhlt_vendor_dmic_array_config** %8, align 8
  %47 = load %struct.nhlt_vendor_dmic_array_config*, %struct.nhlt_vendor_dmic_array_config** %8, align 8
  %48 = getelementptr inbounds %struct.nhlt_vendor_dmic_array_config, %struct.nhlt_vendor_dmic_array_config* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %9, align 4
  br label %56

50:                                               ; preds = %31
  %51 = load %struct.device*, %struct.device** %4, align 8
  %52 = load %struct.nhlt_dmic_array_config*, %struct.nhlt_dmic_array_config** %7, align 8
  %53 = getelementptr inbounds %struct.nhlt_dmic_array_config, %struct.nhlt_dmic_array_config* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @dev_warn(%struct.device* %51, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %54)
  br label %56

56:                                               ; preds = %50, %44, %42, %40
  br label %57

57:                                               ; preds = %56, %25
  %58 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %59 = bitcast %struct.nhlt_endpoint* %58 to i64*
  %60 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %6, align 8
  %61 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %60, i32 0, i32 1
  %62 = load i32, i32* %61, align 8
  %63 = sext i32 %62 to i64
  %64 = getelementptr inbounds i64, i64* %59, i64 %63
  %65 = bitcast i64* %64 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %65, %struct.nhlt_endpoint** %6, align 8
  br label %66

66:                                               ; preds = %57
  %67 = load i64, i64* %10, align 8
  %68 = add nsw i64 %67, 1
  store i64 %68, i64* %10, align 8
  br label %19

69:                                               ; preds = %19
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %3, align 4
  br label %71

71:                                               ; preds = %69, %13
  %72 = load i32, i32* %3, align 4
  ret i32 %72
}

declare dso_local i32 @dev_warn(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
