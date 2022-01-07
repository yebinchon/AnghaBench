; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_probe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/emu10k1/extr_emu10k1_synth.c_snd_emu10k1_synth_probe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.snd_seq_device = type { %struct.snd_emux*, i32 }
%struct.snd_emux = type { i32, i32, i32, i32, i32, i32, i64, i32, %struct.snd_emu10k1* }
%struct.snd_emu10k1 = type { i32, i32, %struct.snd_emux*, i64, i32 }
%struct.snd_emu10k1_synth_arg = type { i32, i32, i32, %struct.snd_emu10k1* }

@EINVAL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [8 x i8] c"Emu10k1\00", align 1
@snd_emu10k1_synth_get_voice = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*)* @snd_emu10k1_synth_probe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_emu10k1_synth_probe(%struct.device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.snd_seq_device*, align 8
  %5 = alloca %struct.snd_emux*, align 8
  %6 = alloca %struct.snd_emu10k1*, align 8
  %7 = alloca %struct.snd_emu10k1_synth_arg*, align 8
  %8 = alloca i64, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  %9 = load %struct.device*, %struct.device** %3, align 8
  %10 = call %struct.snd_seq_device* @to_seq_dev(%struct.device* %9)
  store %struct.snd_seq_device* %10, %struct.snd_seq_device** %4, align 8
  %11 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %12 = call %struct.snd_emu10k1_synth_arg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device* %11)
  store %struct.snd_emu10k1_synth_arg* %12, %struct.snd_emu10k1_synth_arg** %7, align 8
  %13 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %14 = icmp eq %struct.snd_emu10k1_synth_arg* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %1
  %16 = load i32, i32* @EINVAL, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %2, align 4
  br label %130

18:                                               ; preds = %1
  %19 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %20 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp sle i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %18
  store i32 0, i32* %2, align 4
  br label %130

24:                                               ; preds = %18
  %25 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %26 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = icmp slt i32 %27, 1
  br i1 %28, label %29, label %32

29:                                               ; preds = %24
  %30 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %31 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %30, i32 0, i32 1
  store i32 1, i32* %31, align 4
  br label %41

32:                                               ; preds = %24
  %33 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %34 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 4
  %36 = icmp sgt i32 %35, 64
  br i1 %36, label %37, label %40

37:                                               ; preds = %32
  %38 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %39 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %38, i32 0, i32 1
  store i32 64, i32* %39, align 4
  br label %40

40:                                               ; preds = %37, %32
  br label %41

41:                                               ; preds = %40, %29
  %42 = call i64 @snd_emux_new(%struct.snd_emux** %5)
  %43 = icmp slt i64 %42, 0
  br i1 %43, label %44, label %47

44:                                               ; preds = %41
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %2, align 4
  br label %130

47:                                               ; preds = %41
  %48 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %49 = call i32 @snd_emu10k1_ops_setup(%struct.snd_emux* %48)
  %50 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %51 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %50, i32 0, i32 3
  %52 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %51, align 8
  store %struct.snd_emu10k1* %52, %struct.snd_emu10k1** %6, align 8
  %53 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %54 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %55 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %54, i32 0, i32 8
  store %struct.snd_emu10k1* %53, %struct.snd_emu10k1** %55, align 8
  %56 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %57 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %60 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %59, i32 0, i32 0
  store i32 %58, i32* %60, align 8
  %61 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %62 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %65 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %64, i32 0, i32 1
  store i32 %63, i32* %65, align 4
  %66 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %67 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %66, i32 0, i32 2
  store i32 -501, i32* %67, align 8
  %68 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %69 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %68, i32 0, i32 4
  %70 = load i32, i32* %69, align 8
  %71 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %72 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %71, i32 0, i32 7
  store i32 %70, i32* %72, align 8
  %73 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %74 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp slt i32 %75, 2
  br i1 %76, label %77, label %81

