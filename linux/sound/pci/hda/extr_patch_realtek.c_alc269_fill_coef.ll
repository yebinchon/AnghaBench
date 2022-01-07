; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fill_coef.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc269_fill_coef.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_codec = type { %struct.alc_spec* }
%struct.alc_spec = type { i64 }

@ALC269_TYPE_ALC269VB = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hda_codec*)* @alc269_fill_coef to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @alc269_fill_coef(%struct.hda_codec* %0) #0 {
  %2 = alloca %struct.hda_codec*, align 8
  %3 = alloca %struct.alc_spec*, align 8
  %4 = alloca i32, align 4
  store %struct.hda_codec* %0, %struct.hda_codec** %2, align 8
  %5 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %6 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %5, i32 0, i32 0
  %7 = load %struct.alc_spec*, %struct.alc_spec** %6, align 8
  store %struct.alc_spec* %7, %struct.alc_spec** %3, align 8
  %8 = load %struct.alc_spec*, %struct.alc_spec** %3, align 8
  %9 = getelementptr inbounds %struct.alc_spec, %struct.alc_spec* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @ALC269_TYPE_ALC269VB, align 8
  %12 = icmp ne i64 %10, %11
  br i1 %12, label %13, label %14

13:                                               ; preds = %1
  br label %81

14:                                               ; preds = %1
  %15 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %16 = call i32 @alc_get_coef0(%struct.hda_codec* %15)
  %17 = and i32 %16, 255
  %18 = icmp slt i32 %17, 21
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %21 = call i32 @alc_write_coef_idx(%struct.hda_codec* %20, i32 15, i32 38411)
  %22 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %23 = call i32 @alc_write_coef_idx(%struct.hda_codec* %22, i32 14, i32 34839)
  br label %24

24:                                               ; preds = %19, %14
  %25 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %26 = call i32 @alc_get_coef0(%struct.hda_codec* %25)
  %27 = and i32 %26, 255
  %28 = icmp eq i32 %27, 22
  br i1 %28, label %29, label %34

29:                                               ; preds = %24
  %30 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %31 = call i32 @alc_write_coef_idx(%struct.hda_codec* %30, i32 15, i32 38411)
  %32 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %33 = call i32 @alc_write_coef_idx(%struct.hda_codec* %32, i32 14, i32 34836)
  br label %34

34:                                               ; preds = %29, %24
  %35 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %36 = call i32 @alc_get_coef0(%struct.hda_codec* %35)
  %37 = and i32 %36, 255
  %38 = icmp eq i32 %37, 23
  br i1 %38, label %39, label %42

39:                                               ; preds = %34
  %40 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %41 = call i32 @alc_update_coef_idx(%struct.hda_codec* %40, i32 4, i32 0, i32 2048)
  br label %42

42:                                               ; preds = %39, %34
  %43 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %44 = call i32 @alc_get_coef0(%struct.hda_codec* %43)
  %45 = and i32 %44, 255
  %46 = icmp eq i32 %45, 24
  br i1 %46, label %47, label %78

47:                                               ; preds = %42
  %48 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %49 = call i32 @alc_read_coef_idx(%struct.hda_codec* %48, i32 13)
  store i32 %49, i32* %4, align 4
  %50 = load i32, i32* %4, align 4
  %51 = icmp ne i32 %50, -1
  br i1 %51, label %52, label %62

52:                                               ; preds = %47
  %53 = load i32, i32* %4, align 4
  %54 = and i32 %53, 3072
  %55 = ashr i32 %54, 10
  %56 = icmp ne i32 %55, 1
  br i1 %56, label %57, label %62

57:                                               ; preds = %52
  %58 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %59 = load i32, i32* %4, align 4
  %60 = or i32 %59, 1024
  %61 = call i32 @alc_write_coef_idx(%struct.hda_codec* %58, i32 13, i32 %60)
  br label %62

62:                                               ; preds = %57, %52, %47
  %63 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %64 = call i32 @alc_read_coef_idx(%struct.hda_codec* %63, i32 23)
  store i32 %64, i32* %4, align 4
  %65 = load i32, i32* %4, align 4
  %66 = icmp ne i32 %65, -1
  br i1 %66, label %67, label %77

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = and i32 %68, 448
  %70 = ashr i32 %69, 6
  %71 = icmp ne i32 %70, 4
  br i1 %71, label %72, label %77

72:                                               ; preds = %67
  %73 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %74 = load i32, i32* %4, align 4
  %75 = or i32 %74, 128
  %76 = call i32 @alc_write_coef_idx(%struct.hda_codec* %73, i32 23, i32 %75)
  br label %77

77:                                               ; preds = %72, %67, %62
  br label %78

78:                                               ; preds = %77, %42
  %79 = load %struct.hda_codec*, %struct.hda_codec** %2, align 8
  %80 = call i32 @alc_update_coef_idx(%struct.hda_codec* %79, i32 4, i32 0, i32 2048)
  br label %81

81:                                               ; preds = %78, %13
  ret void
}

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_write_coef_idx(%struct.hda_codec*, i32, i32) #1

declare dso_local i32 @alc_update_coef_idx(%struct.hda_codec*, i32, i32, i32) #1

declare dso_local i32 @alc_read_coef_idx(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
