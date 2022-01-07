; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_hw_params.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/asihpi/extr_asihpi.c_snd_card_asihpi_pcm_hw_params.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { i64, %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i64, %struct.snd_card_asihpi_pcm* }
%struct.snd_card_asihpi_pcm = type { i32, i32, i32, i64, i32, i32 }
%struct.snd_pcm_hw_params = type { i32 }
%struct.snd_card_asihpi = type { i64 }

@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"stream_host_buffer_attach success %u %lu\0A\00", align 1
@.str.1 = private unnamed_addr constant [36 x i8] c"stream_host_buffer_attach error %d\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*)* @snd_card_asihpi_pcm_hw_params to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_card_asihpi_pcm_hw_params(%struct.snd_pcm_substream* %0, %struct.snd_pcm_hw_params* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_pcm_substream*, align 8
  %5 = alloca %struct.snd_pcm_hw_params*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_card_asihpi_pcm*, align 8
  %8 = alloca %struct.snd_card_asihpi*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %4, align 8
  store %struct.snd_pcm_hw_params* %1, %struct.snd_pcm_hw_params** %5, align 8
  %13 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %14 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %13, i32 0, i32 1
  %15 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %14, align 8
  store %struct.snd_pcm_runtime* %15, %struct.snd_pcm_runtime** %6, align 8
  %16 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %17 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %16, i32 0, i32 1
  %18 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %17, align 8
  store %struct.snd_card_asihpi_pcm* %18, %struct.snd_card_asihpi_pcm** %7, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %20 = call %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %19)
  store %struct.snd_card_asihpi* %20, %struct.snd_card_asihpi** %8, align 8
  %21 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %22 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %23 = call i32 @print_hwparams(%struct.snd_pcm_substream* %21, %struct.snd_pcm_hw_params* %22)
  %24 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %25 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %26 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %25)
  %27 = call i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream* %24, i32 %26)
  store i32 %27, i32* %9, align 4
  %28 = load i32, i32* %9, align 4
  %29 = icmp slt i32 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %2
  %31 = load i32, i32* %9, align 4
  store i32 %31, i32* %3, align 4
  br label %148

32:                                               ; preds = %2
  %33 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %34 = call i32 @params_format(%struct.snd_pcm_hw_params* %33)
  %35 = call i32 @snd_card_asihpi_format_alsa2hpi(i32 %34, i32* %10)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %32
  %39 = load i32, i32* %9, align 4
  store i32 %39, i32* %3, align 4
  br label %148

40:                                               ; preds = %32
  %41 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %42 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %41, i32 0, i32 5
  %43 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %44 = call i32 @params_channels(%struct.snd_pcm_hw_params* %43)
  %45 = load i32, i32* %10, align 4
  %46 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %47 = call i32 @params_rate(%struct.snd_pcm_hw_params* %46)
  %48 = call i32 @hpi_format_create(i32* %42, i32 %44, i32 %45, i32 %47, i32 0, i32 0)
  %49 = call i32 @hpi_handle_error(i32 %48)
  %50 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %50, i32 0, i32 0
  %52 = load i64, i64* %51, align 8
  %53 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %54 = icmp eq i64 %52, %53
  br i1 %54, label %55, label %76

55:                                               ; preds = %40
  %56 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %57 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %56, i32 0, i32 4
  %58 = load i32, i32* %57, align 8
  %59 = call i64 @hpi_instream_reset(i32 %58)
  %60 = icmp ne i64 %59, 0
  br i1 %60, label %61, label %64

61:                                               ; preds = %55
  %62 = load i32, i32* @EINVAL, align 4
  %63 = sub nsw i32 0, %62
  store i32 %63, i32* %3, align 4
  br label %148

64:                                               ; preds = %55
  %65 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %66 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %65, i32 0, i32 4
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %69 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %68, i32 0, i32 5
  %70 = call i64 @hpi_instream_set_format(i32 %67, i32* %69)
  %71 = icmp ne i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %64
  %73 = load i32, i32* @EINVAL, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %3, align 4
  br label %148

75:                                               ; preds = %64
  br label %76

76:                                               ; preds = %75, %40
  %77 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %78 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %77, i32 0, i32 3
  store i64 0, i64* %78, align 8
  %79 = load %struct.snd_card_asihpi*, %struct.snd_card_asihpi** %8, align 8
  %80 = getelementptr inbounds %struct.snd_card_asihpi, %struct.snd_card_asihpi* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  %82 = icmp ne i64 %81, 0
  br i1 %82, label %83, label %114

83:                                               ; preds = %76
  %84 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %85 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %84, i32 0, i32 4
  %86 = load i32, i32* %85, align 8
  %87 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %88 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %87)
  %89 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %89, i32 0, i32 0
  %91 = load i64, i64* %90, align 8
  %92 = call i32 @hpi_stream_host_buffer_attach(i32 %86, i32 %88, i64 %91)
  store i32 %92, i32* %9, align 4
  %93 = load i32, i32* %9, align 4
  %94 = icmp eq i32 %93, 0
  br i1 %94, label %95, label %102

