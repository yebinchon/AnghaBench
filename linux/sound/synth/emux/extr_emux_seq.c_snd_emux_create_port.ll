; ModuleID = '/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_create_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/synth/emux/extr_emux_seq.c_snd_emux_create_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_emux_port = type { %struct.TYPE_3__, %struct.snd_emux* }
%struct.TYPE_3__ = type { i32, i32, i32, %struct.snd_emux_port*, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_emux = type { i32, i32 }
%struct.snd_seq_port_callback = type { %struct.snd_emux_port*, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@free_port = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_WRITE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_TYPE_SPECIFIC = common dso_local global i32 0, align 4
@DEFAULT_MIDI_TYPE = common dso_local global i32 0, align 4
@SNDRV_SEQ_PORT_CAP_SUBS_WRITE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.snd_emux_port* @snd_emux_create_port(%struct.snd_emux* %0, i8* %1, i32 %2, i32 %3, %struct.snd_seq_port_callback* %4) #0 {
  %6 = alloca %struct.snd_emux_port*, align 8
  %7 = alloca %struct.snd_emux*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.snd_seq_port_callback*, align 8
  %12 = alloca %struct.snd_emux_port*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  store %struct.snd_emux* %0, %struct.snd_emux** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store %struct.snd_seq_port_callback* %4, %struct.snd_seq_port_callback** %11, align 8
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.snd_emux_port* @kzalloc(i32 40, i32 %16)
  store %struct.snd_emux_port* %17, %struct.snd_emux_port** %12, align 8
  %18 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %19 = icmp ne %struct.snd_emux_port* %18, null
  br i1 %19, label %21, label %20

20:                                               ; preds = %5
  store %struct.snd_emux_port* null, %struct.snd_emux_port** %6, align 8
  br label %105

21:                                               ; preds = %5
  %22 = load i32, i32* %9, align 4
  %23 = load i32, i32* @GFP_KERNEL, align 4
  %24 = call %struct.TYPE_4__* @kcalloc(i32 %22, i32 4, i32 %23)
  %25 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %26 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 4
  store %struct.TYPE_4__* %24, %struct.TYPE_4__** %27, align 8
  %28 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %29 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 4
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = icmp ne %struct.TYPE_4__* %31, null
  br i1 %32, label %36, label %33

33:                                               ; preds = %21
  %34 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %35 = call i32 @kfree(%struct.snd_emux_port* %34)
  store %struct.snd_emux_port* null, %struct.snd_emux_port** %6, align 8
  br label %105

36:                                               ; preds = %21
  store i32 0, i32* %13, align 4
  br label %37

37:                                               ; preds = %51, %36
  %38 = load i32, i32* %13, align 4
  %39 = load i32, i32* %9, align 4
  %40 = icmp slt i32 %38, %39
  br i1 %40, label %41, label %54

41:                                               ; preds = %37
  %42 = load i32, i32* %13, align 4
  %43 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %44 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 4
  %46 = load %struct.TYPE_4__*, %struct.TYPE_4__** %45, align 8
  %47 = load i32, i32* %13, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %49, i32 0, i32 0
  store i32 %42, i32* %50, align 4
  br label %51

51:                                               ; preds = %41
  %52 = load i32, i32* %13, align 4
  %53 = add nsw i32 %52, 1
  store i32 %53, i32* %13, align 4
  br label %37

54:                                               ; preds = %37
  %55 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %56 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %57 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %56, i32 0, i32 0
  %58 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %57, i32 0, i32 3
  store %struct.snd_emux_port* %55, %struct.snd_emux_port** %58, align 8
  %59 = load i32, i32* %9, align 4
  %60 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %61 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %61, i32 0, i32 0
  store i32 %59, i32* %62, align 8
  %63 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %64 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %65 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %64, i32 0, i32 1
  store %struct.snd_emux* %63, %struct.snd_emux** %65, align 8
  %66 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %67 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %66, i32 0, i32 1
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %70 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %69, i32 0, i32 0
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 2
  store i32 %68, i32* %71, align 8
  %72 = load i32, i32* @free_port, align 4
  %73 = load %struct.snd_seq_port_callback*, %struct.snd_seq_port_callback** %11, align 8
  %74 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %73, i32 0, i32 1
  store i32 %72, i32* %74, align 8
  %75 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %76 = load %struct.snd_seq_port_callback*, %struct.snd_seq_port_callback** %11, align 8
  %77 = getelementptr inbounds %struct.snd_seq_port_callback, %struct.snd_seq_port_callback* %76, i32 0, i32 0
  store %struct.snd_emux_port* %75, %struct.snd_emux_port** %77, align 8
  %78 = load i32, i32* @SNDRV_SEQ_PORT_CAP_WRITE, align 4
  store i32 %78, i32* %15, align 4
  %79 = load i32, i32* %10, align 4
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %81, label %83

81:                                               ; preds = %54
  %82 = load i32, i32* @SNDRV_SEQ_PORT_TYPE_SPECIFIC, align 4
  store i32 %82, i32* %14, align 4
  br label %88

83:                                               ; preds = %54
  %84 = load i32, i32* @DEFAULT_MIDI_TYPE, align 4
  store i32 %84, i32* %14, align 4
  %85 = load i32, i32* @SNDRV_SEQ_PORT_CAP_SUBS_WRITE, align 4
  %86 = load i32, i32* %15, align 4
  %87 = or i32 %86, %85
  store i32 %87, i32* %15, align 4
  br label %88

88:                                               ; preds = %83, %81
  %89 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %90 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %89, i32 0, i32 1
  %91 = load i32, i32* %90, align 4
  %92 = load %struct.snd_seq_port_callback*, %struct.snd_seq_port_callback** %11, align 8
  %93 = load i32, i32* %15, align 4
  %94 = load i32, i32* %14, align 4
  %95 = load i32, i32* %9, align 4
  %96 = load %struct.snd_emux*, %struct.snd_emux** %7, align 8
  %97 = getelementptr inbounds %struct.snd_emux, %struct.snd_emux* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = load i8*, i8** %8, align 8
  %100 = call i32 @snd_seq_event_port_attach(i32 %91, %struct.snd_seq_port_callback* %92, i32 %93, i32 %94, i32 %95, i32 %98, i8* %99)
  %101 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  %102 = getelementptr inbounds %struct.snd_emux_port, %struct.snd_emux_port* %101, i32 0, i32 0
  %103 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %102, i32 0, i32 1
  store i32 %100, i32* %103, align 4
  %104 = load %struct.snd_emux_port*, %struct.snd_emux_port** %12, align 8
  store %struct.snd_emux_port* %104, %struct.snd_emux_port** %6, align 8
  br label %105

105:                                              ; preds = %88, %33, %20
  %106 = load %struct.snd_emux_port*, %struct.snd_emux_port** %6, align 8
  ret %struct.snd_emux_port* %106
}

declare dso_local %struct.snd_emux_port* @kzalloc(i32, i32) #1

declare dso_local %struct.TYPE_4__* @kcalloc(i32, i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_emux_port*) #1

declare dso_local i32 @snd_seq_event_port_attach(i32, %struct.snd_seq_port_callback*, i32, i32, i32, i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
