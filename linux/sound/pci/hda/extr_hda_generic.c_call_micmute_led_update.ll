; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_micmute_led_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_call_micmute_led_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32, i32 (%struct.hda_codec.0*)*, i32 }
%struct.hda_codec.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @call_micmute_led_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @call_micmute_led_update(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %6, align 8
  store %struct.hda_gen_spec* %7, %struct.hda_gen_spec** %3, align 8
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %9 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %8, i32 0, i32 0
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  switch i32 %11, label %24 [
    i32 128, label %12
    i32 129, label %13
    i32 131, label %14
    i32 130, label %23
  ]

12:                                               ; preds = %1
  store i32 1, i32* %4, align 4
  br label %32

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %32

14:                                               ; preds = %1
  %15 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %16 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 3
  %18 = load i32, i32* %17, align 8
  %19 = icmp ne i32 %18, 0
  %20 = xor i1 %19, true
  %21 = xor i1 %20, true
  %22 = zext i1 %21 to i32
  store i32 %22, i32* %4, align 4
  br label %32

23:                                               ; preds = %1
  br label %24

24:                                               ; preds = %1, %23
  %25 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %26 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 3
  %28 = load i32, i32* %27, align 8
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  %31 = zext i1 %30 to i32
  store i32 %31, i32* %4, align 4
  br label %32

32:                                               ; preds = %24, %14, %13, %12
  %33 = load i32, i32* %4, align 4
  %34 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %35 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = icmp eq i32 %33, %37
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %58

40:                                               ; preds = %32
  %41 = load i32, i32* %4, align 4
  %42 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %43 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %43, i32 0, i32 1
  store i32 %41, i32* %44, align 4
  %45 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %46 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %46, i32 0, i32 2
  %48 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %47, align 8
  %49 = icmp ne i32 (%struct.hda_codec.0*)* %48, null
  br i1 %49, label %50, label %58

50:                                               ; preds = %40
  %51 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %52 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32 (%struct.hda_codec.0*)*, i32 (%struct.hda_codec.0*)** %53, align 8
  %55 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %56 = bitcast %struct.hda_codec* %55 to %struct.hda_codec.0*
  %57 = call i32 %54(%struct.hda_codec.0* %56)
  br label %58

58:                                               ; preds = %39, %50, %40
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
