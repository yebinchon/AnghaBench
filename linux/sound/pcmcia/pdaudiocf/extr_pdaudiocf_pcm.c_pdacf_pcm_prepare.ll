; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_pcm.c_pdacf_pcm_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, i32 }
%struct.snd_pdacf = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@PDAUDIOCF_STAT_IS_STALE = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_SCR = common dso_local global i32 0, align 4
@PDAUDIOCF_DATAFMT0 = common dso_local global i32 0, align 4
@PDAUDIOCF_DATAFMT1 = common dso_local global i32 0, align 4
@AK4117_DIF_16R = common dso_local global i32 0, align 4
@AK4117_DIF_24R = common dso_local global i32 0, align 4
@AK4117_REG_IO = common dso_local global i32 0, align 4
@AK4117_DIF2 = common dso_local global i32 0, align 4
@AK4117_DIF1 = common dso_local global i32 0, align 4
@AK4117_DIF0 = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_IER = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN1 = common dso_local global i32 0, align 4
@PDAUDIOCF_IRQLVLEN0 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @pdacf_pcm_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pdacf_pcm_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_pdacf*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_pdacf* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_pdacf* %10, %struct.snd_pdacf** %4, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %5, align 8
  %14 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %15 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @PDAUDIOCF_STAT_IS_STALE, align 4
  %18 = and i32 %16, %17
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %1
  %21 = load i32, i32* @EBUSY, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %2, align 4
  br label %150

23:                                               ; preds = %1
  %24 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %25 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %24, i32 0, i32 4
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %27, i32 0, i32 10
  store i32 %26, i32* %28, align 4
  %29 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %30 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i64 @snd_pcm_format_little_endian(i32 %31)
  %33 = icmp sgt i64 %32, 0
  %34 = zext i1 %33 to i32
  %35 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %36 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %35, i32 0, i32 1
  store i32 %34, i32* %36, align 4
  %37 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %38 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %41 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %40, i32 0, i32 2
  store i32 %39, i32* %41, align 4
  %42 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %43 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i64 @snd_pcm_format_unsigned(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %23
  %48 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %49 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %48, i32 0, i32 3
  store i32 -2147450880, i32* %49, align 4
  br label %50

50:                                               ; preds = %47, %23
  %51 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %52 = call i64 @pdacf_pcm_clear_sram(%struct.snd_pdacf* %51)
  %53 = icmp slt i64 %52, 0
  br i1 %53, label %54, label %57

54:                                               ; preds = %50
  %55 = load i32, i32* @EIO, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %2, align 4
  br label %150

57:                                               ; preds = %50
  %58 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %59 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %60 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %58, i32 %59)
  store i32 %60, i32* %7, align 4
  store i32 %60, i32* %6, align 4
  %61 = load i32, i32* @PDAUDIOCF_DATAFMT0, align 4
  %62 = load i32, i32* @PDAUDIOCF_DATAFMT1, align 4
  %63 = or i32 %61, %62
  %64 = xor i32 %63, -1
  %65 = load i32, i32* %7, align 4
  %66 = and i32 %65, %64
  store i32 %66, i32* %7, align 4
  %67 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %68 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 4
  switch i32 %69, label %71 [
    i32 130, label %70
    i32 131, label %70
  ]

70:                                               ; preds = %57, %57
  br label %77

71:                                               ; preds = %57
  %72 = load i32, i32* @PDAUDIOCF_DATAFMT0, align 4
  %73 = load i32, i32* @PDAUDIOCF_DATAFMT1, align 4
  %74 = or i32 %72, %73
  %75 = load i32, i32* %7, align 4
  %76 = or i32 %75, %74
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %71, %70
  store i32 0, i32* %8, align 4
  %78 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %79 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %78, i32 0, i32 4
  store i32 4, i32* %79, align 4
  %80 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %81 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  switch i32 %82, label %92 [
    i32 130, label %83
    i32 131, label %83
    i32 128, label %89
    i32 129, label %89
  ]

83:                                               ; preds = %77, %77
  %84 = load i32, i32* @AK4117_DIF_16R, align 4
  store i32 %84, i32* %8, align 4
  %85 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %86 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %85, i32 0, i32 5
  store i32 2, i32* %86, align 4
  %87 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %88 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %87, i32 0, i32 4
  store i32 2, i32* %88, align 4
  br label %100

