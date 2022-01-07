; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_setup_pcm_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_intel8x0.c_snd_intel8x0_setup_pcm_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel8x0 = type { i32, i32 }
%struct.snd_pcm_runtime = type { i32, i32, i32 }

@ALI_SCR = common dso_local global i32 0, align 4
@ICH_ALI_SC_PCM_246_MASK = common dso_local global i32 0, align 4
@ICH_ALI_SC_PCM_4 = common dso_local global i32 0, align 4
@ICH_ALI_SC_PCM_6 = common dso_local global i32 0, align 4
@GLOB_CNT = common dso_local global i32 0, align 4
@ICH_SIS_PCM_246_MASK = common dso_local global i32 0, align 4
@ICH_SIS_PCM_4 = common dso_local global i32 0, align 4
@ICH_SIS_PCM_6 = common dso_local global i32 0, align 4
@ICH_PCM_246_MASK = common dso_local global i32 0, align 4
@ICH_PCM_20BIT = common dso_local global i32 0, align 4
@ICH_PCM_4 = common dso_local global i32 0, align 4
@ICH_PCM_6 = common dso_local global i32 0, align 4
@ICH_PCM_8 = common dso_local global i32 0, align 4
@DEVICE_NFORCE = common dso_local global i32 0, align 4
@DEVICE_INTEL_ICH4 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.intel8x0*, %struct.snd_pcm_runtime*)* @snd_intel8x0_setup_pcm_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_intel8x0_setup_pcm_out(%struct.intel8x0* %0, %struct.snd_pcm_runtime* %1) #0 {
  %3 = alloca %struct.intel8x0*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.intel8x0* %0, %struct.intel8x0** %3, align 8
  store %struct.snd_pcm_runtime* %1, %struct.snd_pcm_runtime** %4, align 8
  %7 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %8 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sgt i32 %9, 48000
  %11 = zext i1 %10 to i32
  store i32 %11, i32* %6, align 4
  %12 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %13 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %12, i32 0, i32 1
  %14 = call i32 @spin_lock_irq(i32* %13)
  %15 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %16 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  switch i32 %17, label %90 [
    i32 129, label %18
    i32 128, label %54
  ]

18:                                               ; preds = %2
  %19 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %20 = load i32, i32* @ALI_SCR, align 4
  %21 = call i32 @ICHREG(i32 %20)
  %22 = call i32 @igetdword(%struct.intel8x0* %19, i32 %21)
  store i32 %22, i32* %5, align 4
  %23 = load i32, i32* @ICH_ALI_SC_PCM_246_MASK, align 4
  %24 = xor i32 %23, -1
  %25 = load i32, i32* %5, align 4
  %26 = and i32 %25, %24
  store i32 %26, i32* %5, align 4
  %27 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %28 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = icmp eq i32 %29, 4
  br i1 %30, label %34, label %31

31:                                               ; preds = %18
  %32 = load i32, i32* %6, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %38

34:                                               ; preds = %31, %18
  %35 = load i32, i32* @ICH_ALI_SC_PCM_4, align 4
  %36 = load i32, i32* %5, align 4
  %37 = or i32 %36, %35
  store i32 %37, i32* %5, align 4
  br label %48

38:                                               ; preds = %31
  %39 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %40 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %39, i32 0, i32 1
  %41 = load i32, i32* %40, align 4
  %42 = icmp eq i32 %41, 6
  br i1 %42, label %43, label %47

43:                                               ; preds = %38
  %44 = load i32, i32* @ICH_ALI_SC_PCM_6, align 4
  %45 = load i32, i32* %5, align 4
  %46 = or i32 %45, %44
  store i32 %46, i32* %5, align 4
  br label %47

47:                                               ; preds = %43, %38
  br label %48

48:                                               ; preds = %47, %34
  %49 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %50 = load i32, i32* @ALI_SCR, align 4
  %51 = call i32 @ICHREG(i32 %50)
  %52 = load i32, i32* %5, align 4
  %53 = call i32 @iputdword(%struct.intel8x0* %49, i32 %51, i32 %52)
  br label %183

54:                                               ; preds = %2
  %55 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %56 = load i32, i32* @GLOB_CNT, align 4
  %57 = call i32 @ICHREG(i32 %56)
  %58 = call i32 @igetdword(%struct.intel8x0* %55, i32 %57)
  store i32 %58, i32* %5, align 4
  %59 = load i32, i32* @ICH_SIS_PCM_246_MASK, align 4
  %60 = xor i32 %59, -1
  %61 = load i32, i32* %5, align 4
  %62 = and i32 %61, %60
  store i32 %62, i32* %5, align 4
  %63 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %64 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = icmp eq i32 %65, 4
  br i1 %66, label %70, label %67

67:                                               ; preds = %54
  %68 = load i32, i32* %6, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %74

70:                                               ; preds = %67, %54
  %71 = load i32, i32* @ICH_SIS_PCM_4, align 4
  %72 = load i32, i32* %5, align 4
  %73 = or i32 %72, %71
  store i32 %73, i32* %5, align 4
  br label %84

74:                                               ; preds = %67
  %75 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %76 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = icmp eq i32 %77, 6
  br i1 %78, label %79, label %83

79:                                               ; preds = %74
  %80 = load i32, i32* @ICH_SIS_PCM_6, align 4
  %81 = load i32, i32* %5, align 4
  %82 = or i32 %81, %80
  store i32 %82, i32* %5, align 4
  br label %83

83:                                               ; preds = %79, %74
  br label %84

