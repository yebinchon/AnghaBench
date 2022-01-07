; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_trigger.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_trigger.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.snd_emu10k1 = type { i32, i32, i64, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@IPR = common dso_local global i64 0, align 8
@ADCCR = common dso_local global i32 0, align 4
@A_FXWC1 = common dso_local global i32 0, align 4
@A_FXWC2 = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"cr_val=0x%x, cr_val2=0x%x\0A\00", align 1
@FXWC = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*, i32)* @snd_emu10k1_capture_trigger to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_trigger(%struct.snd_pcm_substream* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_pcm_substream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_emu10k1*, align 8
  %6 = alloca %struct.snd_pcm_runtime*, align 8
  %7 = alloca %struct.snd_emu10k1_pcm*, align 8
  %8 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %10 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %9)
  store %struct.snd_emu10k1* %10, %struct.snd_emu10k1** %5, align 8
  %11 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %3, align 8
  %12 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %11, i32 0, i32 0
  %13 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %12, align 8
  store %struct.snd_pcm_runtime* %13, %struct.snd_pcm_runtime** %6, align 8
  %14 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %14, i32 0, i32 0
  %16 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %15, align 8
  store %struct.snd_emu10k1_pcm* %16, %struct.snd_emu10k1_pcm** %7, align 8
  store i32 0, i32* %8, align 4
  %17 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %18 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %17, i32 0, i32 0
  %19 = call i32 @spin_lock(i32* %18)
  %20 = load i32, i32* %4, align 4
  switch i32 %20, label %146 [
    i32 130, label %21
    i32 131, label %21
    i32 129, label %98
    i32 128, label %98
  ]

21:                                               ; preds = %2, %2
  %22 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %23 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %22, i32 0, i32 4
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %25, i32 0, i32 2
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @IPR, align 8
  %29 = add nsw i64 %27, %28
  %30 = call i32 @outl(i32 %24, i64 %29)
  %31 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %32 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %33 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %32, i32 0, i32 5
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1* %31, i32 %34)
  %36 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %37 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 4
  switch i32 %38, label %84 [
    i32 133, label %39
    i32 132, label %46
  ]

39:                                               ; preds = %21
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %41 = load i32, i32* @ADCCR, align 4
  %42 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %43 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %42, i32 0, i32 7
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %40, i32 %41, i32 0, i32 %44)
  br label %85

46:                                               ; preds = %21
  %47 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %47, i32 0, i32 1
  %49 = load i32, i32* %48, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %76

51:                                               ; preds = %46
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %53 = load i32, i32* @A_FXWC1, align 4
  %54 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %55 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %52, i32 %53, i32 0, i32 %56)
  %58 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %59 = load i32, i32* @A_FXWC2, align 4
  %60 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %61 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %60, i32 0, i32 8
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %58, i32 %59, i32 0, i32 %62)
  %64 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %64, i32 0, i32 3
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %69, i32 0, i32 7
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %73 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %72, i32 0, i32 8
  %74 = load i32, i32* %73, align 4
  %75 = call i32 @dev_dbg(i32 %68, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %71, i32 %74)
  br label %83

76:                                               ; preds = %46
  %77 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %78 = load i32, i32* @FXWC, align 4
  %79 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %80 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %79, i32 0, i32 7
  %81 = load i32, i32* %80, align 4
  %82 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %77, i32 %78, i32 0, i32 %81)
  br label %83

83:                                               ; preds = %76, %51
  br label %85

84:                                               ; preds = %21
  br label %85

85:                                               ; preds = %84, %83, %39
  %86 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %87 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %88 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %87, i32 0, i32 3
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %91 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %90, i32 0, i32 6
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %86, i32 %89, i32 0, i32 %92)
  %94 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %94, i32 0, i32 0
  store i32 1, i32* %95, align 4
  %96 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %97 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %96, i32 0, i32 1
  store i32 1, i32* %97, align 4
  br label %149

98:                                               ; preds = %2, %2
  %99 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %99, i32 0, i32 0
  store i32 0, i32* %100, align 4
  %101 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %102 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %102, i32 0, i32 5
  %104 = load i32, i32* %103, align 4
  %105 = call i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1* %101, i32 %104)
  %106 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %107 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %106, i32 0, i32 4
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %109, i32 0, i32 2
  %111 = load i64, i64* %110, align 8
  %112 = load i64, i64* @IPR, align 8
  %113 = add nsw i64 %111, %112
  %114 = call i32 @outl(i32 %108, i64 %113)
  %115 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %116 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %116, i32 0, i32 3
  %118 = load i32, i32* %117, align 4
  %119 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %115, i32 %118, i32 0, i32 0)
  %120 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %7, align 8
  %121 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %120, i32 0, i32 2
  %122 = load i32, i32* %121, align 4
  switch i32 %122, label %144 [
    i32 133, label %123
    i32 132, label %127
  ]

123:                                              ; preds = %98
  %124 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %125 = load i32, i32* @ADCCR, align 4
  %126 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %124, i32 %125, i32 0, i32 0)
  br label %145

127:                                              ; preds = %98
  %128 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %129 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 4
  %131 = icmp ne i32 %130, 0
  br i1 %131, label %132, label %139

132:                                              ; preds = %127
  %133 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %134 = load i32, i32* @A_FXWC1, align 4
  %135 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %133, i32 %134, i32 0, i32 0)
  %136 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %137 = load i32, i32* @A_FXWC2, align 4
  %138 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %136, i32 %137, i32 0, i32 0)
  br label %143

139:                                              ; preds = %127
  %140 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %141 = load i32, i32* @FXWC, align 4
  %142 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %140, i32 %141, i32 0, i32 0)
  br label %143

143:                                              ; preds = %139, %132
  br label %145

144:                                              ; preds = %98
  br label %145

145:                                              ; preds = %144, %143, %123
  br label %149

146:                                              ; preds = %2
  %147 = load i32, i32* @EINVAL, align 4
  %148 = sub nsw i32 0, %147
  store i32 %148, i32* %8, align 4
  br label %149

149:                                              ; preds = %146, %145, %85
  %150 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %5, align 8
  %151 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %150, i32 0, i32 0
  %152 = call i32 @spin_unlock(i32* %151)
  %153 = load i32, i32* %8, align 4
  ret i32 %153
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @outl(i32, i64) #1

declare dso_local i32 @snd_emu10k1_intr_enable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32) #1

declare dso_local i32 @snd_emu10k1_intr_disable(%struct.snd_emu10k1*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
