; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_note_on_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_note_on_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%struct.snd_seq_event = type { i32 }
%struct.seq_oss_synthinfo = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEON = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_KEYPRESS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_NOTEOFF = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, i32, i32, i32, i32, %struct.snd_seq_event*)* @note_on_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @note_on_event(%struct.seq_oss_devinfo* %0, i32 %1, i32 %2, i32 %3, i32 %4, %struct.snd_seq_event* %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.seq_oss_devinfo*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.snd_seq_event*, align 8
  %14 = alloca %struct.seq_oss_synthinfo*, align 8
  %15 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store %struct.snd_seq_event* %5, %struct.snd_seq_event** %13, align 8
  %16 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %17 = load i32, i32* %9, align 4
  %18 = call %struct.seq_oss_synthinfo* @snd_seq_oss_synth_info(%struct.seq_oss_devinfo* %16, i32 %17)
  store %struct.seq_oss_synthinfo* %18, %struct.seq_oss_synthinfo** %14, align 8
  %19 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %20 = icmp ne %struct.seq_oss_synthinfo* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENXIO, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %216

24:                                               ; preds = %6
  %25 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %26 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %213 [
    i32 129, label %29
    i32 130, label %182
    i32 128, label %191
  ]

29:                                               ; preds = %24
  %30 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %31 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %30, i32 0, i32 1
  %32 = load %struct.TYPE_4__*, %struct.TYPE_4__** %31, align 8
  %33 = icmp ne %struct.TYPE_4__* %32, null
  br i1 %33, label %34, label %43

34:                                               ; preds = %29
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %43, label %37

37:                                               ; preds = %34
  %38 = load i32, i32* %10, align 4
  %39 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %40 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = icmp sge i32 %38, %41
  br i1 %42, label %43, label %52

43:                                               ; preds = %37, %34, %29
  %44 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %45 = load i32, i32* %9, align 4
  %46 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %12, align 4
  %50 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %51 = call i32 @set_note_event(%struct.seq_oss_devinfo* %44, i32 %45, i32 %46, i32 %47, i32 %48, i32 %49, %struct.snd_seq_event* %50)
  store i32 %51, i32* %7, align 4
  br label %216

52:                                               ; preds = %37
  %53 = load i32, i32* %10, align 4
  %54 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %55 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @array_index_nospec(i32 %53, i32 %56)
  store i32 %57, i32* %10, align 4
  %58 = load i32, i32* %11, align 4
  %59 = icmp eq i32 %58, 255
  br i1 %59, label %60, label %108

60:                                               ; preds = %52
  %61 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %62 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %61, i32 0, i32 1
  %63 = load %struct.TYPE_4__*, %struct.TYPE_4__** %62, align 8
  %64 = load i32, i32* %10, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = icmp sge i32 %68, 0
  br i1 %69, label %70, label %108

70:                                               ; preds = %60
  %71 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %72 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %71, i32 0, i32 1
  %73 = load %struct.TYPE_4__*, %struct.TYPE_4__** %72, align 8
  %74 = load i32, i32* %10, align 4
  %75 = sext i32 %74 to i64
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i64 %75
  %77 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %76, i32 0, i32 1
  %78 = load i32, i32* %77, align 4
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %80, label %82

80:                                               ; preds = %70
  %81 = load i32, i32* @SNDRV_SEQ_EVENT_KEYPRESS, align 4
  store i32 %81, i32* %15, align 4
  br label %84

82:                                               ; preds = %70
  %83 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  store i32 %83, i32* %15, align 4
  br label %84

84:                                               ; preds = %82, %80
  %85 = load i32, i32* %12, align 4
  %86 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %87 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %86, i32 0, i32 1
  %88 = load %struct.TYPE_4__*, %struct.TYPE_4__** %87, align 8
  %89 = load i32, i32* %10, align 4
  %90 = sext i32 %89 to i64
  %91 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %88, i64 %90
  %92 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %91, i32 0, i32 1
  store i32 %85, i32* %92, align 4
  %93 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* %15, align 4
  %96 = load i32, i32* %10, align 4
  %97 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %98 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %97, i32 0, i32 1
  %99 = load %struct.TYPE_4__*, %struct.TYPE_4__** %98, align 8
  %100 = load i32, i32* %10, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i64 %101
  %103 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %12, align 4
  %106 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %107 = call i32 @set_note_event(%struct.seq_oss_devinfo* %93, i32 %94, i32 %95, i32 %96, i32 %104, i32 %105, %struct.snd_seq_event* %106)
  store i32 %107, i32* %7, align 4
  br label %216

108:                                              ; preds = %60, %52
  %109 = load i32, i32* %11, align 4
  %110 = icmp sge i32 %109, 128
  br i1 %110, label %111, label %114

111:                                              ; preds = %108
  %112 = load i32, i32* @EINVAL, align 4
  %113 = sub nsw i32 0, %112
  store i32 %113, i32* %7, align 4
  br label %216

114:                                              ; preds = %108
  br label %115

115:                                              ; preds = %114
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %118 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %117, i32 0, i32 1
  %119 = load %struct.TYPE_4__*, %struct.TYPE_4__** %118, align 8
  %120 = load i32, i32* %10, align 4
  %121 = sext i32 %120 to i64
  %122 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %119, i64 %121
  %123 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = icmp ne i32 %116, %124
  br i1 %125, label %126, label %151

126:                                              ; preds = %115
  %127 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %128 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %127, i32 0, i32 1
  %129 = load %struct.TYPE_4__*, %struct.TYPE_4__** %128, align 8
  %130 = load i32, i32* %10, align 4
  %131 = sext i32 %130 to i64
  %132 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %129, i64 %131
  %133 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %132, i32 0, i32 0
  %134 = load i32, i32* %133, align 4
  %135 = icmp sge i32 %134, 0
  br i1 %135, label %136, label %151

136:                                              ; preds = %126
  %137 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %138 = load i32, i32* %9, align 4
  %139 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEOFF, align 4
  %140 = load i32, i32* %10, align 4
  %141 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %142 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %141, i32 0, i32 1
  %143 = load %struct.TYPE_4__*, %struct.TYPE_4__** %142, align 8
  %144 = load i32, i32* %10, align 4
  %145 = sext i32 %144 to i64
  %146 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %143, i64 %145
  %147 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %146, i32 0, i32 0
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %150 = call i32 @set_note_event(%struct.seq_oss_devinfo* %137, i32 %138, i32 %139, i32 %140, i32 %148, i32 0, %struct.snd_seq_event* %149)
  br label %151

151:                                              ; preds = %136, %126, %115
  %152 = load i32, i32* %11, align 4
  %153 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %154 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %153, i32 0, i32 1
  %155 = load %struct.TYPE_4__*, %struct.TYPE_4__** %154, align 8
  %156 = load i32, i32* %10, align 4
  %157 = sext i32 %156 to i64
  %158 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %155, i64 %157
  %159 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %158, i32 0, i32 0
  store i32 %152, i32* %159, align 4
  %160 = load i32, i32* %12, align 4
  %161 = load %struct.seq_oss_synthinfo*, %struct.seq_oss_synthinfo** %14, align 8
  %162 = getelementptr inbounds %struct.seq_oss_synthinfo, %struct.seq_oss_synthinfo* %161, i32 0, i32 1
  %163 = load %struct.TYPE_4__*, %struct.TYPE_4__** %162, align 8
  %164 = load i32, i32* %10, align 4
  %165 = sext i32 %164 to i64
  %166 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %163, i64 %165
  %167 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %166, i32 0, i32 1
  store i32 %160, i32* %167, align 4
  %168 = load i32, i32* %12, align 4
  %169 = icmp ne i32 %168, 0
  br i1 %169, label %170, label %179

170:                                              ; preds = %151
  %171 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %172 = load i32, i32* %9, align 4
  %173 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %174 = load i32, i32* %10, align 4
  %175 = load i32, i32* %11, align 4
  %176 = load i32, i32* %12, align 4
  %177 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %178 = call i32 @set_note_event(%struct.seq_oss_devinfo* %171, i32 %172, i32 %173, i32 %174, i32 %175, i32 %176, %struct.snd_seq_event* %177)
  store i32 %178, i32* %7, align 4
  br label %216

179:                                              ; preds = %151
  %180 = load i32, i32* @EINVAL, align 4
  %181 = sub nsw i32 0, %180
  store i32 %181, i32* %7, align 4
  br label %216

182:                                              ; preds = %24
  %183 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %184 = load i32, i32* %9, align 4
  %185 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %186 = load i32, i32* %10, align 4
  %187 = load i32, i32* %11, align 4
  %188 = load i32, i32* %12, align 4
  %189 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %190 = call i32 @set_note_event(%struct.seq_oss_devinfo* %183, i32 %184, i32 %185, i32 %186, i32 %187, i32 %188, %struct.snd_seq_event* %189)
  store i32 %190, i32* %7, align 4
  br label %216

191:                                              ; preds = %24
  %192 = load i32, i32* %11, align 4
  %193 = icmp sge i32 %192, 128
  br i1 %193, label %194, label %204

194:                                              ; preds = %191
  %195 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %196 = load i32, i32* %9, align 4
  %197 = load i32, i32* @SNDRV_SEQ_EVENT_KEYPRESS, align 4
  %198 = load i32, i32* %10, align 4
  %199 = load i32, i32* %11, align 4
  %200 = sub nsw i32 %199, 128
  %201 = load i32, i32* %12, align 4
  %202 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %203 = call i32 @set_note_event(%struct.seq_oss_devinfo* %195, i32 %196, i32 %197, i32 %198, i32 %200, i32 %201, %struct.snd_seq_event* %202)
  store i32 %203, i32* %7, align 4
  br label %216

204:                                              ; preds = %191
  %205 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %8, align 8
  %206 = load i32, i32* %9, align 4
  %207 = load i32, i32* @SNDRV_SEQ_EVENT_NOTEON, align 4
  %208 = load i32, i32* %10, align 4
  %209 = load i32, i32* %11, align 4
  %210 = load i32, i32* %12, align 4
  %211 = load %struct.snd_seq_event*, %struct.snd_seq_event** %13, align 8
  %212 = call i32 @set_note_event(%struct.seq_oss_devinfo* %205, i32 %206, i32 %207, i32 %208, i32 %209, i32 %210, %struct.snd_seq_event* %211)
  store i32 %212, i32* %7, align 4
  br label %216

213:                                              ; preds = %24
  %214 = load i32, i32* @EINVAL, align 4
  %215 = sub nsw i32 0, %214
  store i32 %215, i32* %7, align 4
  br label %216

216:                                              ; preds = %213, %204, %194, %182, %179, %170, %111, %84, %43, %21
  %217 = load i32, i32* %7, align 4
  ret i32 %217
}

declare dso_local %struct.seq_oss_synthinfo* @snd_seq_oss_synth_info(%struct.seq_oss_devinfo*, i32) #1

declare dso_local i32 @set_note_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @array_index_nospec(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
