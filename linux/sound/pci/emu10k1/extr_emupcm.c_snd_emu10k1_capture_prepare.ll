; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emupcm.c_snd_emu10k1_capture_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pcm_substream = type { %struct.snd_pcm_runtime* }
%struct.snd_pcm_runtime = type { i32, i32, i32, %struct.snd_emu10k1_pcm* }
%struct.snd_emu10k1_pcm = type { i32, i64, i32, i32, i32, i32 }
%struct.snd_emu10k1 = type { i64 }

@ADCCR = common dso_local global i32 0, align 4
@A_FXWC1 = common dso_local global i32 0, align 4
@A_FXWC2 = common dso_local global i32 0, align 4
@FXWC = common dso_local global i32 0, align 4
@capture_period_sizes = common dso_local global i64* null, align 8
@A_ADCCR_LCHANENABLE = common dso_local global i32 0, align 4
@ADCCR_LCHANENABLE = common dso_local global i32 0, align 4
@A_ADCCR_RCHANENABLE = common dso_local global i32 0, align 4
@ADCCR_RCHANENABLE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_pcm_substream*)* @snd_emu10k1_capture_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_capture_prepare(%struct.snd_pcm_substream* %0) #0 {
  %2 = alloca %struct.snd_pcm_substream*, align 8
  %3 = alloca %struct.snd_emu10k1*, align 8
  %4 = alloca %struct.snd_pcm_runtime*, align 8
  %5 = alloca %struct.snd_emu10k1_pcm*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_pcm_substream* %0, %struct.snd_pcm_substream** %2, align 8
  %7 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %8 = call %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream* %7)
  store %struct.snd_emu10k1* %8, %struct.snd_emu10k1** %3, align 8
  %9 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %10 = getelementptr inbounds %struct.snd_pcm_substream, %struct.snd_pcm_substream* %9, i32 0, i32 0
  %11 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %10, align 8
  store %struct.snd_pcm_runtime* %11, %struct.snd_pcm_runtime** %4, align 8
  %12 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %13 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %12, i32 0, i32 3
  %14 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %13, align 8
  store %struct.snd_emu10k1_pcm* %14, %struct.snd_emu10k1_pcm** %5, align 8
  %15 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %16 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %17 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %16, i32 0, i32 5
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %15, i32 %18, i32 0, i32 0)
  %20 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %21 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  switch i32 %22, label %44 [
    i32 129, label %23
    i32 128, label %27
  ]

23:                                               ; preds = %1
  %24 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %25 = load i32, i32* @ADCCR, align 4
  %26 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %24, i32 %25, i32 0, i32 0)
  br label %45

27:                                               ; preds = %1
  %28 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %29 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %39

32:                                               ; preds = %27
  %33 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %34 = load i32, i32* @A_FXWC1, align 4
  %35 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %33, i32 %34, i32 0, i32 0)
  %36 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %37 = load i32, i32* @A_FXWC2, align 4
  %38 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %36, i32 %37, i32 0, i32 0)
  br label %43

39:                                               ; preds = %27
  %40 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %41 = load i32, i32* @FXWC, align 4
  %42 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %40, i32 %41, i32 0, i32 0)
  br label %43

43:                                               ; preds = %39, %32
  br label %45

44:                                               ; preds = %1
  br label %45

45:                                               ; preds = %44, %43, %23
  %46 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %47 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %48 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 8
  %50 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %51 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %50, i32 0, i32 2
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1* %46, i32 %49, i32 0, i32 %52)
  %54 = load %struct.snd_pcm_substream*, %struct.snd_pcm_substream** %2, align 8
  %55 = call i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream* %54)
  %56 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %56, i32 0, i32 1
  store i64 %55, i64* %57, align 8
  %58 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %59 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %58, i32 0, i32 2
  store i32 0, i32* %59, align 8
  store i32 0, i32* %6, align 4
  br label %60

60:                                               ; preds = %79, %45
  %61 = load i32, i32* %6, align 4
  %62 = icmp slt i32 %61, 31
  br i1 %62, label %63, label %82

63:                                               ; preds = %60
  %64 = load i64*, i64** @capture_period_sizes, align 8
  %65 = load i32, i32* %6, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds i64, i64* %64, i64 %66
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %70 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = icmp eq i64 %68, %71
  br i1 %72, label %73, label %78

73:                                               ; preds = %63
  %74 = load i32, i32* %6, align 4
  %75 = add nsw i32 %74, 1
  %76 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %77 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %76, i32 0, i32 2
  store i32 %75, i32* %77, align 8
  br label %82

