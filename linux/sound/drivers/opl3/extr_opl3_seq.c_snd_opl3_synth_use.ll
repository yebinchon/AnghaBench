; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_use.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_seq.c_snd_opl3_synth_use.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_port_subscribe = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i64 }
%struct.snd_opl3 = type { i32, i32, i32 (%struct.snd_opl3*, i32, i32)*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@use_internal_drums = common dso_local global i64 0, align 8
@SNDRV_OPL3_ST_NOT_AVAIL = common dso_local global i32 0, align 4
@OPL3_PERCUSSION_ENABLE = common dso_local global i32 0, align 4
@OPL3_LEFT = common dso_local global i32 0, align 4
@OPL3_REG_PERCUSSION = common dso_local global i32 0, align 4
@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i64 0, align 8
@SNDRV_OPL3_MODE_SEQ = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, %struct.snd_seq_port_subscribe*)* @snd_opl3_synth_use to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_synth_use(i8* %0, %struct.snd_seq_port_subscribe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  %5 = alloca %struct.snd_seq_port_subscribe*, align 8
  %6 = alloca %struct.snd_opl3*, align 8
  %7 = alloca i32, align 4
  store i8* %0, i8** %4, align 8
  store %struct.snd_seq_port_subscribe* %1, %struct.snd_seq_port_subscribe** %5, align 8
  %8 = load i8*, i8** %4, align 8
  %9 = bitcast i8* %8 to %struct.snd_opl3*
  store %struct.snd_opl3* %9, %struct.snd_opl3** %6, align 8
  %10 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %11 = call i32 @snd_opl3_synth_setup(%struct.snd_opl3* %10)
  store i32 %11, i32* %7, align 4
  %12 = icmp slt i32 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i32, i32* %7, align 4
  store i32 %14, i32* %3, align 4
  br label %72

15:                                               ; preds = %2
  %16 = load i64, i64* @use_internal_drums, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %51

18:                                               ; preds = %15
  %19 = load i32, i32* @SNDRV_OPL3_ST_NOT_AVAIL, align 4
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %21 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %20, i32 0, i32 3
  %22 = load %struct.TYPE_3__*, %struct.TYPE_3__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %22, i64 8
  %24 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %23, i32 0, i32 0
  store i32 %19, i32* %24, align 4
  %25 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %26 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %25, i32 0, i32 3
  %27 = load %struct.TYPE_3__*, %struct.TYPE_3__** %26, align 8
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %27, i64 7
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  store i32 %19, i32* %29, align 4
  %30 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %31 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %30, i32 0, i32 3
  %32 = load %struct.TYPE_3__*, %struct.TYPE_3__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %32, i64 6
  %34 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i32 0, i32 0
  store i32 %19, i32* %34, align 4
  %35 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %36 = call i32 @snd_opl3_load_drums(%struct.snd_opl3* %35)
  %37 = load i32, i32* @OPL3_PERCUSSION_ENABLE, align 4
  %38 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %39 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %38, i32 0, i32 0
  store i32 %37, i32* %39, align 8
  %40 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %41 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %40, i32 0, i32 2
  %42 = load i32 (%struct.snd_opl3*, i32, i32)*, i32 (%struct.snd_opl3*, i32, i32)** %41, align 8
  %43 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %44 = load i32, i32* @OPL3_LEFT, align 4
  %45 = load i32, i32* @OPL3_REG_PERCUSSION, align 4
  %46 = or i32 %44, %45
  %47 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %48 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 %42(%struct.snd_opl3* %43, i32 %46, i32 %49)
  br label %54

51:                                               ; preds = %15
  %52 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %53 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %52, i32 0, i32 0
  store i32 0, i32* %53, align 8
  br label %54

54:                                               ; preds = %51, %18
  %55 = load %struct.snd_seq_port_subscribe*, %struct.snd_seq_port_subscribe** %5, align 8
  %56 = getelementptr inbounds %struct.snd_seq_port_subscribe, %struct.snd_seq_port_subscribe* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = load i64, i64* @SNDRV_SEQ_CLIENT_SYSTEM, align 8
  %60 = icmp ne i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %54
  %62 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %63 = call i32 @snd_opl3_synth_use_inc(%struct.snd_opl3* %62)
  store i32 %63, i32* %7, align 4
  %64 = icmp slt i32 %63, 0
  br i1 %64, label %65, label %67

65:                                               ; preds = %61
  %66 = load i32, i32* %7, align 4
  store i32 %66, i32* %3, align 4
  br label %72

67:                                               ; preds = %61
  br label %68

68:                                               ; preds = %67, %54
  %69 = load i32, i32* @SNDRV_OPL3_MODE_SEQ, align 4
  %70 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %71 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %70, i32 0, i32 1
  store i32 %69, i32* %71, align 4
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %68, %65, %13
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @snd_opl3_synth_setup(%struct.snd_opl3*) #1

declare dso_local i32 @snd_opl3_load_drums(%struct.snd_opl3*) #1

declare dso_local i32 @snd_opl3_synth_use_inc(%struct.snd_opl3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
