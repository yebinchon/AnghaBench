; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_extended_event.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/oss/extr_seq_oss_event.c_extended_event.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_oss_devinfo = type { i32 }
%union.evrec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32, i32, i64, i64 }
%struct.snd_seq_event = type { i32 }

@SNDRV_SEQ_EVENT_PGMCHANGE = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CHANPRESS = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CONTROLLER = common dso_local global i32 0, align 4
@CTL_PAN = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_PITCHBEND = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_REGPARAM = common dso_local global i32 0, align 4
@SNDRV_SEQ_EVENT_CONTROL14 = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.seq_oss_devinfo*, %union.evrec*, %struct.snd_seq_event*)* @extended_event to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @extended_event(%struct.seq_oss_devinfo* %0, %union.evrec* %1, %struct.snd_seq_event* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.seq_oss_devinfo*, align 8
  %6 = alloca %union.evrec*, align 8
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  store %struct.seq_oss_devinfo* %0, %struct.seq_oss_devinfo** %5, align 8
  store %union.evrec* %1, %union.evrec** %6, align 8
  store %struct.snd_seq_event* %2, %struct.snd_seq_event** %7, align 8
  %9 = load %union.evrec*, %union.evrec** %6, align 8
  %10 = bitcast %union.evrec* %9 to %struct.TYPE_2__*
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %189 [
    i32 131, label %13
    i32 130, label %33
    i32 129, label %53
    i32 134, label %70
    i32 133, label %87
    i32 132, label %111
    i32 128, label %178
  ]

13:                                               ; preds = %3
  %14 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %15 = load %union.evrec*, %union.evrec** %6, align 8
  %16 = bitcast %union.evrec* %15 to %struct.TYPE_2__*
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 8
  %19 = load %union.evrec*, %union.evrec** %6, align 8
  %20 = bitcast %union.evrec* %19 to %struct.TYPE_2__*
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 4
  %23 = load %union.evrec*, %union.evrec** %6, align 8
  %24 = bitcast %union.evrec* %23 to %struct.TYPE_2__*
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %union.evrec*, %union.evrec** %6, align 8
  %28 = bitcast %union.evrec* %27 to %struct.TYPE_2__*
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 4
  %30 = load i64, i64* %29, align 8
  %31 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %32 = call i32 @note_off_event(%struct.seq_oss_devinfo* %14, i32 %18, i32 %22, i32 %26, i64 %30, %struct.snd_seq_event* %31)
  store i32 %32, i32* %4, align 4
  br label %192

33:                                               ; preds = %3
  %34 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %35 = load %union.evrec*, %union.evrec** %6, align 8
  %36 = bitcast %union.evrec* %35 to %struct.TYPE_2__*
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 2
  %38 = load i32, i32* %37, align 8
  %39 = load %union.evrec*, %union.evrec** %6, align 8
  %40 = bitcast %union.evrec* %39 to %struct.TYPE_2__*
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 3
  %42 = load i32, i32* %41, align 4
  %43 = load %union.evrec*, %union.evrec** %6, align 8
  %44 = bitcast %union.evrec* %43 to %struct.TYPE_2__*
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %union.evrec*, %union.evrec** %6, align 8
  %48 = bitcast %union.evrec* %47 to %struct.TYPE_2__*
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 4
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %52 = call i32 @note_on_event(%struct.seq_oss_devinfo* %34, i32 %38, i32 %42, i32 %46, i64 %50, %struct.snd_seq_event* %51)
  store i32 %52, i32* %4, align 4
  br label %192

53:                                               ; preds = %3
  %54 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %55 = load %union.evrec*, %union.evrec** %6, align 8
  %56 = bitcast %union.evrec* %55 to %struct.TYPE_2__*
  %57 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %56, i32 0, i32 2
  %58 = load i32, i32* %57, align 8
  %59 = load i32, i32* @SNDRV_SEQ_EVENT_PGMCHANGE, align 4
  %60 = load %union.evrec*, %union.evrec** %6, align 8
  %61 = bitcast %union.evrec* %60 to %struct.TYPE_2__*
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = load %union.evrec*, %union.evrec** %6, align 8
  %65 = bitcast %union.evrec* %64 to %struct.TYPE_2__*
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %69 = call i32 @set_control_event(%struct.seq_oss_devinfo* %54, i32 %58, i32 %59, i32 %63, i32 0, i32 %67, %struct.snd_seq_event* %68)
  store i32 %69, i32* %4, align 4
  br label %192

70:                                               ; preds = %3
  %71 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %72 = load %union.evrec*, %union.evrec** %6, align 8
  %73 = bitcast %union.evrec* %72 to %struct.TYPE_2__*
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 2
  %75 = load i32, i32* %74, align 8
  %76 = load i32, i32* @SNDRV_SEQ_EVENT_CHANPRESS, align 4
  %77 = load %union.evrec*, %union.evrec** %6, align 8
  %78 = bitcast %union.evrec* %77 to %struct.TYPE_2__*
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 3
  %80 = load i32, i32* %79, align 4
  %81 = load %union.evrec*, %union.evrec** %6, align 8
  %82 = bitcast %union.evrec* %81 to %struct.TYPE_2__*
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 1
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %86 = call i32 @set_control_event(%struct.seq_oss_devinfo* %71, i32 %75, i32 %76, i32 %80, i32 0, i32 %84, %struct.snd_seq_event* %85)
  store i32 %86, i32* %4, align 4
  br label %192

87:                                               ; preds = %3
  %88 = load %union.evrec*, %union.evrec** %6, align 8
  %89 = bitcast %union.evrec* %88 to %struct.TYPE_2__*
  %90 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = trunc i32 %91 to i8
  %93 = sext i8 %92 to i32
  store i32 %93, i32* %8, align 4
  %94 = load i32, i32* %8, align 4
  %95 = add nsw i32 %94, 128
  %96 = sdiv i32 %95, 2
  store i32 %96, i32* %8, align 4
  %97 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %98 = load %union.evrec*, %union.evrec** %6, align 8
  %99 = bitcast %union.evrec* %98 to %struct.TYPE_2__*
  %100 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %99, i32 0, i32 2
  %101 = load i32, i32* %100, align 8
  %102 = load i32, i32* @SNDRV_SEQ_EVENT_CONTROLLER, align 4
  %103 = load %union.evrec*, %union.evrec** %6, align 8
  %104 = bitcast %union.evrec* %103 to %struct.TYPE_2__*
  %105 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %104, i32 0, i32 3
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* @CTL_PAN, align 4
  %108 = load i32, i32* %8, align 4
  %109 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %110 = call i32 @set_control_event(%struct.seq_oss_devinfo* %97, i32 %101, i32 %102, i32 %106, i32 %107, i32 %108, %struct.snd_seq_event* %109)
  store i32 %110, i32* %4, align 4
  br label %192

111:                                              ; preds = %3
  %112 = load %union.evrec*, %union.evrec** %6, align 8
  %113 = bitcast %union.evrec* %112 to %struct.TYPE_2__*
  %114 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %113, i32 0, i32 5
  %115 = load i64, i64* %114, align 8
  %116 = trunc i64 %115 to i16
  %117 = sext i16 %116 to i32
  %118 = shl i32 %117, 8
  %119 = load %union.evrec*, %union.evrec** %6, align 8
  %120 = bitcast %union.evrec* %119 to %struct.TYPE_2__*
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 4
  %122 = load i64, i64* %121, align 8
  %123 = trunc i64 %122 to i16
  %124 = sext i16 %123 to i32
  %125 = or i32 %118, %124
  store i32 %125, i32* %8, align 4
  %126 = load %union.evrec*, %union.evrec** %6, align 8
  %127 = bitcast %union.evrec* %126 to %struct.TYPE_2__*
  %128 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  switch i32 %129, label %160 [
    i32 136, label %130
    i32 135, label %144
  ]

130:                                              ; preds = %111
  %131 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %132 = load %union.evrec*, %union.evrec** %6, align 8
  %133 = bitcast %union.evrec* %132 to %struct.TYPE_2__*
  %134 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %133, i32 0, i32 2
  %135 = load i32, i32* %134, align 8
  %136 = load i32, i32* @SNDRV_SEQ_EVENT_PITCHBEND, align 4
  %137 = load %union.evrec*, %union.evrec** %6, align 8
  %138 = bitcast %union.evrec* %137 to %struct.TYPE_2__*
  %139 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %138, i32 0, i32 3
  %140 = load i32, i32* %139, align 4
  %141 = load i32, i32* %8, align 4
  %142 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %143 = call i32 @set_control_event(%struct.seq_oss_devinfo* %131, i32 %135, i32 %136, i32 %140, i32 0, i32 %141, %struct.snd_seq_event* %142)
  store i32 %143, i32* %4, align 4
  br label %192

144:                                              ; preds = %111
  %145 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %146 = load %union.evrec*, %union.evrec** %6, align 8
  %147 = bitcast %union.evrec* %146 to %struct.TYPE_2__*
  %148 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %147, i32 0, i32 2
  %149 = load i32, i32* %148, align 8
  %150 = load i32, i32* @SNDRV_SEQ_EVENT_REGPARAM, align 4
  %151 = load %union.evrec*, %union.evrec** %6, align 8
  %152 = bitcast %union.evrec* %151 to %struct.TYPE_2__*
  %153 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %152, i32 0, i32 3
  %154 = load i32, i32* %153, align 4
  %155 = load i32, i32* %8, align 4
  %156 = mul nsw i32 %155, 128
  %157 = sdiv i32 %156, 100
  %158 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %159 = call i32 @set_control_event(%struct.seq_oss_devinfo* %145, i32 %149, i32 %150, i32 %154, i32 0, i32 %157, %struct.snd_seq_event* %158)
  store i32 %159, i32* %4, align 4
  br label %192

160:                                              ; preds = %111
  %161 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %162 = load %union.evrec*, %union.evrec** %6, align 8
  %163 = bitcast %union.evrec* %162 to %struct.TYPE_2__*
  %164 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %163, i32 0, i32 2
  %165 = load i32, i32* %164, align 8
  %166 = load i32, i32* @SNDRV_SEQ_EVENT_CONTROL14, align 4
  %167 = load %union.evrec*, %union.evrec** %6, align 8
  %168 = bitcast %union.evrec* %167 to %struct.TYPE_2__*
  %169 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %168, i32 0, i32 3
  %170 = load i32, i32* %169, align 4
  %171 = load %union.evrec*, %union.evrec** %6, align 8
  %172 = bitcast %union.evrec* %171 to %struct.TYPE_2__*
  %173 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load i32, i32* %8, align 4
  %176 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %177 = call i32 @set_control_event(%struct.seq_oss_devinfo* %161, i32 %165, i32 %166, i32 %170, i32 %174, i32 %175, %struct.snd_seq_event* %176)
  store i32 %177, i32* %4, align 4
  br label %192

178:                                              ; preds = %3
  %179 = load %struct.seq_oss_devinfo*, %struct.seq_oss_devinfo** %5, align 8
  %180 = load %union.evrec*, %union.evrec** %6, align 8
  %181 = bitcast %union.evrec* %180 to %struct.TYPE_2__*
  %182 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %181, i32 0, i32 2
  %183 = load i32, i32* %182, align 8
  %184 = load %union.evrec*, %union.evrec** %6, align 8
  %185 = bitcast %union.evrec* %184 to i32*
  %186 = load i32, i32* %185, align 8
  %187 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %188 = call i32 @snd_seq_oss_synth_raw_event(%struct.seq_oss_devinfo* %179, i32 %183, i32 %186, %struct.snd_seq_event* %187)
  store i32 %188, i32* %4, align 4
  br label %192

189:                                              ; preds = %3
  %190 = load i32, i32* @EINVAL, align 4
  %191 = sub nsw i32 0, %190
  store i32 %191, i32* %4, align 4
  br label %192

192:                                              ; preds = %189, %178, %160, %144, %130, %87, %70, %53, %33, %13
  %193 = load i32, i32* %4, align 4
  ret i32 %193
}

declare dso_local i32 @note_off_event(%struct.seq_oss_devinfo*, i32, i32, i32, i64, %struct.snd_seq_event*) #1

declare dso_local i32 @note_on_event(%struct.seq_oss_devinfo*, i32, i32, i32, i64, %struct.snd_seq_event*) #1

declare dso_local i32 @set_control_event(%struct.seq_oss_devinfo*, i32, i32, i32, i32, i32, %struct.snd_seq_event*) #1

declare dso_local i32 @snd_seq_oss_synth_raw_event(%struct.seq_oss_devinfo*, i32, i32, %struct.snd_seq_event*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
