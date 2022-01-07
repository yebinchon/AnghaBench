; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_hda_codec_driver_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_bind.c_hda_codec_driver_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }
%struct.hda_codec = type { %struct.TYPE_6__, i32, %struct.TYPE_10__* }
%struct.TYPE_6__ = type { i32 (%struct.hda_codec.0*)* }
%struct.hda_codec.0 = type opaque
%struct.TYPE_10__ = type { %struct.TYPE_8__ }
%struct.TYPE_8__ = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { i32 (i32*)* }

@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @hda_codec_driver_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hda_codec_driver_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.hda_codec*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %5 = load %struct.device*, %struct.device** %3, align 8
  %6 = call %struct.hda_codec* @dev_to_hda_codec(%struct.device* %5)
  store %struct.hda_codec* %6, %struct.hda_codec** %4, align 8
  %7 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %8 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %7, i32 0, i32 2
  %9 = load %struct.TYPE_10__*, %struct.TYPE_10__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %9, i32 0, i32 0
  %11 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %10, i32 0, i32 0
  %12 = load %struct.TYPE_9__*, %struct.TYPE_9__** %11, align 8
  %13 = icmp ne %struct.TYPE_9__* %12, null
  br i1 %13, label %14, label %43

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %16 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %15, i32 0, i32 2
  %17 = load %struct.TYPE_10__*, %struct.TYPE_10__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load %struct.TYPE_9__*, %struct.TYPE_9__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %20, i32 0, i32 0
  %22 = load i32 (i32*)*, i32 (i32*)** %21, align 8
  %23 = icmp ne i32 (i32*)* %22, null
  %24 = xor i1 %23, true
  %25 = zext i1 %24 to i32
  %26 = call i64 @WARN_ON(i32 %25)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %31

28:                                               ; preds = %14
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %66

31:                                               ; preds = %14
  %32 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %33 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %32, i32 0, i32 2
  %34 = load %struct.TYPE_10__*, %struct.TYPE_10__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.TYPE_9__*, %struct.TYPE_9__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %37, i32 0, i32 0
  %39 = load i32 (i32*)*, i32 (i32*)** %38, align 8
  %40 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %41 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %40, i32 0, i32 1
  %42 = call i32 %39(i32* %41)
  store i32 %42, i32* %2, align 4
  br label %66

43:                                               ; preds = %1
  %44 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %45, i32 0, i32 0
  %47 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %46, align 8
  %48 = icmp ne i32 (%struct.hda_codec.0*)* %47, null
  br i1 %48, label %49, label %57

49:                                               ; preds = %43
  %50 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %51 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %50, i32 0, i32 0
  %52 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %51, i32 0, i32 0
  %53 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %52, align 8
  %54 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %55 = bitcast %struct.hda_codec* %54 to %struct.hda_codec.0*
  %56 = call i32 %53(%struct.hda_codec.0* %55)
  br label %57

57:                                               ; preds = %49, %43
  %58 = load %struct.hda_codec*, %struct.hda_codec** %4, align 8
  %59 = call i32 @snd_hda_codec_cleanup_for_unbind(%struct.hda_codec* %58)
  %60 = load %struct.device*, %struct.device** %3, align 8
  %61 = getelementptr inbounds %struct.device, %struct.device* %60, i32 0, i32 0
  %62 = load %struct.TYPE_7__*, %struct.TYPE_7__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @module_put(i32 %64)
  store i32 0, i32* %2, align 4
  br label %66

66:                                               ; preds = %57, %31, %28
  %67 = load i32, i32* %2, align 4
  ret i32 %67
}

declare dso_local %struct.hda_codec* @dev_to_hda_codec(%struct.device*) #1

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @snd_hda_codec_cleanup_for_unbind(%struct.hda_codec*) #1

declare dso_local i32 @module_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