78:                                               ; preds = %63
  br label %79

79:                                               ; preds = %78
  %80 = load i32, i32* %6, align 4
  %81 = add nsw i32 %80, 1
  store i32 %81, i32* %6, align 4
  br label %60

82:                                               ; preds = %73, %60
  %83 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %84 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %83, i32 0, i32 2
  %85 = load i32, i32* %84, align 8
  %86 = icmp eq i32 %85, 0
  br i1 %86, label %87, label %93

87:                                               ; preds = %82
  %88 = call i32 (...) @snd_BUG()
  %89 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %90 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %89, i32 0, i32 2
  %91 = load i32, i32* %90, align 8
  %92 = add nsw i32 %91, 1
  store i32 %92, i32* %90, align 8
  br label %93

93:                                               ; preds = %87, %82
  %94 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %95 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %94, i32 0, i32 0
  %96 = load i32, i32* %95, align 8
  %97 = icmp eq i32 %96, 129
  br i1 %97, label %98, label %151

98:                                               ; preds = %93
  %99 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %100 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %99, i32 0, i32 0
  %101 = load i64, i64* %100, align 8
  %102 = icmp ne i64 %101, 0
  br i1 %102, label %103, label %105

103:                                              ; preds = %98
  %104 = load i32, i32* @A_ADCCR_LCHANENABLE, align 4
  br label %107

105:                                              ; preds = %98
  %106 = load i32, i32* @ADCCR_LCHANENABLE, align 4
  br label %107

107:                                              ; preds = %105, %103
  %108 = phi i32 [ %104, %103 ], [ %106, %105 ]
  %109 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %110 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %109, i32 0, i32 3
  store i32 %108, i32* %110, align 4
  %111 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %112 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = icmp sgt i32 %113, 1
  br i1 %114, label %115, label %130

115:                                              ; preds = %107
  %116 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %117 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %116, i32 0, i32 0
  %118 = load i64, i64* %117, align 8
  %119 = icmp ne i64 %118, 0
  br i1 %119, label %120, label %122

120:                                              ; preds = %115
  %121 = load i32, i32* @A_ADCCR_RCHANENABLE, align 4
  br label %124

122:                                              ; preds = %115
  %123 = load i32, i32* @ADCCR_RCHANENABLE, align 4
  br label %124

124:                                              ; preds = %122, %120
  %125 = phi i32 [ %121, %120 ], [ %123, %122 ]
  %126 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %127 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %126, i32 0, i32 3
  %128 = load i32, i32* %127, align 4
  %129 = or i32 %128, %125
  store i32 %129, i32* %127, align 4
  br label %130

130:                                              ; preds = %124, %107
  %131 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %3, align 8
  %132 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %131, i32 0, i32 0
  %133 = load i64, i64* %132, align 8
  %134 = icmp ne i64 %133, 0
  br i1 %134, label %135, label %140

135:                                              ; preds = %130
  %136 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %137 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %136, i32 0, i32 1
  %138 = load i32, i32* %137, align 4
  %139 = call i32 @snd_emu10k1_audigy_capture_rate_reg(i32 %138)
  br label %145

140:                                              ; preds = %130
  %141 = load %struct.snd_pcm_runtime*, %struct.snd_pcm_runtime** %4, align 8
  %142 = getelementptr inbounds %struct.snd_pcm_runtime, %struct.snd_pcm_runtime* %141, i32 0, i32 1
  %143 = load i32, i32* %142, align 4
  %144 = call i32 @snd_emu10k1_capture_rate_reg(i32 %143)
  br label %145

145:                                              ; preds = %140, %135
  %146 = phi i32 [ %139, %135 ], [ %144, %140 ]
  %147 = load %struct.snd_emu10k1_pcm*, %struct.snd_emu10k1_pcm** %5, align 8
  %148 = getelementptr inbounds %struct.snd_emu10k1_pcm, %struct.snd_emu10k1_pcm* %147, i32 0, i32 3
  %149 = load i32, i32* %148, align 4
  %150 = or i32 %149, %146
  store i32 %150, i32* %148, align 4
  br label %151

151:                                              ; preds = %145, %93
  ret i32 0
}

declare dso_local %struct.snd_emu10k1* @snd_pcm_substream_chip(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_emu10k1_ptr_write(%struct.snd_emu10k1*, i32, i32, i32) #1

declare dso_local i64 @snd_pcm_lib_buffer_bytes(%struct.snd_pcm_substream*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_emu10k1_audigy_capture_rate_reg(i32) #1

declare dso_local i32 @snd_emu10k1_capture_rate_reg(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
