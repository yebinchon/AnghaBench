; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_codec_rename_from_preset.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/hda/extr_patch_realtek.c_alc_codec_rename_from_preset.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.alc_codec_rename_table = type { i64, i32, i32, i32 }
%struct.alc_codec_rename_pci_table = type { i64, i64, i64, i32 }
%struct.hda_codec = type { %struct.TYPE_6__*, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i64, i64 }
%struct.TYPE_4__ = type { i64 }

@rename_tbl = common dso_local global %struct.alc_codec_rename_table* null, align 8
@rename_pci_tbl = common dso_local global %struct.alc_codec_rename_pci_table* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hda_codec*)* @alc_codec_rename_from_preset to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @alc_codec_rename_from_preset(%struct.hda_codec* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hda_codec*, align 8
  %4 = alloca %struct.alc_codec_rename_table*, align 8
  %5 = alloca %struct.alc_codec_rename_pci_table*, align 8
  store %struct.hda_codec* %0, %struct.hda_codec** %3, align 8
  %6 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** @rename_tbl, align 8
  store %struct.alc_codec_rename_table* %6, %struct.alc_codec_rename_table** %4, align 8
  br label %7

7:                                                ; preds = %40, %1
  %8 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %9 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %43

12:                                               ; preds = %7
  %13 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %14 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %17 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %15, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %12
  br label %40

22:                                               ; preds = %12
  %23 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %24 = call i32 @alc_get_coef0(%struct.hda_codec* %23)
  %25 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %26 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 8
  %28 = and i32 %24, %27
  %29 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %30 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = icmp eq i32 %28, %31
  br i1 %32, label %33, label %39

33:                                               ; preds = %22
  %34 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %35 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %36 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %35, i32 0, i32 3
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @alc_codec_rename(%struct.hda_codec* %34, i32 %37)
  store i32 %38, i32* %2, align 4
  br label %109

39:                                               ; preds = %22
  br label %40

40:                                               ; preds = %39, %21
  %41 = load %struct.alc_codec_rename_table*, %struct.alc_codec_rename_table** %4, align 8
  %42 = getelementptr inbounds %struct.alc_codec_rename_table, %struct.alc_codec_rename_table* %41, i32 1
  store %struct.alc_codec_rename_table* %42, %struct.alc_codec_rename_table** %4, align 8
  br label %7

43:                                               ; preds = %7
  %44 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %45 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %44, i32 0, i32 0
  %46 = load %struct.TYPE_6__*, %struct.TYPE_6__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %46, i32 0, i32 0
  %48 = load %struct.TYPE_5__*, %struct.TYPE_5__** %47, align 8
  %49 = icmp ne %struct.TYPE_5__* %48, null
  br i1 %49, label %51, label %50

50:                                               ; preds = %43
  store i32 0, i32* %2, align 4
  br label %109

51:                                               ; preds = %43
  %52 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** @rename_pci_tbl, align 8
  store %struct.alc_codec_rename_pci_table* %52, %struct.alc_codec_rename_pci_table** %5, align 8
  br label %53

53:                                               ; preds = %105, %51
  %54 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %55 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %108

58:                                               ; preds = %53
  %59 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %60 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %63 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %62, i32 0, i32 1
  %64 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %61, %65
  br i1 %66, label %67, label %68

67:                                               ; preds = %58
  br label %105

68:                                               ; preds = %58
  %69 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %70 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %69, i32 0, i32 1
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %73 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %72, i32 0, i32 0
  %74 = load %struct.TYPE_6__*, %struct.TYPE_6__** %73, align 8
  %75 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %74, i32 0, i32 0
  %76 = load %struct.TYPE_5__*, %struct.TYPE_5__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = icmp ne i64 %71, %78
  br i1 %79, label %80, label %81

80:                                               ; preds = %68
  br label %105

81:                                               ; preds = %68
  %82 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %83 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %82, i32 0, i32 2
  %84 = load i64, i64* %83, align 8
  %85 = icmp ne i64 %84, 0
  br i1 %85, label %86, label %98

86:                                               ; preds = %81
  %87 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %88 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %87, i32 0, i32 2
  %89 = load i64, i64* %88, align 8
  %90 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %91 = getelementptr inbounds %struct.hda_codec, %struct.hda_codec* %90, i32 0, i32 0
  %92 = load %struct.TYPE_6__*, %struct.TYPE_6__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %92, i32 0, i32 0
  %94 = load %struct.TYPE_5__*, %struct.TYPE_5__** %93, align 8
  %95 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %94, i32 0, i32 1
  %96 = load i64, i64* %95, align 8
  %97 = icmp eq i64 %89, %96
  br i1 %97, label %98, label %104

98:                                               ; preds = %86, %81
  %99 = load %struct.hda_codec*, %struct.hda_codec** %3, align 8
  %100 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %101 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 8
  %103 = call i32 @alc_codec_rename(%struct.hda_codec* %99, i32 %102)
  store i32 %103, i32* %2, align 4
  br label %109

104:                                              ; preds = %86
  br label %105

105:                                              ; preds = %104, %80, %67
  %106 = load %struct.alc_codec_rename_pci_table*, %struct.alc_codec_rename_pci_table** %5, align 8
  %107 = getelementptr inbounds %struct.alc_codec_rename_pci_table, %struct.alc_codec_rename_pci_table* %106, i32 1
  store %struct.alc_codec_rename_pci_table* %107, %struct.alc_codec_rename_pci_table** %5, align 8
  br label %53

108:                                              ; preds = %53
  store i32 0, i32* %2, align 4
  br label %109

109:                                              ; preds = %108, %98, %50, %33
  %110 = load i32, i32* %2, align 4
  ret i32 %110
}

declare dso_local i32 @alc_get_coef0(%struct.hda_codec*) #1

declare dso_local i32 @alc_codec_rename(%struct.hda_codec*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