95:                                               ; preds = %83
  %96 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %97 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %96)
  %98 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %99 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %98, i32 0, i32 0
  %100 = load i64, i64* %99, align 8
  %101 = call i32 @snd_printdd(i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %97, i64 %100)
  br label %107

102:                                              ; preds = %83
  %103 = load i32, i32* %9, align 4
  %104 = call i32 @snd_printd(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str.1, i64 0, i64 0), i32 %103)
  %105 = load i32, i32* @ENOMEM, align 4
  %106 = sub nsw i32 0, %105
  store i32 %106, i32* %3, align 4
  br label %148

107:                                              ; preds = %95
  %108 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %109 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %108, i32 0, i32 4
  %110 = load i32, i32* %109, align 8
  %111 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %112 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %111, i32 0, i32 3
  %113 = call i32 @hpi_stream_get_info_ex(i32 %110, i32* null, i64* %112, i32* null, i32* null, i32* null)
  store i32 %113, i32* %9, align 4
  br label %114

114:                                              ; preds = %107, %76
  %115 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %116 = call i32 @params_rate(%struct.snd_pcm_hw_params* %115)
  %117 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %118 = call i32 @params_channels(%struct.snd_pcm_hw_params* %117)
  %119 = mul i32 %116, %118
  store i32 %119, i32* %12, align 4
  %120 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %121 = call i32 @params_format(%struct.snd_pcm_hw_params* %120)
  %122 = call i32 @snd_pcm_format_width(i32 %121)
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = load i32, i32* %12, align 4
  %125 = mul i32 %124, %123
  store i32 %125, i32* %12, align 4
  %126 = load i32, i32* %12, align 4
  %127 = udiv i32 %126, 8
  store i32 %127, i32* %12, align 4
  %128 = load i32, i32* %11, align 4
  %129 = icmp slt i32 %128, 0
  br i1 %129, label %133, label %130

130:                                              ; preds = %114
  %131 = load i32, i32* %12, align 4
  %132 = icmp eq i32 %131, 0
  br i1 %132, label %133, label %136

133:                                              ; preds = %130, %114
  %134 = load i32, i32* @EINVAL, align 4
  %135 = sub nsw i32 0, %134
  store i32 %135, i32* %3, align 4
  br label %148

136:                                              ; preds = %130
  %137 = load i32, i32* %12, align 4
  %138 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %139 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %138, i32 0, i32 0
  store i32 %137, i32* %139, align 8
  %140 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %141 = call i32 @params_buffer_bytes(%struct.snd_pcm_hw_params* %140)
  %142 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %143 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %142, i32 0, i32 2
  store i32 %141, i32* %143, align 8
  %144 = load %struct.snd_pcm_hw_params*, %struct.snd_pcm_hw_params** %5, align 8
  %145 = call i32 @params_period_bytes(%struct.snd_pcm_hw_params* %144)
  %146 = load %struct.snd_card_asihpi_pcm*, %struct.snd_card_asihpi_pcm** %7, align 8
  %147 = getelementptr inbounds %struct.snd_card_asihpi_pcm, %struct.snd_card_asihpi_pcm* %146, i32 0, i32 1
  store i32 %145, i32* %147, align 4
  store i32 0, i32* %3, align 4
  br label %148

148:                                              ; preds = %136, %133, %102, %72, %61, %38, %30
  %149 = load i32, i32* %3, align 4
  ret i32 %149
}

declare dso_local %struct.snd_card_asihpi* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @print_hwparams(%struct.snd_pcm_substream*, %struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_pcm_lib_malloc_pages(%struct.snd_pcm_substream*, i32) #1

declare dso_local i32 @params_buffer_bytes(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @snd_card_asihpi_format_alsa2hpi(i32, i32*) #1

declare dso_local i32 @params_format(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @hpi_handle_error(i32) #1

declare dso_local i32 @hpi_format_create(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @params_channels(%struct.snd_pcm_hw_params*) #1

declare dso_local i32 @params_rate(%struct.snd_pcm_hw_params*) #1

declare dso_local i64 @hpi_instream_reset(i32) #1

declare dso_local i64 @hpi_instream_set_format(i32, i32*) #1

declare dso_local i32 @hpi_stream_host_buffer_attach(i32, i32, i64) #1

declare dso_local i32 @snd_printdd(i8*, i32, i64) #1

declare dso_local i32 @snd_printd(i8*, i32) #1

declare dso_local i32 @hpi_stream_get_info_ex(i32, i32*, i64*, i32*, i32*, i32*) #1

declare dso_local i32 @snd_pcm_format_width(i32) #1

declare dso_local i32 @params_period_bytes(%struct.snd_pcm_hw_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
