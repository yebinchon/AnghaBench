; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_remote_codec_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_maestro3.c_snd_m3_remote_codec_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_m3 = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@RING_BUS_CTRL_B = common dso_local global i64 0, align 8
@SECOND_CODEC_ID_MASK = common dso_local global i32 0, align 4
@M3I_DOCK_ENABLE = common dso_local global i32 0, align 4
@SDO_OUT_DEST_CTRL = common dso_local global i64 0, align 8
@COMMAND_ADDR_OUT = common dso_local global i32 0, align 4
@SDO_IN_DEST_CTRL = common dso_local global i64 0, align 8
@STATUS_ADDR_IN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_m3*, i32)* @snd_m3_remote_codec_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_m3_remote_codec_config(%struct.snd_m3* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_m3*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.snd_m3* %0, %struct.snd_m3** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %8 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp ne i32 %10, 0
  %12 = zext i1 %11 to i64
  %13 = select i1 %11, i32 1, i32 0
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %5, align 4
  %15 = sext i32 %14 to i64
  %16 = load i64, i64* @RING_BUS_CTRL_B, align 8
  %17 = add nsw i64 %15, %16
  %18 = call i32 @inw(i64 %17)
  %19 = load i32, i32* @SECOND_CODEC_ID_MASK, align 4
  %20 = xor i32 %19, -1
  %21 = and i32 %18, %20
  store i32 %21, i32* %6, align 4
  %22 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %23 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %22, i32 0, i32 1
  %24 = load %struct.TYPE_2__*, %struct.TYPE_2__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = icmp eq i32 %26, 4136
  br i1 %27, label %28, label %39

28:                                               ; preds = %2
  %29 = load %struct.snd_m3*, %struct.snd_m3** %3, align 8
  %30 = getelementptr inbounds %struct.snd_m3, %struct.snd_m3* %29, i32 0, i32 1
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp eq i32 %33, 229
  br i1 %34, label %35, label %39

35:                                               ; preds = %28
  %36 = load i32, i32* @M3I_DOCK_ENABLE, align 4
  %37 = load i32, i32* %6, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %35, %28, %2
  %40 = load i32, i32* %6, align 4
  %41 = load i32, i32* %4, align 4
  %42 = or i32 %40, %41
  %43 = load i32, i32* %5, align 4
  %44 = sext i32 %43 to i64
  %45 = load i64, i64* @RING_BUS_CTRL_B, align 8
  %46 = add nsw i64 %44, %45
  %47 = call i32 @outw(i32 %42, i64 %46)
  %48 = load i32, i32* %5, align 4
  %49 = sext i32 %48 to i64
  %50 = load i64, i64* @SDO_OUT_DEST_CTRL, align 8
  %51 = add nsw i64 %49, %50
  %52 = call i32 @inw(i64 %51)
  %53 = load i32, i32* @COMMAND_ADDR_OUT, align 4
  %54 = xor i32 %53, -1
  %55 = and i32 %52, %54
  %56 = load i32, i32* %4, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* %5, align 4
  %59 = sext i32 %58 to i64
  %60 = load i64, i64* @SDO_OUT_DEST_CTRL, align 8
  %61 = add nsw i64 %59, %60
  %62 = call i32 @outw(i32 %57, i64 %61)
  %63 = load i32, i32* %5, align 4
  %64 = sext i32 %63 to i64
  %65 = load i64, i64* @SDO_IN_DEST_CTRL, align 8
  %66 = add nsw i64 %64, %65
  %67 = call i32 @inw(i64 %66)
  %68 = load i32, i32* @STATUS_ADDR_IN, align 4
  %69 = xor i32 %68, -1
  %70 = and i32 %67, %69
  %71 = load i32, i32* %4, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* %5, align 4
  %74 = sext i32 %73 to i64
  %75 = load i64, i64* @SDO_IN_DEST_CTRL, align 8
  %76 = add nsw i64 %74, %75
  %77 = call i32 @outw(i32 %72, i64 %76)
  ret void
}

declare dso_local i32 @inw(i64) #1

declare dso_local i32 @outw(i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
