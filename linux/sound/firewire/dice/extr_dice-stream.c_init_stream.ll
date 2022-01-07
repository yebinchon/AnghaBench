; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_init_stream.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_init_stream.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32, %struct.fw_iso_resources*, %struct.amdtp_stream*, %struct.fw_iso_resources*, %struct.amdtp_stream* }
%struct.fw_iso_resources = type { i32 }
%struct.amdtp_stream = type { i32 }

@AMDTP_IN_STREAM = common dso_local global i32 0, align 4
@CIP_BLOCKING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, i32, i32)* @init_stream to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @init_stream(%struct.snd_dice* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.snd_dice*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.amdtp_stream*, align 8
  %8 = alloca %struct.fw_iso_resources*, align 8
  %9 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load i32, i32* %5, align 4
  %11 = load i32, i32* @AMDTP_IN_STREAM, align 4
  %12 = icmp eq i32 %10, %11
  br i1 %12, label %13, label %26

13:                                               ; preds = %3
  %14 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %15 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %14, i32 0, i32 4
  %16 = load %struct.amdtp_stream*, %struct.amdtp_stream** %15, align 8
  %17 = load i32, i32* %6, align 4
  %18 = zext i32 %17 to i64
  %19 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %16, i64 %18
  store %struct.amdtp_stream* %19, %struct.amdtp_stream** %7, align 8
  %20 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %21 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %20, i32 0, i32 3
  %22 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %22, i64 %24
  store %struct.fw_iso_resources* %25, %struct.fw_iso_resources** %8, align 8
  br label %39

26:                                               ; preds = %3
  %27 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %28 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %27, i32 0, i32 2
  %29 = load %struct.amdtp_stream*, %struct.amdtp_stream** %28, align 8
  %30 = load i32, i32* %6, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds %struct.amdtp_stream, %struct.amdtp_stream* %29, i64 %31
  store %struct.amdtp_stream* %32, %struct.amdtp_stream** %7, align 8
  %33 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %34 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %33, i32 0, i32 1
  %35 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %34, align 8
  %36 = load i32, i32* %6, align 4
  %37 = zext i32 %36 to i64
  %38 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %35, i64 %37
  store %struct.fw_iso_resources* %38, %struct.fw_iso_resources** %8, align 8
  br label %39

39:                                               ; preds = %26, %13
  %40 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %41 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %42 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @fw_iso_resources_init(%struct.fw_iso_resources* %40, i32 %43)
  store i32 %44, i32* %9, align 4
  %45 = load i32, i32* %9, align 4
  %46 = icmp slt i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %39
  br label %66

48:                                               ; preds = %39
  %49 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %50 = getelementptr inbounds %struct.fw_iso_resources, %struct.fw_iso_resources* %49, i32 0, i32 0
  store i32 -1, i32* %50, align 4
  %51 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %52 = load %struct.snd_dice*, %struct.snd_dice** %4, align 8
  %53 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 8
  %55 = load i32, i32* %5, align 4
  %56 = load i32, i32* @CIP_BLOCKING, align 4
  %57 = call i32 @amdtp_am824_init(%struct.amdtp_stream* %51, i32 %54, i32 %55, i32 %56)
  store i32 %57, i32* %9, align 4
  %58 = load i32, i32* %9, align 4
  %59 = icmp slt i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %48
  %61 = load %struct.amdtp_stream*, %struct.amdtp_stream** %7, align 8
  %62 = call i32 @amdtp_stream_destroy(%struct.amdtp_stream* %61)
  %63 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %8, align 8
  %64 = call i32 @fw_iso_resources_destroy(%struct.fw_iso_resources* %63)
  br label %65

65:                                               ; preds = %60, %48
  br label %66

66:                                               ; preds = %65, %47
  %67 = load i32, i32* %9, align 4
  ret i32 %67
}

declare dso_local i32 @fw_iso_resources_init(%struct.fw_iso_resources*, i32) #1

declare dso_local i32 @amdtp_am824_init(%struct.amdtp_stream*, i32, i32, i32) #1

declare dso_local i32 @amdtp_stream_destroy(%struct.amdtp_stream*) #1

declare dso_local i32 @fw_iso_resources_destroy(%struct.fw_iso_resources*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
