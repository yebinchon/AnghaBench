; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ali5451/extr_ali5451.c_snd_ali_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, i32, %struct.snd_ali_voice* }
%struct.snd_ali_voice = type { i64, i32, i32, i32 }
%struct.snd_ali = type { i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@.str = private unnamed_addr constant [16 x i8] c"ali_prepare...\0A\00", align 1
@ALI_MODEM_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_MODEM_OUT_CHANNEL = common dso_local global i64 0, align 8
@ALI_SPDIF_IN_CHANNEL = common dso_local global i64 0, align 8
@ALI_5451_V02 = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [45 x i8] c"ali_capture_prepare: spdif rate detect err!\0A\00", align 1
@ALI_SPDIF_CTRL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [32 x i8] c"clear SPDIF parity error flag.\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_ali_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_ali_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca %struct.snd_ali*, align 8
  %5 = alloca %struct.snd_pcm_runtime*, align 8
  %6 = alloca %struct.snd_ali_voice*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  %17 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %18 = call %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %17)
  store %struct.snd_ali* %18, %struct.snd_ali** %4, align 8
  %19 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %20 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %19, i32 0, i32 0
  %21 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %20, align 8
  store %struct.snd_pcm_runtime* %21, %struct.snd_pcm_runtime** %5, align 8
  %22 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %23 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %22, i32 0, i32 4
  %24 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %23, align 8
  store %struct.snd_ali_voice* %24, %struct.snd_ali_voice** %6, align 8
  %25 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %26 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %25, i32 0, i32 1
  %27 = call i32 @spin_lock_irq(i32* %26)
  %28 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %29 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %28, i32 0, i32 2
  %30 = load %struct.TYPE_2__*, %struct.TYPE_2__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dev_dbg(i32 %32, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  %34 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %35 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %36 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @snd_ali_enable_special_channel(%struct.snd_ali* %34, i64 %37)
  %39 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %40 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load i64, i64* @ALI_MODEM_IN_CHANNEL, align 8
  %43 = icmp eq i64 %41, %42
  br i1 %43, label %50, label %44

44:                                               ; preds = %1
  %45 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %46 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = load i64, i64* @ALI_MODEM_OUT_CHANNEL, align 8
  %49 = icmp eq i64 %47, %48
  br i1 %49, label %50, label %51

50:                                               ; preds = %44, %1
  br label %59

51:                                               ; preds = %44
  %52 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %53 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %56 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i32 @snd_ali_convert_rate(i32 %54, i32 %57)
  br label %59

59:                                               ; preds = %51, %50
  %60 = phi i32 [ 4096, %50 ], [ %58, %51 ]
  store i32 %60, i32* %8, align 4
  %61 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %62 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load i64, i64* @ALI_SPDIF_IN_CHANNEL, align 8
  %65 = icmp eq i64 %63, %64
  br i1 %65, label %66, label %123

66:                                               ; preds = %59
  %67 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %68 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %67, i32 0, i32 1
  %69 = call i32 @spin_unlock_irq(i32* %68)
  %70 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %71 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = load i64, i64* @ALI_5451_V02, align 8
  %74 = icmp ne i64 %72, %73
  br i1 %74, label %75, label %76

75:                                               ; preds = %66
  store i32 -1, i32* %2, align 4
  br label %159

76:                                               ; preds = %66
  %77 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %78 = call i32 @snd_ali_get_spdif_in_rate(%struct.snd_ali* %77)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp eq i32 %79, 0
  br i1 %80, label %81, label %88

81:                                               ; preds = %76
  %82 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %83 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %82, i32 0, i32 2
  %84 = load %struct.TYPE_2__*, %struct.TYPE_2__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %84, i32 0, i32 0
  %86 = load i32, i32* %85, align 4
  %87 = call i32 @dev_warn(i32 %86, i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.1, i64 0, i64 0))
  store i32 48000, i32* %16, align 4
  br label %88

88:                                               ; preds = %81, %76
  %89 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %90 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %89, i32 0, i32 1
  %91 = call i32 @spin_lock_irq(i32* %90)
  %92 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %93 = load i32, i32* @ALI_SPDIF_CTRL, align 4
  %94 = call i32 @ALI_REG(%struct.snd_ali* %92, i32 %93)
  %95 = call i32 @inb(i32 %94)
  store i32 %95, i32* %15, align 4
  %96 = load i32, i32* %15, align 4
  %97 = and i32 %96, 16
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %111

