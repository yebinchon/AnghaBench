; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_set_tdm_slot.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sti/extr_sti_uniperif.c_sti_uniperiph_set_tdm_slot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_dai = type { i32 }
%struct.sti_uniperiph_data = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.uniperif* }
%struct.uniperif = type { i32, %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32 }

@.str = private unnamed_addr constant [25 x i8] c"cpu dai not in tdm mode\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@UNIPERIF_MAX_FRAME_SZ = common dso_local global i32 0, align 4
@UNIPERIF_ALLOWED_FRAME_SZ = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [34 x i8] c"frame size not allowed: %d bytes\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sti_uniperiph_set_tdm_slot(%struct.snd_soc_dai* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_soc_dai*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.sti_uniperiph_data*, align 8
  %13 = alloca %struct.uniperif*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.snd_soc_dai* %0, %struct.snd_soc_dai** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.snd_soc_dai*, %struct.snd_soc_dai** %7, align 8
  %18 = call %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai* %17)
  store %struct.sti_uniperiph_data* %18, %struct.sti_uniperiph_data** %12, align 8
  %19 = load %struct.sti_uniperiph_data*, %struct.sti_uniperiph_data** %12, align 8
  %20 = getelementptr inbounds %struct.sti_uniperiph_data, %struct.sti_uniperiph_data* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %20, i32 0, i32 0
  %22 = load %struct.uniperif*, %struct.uniperif** %21, align 8
  store %struct.uniperif* %22, %struct.uniperif** %13, align 8
  %23 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %24 = call i32 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif* %23)
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %33, label %26

26:                                               ; preds = %5
  %27 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %28 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 (i32, i8*, ...) @dev_err(i32 %29, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %6, align 4
  br label %110

33:                                               ; preds = %5
  %34 = load i32, i32* %10, align 4
  %35 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %36 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %35, i32 0, i32 1
  %37 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %36, i32 0, i32 0
  store i32 %34, i32* %37, align 4
  %38 = load i32, i32* %11, align 4
  %39 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %40 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %39, i32 0, i32 1
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 1
  store i32 %38, i32* %41, align 4
  %42 = load i32, i32* %8, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %44, label %46

44:                                               ; preds = %33
  %45 = load i32, i32* %8, align 4
  br label %48

46:                                               ; preds = %33
  %47 = load i32, i32* %9, align 4
  br label %48

48:                                               ; preds = %46, %44
  %49 = phi i32 [ %45, %44 ], [ %47, %46 ]
  %50 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %51 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %50, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %51, i32 0, i32 2
  store i32 %49, i32* %52, align 4
  store i32 0, i32* %14, align 4
  store i32 0, i32* %16, align 4
  br label %53

53:                                               ; preds = %73, %48
  %54 = load i32, i32* %14, align 4
  %55 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %56 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %55, i32 0, i32 1
  %57 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = icmp slt i32 %54, %58
  br i1 %59, label %60, label %76

60:                                               ; preds = %53
  %61 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %62 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %61, i32 0, i32 1
  %63 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %62, i32 0, i32 2
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %14, align 4
  %66 = lshr i32 %64, %65
  %67 = and i32 %66, 1
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %72

69:                                               ; preds = %60
  %70 = load i32, i32* %16, align 4
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %16, align 4
  br label %72

72:                                               ; preds = %69, %60
  br label %73

73:                                               ; preds = %72
  %74 = load i32, i32* %14, align 4
  %75 = add nsw i32 %74, 1
  store i32 %75, i32* %14, align 4
  br label %53

76:                                               ; preds = %53
  %77 = load i32, i32* %16, align 4
  %78 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %79 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %78, i32 0, i32 1
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 3
  store i32 %77, i32* %80, align 4
  %81 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %82 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %81, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 3
  %84 = load i32, i32* %83, align 4
  %85 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %86 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %85, i32 0, i32 1
  %87 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %86, i32 0, i32 1
  %88 = load i32, i32* %87, align 4
  %89 = mul nsw i32 %84, %88
  %90 = sdiv i32 %89, 8
  store i32 %90, i32* %15, align 4
  %91 = load i32, i32* %15, align 4
  %92 = load i32, i32* @UNIPERIF_MAX_FRAME_SZ, align 4
  %93 = icmp sgt i32 %91, %92
  br i1 %93, label %101, label %94

94:                                               ; preds = %76
  %95 = load i32, i32* %15, align 4
  %96 = load i64, i64* @UNIPERIF_ALLOWED_FRAME_SZ, align 8
  %97 = trunc i64 %96 to i32
  %98 = xor i32 %97, -1
  %99 = and i32 %95, %98
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %94, %76
  %102 = load %struct.uniperif*, %struct.uniperif** %13, align 8
  %103 = getelementptr inbounds %struct.uniperif, %struct.uniperif* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 4
  %105 = load i32, i32* %15, align 4
  %106 = call i32 (i32, i8*, ...) @dev_err(i32 %104, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), i32 %105)
  %107 = load i32, i32* @EINVAL, align 4
  %108 = sub nsw i32 0, %107
  store i32 %108, i32* %6, align 4
  br label %110

109:                                              ; preds = %94
  store i32 0, i32* %6, align 4
  br label %110

110:                                              ; preds = %109, %101, %26
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local %struct.sti_uniperiph_data* @snd_soc_dai_get_drvdata(%struct.snd_soc_dai*) #1

declare dso_local i32 @UNIPERIF_TYPE_IS_TDM(%struct.uniperif*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
