; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_detect_quirks.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw.c_detect_quirks.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_oxfw = type { i32, i64, i64, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i64 }
%struct.fw_device = type { i64 }
%struct.fw_csr_iterator = type { i32 }

@VENDOR_GRIFFIN = common dso_local global i64 0, align 8
@VENDOR_LACIE = common dso_local global i64 0, align 8
@OUI_STANTON = common dso_local global i64 0, align 8
@VENDOR_TASCAM = common dso_local global i64 0, align 8
@CSR_VENDOR = common dso_local global i32 0, align 4
@CSR_MODEL = common dso_local global i32 0, align 4
@VENDOR_LOUD = common dso_local global i32 0, align 4
@MODEL_SATELLITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_oxfw*)* @detect_quirks to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @detect_quirks(%struct.snd_oxfw* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_oxfw*, align 8
  %4 = alloca %struct.fw_device*, align 8
  %5 = alloca %struct.fw_csr_iterator, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.snd_oxfw* %0, %struct.snd_oxfw** %3, align 8
  %10 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %11 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call %struct.fw_device* @fw_parent_device(i32 %12)
  store %struct.fw_device* %13, %struct.fw_device** %4, align 8
  %14 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %15 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %14, i32 0, i32 3
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @VENDOR_GRIFFIN, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %23 = call i32 @snd_oxfw_add_spkr(%struct.snd_oxfw* %22, i32 0)
  store i32 %23, i32* %2, align 4
  br label %102

24:                                               ; preds = %1
  %25 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %26 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %25, i32 0, i32 3
  %27 = load %struct.TYPE_2__*, %struct.TYPE_2__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = load i64, i64* @VENDOR_LACIE, align 8
  %31 = icmp eq i64 %29, %30
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %34 = call i32 @snd_oxfw_add_spkr(%struct.snd_oxfw* %33, i32 1)
  store i32 %34, i32* %2, align 4
  br label %102

35:                                               ; preds = %24
  %36 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %37 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %36, i32 0, i32 3
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @OUI_STANTON, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %35
  %44 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %45 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %44, i32 0, i32 2
  store i64 0, i64* %45, align 8
  %46 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %47 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %46, i32 0, i32 1
  store i64 0, i64* %47, align 8
  %48 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %49 = call i32 @snd_oxfw_scs1x_add(%struct.snd_oxfw* %48)
  store i32 %49, i32* %2, align 4
  br label %102

50:                                               ; preds = %35
  %51 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %52 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %51, i32 0, i32 3
  %53 = load %struct.TYPE_2__*, %struct.TYPE_2__** %52, align 8
  %54 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* @VENDOR_TASCAM, align 8
  %57 = icmp eq i64 %55, %56
  br i1 %57, label %58, label %67

58:                                               ; preds = %50
  %59 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %60 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %59, i32 0, i32 2
  %61 = load i64, i64* %60, align 8
  %62 = add nsw i64 %61, 1
  store i64 %62, i64* %60, align 8
  %63 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %64 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = add nsw i64 %65, 1
  store i64 %66, i64* %64, align 8
  store i32 0, i32* %2, align 4
  br label %102

67:                                               ; preds = %50
  store i32 0, i32* %9, align 4
  store i32 0, i32* %8, align 4
  %68 = load %struct.fw_device*, %struct.fw_device** %4, align 8
  %69 = getelementptr inbounds %struct.fw_device, %struct.fw_device* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = add nsw i64 %70, 5
  %72 = call i32 @fw_csr_iterator_init(%struct.fw_csr_iterator* %5, i64 %71)
  br label %73

73:                                               ; preds = %89, %67
  %74 = call i64 @fw_csr_iterator_next(%struct.fw_csr_iterator* %5, i32* %6, i32* %7)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %90

76:                                               ; preds = %73
  %77 = load i32, i32* %6, align 4
  %78 = load i32, i32* @CSR_VENDOR, align 4
  %79 = icmp eq i32 %77, %78
  br i1 %79, label %80, label %82

80:                                               ; preds = %76
  %81 = load i32, i32* %7, align 4
  store i32 %81, i32* %8, align 4
  br label %89

82:                                               ; preds = %76
  %83 = load i32, i32* %6, align 4
  %84 = load i32, i32* @CSR_MODEL, align 4
  %85 = icmp eq i32 %83, %84
  br i1 %85, label %86, label %88

86:                                               ; preds = %82
  %87 = load i32, i32* %7, align 4
  store i32 %87, i32* %9, align 4
  br label %88

88:                                               ; preds = %86, %82
  br label %89

89:                                               ; preds = %88, %80
  br label %73

90:                                               ; preds = %73
  %91 = load i32, i32* %8, align 4
  %92 = load i32, i32* @VENDOR_LOUD, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %101

94:                                               ; preds = %90
  %95 = load i32, i32* %9, align 4
  %96 = load i32, i32* @MODEL_SATELLITE, align 4
  %97 = icmp eq i32 %95, %96
  br i1 %97, label %98, label %101

98:                                               ; preds = %94
  %99 = load %struct.snd_oxfw*, %struct.snd_oxfw** %3, align 8
  %100 = getelementptr inbounds %struct.snd_oxfw, %struct.snd_oxfw* %99, i32 0, i32 0
  store i32 1, i32* %100, align 8
  br label %101

101:                                              ; preds = %98, %94, %90
  store i32 0, i32* %2, align 4
  br label %102

102:                                              ; preds = %101, %58, %43, %32, %21
  %103 = load i32, i32* %2, align 4
  ret i32 %103
}

declare dso_local %struct.fw_device* @fw_parent_device(i32) #1

declare dso_local i32 @snd_oxfw_add_spkr(%struct.snd_oxfw*, i32) #1

declare dso_local i32 @snd_oxfw_scs1x_add(%struct.snd_oxfw*) #1

declare dso_local i32 @fw_csr_iterator_init(%struct.fw_csr_iterator*, i64) #1

declare dso_local i64 @fw_csr_iterator_next(%struct.fw_csr_iterator*, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
