; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_open_seq_oss.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/opl3/extr_opl3_oss.c_snd_opl3_open_seq_oss.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_oss_arg = type { %struct.TYPE_3__, %struct.snd_opl3* }
%struct.TYPE_3__ = type { i32, i32 }
%struct.snd_opl3 = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32, i32 }

@ENXIO = common dso_local global i32 0, align 4
@SNDRV_OPL3_MODE_SYNTH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_oss_arg*, i8*)* @snd_opl3_open_seq_oss to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_opl3_open_seq_oss(%struct.snd_seq_oss_arg* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_oss_arg*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_opl3*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_seq_oss_arg* %0, %struct.snd_seq_oss_arg** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load i8*, i8** %5, align 8
  %9 = bitcast i8* %8 to %struct.snd_opl3*
  store %struct.snd_opl3* %9, %struct.snd_opl3** %6, align 8
  %10 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %4, align 8
  %11 = icmp ne %struct.snd_seq_oss_arg* %10, null
  %12 = xor i1 %11, true
  %13 = zext i1 %12 to i32
  %14 = call i64 @snd_BUG_ON(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %19

16:                                               ; preds = %2
  %17 = load i32, i32* @ENXIO, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %3, align 4
  br label %54

19:                                               ; preds = %2
  %20 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %21 = call i32 @snd_opl3_synth_setup(%struct.snd_opl3* %20)
  store i32 %21, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %25

23:                                               ; preds = %19
  %24 = load i32, i32* %7, align 4
  store i32 %24, i32* %3, align 4
  br label %54

25:                                               ; preds = %19
  %26 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %27 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %4, align 8
  %28 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %27, i32 0, i32 1
  store %struct.snd_opl3* %26, %struct.snd_opl3** %28, align 8
  %29 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %30 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %29, i32 0, i32 1
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %4, align 8
  %35 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 1
  store i32 %33, i32* %36, align 4
  %37 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %38 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %37, i32 0, i32 1
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.snd_seq_oss_arg*, %struct.snd_seq_oss_arg** %4, align 8
  %43 = getelementptr inbounds %struct.snd_seq_oss_arg, %struct.snd_seq_oss_arg* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %43, i32 0, i32 0
  store i32 %41, i32* %44, align 8
  %45 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %46 = call i32 @snd_opl3_synth_use_inc(%struct.snd_opl3* %45)
  store i32 %46, i32* %7, align 4
  %47 = icmp slt i32 %46, 0
  br i1 %47, label %48, label %50

48:                                               ; preds = %25
  %49 = load i32, i32* %7, align 4
  store i32 %49, i32* %3, align 4
  br label %54

50:                                               ; preds = %25
  %51 = load i32, i32* @SNDRV_OPL3_MODE_SYNTH, align 4
  %52 = load %struct.snd_opl3*, %struct.snd_opl3** %6, align 8
  %53 = getelementptr inbounds %struct.snd_opl3, %struct.snd_opl3* %52, i32 0, i32 0
  store i32 %51, i32* %53, align 8
  store i32 0, i32* %3, align 4
  br label %54

54:                                               ; preds = %50, %48, %23, %16
  %55 = load i32, i32* %3, align 4
  ret i32 %55
}

declare dso_local i64 @snd_BUG_ON(i32) #1

declare dso_local i32 @snd_opl3_synth_setup(%struct.snd_opl3*) #1

declare dso_local i32 @snd_opl3_synth_use_inc(%struct.snd_opl3*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