77:                                               ; preds = %47
  %78 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %79 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  br label %82

81:                                               ; preds = %47
  br label %82

82:                                               ; preds = %81, %77
  %83 = phi i32 [ %80, %77 ], [ 2, %81 ]
  %84 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %85 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %84, i32 0, i32 3
  store i32 %83, i32* %85, align 4
  %86 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %87 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %86, i32 0, i32 3
  %88 = load i64, i64* %87, align 8
  %89 = icmp ne i64 %88, 0
  %90 = zext i1 %89 to i64
  %91 = select i1 %89, i32 2, i32 1
  %92 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %93 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %92, i32 0, i32 4
  store i32 %91, i32* %93, align 8
  %94 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %95 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %94, i32 0, i32 6
  store i64 0, i64* %95, align 8
  %96 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %97 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %96, i32 0, i32 5
  store i32 2, i32* %97, align 4
  %98 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %99 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %100 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 8
  %102 = load %struct.snd_emu10k1_synth_arg*, %struct.snd_emu10k1_synth_arg** %7, align 8
  %103 = getelementptr inbounds %struct.snd_emu10k1_synth_arg, %struct.snd_emu10k1_synth_arg* %102, i32 0, i32 2
  %104 = load i32, i32* %103, align 8
  %105 = call i64 @snd_emux_register(%struct.snd_emux* %98, i32 %101, i32 %104, i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0))
  %106 = icmp slt i64 %105, 0
  br i1 %106, label %107, label %112

107:                                              ; preds = %82
  %108 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %109 = call i32 @snd_emux_free(%struct.snd_emux* %108)
  %110 = load i32, i32* @ENOMEM, align 4
  %111 = sub nsw i32 0, %110
  store i32 %111, i32* %2, align 4
  br label %130

112:                                              ; preds = %82
  %113 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %114 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %113, i32 0, i32 0
  %115 = load i64, i64* %8, align 8
  %116 = call i32 @spin_lock_irqsave(i32* %114, i64 %115)
  %117 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %118 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %119 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %118, i32 0, i32 2
  store %struct.snd_emux* %117, %struct.snd_emux** %119, align 8
  %120 = load i32, i32* @snd_emu10k1_synth_get_voice, align 4
  %121 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %122 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %121, i32 0, i32 1
  store i32 %120, i32* %122, align 4
  %123 = load %struct.snd_emu10k1*, %struct.snd_emu10k1** %6, align 8
  %124 = getelementptr inbounds %struct.snd_emu10k1, %struct.snd_emu10k1* %123, i32 0, i32 0
  %125 = load i64, i64* %8, align 8
  %126 = call i32 @spin_unlock_irqrestore(i32* %124, i64 %125)
  %127 = load %struct.snd_emux*, %struct.snd_emux** %5, align 8
  %128 = load %struct.snd_seq_device*, %struct.snd_seq_device** %4, align 8
  %129 = getelementptr inbounds %struct.snd_seq_device, %struct.snd_seq_device* %128, i32 0, i32 0
  store %struct.snd_emux* %127, %struct.snd_emux** %129, align 8
  store i32 0, i32* %2, align 4
  br label %130

130:                                              ; preds = %112, %107, %44, %23, %15
  %131 = load i32, i32* %2, align 4
  ret i32 %131
}

declare dso_local %struct.snd_seq_device* @to_seq_dev(%struct.device*) #1

declare dso_local %struct.snd_emu10k1_synth_arg* @SNDRV_SEQ_DEVICE_ARGPTR(%struct.snd_seq_device*) #1

declare dso_local i64 @snd_emux_new(%struct.snd_emux**) #1

declare dso_local i32 @snd_emu10k1_ops_setup(%struct.snd_emux*) #1

declare dso_local i64 @snd_emux_register(%struct.snd_emux*, i32, i32, i8*) #1

declare dso_local i32 @snd_emux_free(%struct.snd_emux*) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
