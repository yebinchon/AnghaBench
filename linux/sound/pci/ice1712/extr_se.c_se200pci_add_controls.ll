; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_add_controls.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_add_controls.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { i32, i32 }
%struct.snd_ice1712 = type { i32 }
%struct.snd_kcontrol_new = type { i32, i32, i32, i32, %struct.TYPE_4__, i32, i32, i32 }
%struct.TYPE_4__ = type { i32* }

@SNDRV_CTL_ELEM_IFACE_MIXER = common dso_local global i32 0, align 4
@se200pci_cont = common dso_local global %struct.TYPE_5__* null, align 8
@SNDRV_CTL_ELEM_ACCESS_READWRITE = common dso_local global i32 0, align 4
@se200pci_cont_volume_info = common dso_local global i32 0, align 4
@se200pci_cont_volume_get = common dso_local global i32 0, align 4
@se200pci_cont_volume_put = common dso_local global i32 0, align 4
@SNDRV_CTL_ELEM_ACCESS_TLV_READ = common dso_local global i32 0, align 4
@db_scale_gain1 = common dso_local global i32* null, align 8
@db_scale_gain2 = common dso_local global i32* null, align 8
@se200pci_cont_boolean_info = common dso_local global i32 0, align 4
@se200pci_cont_boolean_get = common dso_local global i32 0, align 4
@se200pci_cont_boolean_put = common dso_local global i32 0, align 4
@se200pci_cont_enum_info = common dso_local global i32 0, align 4
@se200pci_cont_enum_get = common dso_local global i32 0, align 4
@se200pci_cont_enum_put = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_ice1712*)* @se200pci_add_controls to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @se200pci_add_controls(%struct.snd_ice1712* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.snd_kcontrol_new, align 8
  %6 = alloca i32, align 4
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  %7 = call i32 @memset(%struct.snd_kcontrol_new* %5, i32 0, i32 40)
  %8 = load i32, i32* @SNDRV_CTL_ELEM_IFACE_MIXER, align 4
  %9 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 7
  store i32 %8, i32* %9, align 8
  store i32 0, i32* %4, align 4
  br label %10

10:                                               ; preds = %92, %1
  %11 = load i32, i32* %4, align 4
  %12 = load %struct.TYPE_5__*, %struct.TYPE_5__** @se200pci_cont, align 8
  %13 = call i32 @ARRAY_SIZE(%struct.TYPE_5__* %12)
  %14 = icmp slt i32 %11, %13
  br i1 %14, label %15, label %95

15:                                               ; preds = %10
  %16 = load i32, i32* %4, align 4
  %17 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 0
  store i32 %16, i32* %17, align 8
  %18 = load %struct.TYPE_5__*, %struct.TYPE_5__** @se200pci_cont, align 8
  %19 = load i32, i32* %4, align 4
  %20 = sext i32 %19 to i64
  %21 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %18, i64 %20
  %22 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 6
  store i32 %23, i32* %24, align 4
  %25 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_READWRITE, align 4
  %26 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 5
  store i32 %25, i32* %26, align 8
  %27 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 4
  %28 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %27, i32 0, i32 0
  store i32* null, i32** %28, align 8
  %29 = load %struct.TYPE_5__*, %struct.TYPE_5__** @se200pci_cont, align 8
  %30 = load i32, i32* %4, align 4
  %31 = sext i32 %30 to i64
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %29, i64 %31
  %33 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  switch i32 %34, label %76 [
    i32 129, label %35
    i32 128, label %35
    i32 131, label %62
    i32 130, label %69
  ]

35:                                               ; preds = %15, %15
  %36 = load i32, i32* @se200pci_cont_volume_info, align 4
  %37 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 3
  store i32 %36, i32* %37, align 4
  %38 = load i32, i32* @se200pci_cont_volume_get, align 4
  %39 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 2
  store i32 %38, i32* %39, align 8
  %40 = load i32, i32* @se200pci_cont_volume_put, align 4
  %41 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 1
  store i32 %40, i32* %41, align 4
  %42 = load i32, i32* @SNDRV_CTL_ELEM_ACCESS_TLV_READ, align 4
  %43 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 5
  %44 = load i32, i32* %43, align 8
  %45 = or i32 %44, %42
  store i32 %45, i32* %43, align 8
  %46 = load %struct.TYPE_5__*, %struct.TYPE_5__** @se200pci_cont, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %46, i64 %48
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 129
  br i1 %52, label %53, label %57

53:                                               ; preds = %35
  %54 = load i32*, i32** @db_scale_gain1, align 8
  %55 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 4
  %56 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %55, i32 0, i32 0
  store i32* %54, i32** %56, align 8
  br label %61

57:                                               ; preds = %35
  %58 = load i32*, i32** @db_scale_gain2, align 8
  %59 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 4
  %60 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %59, i32 0, i32 0
  store i32* %58, i32** %60, align 8
  br label %61

61:                                               ; preds = %57, %53
  br label %80

62:                                               ; preds = %15
  %63 = load i32, i32* @se200pci_cont_boolean_info, align 4
  %64 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 3
  store i32 %63, i32* %64, align 4
  %65 = load i32, i32* @se200pci_cont_boolean_get, align 4
  %66 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 2
  store i32 %65, i32* %66, align 8
  %67 = load i32, i32* @se200pci_cont_boolean_put, align 4
  %68 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 1
  store i32 %67, i32* %68, align 4
  br label %80

69:                                               ; preds = %15
  %70 = load i32, i32* @se200pci_cont_enum_info, align 4
  %71 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 3
  store i32 %70, i32* %71, align 4
  %72 = load i32, i32* @se200pci_cont_enum_get, align 4
  %73 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 2
  store i32 %72, i32* %73, align 8
  %74 = load i32, i32* @se200pci_cont_enum_put, align 4
  %75 = getelementptr inbounds %struct.snd_kcontrol_new, %struct.snd_kcontrol_new* %5, i32 0, i32 1
  store i32 %74, i32* %75, align 4
  br label %80

76:                                               ; preds = %15
  %77 = call i32 (...) @snd_BUG()
  %78 = load i32, i32* @EINVAL, align 4
  %79 = sub nsw i32 0, %78
  store i32 %79, i32* %2, align 4
  br label %96

80:                                               ; preds = %69, %62, %61
  %81 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %82 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %85 = call i32 @snd_ctl_new1(%struct.snd_kcontrol_new* %5, %struct.snd_ice1712* %84)
  %86 = call i32 @snd_ctl_add(i32 %83, i32 %85)
  store i32 %86, i32* %6, align 4
  %87 = load i32, i32* %6, align 4
  %88 = icmp slt i32 %87, 0
  br i1 %88, label %89, label %91

89:                                               ; preds = %80
  %90 = load i32, i32* %6, align 4
  store i32 %90, i32* %2, align 4
  br label %96

91:                                               ; preds = %80
  br label %92

92:                                               ; preds = %91
  %93 = load i32, i32* %4, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %4, align 4
  br label %10

95:                                               ; preds = %10
  store i32 0, i32* %2, align 4
  br label %96

96:                                               ; preds = %95, %89, %76
  %97 = load i32, i32* %2, align 4
  ret i32 %97
}

declare dso_local i32 @memset(%struct.snd_kcontrol_new*, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(%struct.TYPE_5__*) #1

declare dso_local i32 @snd_BUG(...) #1

declare dso_local i32 @snd_ctl_add(i32, i32) #1

declare dso_local i32 @snd_ctl_new1(%struct.snd_kcontrol_new*, %struct.snd_ice1712*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