99:                                               ; preds = %88
  %100 = load i32, i32* %15, align 4
  %101 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %102 = load i32, i32* @ALI_SPDIF_CTRL, align 4
  %103 = call i32 @ALI_REG(%struct.snd_ali* %101, i32 %102)
  %104 = call i32 @outb(i32 %100, i32 %103)
  %105 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %106 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %105, i32 0, i32 2
  %107 = load %struct.TYPE_2__*, %struct.TYPE_2__** %106, align 8
  %108 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @dev_warn(i32 %109, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.2, i64 0, i64 0))
  br label %111

111:                                              ; preds = %99, %88
  %112 = load i32, i32* %16, align 4
  %113 = icmp ne i32 %112, 48000
  br i1 %113, label %114, label %122

114:                                              ; preds = %111
  %115 = load i32, i32* %16, align 4
  %116 = shl i32 %115, 12
  %117 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %118 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 8
  %120 = udiv i32 %116, %119
  %121 = and i32 %120, 65535
  store i32 %121, i32* %8, align 4
  br label %122

122:                                              ; preds = %114, %111
  br label %123

123:                                              ; preds = %122, %59
  %124 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %125 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %128 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %127, i32 0, i32 1
  store i32 %126, i32* %128, align 8
  %129 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %130 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %129, i32 0, i32 3
  %131 = load i32, i32* %130, align 4
  %132 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %133 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %132, i32 0, i32 2
  store i32 %131, i32* %133, align 4
  %134 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %5, align 8
  %135 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %134, i32 0, i32 2
  %136 = load i32, i32* %135, align 8
  store i32 %136, i32* %7, align 4
  %137 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %138 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %137, i32 0, i32 1
  %139 = load i32, i32* %138, align 8
  %140 = sub nsw i32 %139, 1
  store i32 %140, i32* %9, align 4
  %141 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %142 = call i32 @snd_ali_control_mode(%struct.snd_pcm_substream* %141)
  store i32 %142, i32* %10, align 4
  store i32 0, i32* %11, align 4
  store i32 0, i32* %12, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %143 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %144 = load %struct.snd_ali_voice*, %struct.snd_ali_voice** %6, align 8
  %145 = getelementptr inbounds %struct.snd_ali_voice, %struct.snd_ali_voice* %144, i32 0, i32 0
  %146 = load i64, i64* %145, align 8
  %147 = load i32, i32* %7, align 4
  %148 = load i32, i32* %9, align 4
  %149 = load i32, i32* %8, align 4
  %150 = load i32, i32* %11, align 4
  %151 = load i32, i32* %12, align 4
  %152 = load i32, i32* %13, align 4
  %153 = load i32, i32* %10, align 4
  %154 = load i32, i32* %14, align 4
  %155 = call i32 @snd_ali_write_voice_regs(%struct.snd_ali* %143, i64 %146, i32 %147, i32 0, i32 %148, i32 %149, i32 0, i32 %150, i32 %151, i32 %152, i32 %153, i32 %154)
  %156 = load %struct.snd_ali*, %struct.snd_ali** %4, align 8
  %157 = getelementptr inbounds %struct.snd_ali, %struct.snd_ali* %156, i32 0, i32 1
  %158 = call i32 @spin_unlock_irq(i32* %157)
  store i32 0, i32* %2, align 4
  br label %159

159:                                              ; preds = %123, %75
  %160 = load i32, i32* %2, align 4
  ret i32 %160
}

declare dso_local %struct.snd_ali* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*) #1

declare dso_local i32 @snd_ali_enable_special_channel(%struct.snd_ali*, i64) #1

declare dso_local i32 @snd_ali_convert_rate(i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @snd_ali_get_spdif_in_rate(%struct.snd_ali*) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

declare dso_local i32 @inb(i32) #1

declare dso_local i32 @ALI_REG(%struct.snd_ali*, i32) #1

declare dso_local i32 @outb(i32, i32) #1

declare dso_local i32 @snd_ali_control_mode(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_ali_write_voice_regs(%struct.snd_ali*, i64, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
