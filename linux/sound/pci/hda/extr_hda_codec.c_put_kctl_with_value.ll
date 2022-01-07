; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_put_kctl_with_value.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_hda_codec.c_put_kctl_with_value.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)* }
%struct.snd_ctl_elem_value = type opaque
%struct.snd_ctl_elem_value.0 = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, i32)* @put_kctl_with_value to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @put_kctl_with_value(%struct.snd_kcontrol* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_ctl_elem_value.0*, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store i32 %1, i32* %5, align 4
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.snd_ctl_elem_value.0* @kzalloc(i32 8, i32 %7)
  store %struct.snd_ctl_elem_value.0* %8, %struct.snd_ctl_elem_value.0** %6, align 8
  %9 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %6, align 8
  %10 = icmp ne %struct.snd_ctl_elem_value.0* %9, null
  br i1 %10, label %14, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %3, align 4
  br label %38

14:                                               ; preds = %2
  %15 = load i32, i32* %5, align 4
  %16 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %6, align 8
  %17 = getelementptr inbounds %struct.snd_ctl_elem_value.0, %struct.snd_ctl_elem_value.0* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32*, i32** %19, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 %15, i32* %21, align 4
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %6, align 8
  %24 = getelementptr inbounds %struct.snd_ctl_elem_value.0, %struct.snd_ctl_elem_value.0* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 0
  %26 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i32 0, i32 0
  %27 = load i32*, i32** %26, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 1
  store i32 %22, i32* %28, align 4
  %29 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %30 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %29, i32 0, i32 0
  %31 = load i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)*, i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_value*)** %30, align 8
  %32 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %33 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %6, align 8
  %34 = bitcast %struct.snd_ctl_elem_value.0* %33 to %struct.snd_ctl_elem_value*
  %35 = call i32 %31(%struct.snd_kcontrol* %32, %struct.snd_ctl_elem_value* %34)
  %36 = load %struct.snd_ctl_elem_value.0*, %struct.snd_ctl_elem_value.0** %6, align 8
  %37 = call i32 @kfree(%struct.snd_ctl_elem_value.0* %36)
  store i32 0, i32* %3, align 4
  br label %38

38:                                               ; preds = %14, %11
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local %struct.snd_ctl_elem_value.0* @kzalloc(i32, i32) #1

declare dso_local i32 @kfree(%struct.snd_ctl_elem_value.0*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
