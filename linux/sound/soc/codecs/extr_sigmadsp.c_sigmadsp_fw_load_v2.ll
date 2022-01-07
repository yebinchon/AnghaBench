; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_fw_load_v2.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigmadsp_fw_load_v2.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.sigma_fw_chunk = type { i32, i32 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [24 x i8] c"Unknown chunk type: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, %struct.firmware*)* @sigmadsp_fw_load_v2 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigmadsp_fw_load_v2(%struct.sigmadsp* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sigmadsp*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.sigma_fw_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %10 = load %struct.firmware*, %struct.firmware** %5, align 8
  %11 = getelementptr inbounds %struct.firmware, %struct.firmware* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = sext i32 %12 to i64
  %14 = icmp ult i64 %13, 12
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %93

16:                                               ; preds = %2
  store i32 4, i32* %8, align 4
  br label %17

17:                                               ; preds = %85, %16
  %18 = load i32, i32* %8, align 4
  %19 = zext i32 %18 to i64
  %20 = load %struct.firmware*, %struct.firmware** %5, align 8
  %21 = getelementptr inbounds %struct.firmware, %struct.firmware* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = sext i32 %22 to i64
  %24 = sub i64 %23, 8
  %25 = icmp ult i64 %19, %24
  br i1 %25, label %26, label %92

26:                                               ; preds = %17
  %27 = load %struct.firmware*, %struct.firmware** %5, align 8
  %28 = getelementptr inbounds %struct.firmware, %struct.firmware* %27, i32 0, i32 1
  %29 = load i64, i64* %28, align 8
  %30 = load i32, i32* %8, align 4
  %31 = zext i32 %30 to i64
  %32 = add nsw i64 %29, %31
  %33 = inttoptr i64 %32 to %struct.sigma_fw_chunk*
  store %struct.sigma_fw_chunk* %33, %struct.sigma_fw_chunk** %6, align 8
  %34 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %35 = getelementptr inbounds %struct.sigma_fw_chunk, %struct.sigma_fw_chunk* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le32_to_cpu(i32 %36)
  store i32 %37, i32* %7, align 4
  %38 = load i32, i32* %7, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = getelementptr inbounds %struct.firmware, %struct.firmware* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = load i32, i32* %8, align 4
  %43 = sub i32 %41, %42
  %44 = icmp ugt i32 %38, %43
  br i1 %44, label %49, label %45

45:                                               ; preds = %26
  %46 = load i32, i32* %7, align 4
  %47 = zext i32 %46 to i64
  %48 = icmp ult i64 %47, 8
  br i1 %48, label %49, label %52

49:                                               ; preds = %45, %26
  %50 = load i32, i32* @EINVAL, align 4
  %51 = sub nsw i32 0, %50
  store i32 %51, i32* %3, align 4
  br label %93

52:                                               ; preds = %45
  %53 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %54 = getelementptr inbounds %struct.sigma_fw_chunk, %struct.sigma_fw_chunk* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = call i32 @le32_to_cpu(i32 %55)
  switch i32 %56, label %72 [
    i32 129, label %57
    i32 130, label %62
    i32 128, label %67
  ]

57:                                               ; preds = %52
  %58 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %59 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @sigma_fw_load_data(%struct.sigmadsp* %58, %struct.sigma_fw_chunk* %59, i32 %60)
  store i32 %61, i32* %9, align 4
  br label %80

62:                                               ; preds = %52
  %63 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %64 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @sigma_fw_load_control(%struct.sigmadsp* %63, %struct.sigma_fw_chunk* %64, i32 %65)
  store i32 %66, i32* %9, align 4
  br label %80

67:                                               ; preds = %52
  %68 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %69 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %70 = load i32, i32* %7, align 4
  %71 = call i32 @sigma_fw_load_samplerates(%struct.sigmadsp* %68, %struct.sigma_fw_chunk* %69, i32 %70)
  store i32 %71, i32* %9, align 4
  br label %80

72:                                               ; preds = %52
  %73 = load %struct.sigmadsp*, %struct.sigmadsp** %4, align 8
  %74 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %77 = getelementptr inbounds %struct.sigma_fw_chunk, %struct.sigma_fw_chunk* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @dev_warn(i32 %75, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), i32 %78)
  store i32 0, i32* %9, align 4
  br label %80

80:                                               ; preds = %72, %67, %62, %57
  %81 = load i32, i32* %9, align 4
  %82 = icmp ne i32 %81, 0
  br i1 %82, label %83, label %85

83:                                               ; preds = %80
  %84 = load i32, i32* %9, align 4
  store i32 %84, i32* %3, align 4
  br label %93

85:                                               ; preds = %80
  %86 = load i32, i32* %7, align 4
  %87 = call i64 @ALIGN(i32 %86, i32 4)
  %88 = load i32, i32* %8, align 4
  %89 = zext i32 %88 to i64
  %90 = add nsw i64 %89, %87
  %91 = trunc i64 %90 to i32
  store i32 %91, i32* %8, align 4
  br label %17

92:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %93

93:                                               ; preds = %92, %83, %49, %15
  %94 = load i32, i32* %3, align 4
  ret i32 %94
}

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @sigma_fw_load_data(%struct.sigmadsp*, %struct.sigma_fw_chunk*, i32) #1

declare dso_local i32 @sigma_fw_load_control(%struct.sigmadsp*, %struct.sigma_fw_chunk*, i32) #1

declare dso_local i32 @sigma_fw_load_samplerates(%struct.sigmadsp*, %struct.sigma_fw_chunk*, i32) #1

declare dso_local i32 @dev_warn(i32, i8*, i32) #1

declare dso_local i64 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
