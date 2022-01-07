; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_remove.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_midi.c_snd_seq_midisynth_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_midisynth_client = type { i32*, i64, i32, %struct.seq_midisynth_client** }
%struct.device = type { i32 }
%struct.snd_seq_device = type { i32, %struct.snd_card* }
%struct.snd_card = type { i64 }
%struct.seq_midisynth = type { i32*, i64, i32, %struct.seq_midisynth** }

@register_mutex = common dso_local global i32 0, align 4
@synths = common dso_local global %struct.seq_midisynth_client** null, align 8
@ENODEV = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_seq_midisynth_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_midisynth_remove(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.seq_midisynth_client*, align 8
  %6 = alloca %struct.seq_midisynth*, align 8
  %7 = alloca %struct.snd_card*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %3, align 8
  %11 = load %struct.device*, %struct.device** %3, align 8
  %12 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %11)
  store %struct.snd_seq_device* %12, %struct.snd_seq_device** %4, align 8
  %13 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %14 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %13, i32 0, i32 1
  %15 = load %struct.snd_card*, %struct.snd_card** %14, align 8
  store %struct.snd_card* %15, %struct.snd_card** %7, align 8
  %16 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %17 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  store i32 %18, i32* %8, align 4
  %19 = call i32 @mutex_lock(i32* @register_mutex)
  %20 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** @synths, align 8
  %21 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %22 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %20, i64 %23
  %25 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %24, align 8
  store %struct.seq_midisynth_client* %25, %struct.seq_midisynth_client** %5, align 8
  %26 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %27 = icmp eq %struct.seq_midisynth_client* %26, null
  br i1 %27, label %37, label %28

28:                                               ; preds = %1
  %29 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %30 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %29, i32 0, i32 3
  %31 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %30, align 8
  %32 = load i32, i32* %8, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %31, i64 %33
  %35 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %34, align 8
  %36 = icmp eq %struct.seq_midisynth_client* %35, null
  br i1 %36, label %37, label %41

37:                                               ; preds = %28, %1
  %38 = call i32 @mutex_unlock(i32* @register_mutex)
  %39 = load i32, i32* @ENODEV, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %2, align 4
  br label %109

41:                                               ; preds = %28
  %42 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %43 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %42, i32 0, i32 0
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %8, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  store i32 %48, i32* %10, align 4
  %49 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %50 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %49, i32 0, i32 0
  %51 = load i32*, i32** %50, align 8
  %52 = load i32, i32* %8, align 4
  %53 = sext i32 %52 to i64
  %54 = getelementptr inbounds i32, i32* %51, i64 %53
  store i32 0, i32* %54, align 4
  %55 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %56 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %55, i32 0, i32 3
  %57 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %56, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %57, i64 %59
  %61 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %60, align 8
  %62 = bitcast %struct.seq_midisynth_client* %61 to %struct.seq_midisynth*
  store %struct.seq_midisynth* %62, %struct.seq_midisynth** %6, align 8
  %63 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %64 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %63, i32 0, i32 3
  %65 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** %64, align 8
  %66 = load i32, i32* %8, align 4
  %67 = sext i32 %66 to i64
  %68 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %65, i64 %67
  store %struct.seq_midisynth_client* null, %struct.seq_midisynth_client** %68, align 8
  store i32 0, i32* %9, align 4
  br label %69

69:                                               ; preds = %80, %41
  %70 = load i32, i32* %9, align 4
  %71 = load i32, i32* %10, align 4
  %72 = icmp slt i32 %70, %71
  br i1 %72, label %73, label %83

73:                                               ; preds = %69
  %74 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %75 = load i32, i32* %9, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.seq_midisynth, %struct.seq_midisynth* %74, i64 %76
  %78 = bitcast %struct.seq_midisynth* %77 to %struct.seq_midisynth_client*
  %79 = call i32 @snd_seq_midisynth_delete(%struct.seq_midisynth_client* %78)
  br label %80

80:                                               ; preds = %73
  %81 = load i32, i32* %9, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %9, align 4
  br label %69

83:                                               ; preds = %69
  %84 = load %struct.seq_midisynth*, %struct.seq_midisynth** %6, align 8
  %85 = bitcast %struct.seq_midisynth* %84 to %struct.seq_midisynth_client*
  %86 = call i32 @kfree(%struct.seq_midisynth_client* %85)
  %87 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %88 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %87, i32 0, i32 1
  %89 = load i64, i64* %88, align 8
  %90 = add nsw i64 %89, -1
  store i64 %90, i64* %88, align 8
  %91 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %92 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp sle i64 %93, 0
  br i1 %94, label %95, label %107

95:                                               ; preds = %83
  %96 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %97 = getelementptr inbounds %struct.seq_midisynth_client, %struct.seq_midisynth_client* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 8
  %99 = call i32 @snd_seq_delete_kernel_client(i32 %98)
  %100 = load %struct.seq_midisynth_client**, %struct.seq_midisynth_client*** @synths, align 8
  %101 = load %struct.snd_card*, %struct.snd_card** %7, align 8
  %102 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %101, i32 0, i32 0
  %103 = load i64, i64* %102, align 8
  %104 = getelementptr inbounds %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %100, i64 %103
  store %struct.seq_midisynth_client* null, %struct.seq_midisynth_client** %104, align 8
  %105 = load %struct.seq_midisynth_client*, %struct.seq_midisynth_client** %5, align 8
  %106 = call i32 @kfree(%struct.seq_midisynth_client* %105)
  br label %107

107:                                              ; preds = %95, %83
  %108 = call i32 @mutex_unlock(i32* @register_mutex)
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %107, %37
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @snd_seq_midisynth_delete(%struct.seq_midisynth_client*) #1

declare dso_local i32 @kfree(%struct.seq_midisynth_client*) #1

declare dso_local i32 @snd_seq_delete_kernel_client(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
