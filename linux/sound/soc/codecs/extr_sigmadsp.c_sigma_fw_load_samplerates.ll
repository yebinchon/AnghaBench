; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigma_fw_load_samplerates.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_sigmadsp.c_sigma_fw_load_samplerates.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sigmadsp = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32* }
%struct.sigma_fw_chunk = type { i32 }
%struct.sigma_fw_chunk_samplerate = type { i32* }

@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sigmadsp*, %struct.sigma_fw_chunk*, i32)* @sigma_fw_load_samplerates to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sigma_fw_load_samplerates(%struct.sigmadsp* %0, %struct.sigma_fw_chunk* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sigmadsp*, align 8
  %6 = alloca %struct.sigma_fw_chunk*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sigma_fw_chunk_samplerate*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.sigmadsp* %0, %struct.sigmadsp** %5, align 8
  store %struct.sigma_fw_chunk* %1, %struct.sigma_fw_chunk** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.sigma_fw_chunk*, %struct.sigma_fw_chunk** %6, align 8
  %13 = bitcast %struct.sigma_fw_chunk* %12 to %struct.sigma_fw_chunk_samplerate*
  store %struct.sigma_fw_chunk_samplerate* %13, %struct.sigma_fw_chunk_samplerate** %8, align 8
  %14 = load i32, i32* %7, align 4
  %15 = zext i32 %14 to i64
  %16 = sub i64 %15, 8
  %17 = udiv i64 %16, 4
  %18 = trunc i64 %17 to i32
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %9, align 4
  %20 = icmp ugt i32 %19, 32
  br i1 %20, label %24, label %21

21:                                               ; preds = %3
  %22 = load i32, i32* %9, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %21, %3
  %25 = load i32, i32* @EINVAL, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %75

27:                                               ; preds = %21
  %28 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %29 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 8
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load i32, i32* @EINVAL, align 4
  %35 = sub nsw i32 0, %34
  store i32 %35, i32* %4, align 4
  br label %75

36:                                               ; preds = %27
  %37 = load i32, i32* %9, align 4
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kcalloc(i32 %37, i32 4, i32 %38)
  store i32* %39, i32** %10, align 8
  %40 = load i32*, i32** %10, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %45, label %42

42:                                               ; preds = %36
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %4, align 4
  br label %75

45:                                               ; preds = %36
  store i32 0, i32* %11, align 4
  br label %46

46:                                               ; preds = %63, %45
  %47 = load i32, i32* %11, align 4
  %48 = load i32, i32* %9, align 4
  %49 = icmp ult i32 %47, %48
  br i1 %49, label %50, label %66

50:                                               ; preds = %46
  %51 = load %struct.sigma_fw_chunk_samplerate*, %struct.sigma_fw_chunk_samplerate** %8, align 8
  %52 = getelementptr inbounds %struct.sigma_fw_chunk_samplerate, %struct.sigma_fw_chunk_samplerate* %51, i32 0, i32 0
  %53 = load i32*, i32** %52, align 8
  %54 = load i32, i32* %11, align 4
  %55 = zext i32 %54 to i64
  %56 = getelementptr inbounds i32, i32* %53, i64 %55
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @le32_to_cpu(i32 %57)
  %59 = load i32*, i32** %10, align 8
  %60 = load i32, i32* %11, align 4
  %61 = zext i32 %60 to i64
  %62 = getelementptr inbounds i32, i32* %59, i64 %61
  store i32 %58, i32* %62, align 4
  br label %63

63:                                               ; preds = %50
  %64 = load i32, i32* %11, align 4
  %65 = add i32 %64, 1
  store i32 %65, i32* %11, align 4
  br label %46

66:                                               ; preds = %46
  %67 = load i32, i32* %9, align 4
  %68 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %69 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %69, i32 0, i32 0
  store i32 %67, i32* %70, align 8
  %71 = load i32*, i32** %10, align 8
  %72 = load %struct.sigmadsp*, %struct.sigmadsp** %5, align 8
  %73 = getelementptr inbounds %struct.sigmadsp, %struct.sigmadsp* %72, i32 0, i32 0
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 1
  store i32* %71, i32** %74, align 8
  store i32 0, i32* %4, align 4
  br label %75

75:                                               ; preds = %66, %42, %33, %24
  %76 = load i32, i32* %4, align 4
  ret i32 %76
}

declare dso_local i32* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
