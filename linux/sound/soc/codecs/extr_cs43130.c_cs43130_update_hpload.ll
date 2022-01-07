; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_update_hpload.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_cs43130.c_cs43130_update_hpload.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cs43130_private = type { i32*, i32**, i32*, i32, %struct.snd_soc_component* }
%struct.snd_soc_component = type { i32 }

@CS43130_HP_LOAD_1 = common dso_local global i64 0, align 8
@CS43130_HPLOAD_CHN_SEL = common dso_local global i32 0, align 4
@CS43130_HP_DC_STAT_1 = common dso_local global i64 0, align 8
@CS43130_HP_AC_STAT_1 = common dso_local global i64 0, align 8
@HP_LEFT = common dso_local global i64 0, align 8
@HP_RIGHT = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"HP DC impedance (Ch %u): %u\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"HP AC (%u Hz) impedance (Ch %u): %u\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32, %struct.cs43130_private*)* @cs43130_update_hpload to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cs43130_update_hpload(i32 %0, i32 %1, %struct.cs43130_private* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.cs43130_private*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_soc_component*, align 8
  store i32 %0, i32* %5, align 4
  store i32 %1, i32* %6, align 4
  store %struct.cs43130_private* %2, %struct.cs43130_private** %7, align 8
  store i32 1, i32* %8, align 4
  %13 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %14 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %13, i32 0, i32 4
  %15 = load %struct.snd_soc_component*, %struct.snd_soc_component** %14, align 8
  store %struct.snd_soc_component* %15, %struct.snd_soc_component** %12, align 8
  %16 = load i32, i32* %5, align 4
  switch i32 %16, label %18 [
    i32 128, label %17
    i32 129, label %17
  ]

17:                                               ; preds = %3, %3
  br label %19

18:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %127

19:                                               ; preds = %17
  %20 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %21 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %20, i32 0, i32 3
  %22 = load i32, i32* %21, align 8
  %23 = load i64, i64* @CS43130_HP_LOAD_1, align 8
  %24 = call i32 @regmap_read(i32 %22, i64 %23, i32* %9)
  %25 = load i32, i32* %9, align 4
  %26 = load i32, i32* @CS43130_HPLOAD_CHN_SEL, align 4
  %27 = and i32 %25, %26
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %19
  store i32 0, i32* %8, align 4
  br label %30

30:                                               ; preds = %29, %19
  %31 = load i32, i32* %5, align 4
  %32 = icmp eq i32 %31, 128
  br i1 %32, label %33, label %35

33:                                               ; preds = %30
  %34 = load i64, i64* @CS43130_HP_DC_STAT_1, align 8
  store i64 %34, i64* %10, align 8
  br label %37

35:                                               ; preds = %30
  %36 = load i64, i64* @CS43130_HP_AC_STAT_1, align 8
  store i64 %36, i64* %10, align 8
  br label %37

37:                                               ; preds = %35, %33
  %38 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %39 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %38, i32 0, i32 3
  %40 = load i32, i32* %39, align 8
  %41 = load i64, i64* %10, align 8
  %42 = call i32 @regmap_read(i32 %40, i64 %41, i32* %9)
  %43 = load i32, i32* %9, align 4
  %44 = lshr i32 %43, 3
  store i32 %44, i32* %11, align 4
  %45 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %46 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %45, i32 0, i32 3
  %47 = load i32, i32* %46, align 8
  %48 = load i64, i64* %10, align 8
  %49 = add nsw i64 %48, 1
  %50 = call i32 @regmap_read(i32 %47, i64 %49, i32* %9)
  %51 = load i32, i32* %9, align 4
  %52 = shl i32 %51, 5
  %53 = load i32, i32* %11, align 4
  %54 = or i32 %53, %52
  store i32 %54, i32* %11, align 4
  %55 = load i32, i32* %5, align 4
  %56 = icmp eq i32 %55, 128
  br i1 %56, label %57, label %84

57:                                               ; preds = %37
  %58 = load i32, i32* %8, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %63 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %62, i32 0, i32 0
  %64 = load i32*, i32** %63, align 8
  %65 = load i64, i64* @HP_LEFT, align 8
  %66 = getelementptr inbounds i32, i32* %64, i64 %65
  store i32 %61, i32* %66, align 4
  br label %74

67:                                               ; preds = %57
  %68 = load i32, i32* %11, align 4
  %69 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %70 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %69, i32 0, i32 0
  %71 = load i32*, i32** %70, align 8
  %72 = load i64, i64* @HP_RIGHT, align 8
  %73 = getelementptr inbounds i32, i32* %71, i64 %72
  store i32 %68, i32* %73, align 4
  br label %74

74:                                               ; preds = %67, %60
  %75 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %76 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %8, align 4
  %79 = icmp ne i32 %78, 0
  %80 = xor i1 %79, true
  %81 = zext i1 %80 to i32
  %82 = load i32, i32* %11, align 4
  %83 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %77, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %81, i32 %82)
  br label %126

84:                                               ; preds = %37
  %85 = load i32, i32* %8, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %98

87:                                               ; preds = %84
  %88 = load i32, i32* %11, align 4
  %89 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %90 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %89, i32 0, i32 1
  %91 = load i32**, i32*** %90, align 8
  %92 = load i32, i32* %6, align 4
  %93 = sext i32 %92 to i64
  %94 = getelementptr inbounds i32*, i32** %91, i64 %93
  %95 = load i32*, i32** %94, align 8
  %96 = load i64, i64* @HP_LEFT, align 8
  %97 = getelementptr inbounds i32, i32* %95, i64 %96
  store i32 %88, i32* %97, align 4
  br label %109

98:                                               ; preds = %84
  %99 = load i32, i32* %11, align 4
  %100 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %101 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %100, i32 0, i32 1
  %102 = load i32**, i32*** %101, align 8
  %103 = load i32, i32* %6, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds i32*, i32** %102, i64 %104
  %106 = load i32*, i32** %105, align 8
  %107 = load i64, i64* @HP_RIGHT, align 8
  %108 = getelementptr inbounds i32, i32* %106, i64 %107
  store i32 %99, i32* %108, align 4
  br label %109

109:                                              ; preds = %98, %87
  %110 = load %struct.snd_soc_component*, %struct.snd_soc_component** %12, align 8
  %111 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = load %struct.cs43130_private*, %struct.cs43130_private** %7, align 8
  %114 = getelementptr inbounds %struct.cs43130_private, %struct.cs43130_private* %113, i32 0, i32 2
  %115 = load i32*, i32** %114, align 8
  %116 = load i32, i32* %6, align 4
  %117 = sext i32 %116 to i64
  %118 = getelementptr inbounds i32, i32* %115, i64 %117
  %119 = load i32, i32* %118, align 4
  %120 = load i32, i32* %8, align 4
  %121 = icmp ne i32 %120, 0
  %122 = xor i1 %121, true
  %123 = zext i1 %122 to i32
  %124 = load i32, i32* %11, align 4
  %125 = call i32 (i32, i8*, i32, i32, ...) @dev_dbg(i32 %112, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0), i32 %119, i32 %123, i32 %124)
  br label %126

126:                                              ; preds = %109, %74
  store i32 0, i32* %4, align 4
  br label %127

127:                                              ; preds = %126, %18
  %128 = load i32, i32* %4, align 4
  ret i32 %128
}

declare dso_local i32 @regmap_read(i32, i64, i32*) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32, i32, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
