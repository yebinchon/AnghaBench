; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_scp_startup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_ca0132.c_ca0132_alt_dsp_scp_startup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.ca0132_spec* }
%struct.ca0132_spec = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @ca0132_alt_dsp_scp_startup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ca0132_alt_dsp_scp_startup(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.ca0132_spec*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = load %struct.ca0132_spec*, %struct.ca0132_spec** %7, align 8
  store %struct.ca0132_spec* %8, %struct.ca0132_spec** %3, align 8
  store i32 0, i32* %5, align 4
  br label %9

9:                                                ; preds = %53, %1
  %10 = load i32, i32* %5, align 4
  %11 = icmp ult i32 %10, 2
  br i1 %11, label %12, label %56

12:                                               ; preds = %9
  %13 = load %struct.ca0132_spec*, %struct.ca0132_spec** %3, align 8
  %14 = call i32 @ca0132_quirk(%struct.ca0132_spec* %13)
  switch i32 %14, label %50 [
    i32 128, label %15
    i32 131, label %15
    i32 130, label %34
    i32 129, label %34
  ]

15:                                               ; preds = %12, %12
  store i32 3, i32* %4, align 4
  %16 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %16, i32 128, i32 12, i32 %17)
  store i32 0, i32* %4, align 4
  %19 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %20 = load i32, i32* %4, align 4
  %21 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %19, i32 128, i32 10, i32 %20)
  store i32 1, i32* %4, align 4
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = load i32, i32* %4, align 4
  %24 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %22, i32 128, i32 11, i32 %23)
  store i32 4, i32* %4, align 4
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = load i32, i32* %4, align 4
  %27 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %25, i32 128, i32 12, i32 %26)
  store i32 5, i32* %4, align 4
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = load i32, i32* %4, align 4
  %30 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %28, i32 128, i32 12, i32 %29)
  store i32 0, i32* %4, align 4
  %31 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %32 = load i32, i32* %4, align 4
  %33 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %31, i32 128, i32 12, i32 %32)
  br label %51

34:                                               ; preds = %12, %12
  store i32 0, i32* %4, align 4
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %35, i32 128, i32 10, i32 %36)
  store i32 1, i32* %4, align 4
  %38 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %39 = load i32, i32* %4, align 4
  %40 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %38, i32 128, i32 11, i32 %39)
  store i32 4, i32* %4, align 4
  %41 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %42 = load i32, i32* %4, align 4
  %43 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %41, i32 128, i32 12, i32 %42)
  store i32 5, i32* %4, align 4
  %44 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %45 = load i32, i32* %4, align 4
  %46 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %44, i32 128, i32 12, i32 %45)
  store i32 0, i32* %4, align 4
  %47 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %48 = load i32, i32* %4, align 4
  %49 = call i32 @dspio_set_uint_param_no_source(%struct.hda_codec* %47, i32 128, i32 12, i32 %48)
  br label %51

50:                                               ; preds = %12
  br label %51

51:                                               ; preds = %50, %34, %15
  %52 = call i32 @msleep(i32 100)
  br label %53

53:                                               ; preds = %51
  %54 = load i32, i32* %5, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %5, align 4
  br label %9

56:                                               ; preds = %9
  ret void
}

declare dso_local i32 @ca0132_quirk(%struct.ca0132_spec*) #1

declare dso_local i32 @dspio_set_uint_param_no_source(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @msleep(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
