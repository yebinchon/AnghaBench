; ModuleID = '/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_irq.c_pdacf_threaded_irq.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pcmcia/pdaudiocf/extr_pdaudiocf_irq.c_pdacf_threaded_irq.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pdacf = type { i32, i64, i32, i32, i32, i32, i32, i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32* }

@PDAUDIOCF_STAT_IS_STALE = common dso_local global i32 0, align 4
@PDAUDIOCF_STAT_IS_CONFIGURED = common dso_local global i32 0, align 4
@IRQ_HANDLED = common dso_local global i32 0, align 4
@PDAUDIOCF_REG_RDP = common dso_local global i64 0, align 8
@PDAUDIOCF_REG_WDP = common dso_local global i64 0, align 8
@PDAUDIOCF_REG_MD = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pdacf_threaded_irq(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_pdacf*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i8* %1, i8** %5, align 8
  %12 = load i8*, i8** %5, align 8
  %13 = bitcast i8* %12 to %struct.snd_pdacf*
  store %struct.snd_pdacf* %13, %struct.snd_pdacf** %6, align 8
  %14 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %15 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* @PDAUDIOCF_STAT_IS_STALE, align 4
  %18 = load i32, i32* @PDAUDIOCF_STAT_IS_CONFIGURED, align 4
  %19 = or i32 %17, %18
  %20 = and i32 %16, %19
  %21 = load i32, i32* @PDAUDIOCF_STAT_IS_CONFIGURED, align 4
  %22 = icmp ne i32 %20, %21
  br i1 %22, label %23, label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %24, i32* %3, align 4
  br label %178

25:                                               ; preds = %2
  %26 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %27 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %26, i32 0, i32 8
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = icmp eq %struct.TYPE_3__* %28, null
  br i1 %29, label %43, label %30

30:                                               ; preds = %25
  %31 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %32 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %31, i32 0, i32 8
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  %35 = load i32*, i32** %34, align 8
  %36 = icmp eq i32* %35, null
  br i1 %36, label %43, label %37

37:                                               ; preds = %30
  %38 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %39 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %38, i32 0, i32 8
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = call i32 @snd_pcm_running(%struct.TYPE_3__* %40)
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %45, label %43

43:                                               ; preds = %37, %30, %25
  %44 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %44, i32* %3, align 4
  br label %178

45:                                               ; preds = %37
  %46 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %47 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @PDAUDIOCF_REG_RDP, align 8
  %50 = add i64 %48, %49
  %51 = call i32 @inw(i64 %50)
  store i32 %51, i32* %10, align 4
  %52 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %53 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %52, i32 0, i32 1
  %54 = load i64, i64* %53, align 8
  %55 = load i64, i64* @PDAUDIOCF_REG_WDP, align 8
  %56 = add i64 %54, %55
  %57 = call i32 @inw(i64 %56)
  store i32 %57, i32* %11, align 4
  %58 = load i32, i32* %11, align 4
  %59 = load i32, i32* %10, align 4
  %60 = sub nsw i32 %58, %59
  store i32 %60, i32* %7, align 4
  %61 = load i32, i32* %7, align 4
  %62 = icmp slt i32 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %45
  %64 = load i32, i32* %7, align 4
  %65 = add nsw i32 %64, 65536
  store i32 %65, i32* %7, align 4
  br label %66

66:                                               ; preds = %63, %45
  %67 = load i32, i32* %7, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 65536, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %66
  %71 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %72 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %71, i32 0, i32 2
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* %7, align 4
  %75 = sdiv i32 %74, %73
  store i32 %75, i32* %7, align 4
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 64
  br i1 %77, label %78, label %81

78:                                               ; preds = %70
  %79 = load i32, i32* %7, align 4
  %80 = sub nsw i32 %79, 32
  store i32 %80, i32* %7, align 4
  br label %81

81:                                               ; preds = %78, %70
  %82 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %83 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %86 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %85, i32 0, i32 5
  %87 = load i32, i32* %86, align 4
  %88 = add nsw i32 %84, %87
  store i32 %88, i32* %8, align 4
  %89 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %90 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %89, i32 0, i32 4
  %91 = load i32, i32* %90, align 8
  %92 = load i32, i32* %8, align 4
  %93 = srem i32 %92, %91
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %7, align 4
  %95 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %96 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %95, i32 0, i32 5
  %97 = load i32, i32* %96, align 4
  %98 = add nsw i32 %97, %94
  store i32 %98, i32* %96, align 4
  br label %99

99:                                               ; preds = %113, %81
  %100 = load i32, i32* %7, align 4
  %101 = icmp sgt i32 %100, 0
  br i1 %101, label %102, label %129

102:                                              ; preds = %99
  %103 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %104 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %103, i32 0, i32 4
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = sub nsw i32 %105, %106
  store i32 %107, i32* %9, align 4
  %108 = load i32, i32* %9, align 4
  %109 = load i32, i32* %7, align 4
  %110 = icmp sgt i32 %108, %109
  br i1 %110, label %111, label %113

111:                                              ; preds = %102
  %112 = load i32, i32* %7, align 4
  store i32 %112, i32* %9, align 4
  br label %113

113:                                              ; preds = %111, %102
  %114 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %115 = load i32, i32* %9, align 4
  %116 = load i32, i32* %8, align 4
  %117 = call i32 @pdacf_transfer(%struct.snd_pdacf* %114, i32 %115, i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = load i32, i32* %8, align 4
  %120 = add nsw i32 %119, %118
  store i32 %120, i32* %8, align 4
  %121 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %122 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 8
  %124 = load i32, i32* %8, align 4
  %125 = srem i32 %124, %123
  store i32 %125, i32* %8, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* %7, align 4
  %128 = sub nsw i32 %127, %126
  store i32 %128, i32* %7, align 4
  br label %99

129:                                              ; preds = %99
  %130 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %131 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %130, i32 0, i32 7
  %132 = call i32 @mutex_lock(i32* %131)
  br label %133

133:                                              ; preds = %141, %129
  %134 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %135 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %134, i32 0, i32 5
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %138 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %137, i32 0, i32 6
  %139 = load i32, i32* %138, align 8
  %140 = icmp sge i32 %136, %139
  br i1 %140, label %141, label %173

141:                                              ; preds = %133
  %142 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %143 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %142, i32 0, i32 6
  %144 = load i32, i32* %143, align 8
  %145 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %146 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %145, i32 0, i32 3
  %147 = load i32, i32* %146, align 4
  %148 = add nsw i32 %147, %144
  store i32 %148, i32* %146, align 4
  %149 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %150 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %149, i32 0, i32 4
  %151 = load i32, i32* %150, align 8
  %152 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %153 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = srem i32 %154, %151
  store i32 %155, i32* %153, align 4
  %156 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %157 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %156, i32 0, i32 6
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %160 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = sub nsw i32 %161, %158
  store i32 %162, i32* %160, align 4
  %163 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %164 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %163, i32 0, i32 7
  %165 = call i32 @mutex_unlock(i32* %164)
  %166 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %167 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %166, i32 0, i32 8
  %168 = load %struct.TYPE_3__*, %struct.TYPE_3__** %167, align 8
  %169 = call i32 @snd_pcm_period_elapsed(%struct.TYPE_3__* %168)
  %170 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %171 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %170, i32 0, i32 7
  %172 = call i32 @mutex_lock(i32* %171)
  br label %133

173:                                              ; preds = %133
  %174 = load %struct.snd_pdacf*, %struct.snd_pdacf** %6, align 8
  %175 = getelementptr inbounds %struct.snd_pdacf, %struct.snd_pdacf* %174, i32 0, i32 7
  %176 = call i32 @mutex_unlock(i32* %175)
  %177 = load i32, i32* @IRQ_HANDLED, align 4
  store i32 %177, i32* %3, align 4
  br label %178

178:                                              ; preds = %173, %43, %23
  %179 = load i32, i32* %3, align 4
  ret i32 %179
}

declare dso_local i32 @snd_pcm_running(%struct.TYPE_3__*) #1

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @pdacf_transfer(%struct.snd_pdacf*, i32, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_pcm_period_elapsed(%struct.TYPE_3__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
