; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_free_kctls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_generic.c_free_kctls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_gen_spec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.snd_kcontrol_new* }
%struct.snd_kcontrol_new = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_gen_spec*)* @free_kctls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @free_kctls(%struct.hda_gen_spec* %0) #0 {
  %2 = alloca %struct.hda_gen_spec*, align 8
  %3 = alloca %struct.snd_kcontrol_new*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_gen_spec* %0, %struct.hda_gen_spec** %2, align 8
  %5 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 1
  %8 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %7, align 8
  %9 = icmp ne %struct.snd_kcontrol_new* %8, null
  br i1 %9, label %10, label %34

10:                                               ; preds = %1
  %11 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %2, align 8
  %12 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %13, align 8
  store %struct.snd_kcontrol_new* %14, %struct.snd_kcontrol_new** %3, align 8
  store i32 0, i32* %4, align 4
  br label %15

15:                                               ; preds = %30, %10
  %16 = load i32, i32* %4, align 4
  %17 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %2, align 8
  %18 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = icmp slt i32 %16, %20
  br i1 %21, label %22, label %33

22:                                               ; preds = %15
  %23 = load %struct.snd_kcontrol_new*, %struct.snd_kcontrol_new** %3, align 8
  %24 = load i32, i32* %4, align 4
  %25 = sext i32 %24 to i64
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %23, i64 %25
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 4
  %29 = call i32 @kfree(i32 %28)
  br label %30

30:                                               ; preds = %22
  %31 = load i32, i32* %4, align 4
  %32 = add nsw i32 %31, 1
  store i32 %32, i32* %4, align 4
  br label %15

33:                                               ; preds = %15
  br label %34

34:                                               ; preds = %33, %1
  %35 = load %struct.hda_gen_spec*, %struct.hda_gen_spec** %2, align 8
  %36 = getelementptr inbounds %struct.hda_gen_spec, %struct.hda_gen_spec* %35, i32 0, i32 0
  %37 = call i32 @snd_array_free(%struct.TYPE_2__* %36)
  ret void
}

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @snd_array_free(%struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
