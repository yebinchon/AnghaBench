; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigma_fw_load_control.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigma_fw_load_control.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { i32 }
%struct.sigma_fw_chunk = type { i32 }
%struct.sigma_fw_chunk_control = type { i32, i32, i32 }
%struct.sigmadsp_control = type { i8*, i32, i32, i32, i8* }

@EINVAL = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ID_NAME_MAXLEN = common dso_local global i64 0, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, %struct.sigma_fw_chunk*, i32)* @sigma_fw_load_control to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigma_fw_load_control(%struct.sigmadsp* %0, %struct.sigma_fw_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigmadsp*, align 8
  %6 = alloca %struct.sigma_fw_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigma_fw_chunk_control*, align 8
  %9 = alloca %struct.sigmadsp_control*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i8*, align 8
  %13 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %5, align 8
  store %struct.sigma_fw_chunk* %1, %struct.sigma_fw_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = icmp ule i64 %15, 12
  br i1 %16, label %17, label %20

17:                                               ; preds = %3
  %18 = load i32, i32* @EINVAL, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %4, align 4
  br label %106

20:                                               ; preds = %3
  %21 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %22 = bitcast %struct.sigma_fw_chunk* %21 to %struct.sigma_fw_chunk_control*
  store %struct.sigma_fw_chunk_control* %22, %struct.sigma_fw_chunk_control** %8, align 8
  %23 = load i32, i32* %7, align 4
  %24 = zext i32 %23 to i64
  %25 = sub i64 %24, 12
  store i64 %25, i64* %11, align 8
  %26 = load i64, i64* %11, align 8
  %27 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %28 = icmp uge i64 %26, %27
  br i1 %28, label %29, label %32

29:                                               ; preds = %20
  %30 = load i64, i64* @SNDRV_CTL_ELEM_ID_NAME_MAXLEN, align 8
  %31 = sub i64 %30, 1
  store i64 %31, i64* %11, align 8
  br label %32

32:                                               ; preds = %29, %20
  %33 = load %struct.sigma_fw_chunk_control*, %struct.sigma_fw_chunk_control** %8, align 8
  %34 = getelementptr inbounds %struct.sigma_fw_chunk_control, %struct.sigma_fw_chunk_control* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = load i64, i64* %11, align 8
  %37 = call i32 @sigma_fw_validate_control_name(i32 %35, i64 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %42, label %39

39:                                               ; preds = %32
  %40 = load i32, i32* @EINVAL, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %4, align 4
  br label %106

42:                                               ; preds = %32
  %43 = load %struct.sigma_fw_chunk_control*, %struct.sigma_fw_chunk_control** %8, align 8
  %44 = getelementptr inbounds %struct.sigma_fw_chunk_control, %struct.sigma_fw_chunk_control* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = call i8* @le16_to_cpu(i32 %45)
  %47 = ptrtoint i8* %46 to i32
  store i32 %47, i32* %10, align 4
  %48 = load i32, i32* %10, align 4
  %49 = zext i32 %48 to i64
  %50 = add i64 32, %49
  %51 = load i32, i32* @GFP_KERNEL, align 4
  %52 = call i8* @kzalloc(i64 %50, i32 %51)
  %53 = bitcast i8* %52 to %struct.sigmadsp_control*
  store %struct.sigmadsp_control* %53, %struct.sigmadsp_control** %9, align 8
  %54 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %55 = icmp ne %struct.sigmadsp_control* %54, null
  br i1 %55, label %59, label %56

56:                                               ; preds = %42
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  store i32 %58, i32* %4, align 4
  br label %106

59:                                               ; preds = %42
  %60 = load i64, i64* %11, align 8
  %61 = add i64 %60, 1
  %62 = load i32, i32* @GFP_KERNEL, align 4
  %63 = call i8* @kzalloc(i64 %61, i32 %62)
  store i8* %63, i8** %12, align 8
  %64 = load i8*, i8** %12, align 8
  %65 = icmp ne i8* %64, null
  br i1 %65, label %69, label %66

66:                                               ; preds = %59
  %67 = load i32, i32* @ENOMEM, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %13, align 4
  br label %102

69:                                               ; preds = %59
  %70 = load i8*, i8** %12, align 8
  %71 = load %struct.sigma_fw_chunk_control*, %struct.sigma_fw_chunk_control** %8, align 8
  %72 = getelementptr inbounds %struct.sigma_fw_chunk_control, %struct.sigma_fw_chunk_control* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load i64, i64* %11, align 8
  %75 = call i32 @memcpy(i8* %70, i32 %73, i64 %74)
  %76 = load i8*, i8** %12, align 8
  %77 = load i64, i64* %11, align 8
  %78 = getelementptr inbounds i8, i8* %76, i64 %77
  store i8 0, i8* %78, align 1
  %79 = load i8*, i8** %12, align 8
  %80 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %81 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %80, i32 0, i32 0
  store i8* %79, i8** %81, align 8
  %82 = load %struct.sigma_fw_chunk_control*, %struct.sigma_fw_chunk_control** %8, align 8
  %83 = getelementptr inbounds %struct.sigma_fw_chunk_control, %struct.sigma_fw_chunk_control* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @le16_to_cpu(i32 %84)
  %86 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %87 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %86, i32 0, i32 4
  store i8* %85, i8** %87, align 8
  %88 = load i32, i32* %10, align 4
  %89 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %90 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %89, i32 0, i32 1
  store i32 %88, i32* %90, align 8
  %91 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %92 = getelementptr inbounds %struct.sigma_fw_chunk, %struct.sigma_fw_chunk* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i32 @le32_to_cpu(i32 %93)
  %95 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %96 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %95, i32 0, i32 3
  store i32 %94, i32* %96, align 8
  %97 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %98 = getelementptr inbounds %struct.sigmadsp_control, %struct.sigmadsp_control* %97, i32 0, i32 2
  %99 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %100 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %99, i32 0, i32 0
  %101 = call i32 @list_add_tail(i32* %98, i32* %100)
  store i32 0, i32* %4, align 4
  br label %106

102:                                              ; preds = %66
  %103 = load %struct.sigmadsp_control*, %struct.sigmadsp_control** %9, align 8
  %104 = call i32 @kfree(%struct.sigmadsp_control* %103)
  %105 = load i32, i32* %13, align 4
  store i32 %105, i32* %4, align 4
  br label %106

106:                                              ; preds = %102, %69, %56, %39, %17
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @sigma_fw_validate_control_name(i32, i64) #1

declare dso_local i8* @le16_to_cpu(i32) #1

declare dso_local i8* @kzalloc(i64, i32) #1

declare dso_local i32 @memcpy(i8*, i32, i64) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @kfree(%struct.sigmadsp_control*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
