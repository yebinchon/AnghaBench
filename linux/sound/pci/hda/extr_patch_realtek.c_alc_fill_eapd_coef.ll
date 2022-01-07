; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fill_eapd_coef.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_fill_eapd_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc_fill_eapd_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc_fill_eapd_coef(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %4 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %5 = call i32 @alc_get_coef0(%struct.hda_codec* %4)
  store i32 %5, i32* %3, align 4
  %6 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %7 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  switch i32 %9, label %94 [
    i32 283902562, label %10
    i32 283902567, label %13
    i32 283902568, label %13
    i32 283902569, label %16
    i32 283902592, label %38
    i32 283902596, label %38
    i32 283902608, label %38
    i32 283902610, label %38
    i32 283902501, label %41
    i32 283902613, label %41
    i32 283902617, label %41
    i32 283902485, label %44
    i32 283902515, label %44
    i32 283902517, label %44
    i32 283902518, label %44
    i32 283902549, label %44
    i32 283902550, label %44
    i32 283902551, label %44
    i32 283902594, label %44
    i32 283902595, label %44
    i32 283902598, label %44
    i32 283902600, label %44
    i32 283902597, label %44
    i32 283902616, label %44
    i32 283902601, label %44
    i32 283902720, label %44
    i32 283902581, label %47
    i32 283902611, label %50
    i32 283902516, label %53
    i32 283902580, label %53
    i32 283902612, label %53
    i32 283903744, label %53
    i32 283903745, label %53
    i32 283903747, label %53
    i32 283903761, label %53
    i32 283903586, label %56
    i32 283902578, label %64
    i32 283902579, label %64
    i32 283903587, label %64
    i32 283903589, label %64
    i32 283903600, label %64
    i32 283903601, label %64
    i32 283903602, label %64
    i32 283903523, label %67
    i32 283903592, label %70
    i32 283904103, label %73
    i32 283904136, label %76
    i32 283904146, label %88
    i32 283904153, label %91
    i32 283904256, label %91
    i32 283906408, label %91
    i32 283906592, label %91
  ]

10:                                               ; preds = %1
  %11 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %12 = call i32 @alc_update_coef_idx(%struct.hda_codec* %11, i32 7, i32 0, i32 32)
  br label %94

13:                                               ; preds = %1, %1
  %14 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %15 = call i32 @alc_update_coef_idx(%struct.hda_codec* %14, i32 7, i32 0, i32 8192)
  br label %94

16:                                               ; preds = %1
  %17 = load i32, i32* %3, align 4
  %18 = and i32 %17, 240
  %19 = icmp eq i32 %18, 16
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %22 = call i32 @alc_update_coef_idx(%struct.hda_codec* %21, i32 13, i32 0, i32 16384)
  br label %23

23:                                               ; preds = %20, %16
  %24 = load i32, i32* %3, align 4
  %25 = and i32 %24, 240
  %26 = icmp eq i32 %25, 32
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %29 = call i32 @alc_update_coef_idx(%struct.hda_codec* %28, i32 4, i32 32768, i32 0)
  br label %30

30:                                               ; preds = %27, %23
  %31 = load i32, i32* %3, align 4
  %32 = and i32 %31, 240
  %33 = icmp eq i32 %32, 48
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc_update_coef_idx(%struct.hda_codec* %35, i32 16, i32 512, i32 0)
  br label %37

37:                                               ; preds = %34, %30
  br label %94

38:                                               ; preds = %1, %1, %1, %1
  %39 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %40 = call i32 @alc_update_coef_idx(%struct.hda_codec* %39, i32 4, i32 32768, i32 0)
  br label %94

41:                                               ; preds = %1, %1, %1
  %42 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %43 = call i32 @alc_update_coef_idx(%struct.hda_codec* %42, i32 103, i32 61440, i32 12288)
  br label %44

44:                                               ; preds = %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %1, %41
  %45 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %46 = call i32 @alc_update_coef_idx(%struct.hda_codec* %45, i32 16, i32 512, i32 0)
  br label %94

47:                                               ; preds = %1
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = call i32 @alc_update_coef_idx(%struct.hda_codec* %48, i32 14, i32 0, i32 1)
  br label %94

50:                                               ; preds = %1
  %51 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %52 = call i32 @alc_update_coef_idx(%struct.hda_codec* %51, i32 10, i32 8192, i32 0)
  br label %94

53:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %54 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %55 = call i32 @alc_update_coef_idx(%struct.hda_codec* %54, i32 16, i32 32768, i32 0)
  br label %94

56:                                               ; preds = %1
  %57 = load i32, i32* %3, align 4
  %58 = and i32 %57, 240
  %59 = icmp eq i32 %58, 48
  br i1 %59, label %60, label %63

60:                                               ; preds = %56
  %61 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %62 = call i32 @alc_update_coef_idx(%struct.hda_codec* %61, i32 4, i32 1024, i32 0)
  br label %63

63:                                               ; preds = %60, %56
  br label %94

64:                                               ; preds = %1, %1, %1, %1, %1, %1, %1
  %65 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %66 = call i32 @alc_update_coef_idx(%struct.hda_codec* %65, i32 13, i32 0, i32 16384)
  br label %94

67:                                               ; preds = %1
  %68 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %69 = call i32 @alc_update_coef_idx(%struct.hda_codec* %68, i32 25, i32 8192, i32 0)
  br label %94

70:                                               ; preds = %1
  %71 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %72 = call i32 @alc_update_coef_idx(%struct.hda_codec* %71, i32 7, i32 24576, i32 0)
  br label %94

73:                                               ; preds = %1
  %74 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %75 = call i32 @alc_update_coef_idx(%struct.hda_codec* %74, i32 4, i32 1024, i32 0)
  br label %94

76:                                               ; preds = %1
  %77 = load i32, i32* %3, align 4
  %78 = and i32 %77, 240
  %79 = icmp eq i32 %78, 32
  br i1 %79, label %84, label %80

80:                                               ; preds = %76
  %81 = load i32, i32* %3, align 4
  %82 = and i32 %81, 240
  %83 = icmp eq i32 %82, 48
  br i1 %83, label %84, label %87

84:                                               ; preds = %80, %76
  %85 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %86 = call i32 @alc_update_coef_idx(%struct.hda_codec* %85, i32 7, i32 32, i32 0)
  br label %87

87:                                               ; preds = %84, %80
  br label %94

88:                                               ; preds = %1
  %89 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %90 = call i32 @alc_update_coef_idx(%struct.hda_codec* %89, i32 7, i32 32, i32 0)
  br label %94

91:                                               ; preds = %1, %1, %1, %1
  %92 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %93 = call i32 @alc_update_coef_idx(%struct.hda_codec* %92, i32 7, i32 2, i32 0)
  br label %94

94:                                               ; preds = %1, %91, %88, %87, %73, %70, %67, %64, %63, %53, %50, %47, %44, %38, %37, %13, %10
  ret void
}

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
