; ModuleID = '/home/carl/AnghaBench/linux/sound/ppc/extr_beep.c_snd_pmac_beep_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/ppc/extr_beep.c_snd_pmac_beep_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.input_dev = type { i32 }
%struct.snd_pmac = type { i32*, i32, %struct.TYPE_3__, %struct.TYPE_4__, %struct.pmac_beep* }
%struct.TYPE_3__ = type { i64 }
%struct.TYPE_4__ = type { i64 }
%struct.pmac_beep = type { i32, i32, i16, i16, i32, i16*, i32 }

@EV_SND = common dso_local global i32 0, align 4
@BEEP_SRATE = common dso_local global i32 0, align 4
@BEEP_BUFLEN = common dso_local global i32 0, align 4
@beep_wform = common dso_local global i16* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.input_dev*, i32, i32, i32)* @snd_pmac_beep_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_pmac_beep_event(%struct.input_dev* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.input_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.snd_pmac*, align 8
  %11 = alloca %struct.pmac_beep*, align 8
  %12 = alloca i64, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i16*, align 8
  store %struct.input_dev* %0, %struct.input_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %13, align 4
  %22 = load i32, i32* %7, align 4
  %23 = load i32, i32* @EV_SND, align 4
  %24 = icmp ne i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %4
  store i32 -1, i32* %5, align 4
  br label %224

26:                                               ; preds = %4
  %27 = load i32, i32* %8, align 4
  switch i32 %27, label %34 [
    i32 129, label %28
    i32 128, label %33
  ]

28:                                               ; preds = %26
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %28
  store i32 1000, i32* %9, align 4
  br label %32

32:                                               ; preds = %31, %28
  br label %33

33:                                               ; preds = %26, %32
  br label %35

34:                                               ; preds = %26
  store i32 -1, i32* %5, align 4
  br label %224

35:                                               ; preds = %33
  %36 = load %struct.input_dev*, %struct.input_dev** %6, align 8
  %37 = call %struct.snd_pmac* @input_get_drvdata(%struct.input_dev* %36)
  store %struct.snd_pmac* %37, %struct.snd_pmac** %10, align 8
  %38 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %39 = icmp ne %struct.snd_pmac* %38, null
  br i1 %39, label %40, label %45

40:                                               ; preds = %35
  %41 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %42 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %41, i32 0, i32 4
  %43 = load %struct.pmac_beep*, %struct.pmac_beep** %42, align 8
  store %struct.pmac_beep* %43, %struct.pmac_beep** %11, align 8
  %44 = icmp eq %struct.pmac_beep* %43, null
  br i1 %44, label %45, label %46

45:                                               ; preds = %40, %35
  store i32 -1, i32* %5, align 4
  br label %224

46:                                               ; preds = %40
  %47 = load i32, i32* %9, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %66, label %49

49:                                               ; preds = %46
  %50 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %51 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %50, i32 0, i32 1
  %52 = load i64, i64* %12, align 8
  %53 = call i32 @spin_lock_irqsave(i32* %51, i64 %52)
  %54 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %55 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %61

58:                                               ; preds = %49
  %59 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %60 = call i32 @snd_pmac_beep_stop(%struct.snd_pmac* %59)
  br label %61

61:                                               ; preds = %58, %49
  %62 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %63 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %62, i32 0, i32 1
  %64 = load i64, i64* %12, align 8
  %65 = call i32 @spin_unlock_irqrestore(i32* %63, i64 %64)
  store i32 0, i32* %5, align 4
  br label %224

66:                                               ; preds = %46
  %67 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %68 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %69 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %68, i32 0, i32 3
  %70 = load i32, i32* @BEEP_SRATE, align 4
  %71 = call i32 @snd_pmac_rate_index(%struct.snd_pmac* %67, %struct.TYPE_4__* %69, i32 %70)
  store i32 %71, i32* %13, align 4
  %72 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %73 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %72, i32 0, i32 0
  %74 = load i32*, i32** %73, align 8
  %75 = load i32, i32* %13, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds i32, i32* %74, i64 %76
  %78 = load i32, i32* %77, align 4
  store i32 %78, i32* %14, align 4
  %79 = load i32, i32* %9, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i32, i32* @BEEP_BUFLEN, align 4
  %82 = sdiv i32 %80, %81
  %83 = icmp sle i32 %79, %82
  br i1 %83, label %89, label %84

84:                                               ; preds = %66
  %85 = load i32, i32* %9, align 4
  %86 = load i32, i32* %14, align 4
  %87 = sdiv i32 %86, 2
  %88 = icmp sgt i32 %85, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %84, %66
  store i32 1000, i32* %9, align 4
  br label %90

90:                                               ; preds = %89, %84
  %91 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %92 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %91, i32 0, i32 1
  %93 = load i64, i64* %12, align 8
  %94 = call i32 @spin_lock_irqsave(i32* %92, i64 %93)
  %95 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %96 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %95, i32 0, i32 3
  %97 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = icmp ne i64 %98, 0
  br i1 %99, label %111, label %100

100:                                              ; preds = %90
  %101 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %102 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %101, i32 0, i32 2
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 0
  %104 = load i64, i64* %103, align 8
  %105 = icmp ne i64 %104, 0
  br i1 %105, label %111, label %106

106:                                              ; preds = %100
  %107 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %108 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp ne i32 %109, 0
  br i1 %110, label %111, label %116

111:                                              ; preds = %106, %100, %90
  %112 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %113 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %112, i32 0, i32 1
  %114 = load i64, i64* %12, align 8
  %115 = call i32 @spin_unlock_irqrestore(i32* %113, i64 %114)
  store i32 0, i32* %5, align 4
  br label %224

116:                                              ; preds = %106
  %117 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %118 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %117, i32 0, i32 0
  store i32 1, i32* %118, align 8
  %119 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %120 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %119, i32 0, i32 1
  %121 = load i64, i64* %12, align 8
  %122 = call i32 @spin_unlock_irqrestore(i32* %120, i64 %121)
  %123 = load i32, i32* %9, align 4
  %124 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %125 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %124, i32 0, i32 1
  %126 = load i32, i32* %125, align 4
  %127 = icmp eq i32 %123, %126
  br i1 %127, label %128, label %142

128:                                              ; preds = %116
  %129 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %130 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %129, i32 0, i32 2
  %131 = load i16, i16* %130, align 8
  %132 = sext i16 %131 to i32
  %133 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %134 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %133, i32 0, i32 3
  %135 = load i16, i16* %134, align 2
  %136 = sext i16 %135 to i32
  %137 = icmp eq i32 %132, %136
  br i1 %137, label %138, label %142

138:                                              ; preds = %128
  %139 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %140 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %139, i32 0, i32 4
  %141 = load i32, i32* %140, align 4
  store i32 %141, i32* %17, align 4
  br label %205

142:                                              ; preds = %128, %116
  %143 = load i32, i32* %14, align 4
  %144 = mul nsw i32 %143, 256
  %145 = load i32, i32* %9, align 4
  %146 = sdiv i32 %144, %145
  store i32 %146, i32* %15, align 4
  %147 = load i32, i32* @BEEP_BUFLEN, align 4
  %148 = mul nsw i32 %147, 256
  %149 = load i32, i32* %15, align 4
  %150 = sdiv i32 %148, %149
  store i32 %150, i32* %16, align 4
  %151 = load i32, i32* %15, align 4
  %152 = load i32, i32* %16, align 4
  %153 = mul nsw i32 %151, %152
  %154 = ashr i32 %153, 8
  store i32 %154, i32* %17, align 4
  %155 = load i32, i32* %16, align 4
  %156 = mul nsw i32 %155, 65536
  %157 = load i32, i32* %17, align 4
  %158 = sdiv i32 %156, %157
  store i32 %158, i32* %20, align 4
  store i32 0, i32* %19, align 4
  %159 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %160 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %159, i32 0, i32 5
  %161 = load i16*, i16** %160, align 8
  store i16* %161, i16** %21, align 8
  store i32 0, i32* %18, align 4
  br label %162

162:                                              ; preds = %188, %142
  %163 = load i32, i32* %18, align 4
  %164 = load i32, i32* %17, align 4
  %165 = icmp slt i32 %163, %164
  br i1 %165, label %166, label %193

166:                                              ; preds = %162
  %167 = load i16*, i16** @beep_wform, align 8
  %168 = load i32, i32* %19, align 4
  %169 = ashr i32 %168, 8
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds i16, i16* %167, i64 %170
  %172 = load i16, i16* %171, align 2
  %173 = sext i16 %172 to i32
  %174 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %175 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %174, i32 0, i32 2
  %176 = load i16, i16* %175, align 8
  %177 = sext i16 %176 to i32
  %178 = mul nsw i32 %173, %177
  %179 = trunc i32 %178 to i16
  %180 = load i16*, i16** %21, align 8
  %181 = getelementptr inbounds i16, i16* %180, i64 1
  store i16 %179, i16* %181, align 2
  %182 = load i16*, i16** %21, align 8
  %183 = getelementptr inbounds i16, i16* %182, i64 0
  store i16 %179, i16* %183, align 2
  %184 = load i32, i32* %19, align 4
  %185 = load i32, i32* %20, align 4
  %186 = add nsw i32 %184, %185
  %187 = and i32 %186, 65535
  store i32 %187, i32* %19, align 4
  br label %188

188:                                              ; preds = %166
  %189 = load i32, i32* %18, align 4
  %190 = add nsw i32 %189, 1
  store i32 %190, i32* %18, align 4
  %191 = load i16*, i16** %21, align 8
  %192 = getelementptr inbounds i16, i16* %191, i64 2
  store i16* %192, i16** %21, align 8
  br label %162

193:                                              ; preds = %162
  %194 = load i32, i32* %9, align 4
  %195 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %196 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %195, i32 0, i32 1
  store i32 %194, i32* %196, align 4
  %197 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %198 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %197, i32 0, i32 2
  %199 = load i16, i16* %198, align 8
  %200 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %201 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %200, i32 0, i32 3
  store i16 %199, i16* %201, align 2
  %202 = load i32, i32* %17, align 4
  %203 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %204 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  br label %205

205:                                              ; preds = %193, %138
  %206 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %207 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %206, i32 0, i32 1
  %208 = load i64, i64* %12, align 8
  %209 = call i32 @spin_lock_irqsave(i32* %207, i64 %208)
  %210 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %211 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %212 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %211, i32 0, i32 4
  %213 = load i32, i32* %212, align 4
  %214 = mul nsw i32 %213, 4
  %215 = load %struct.pmac_beep*, %struct.pmac_beep** %11, align 8
  %216 = getelementptr inbounds %struct.pmac_beep, %struct.pmac_beep* %215, i32 0, i32 6
  %217 = load i32, i32* %216, align 8
  %218 = load i32, i32* %13, align 4
  %219 = call i32 @snd_pmac_beep_dma_start(%struct.snd_pmac* %210, i32 %214, i32 %217, i32 %218)
  %220 = load %struct.snd_pmac*, %struct.snd_pmac** %10, align 8
  %221 = getelementptr inbounds %struct.snd_pmac, %struct.snd_pmac* %220, i32 0, i32 1
  %222 = load i64, i64* %12, align 8
  %223 = call i32 @spin_unlock_irqrestore(i32* %221, i64 %222)
  store i32 0, i32* %5, align 4
  br label %224

224:                                              ; preds = %205, %111, %61, %45, %34, %25
  %225 = load i32, i32* %5, align 4
  ret i32 %225
}

declare dso_local %struct.snd_pmac* @input_get_drvdata(%struct.input_dev*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @snd_pmac_beep_stop(%struct.snd_pmac*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @snd_pmac_rate_index(%struct.snd_pmac*, %struct.TYPE_4__*, i32) #1

declare dso_local i32 @snd_pmac_beep_dma_start(%struct.snd_pmac*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