89:                                               ; preds = %77, %77
  %90 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %91 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %90, i32 0, i32 4
  store i32 3, i32* %91, align 4
  br label %92

92:                                               ; preds = %77, %89
  %93 = load i32, i32* @AK4117_DIF_24R, align 4
  store i32 %93, i32* %8, align 4
  %94 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %95 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %94, i32 0, i32 5
  store i32 3, i32* %95, align 4
  %96 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %97 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %96, i32 0, i32 3
  %98 = load i32, i32* %97, align 4
  %99 = and i32 %98, -65536
  store i32 %99, i32* %97, align 4
  br label %100

100:                                              ; preds = %92, %83
  %101 = load i32, i32* %6, align 4
  %102 = load i32, i32* %7, align 4
  %103 = icmp ne i32 %101, %102
  br i1 %103, label %104, label %120

104:                                              ; preds = %100
  %105 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %106 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %105, i32 0, i32 9
  %107 = load i32, i32* %106, align 4
  %108 = load i32, i32* @AK4117_REG_IO, align 4
  %109 = load i32, i32* @AK4117_DIF2, align 4
  %110 = load i32, i32* @AK4117_DIF1, align 4
  %111 = or i32 %109, %110
  %112 = load i32, i32* @AK4117_DIF0, align 4
  %113 = or i32 %111, %112
  %114 = load i32, i32* %8, align 4
  %115 = call i32 @snd_ak4117_reg_write(i32 %107, i32 %108, i32 %113, i32 %114)
  %116 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %117 = load i32, i32* @PDAUDIOCF_REG_SCR, align 4
  %118 = load i32, i32* %7, align 4
  %119 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %116, i32 %117, i32 %118)
  br label %120

120:                                              ; preds = %104, %100
  %121 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %122 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %123 = call i32 @pdacf_reg_read(%struct.snd_pdacf* %121, i32 %122)
  store i32 %123, i32* %6, align 4
  %124 = load i32, i32* @PDAUDIOCF_IRQLVLEN1, align 4
  %125 = xor i32 %124, -1
  %126 = load i32, i32* %6, align 4
  %127 = and i32 %126, %125
  store i32 %127, i32* %6, align 4
  %128 = load i32, i32* @PDAUDIOCF_IRQLVLEN0, align 4
  %129 = load i32, i32* %6, align 4
  %130 = or i32 %129, %128
  store i32 %130, i32* %6, align 4
  %131 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %132 = load i32, i32* @PDAUDIOCF_REG_IER, align 4
  %133 = load i32, i32* %6, align 4
  %134 = call i32 @pdacf_reg_write(%struct.snd_pdacf* %131, i32 %132, i32 %133)
  %135 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %136 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %135, i32 0, i32 3
  %137 = load i32, i32* %136, align 4
  %138 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %139 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %138, i32 0, i32 8
  store i32 %137, i32* %139, align 4
  %140 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %141 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %140, i32 0, i32 2
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %144 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %143, i32 0, i32 7
  store i32 %142, i32* %144, align 4
  %145 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %146 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %145, i32 0, i32 1
  %147 = load i32, i32* %146, align 4
  %148 = load %struct.snd_pdacf*, %struct.snd_pdacf** %4, align 8
  %149 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %148, i32 0, i32 6
  store i32 %147, i32* %149, align 4
  store i32 0, i32* %2, align 4
  br label %150

150:                                              ; preds = %120, %54, %20
  %151 = load i32, i32* %2, align 4
  ret i32 %151
}

declare dso_local %struct.snd_pdacf* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i64 @snd_pcm_format_little_endian(i32) #1

declare dso_local i64 @snd_pcm_format_unsigned(i32) #1

declare dso_local i64 @pdacf_pcm_clear_sram(%struct.snd_pdacf*) #1

declare dso_local i32 @pdacf_reg_read(%struct.snd_pdacf*, i32) #1

declare dso_local i32 @snd_ak4117_reg_write(i32, i32, i32, i32) #1

declare dso_local i32 @pdacf_reg_write(%struct.snd_pdacf*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
