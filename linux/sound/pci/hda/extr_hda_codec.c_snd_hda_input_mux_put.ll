; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_input_mux_put.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_snd_hda_input_mux_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { i32 }
%struct.hda_input_mux = type { i32, %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.snd_ctl_elem_value = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }

@AC_VERB_SET_CONNECT_SEL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hda_input_mux_put(%struct.hda_codec* %0, %struct.hda_input_mux* %1, %struct.snd_ctl_elem_value* %2, i32 %3, i32* %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.hda_codec*, align 8
  %8 = alloca %struct.hda_input_mux*, align 8
  %9 = alloca %struct.snd_ctl_elem_value*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %7, align 8
  store %struct.hda_input_mux* %1, %struct.hda_input_mux** %8, align 8
  store %struct.snd_ctl_elem_value* %2, %struct.snd_ctl_elem_value** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32* %4, i32** %11, align 8
  %13 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %14 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %57

18:                                               ; preds = %5
  %19 = load %struct.snd_ctl_elem_value*, %struct.snd_ctl_elem_value** %9, align 8
  %20 = getelementptr inbounds %struct.snd_ctl_elem_value, %struct.snd_ctl_elem_value* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 0
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  store i32 %25, i32* %12, align 4
  %26 = load i32, i32* %12, align 4
  %27 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %28 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  %30 = icmp uge i32 %26, %29
  br i1 %30, label %31, label %36

31:                                               ; preds = %18
  %32 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %33 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sub i32 %34, 1
  store i32 %35, i32* %12, align 4
  br label %36

36:                                               ; preds = %31, %18
  %37 = load i32*, i32** %11, align 8
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* %12, align 4
  %40 = icmp eq i32 %38, %39
  br i1 %40, label %41, label %42

41:                                               ; preds = %36
  store i32 0, i32* %6, align 4
  br label %57

42:                                               ; preds = %36
  %43 = load %struct.hda_codec*, %struct.hda_codec** %7, align 8
  %44 = load i32, i32* %10, align 4
  %45 = load i32, i32* @AC_VERB_SET_CONNECT_SEL, align 4
  %46 = load %struct.hda_input_mux*, %struct.hda_input_mux** %8, align 8
  %47 = getelementptr inbounds %struct.hda_input_mux, %struct.hda_input_mux* %46, i32 0, i32 1
  %48 = load %struct.TYPE_4__*, %struct.TYPE_4__** %47, align 8
  %49 = load i32, i32* %12, align 4
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i64 %50
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i32 @snd_hda_codec_write_cache(%struct.hda_codec* %43, i32 %44, i32 0, i32 %45, i32 %53)
  %55 = load i32, i32* %12, align 4
  %56 = load i32*, i32** %11, align 8
  store i32 %55, i32* %56, align 4
  store i32 1, i32* %6, align 4
  br label %57

57:                                               ; preds = %42, %41, %17
  %58 = load i32, i32* %6, align 4
  ret i32 %58
}

declare dso_local i32 @snd_hda_codec_write_cache(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
