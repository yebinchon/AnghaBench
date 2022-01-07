; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_ep_blob.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-nhlt.c_skl_get_ep_blob.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nhlt_specific_cfg = type { i32 }
%struct.skl_dev = type { %struct.nhlt_acpi_table* }
%struct.nhlt_acpi_table = type { i32, i64 }
%struct.nhlt_fmt = type { i32 }
%struct.nhlt_endpoint = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64, i64 }
%struct.hdac_bus = type { %struct.device* }
%struct.device = type { i32 }

@.str = private unnamed_addr constant [20 x i8] c"endpoint count =%d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nhlt_specific_cfg* @skl_get_ep_blob(%struct.skl_dev* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6, i32 %7) #0 {
  %9 = alloca %struct.nhlt_specific_cfg*, align 8
  %10 = alloca %struct.skl_dev*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.nhlt_fmt*, align 8
  %19 = alloca %struct.nhlt_endpoint*, align 8
  %20 = alloca %struct.hdac_bus*, align 8
  %21 = alloca %struct.device*, align 8
  %22 = alloca %struct.nhlt_specific_cfg*, align 8
  %23 = alloca %struct.nhlt_acpi_table*, align 8
  %24 = alloca i32, align 4
  %25 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %10, align 8
  store i32 %1, i32* %11, align 4
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32 %6, i32* %16, align 4
  store i32 %7, i32* %17, align 4
  %26 = load %struct.skl_dev*, %struct.skl_dev** %10, align 8
  %27 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %26)
  store %struct.hdac_bus* %27, %struct.hdac_bus** %20, align 8
  %28 = load %struct.hdac_bus*, %struct.hdac_bus** %20, align 8
  %29 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %28, i32 0, i32 0
  %30 = load %struct.device*, %struct.device** %29, align 8
  store %struct.device* %30, %struct.device** %21, align 8
  %31 = load %struct.skl_dev*, %struct.skl_dev** %10, align 8
  %32 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %31, i32 0, i32 0
  %33 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %32, align 8
  store %struct.nhlt_acpi_table* %33, %struct.nhlt_acpi_table** %23, align 8
  %34 = load i32, i32* %13, align 4
  %35 = icmp eq i32 %34, 16
  %36 = zext i1 %35 to i64
  %37 = select i1 %35, i32 16, i32 32
  store i32 %37, i32* %24, align 4
  %38 = load %struct.device*, %struct.device** %21, align 8
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* %12, align 4
  %41 = load i32, i32* %13, align 4
  %42 = load i32, i32* %14, align 4
  %43 = load i32, i32* %15, align 4
  %44 = load i32, i32* %16, align 4
  %45 = load i32, i32* %24, align 4
  %46 = call i32 @dump_config(%struct.device* %38, i32 %39, i32 %40, i32 %41, i32 %42, i32 %43, i32 %44, i32 %45)
  %47 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %23, align 8
  %48 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %47, i32 0, i32 1
  %49 = load i64, i64* %48, align 8
  %50 = inttoptr i64 %49 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %50, %struct.nhlt_endpoint** %19, align 8
  %51 = load %struct.device*, %struct.device** %21, align 8
  %52 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %23, align 8
  %53 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @dev_dbg(%struct.device* %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0), i32 %54)
  store i32 0, i32* %25, align 4
  br label %56

56:                                               ; preds = %103, %8
  %57 = load i32, i32* %25, align 4
  %58 = load %struct.nhlt_acpi_table*, %struct.nhlt_acpi_table** %23, align 8
  %59 = getelementptr inbounds %struct.nhlt_acpi_table, %struct.nhlt_acpi_table* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 8
  %61 = icmp slt i32 %57, %60
  br i1 %61, label %62, label %106

62:                                               ; preds = %56
  %63 = load %struct.device*, %struct.device** %21, align 8
  %64 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %19, align 8
  %65 = load i32, i32* %11, align 4
  %66 = load i32, i32* %12, align 4
  %67 = load i32, i32* %16, align 4
  %68 = load i32, i32* %17, align 4
  %69 = call i64 @skl_check_ep_match(%struct.device* %63, %struct.nhlt_endpoint* %64, i32 %65, i32 %66, i32 %67, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %94

71:                                               ; preds = %62
  %72 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %19, align 8
  %73 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %72, i32 0, i32 1
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %19, align 8
  %77 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %76, i32 0, i32 1
  %78 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %77, i32 0, i32 0
  %79 = load i64, i64* %78, align 8
  %80 = add nsw i64 %75, %79
  %81 = inttoptr i64 %80 to %struct.nhlt_fmt*
  store %struct.nhlt_fmt* %81, %struct.nhlt_fmt** %18, align 8
  %82 = load %struct.device*, %struct.device** %21, align 8
  %83 = load %struct.nhlt_fmt*, %struct.nhlt_fmt** %18, align 8
  %84 = load i32, i32* %14, align 4
  %85 = load i32, i32* %15, align 4
  %86 = load i32, i32* %24, align 4
  %87 = load i32, i32* %12, align 4
  %88 = call %struct.nhlt_specific_cfg* @skl_get_specific_cfg(%struct.device* %82, %struct.nhlt_fmt* %83, i32 %84, i32 %85, i32 %86, i32 %87)
  store %struct.nhlt_specific_cfg* %88, %struct.nhlt_specific_cfg** %22, align 8
  %89 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %22, align 8
  %90 = icmp ne %struct.nhlt_specific_cfg* %89, null
  br i1 %90, label %91, label %93

91:                                               ; preds = %71
  %92 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %22, align 8
  store %struct.nhlt_specific_cfg* %92, %struct.nhlt_specific_cfg** %9, align 8
  br label %107

93:                                               ; preds = %71
  br label %94

94:                                               ; preds = %93, %62
  %95 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %19, align 8
  %96 = bitcast %struct.nhlt_endpoint* %95 to i32*
  %97 = load %struct.nhlt_endpoint*, %struct.nhlt_endpoint** %19, align 8
  %98 = getelementptr inbounds %struct.nhlt_endpoint, %struct.nhlt_endpoint* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 8
  %100 = sext i32 %99 to i64
  %101 = getelementptr inbounds i32, i32* %96, i64 %100
  %102 = bitcast i32* %101 to %struct.nhlt_endpoint*
  store %struct.nhlt_endpoint* %102, %struct.nhlt_endpoint** %19, align 8
  br label %103

103:                                              ; preds = %94
  %104 = load i32, i32* %25, align 4
  %105 = add nsw i32 %104, 1
  store i32 %105, i32* %25, align 4
  br label %56

106:                                              ; preds = %56
  store %struct.nhlt_specific_cfg* null, %struct.nhlt_specific_cfg** %9, align 8
  br label %107

107:                                              ; preds = %106, %91
  %108 = load %struct.nhlt_specific_cfg*, %struct.nhlt_specific_cfg** %9, align 8
  ret %struct.nhlt_specific_cfg* %108
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @dump_config(%struct.device*, i32, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(%struct.device*, i8*, i32) #1

declare dso_local i64 @skl_check_ep_match(%struct.device*, %struct.nhlt_endpoint*, i32, i32, i32, i32) #1

declare dso_local %struct.nhlt_specific_cfg* @skl_get_specific_cfg(%struct.device*, %struct.nhlt_fmt*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
