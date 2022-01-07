; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_extra_out.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_extra_out.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i32, i32 }

@AUTO_PIN_HP_OUT = common dso_local global i64 0, align 8
@AUTO_PIN_SPEAKER_OUT = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_extra_out to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_extra_out(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  store %struct.hda_gen_spec* %6, %struct.hda_gen_spec** %3, align 8
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %7, i32 0, i32 1
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @AUTO_PIN_HP_OUT, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %23

13:                                               ; preds = %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 1
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 2
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32 @__init_extra_out(%struct.hda_codec* %14, i32 %18, i32 %21)
  br label %23

23:                                               ; preds = %13, %1
  %24 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %25 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* @AUTO_PIN_SPEAKER_OUT, align 8
  %29 = icmp ne i64 %27, %28
  br i1 %29, label %30, label %40

30:                                               ; preds = %23
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %37 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @__init_extra_out(%struct.hda_codec* %31, i32 %35, i32 %38)
  br label %40

40:                                               ; preds = %30, %23
  ret void
}

declare dso_local i32 @__init_extra_out(%struct.hda_codec*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
