; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_keep_resources.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/dice/extr_dice-stream.c_keep_resources.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_dice = type { i32 }
%struct.amdtp_stream = type { i32 }
%struct.fw_iso_resources = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_dice*, %struct.amdtp_stream*, %struct.fw_iso_resources*, i32, i32, i32)* @keep_resources to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @keep_resources(%struct.snd_dice* %0, %struct.amdtp_stream* %1, %struct.fw_iso_resources* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.snd_dice*, align 8
  %9 = alloca %struct.amdtp_stream*, align 8
  %10 = alloca %struct.fw_iso_resources*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_dice* %0, %struct.snd_dice** %8, align 8
  store %struct.amdtp_stream* %1, %struct.amdtp_stream** %9, align 8
  store %struct.fw_iso_resources* %2, %struct.fw_iso_resources** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* %11, align 4
  %18 = icmp ugt i32 %17, 96000
  %19 = zext i1 %18 to i32
  store i32 %19, i32* %14, align 4
  %20 = load i32, i32* %14, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %27

22:                                               ; preds = %6
  %23 = load i32, i32* %11, align 4
  %24 = udiv i32 %23, 2
  store i32 %24, i32* %11, align 4
  %25 = load i32, i32* %12, align 4
  %26 = mul i32 %25, 2
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %22, %6
  %28 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* %12, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load i32, i32* %14, align 4
  %33 = call i32 @amdtp_am824_set_parameters(%struct.amdtp_stream* %28, i32 %29, i32 %30, i32 %31, i32 %32)
  store i32 %33, i32* %16, align 4
  %34 = load i32, i32* %16, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %27
  %37 = load i32, i32* %16, align 4
  store i32 %37, i32* %7, align 4
  br label %77

38:                                               ; preds = %27
  %39 = load i32, i32* %14, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %41, label %66

41:                                               ; preds = %38
  %42 = load i32, i32* %12, align 4
  %43 = udiv i32 %42, 2
  store i32 %43, i32* %12, align 4
  store i32 0, i32* %15, align 4
  br label %44

44:                                               ; preds = %62, %41
  %45 = load i32, i32* %15, align 4
  %46 = load i32, i32* %12, align 4
  %47 = icmp ult i32 %45, %46
  br i1 %47, label %48, label %65

48:                                               ; preds = %44
  %49 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %50 = load i32, i32* %15, align 4
  %51 = load i32, i32* %15, align 4
  %52 = mul i32 %51, 2
  %53 = call i32 @amdtp_am824_set_pcm_position(%struct.amdtp_stream* %49, i32 %50, i32 %52)
  %54 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %55 = load i32, i32* %15, align 4
  %56 = load i32, i32* %12, align 4
  %57 = add i32 %55, %56
  %58 = load i32, i32* %15, align 4
  %59 = mul i32 %58, 2
  %60 = add i32 %59, 1
  %61 = call i32 @amdtp_am824_set_pcm_position(%struct.amdtp_stream* %54, i32 %57, i32 %60)
  br label %62

62:                                               ; preds = %48
  %63 = load i32, i32* %15, align 4
  %64 = add i32 %63, 1
  store i32 %64, i32* %15, align 4
  br label %44

65:                                               ; preds = %44
  br label %66

66:                                               ; preds = %65, %38
  %67 = load %struct.fw_iso_resources*, %struct.fw_iso_resources** %10, align 8
  %68 = load %struct.amdtp_stream*, %struct.amdtp_stream** %9, align 8
  %69 = call i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream* %68)
  %70 = load %struct.snd_dice*, %struct.snd_dice** %8, align 8
  %71 = getelementptr inbounds %struct.snd_dice, %struct.snd_dice* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = call %struct.TYPE_2__* @fw_parent_device(i32 %72)
  %74 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = call i32 @fw_iso_resources_allocate(%struct.fw_iso_resources* %67, i32 %69, i32 %75)
  store i32 %76, i32* %7, align 4
  br label %77

77:                                               ; preds = %66, %36
  %78 = load i32, i32* %7, align 4
  ret i32 %78
}

declare dso_local i32 @amdtp_am824_set_parameters(%struct.amdtp_stream*, i32, i32, i32, i32) #1

declare dso_local i32 @amdtp_am824_set_pcm_position(%struct.amdtp_stream*, i32, i32) #1

declare dso_local i32 @fw_iso_resources_allocate(%struct.fw_iso_resources*, i32, i32) #1

declare dso_local i32 @amdtp_stream_get_max_payload(%struct.amdtp_stream*) #1

declare dso_local %struct.TYPE_2__* @fw_parent_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
