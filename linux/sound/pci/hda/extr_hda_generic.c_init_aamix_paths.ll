; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_aamix_paths.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_init_aamix_paths.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.hda_gen_spec* }
%struct.hda_gen_spec = type { i32*, i32*, i32, i32*, %struct.TYPE_2__, i32*, i32 }
%struct.TYPE_2__ = type { i32 }

@AUTO_PIN_HP_OUT = common dso_local global i32 0, align 4
@AUTO_PIN_SPEAKER_OUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @init_aamix_paths to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_aamix_paths(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.hda_gen_spec*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %4, i32 0, i32 0
  %6 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %5, align 8
  store %struct.hda_gen_spec* %6, %struct.hda_gen_spec** %3, align 8
  %7 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %8 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %7, i32 0, i32 6
  %9 = load i32, i32* %8, align 8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %12, label %11

11:                                               ; preds = %1
  br label %69

12:                                               ; preds = %1
  %13 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %14 = call i32 @has_aamix_out_paths(%struct.hda_gen_spec* %13)
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %17, label %16

16:                                               ; preds = %12
  br label %69

17:                                               ; preds = %12
  %18 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %19 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %20 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %23 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %22, i32 0, i32 5
  %24 = load i32*, i32** %23, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %28 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %27, i32 0, i32 0
  %29 = load i32*, i32** %28, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %33 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %32, i32 0, i32 4
  %34 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = call i32 @update_aamix_paths(%struct.hda_codec* %18, i32 %21, i32 %26, i32 %31, i32 %35)
  %37 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %38 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %39 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %42 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %41, i32 0, i32 3
  %43 = load i32*, i32** %42, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 0
  %45 = load i32, i32* %44, align 4
  %46 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %47 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %46, i32 0, i32 0
  %48 = load i32*, i32** %47, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* @AUTO_PIN_HP_OUT, align 4
  %52 = call i32 @update_aamix_paths(%struct.hda_codec* %37, i32 %40, i32 %45, i32 %50, i32 %51)
  %53 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %54 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %55 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %54, i32 0, i32 2
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %58 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %57, i32 0, i32 1
  %59 = load i32*, i32** %58, align 8
  %60 = getelementptr inbounds i32, i32* %59, i64 0
  %61 = load i32, i32* %60, align 4
  %62 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = getelementptr inbounds i32, i32* %64, i64 2
  %66 = load i32, i32* %65, align 4
  %67 = load i32, i32* @AUTO_PIN_SPEAKER_OUT, align 4
  %68 = call i32 @update_aamix_paths(%struct.hda_codec* %53, i32 %56, i32 %61, i32 %66, i32 %67)
  br label %69

69:                                               ; preds = %17, %16, %11
  ret void
}

declare dso_local i32 @has_aamix_out_paths(%struct.hda_gen_spec*) #1

declare dso_local i32 @update_aamix_paths(%struct.hda_codec*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
