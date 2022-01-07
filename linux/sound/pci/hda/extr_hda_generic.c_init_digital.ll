; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_digital.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_digital.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_digital to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_digital(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %7, align 8
  store %struct.hda_gen_spec* %8, %struct.hda_gen_spec** %3, align 8
  store i32 0, i32* %4, align 4
  br label %9

9:                                                ; preds = %26, %1
  %10 = load i32, i32* %4, align 4
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %10, %14
  br i1 %15, label %16, label %29

16:                                               ; preds = %9
  %17 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %18 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %19 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %18, i32 0, i32 2
  %20 = load i32*, i32** %19, align 8
  %21 = load i32, i32* %4, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds i32, i32* %20, i64 %22
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @set_output_and_unmute(%struct.hda_codec* %17, i32 %24)
  br label %26

26:                                               ; preds = %16
  %27 = load i32, i32* %4, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %4, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %31 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 1
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %5, align 8
  %34 = load i64, i64* %5, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %45

36:                                               ; preds = %29
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @restore_pin_ctl(%struct.hda_codec* %37, i64 %38)
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %42 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = call i32 @resume_path_from_idx(%struct.hda_codec* %40, i32 %43)
  br label %45

45:                                               ; preds = %36, %29
  ret void
}

declare dso_local i32 @set_output_and_unmute(%struct.hda_codec*, i32) #1

declare dso_local i32 @restore_pin_ctl(%struct.hda_codec*, i64) #1

declare dso_local i32 @resume_path_from_idx(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