84:                                               ; preds = %83, %70
  %85 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %86 = load i32, i32* @GLOB_CNT, align 4
  %87 = call i32 @ICHREG(i32 %86)
  %88 = load i32, i32* %5, align 4
  %89 = call i32 @iputdword(%struct.intel8x0* %85, i32 %87, i32 %88)
  br label %183

90:                                               ; preds = %2
  %91 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %92 = load i32, i32* @GLOB_CNT, align 4
  %93 = call i32 @ICHREG(i32 %92)
  %94 = call i32 @igetdword(%struct.intel8x0* %91, i32 %93)
  store i32 %94, i32* %5, align 4
  %95 = load i32, i32* @ICH_PCM_246_MASK, align 4
  %96 = load i32, i32* @ICH_PCM_20BIT, align 4
  %97 = or i32 %95, %96
  %98 = xor i32 %97, -1
  %99 = load i32, i32* %5, align 4
  %100 = and i32 %99, %98
  store i32 %100, i32* %5, align 4
  %101 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %102 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = icmp eq i32 %103, 4
  br i1 %104, label %108, label %105

105:                                              ; preds = %90
  %106 = load i32, i32* %6, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %112

108:                                              ; preds = %105, %90
  %109 = load i32, i32* @ICH_PCM_4, align 4
  %110 = load i32, i32* %5, align 4
  %111 = or i32 %110, %109
  store i32 %111, i32* %5, align 4
  br label %132

112:                                              ; preds = %105
  %113 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %114 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = icmp eq i32 %115, 6
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @ICH_PCM_6, align 4
  %119 = load i32, i32* %5, align 4
  %120 = or i32 %119, %118
  store i32 %120, i32* %5, align 4
  br label %131

121:                                              ; preds = %112
  %122 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %123 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %122, i32 0, i32 1
  %124 = load i32, i32* %123, align 4
  %125 = icmp eq i32 %124, 8
  br i1 %125, label %126, label %130

126:                                              ; preds = %121
  %127 = load i32, i32* @ICH_PCM_8, align 4
  %128 = load i32, i32* %5, align 4
  %129 = or i32 %128, %127
  store i32 %129, i32* %5, align 4
  br label %130

130:                                              ; preds = %126, %121
  br label %131

131:                                              ; preds = %130, %117
  br label %132

132:                                              ; preds = %131, %108
  %133 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %134 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %133, i32 0, i32 0
  %135 = load i32, i32* %134, align 4
  %136 = load i32, i32* @DEVICE_NFORCE, align 4
  %137 = icmp eq i32 %135, %136
  br i1 %137, label %138, label %160

138:                                              ; preds = %132
  %139 = load i32, i32* %5, align 4
  %140 = load i32, i32* @ICH_PCM_246_MASK, align 4
  %141 = and i32 %139, %140
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %159

143:                                              ; preds = %138
  %144 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %145 = load i32, i32* @GLOB_CNT, align 4
  %146 = call i32 @ICHREG(i32 %145)
  %147 = load i32, i32* %5, align 4
  %148 = load i32, i32* @ICH_PCM_246_MASK, align 4
  %149 = xor i32 %148, -1
  %150 = and i32 %147, %149
  %151 = call i32 @iputdword(%struct.intel8x0* %144, i32 %146, i32 %150)
  %152 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %153 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %152, i32 0, i32 1
  %154 = call i32 @spin_unlock_irq(i32* %153)
  %155 = call i32 @msleep(i32 50)
  %156 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %157 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %156, i32 0, i32 1
  %158 = call i32 @spin_lock_irq(i32* %157)
  br label %159

159:                                              ; preds = %143, %138
  br label %177

160:                                              ; preds = %132
  %161 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %162 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %161, i32 0, i32 0
  %163 = load i32, i32* %162, align 4
  %164 = load i32, i32* @DEVICE_INTEL_ICH4, align 4
  %165 = icmp eq i32 %163, %164
  br i1 %165, label %166, label %176

166:                                              ; preds = %160
  %167 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %168 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %167, i32 0, i32 2
  %169 = load i32, i32* %168, align 4
  %170 = icmp sgt i32 %169, 16
  br i1 %170, label %171, label %175

171:                                              ; preds = %166
  %172 = load i32, i32* @ICH_PCM_20BIT, align 4
  %173 = load i32, i32* %5, align 4
  %174 = or i32 %173, %172
  store i32 %174, i32* %5, align 4
  br label %175

175:                                              ; preds = %171, %166
  br label %176

176:                                              ; preds = %175, %160
  br label %177

177:                                              ; preds = %176, %159
  %178 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %179 = load i32, i32* @GLOB_CNT, align 4
  %180 = call i32 @ICHREG(i32 %179)
  %181 = load i32, i32* %5, align 4
  %182 = call i32 @iputdword(%struct.intel8x0* %178, i32 %180, i32 %181)
  br label %183

183:                                              ; preds = %177, %84, %48
  %184 = load %struct.intel8x0*, %struct.intel8x0** %3, align 8
  %185 = getelementptr inbounds %struct.intel8x0, %struct.intel8x0* %184, i32 0, i32 1
  %186 = call i32 @spin_unlock_irq(i32* %185)
  ret void
}

declare dso_local i32 @spin_lock_irq(i32*) #1

declare dso_local i32 @igetdword(%struct.intel8x0*, i32) #1

declare dso_local i32 @ICHREG(i32) #1

declare dso_local i32 @iputdword(%struct.intel8x0*, i32, i32) #1

declare dso_local i32 @spin_unlock_irq(i32*) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
