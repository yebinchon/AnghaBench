; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_field_enum_info.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/oxygen/extr_xonar_wm87x6.c_wm8776_field_enum_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_kcontrol = type { i32 }
%struct.snd_ctl_elem_info = type { i32 }

@wm8776_field_enum_info.hld = internal constant [16 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.2, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.3, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.4, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.5, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.6, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.7, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.8, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.9, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.10, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.11, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.12, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.13, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.14, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.15, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [5 x i8] c"0 ms\00", align 1
@.str.1 = private unnamed_addr constant [8 x i8] c"2.67 ms\00", align 1
@.str.2 = private unnamed_addr constant [8 x i8] c"5.33 ms\00", align 1
@.str.3 = private unnamed_addr constant [8 x i8] c"10.6 ms\00", align 1
@.str.4 = private unnamed_addr constant [8 x i8] c"21.3 ms\00", align 1
@.str.5 = private unnamed_addr constant [8 x i8] c"42.7 ms\00", align 1
@.str.6 = private unnamed_addr constant [8 x i8] c"85.3 ms\00", align 1
@.str.7 = private unnamed_addr constant [7 x i8] c"171 ms\00", align 1
@.str.8 = private unnamed_addr constant [7 x i8] c"341 ms\00", align 1
@.str.9 = private unnamed_addr constant [7 x i8] c"683 ms\00", align 1
@.str.10 = private unnamed_addr constant [7 x i8] c"1.37 s\00", align 1
@.str.11 = private unnamed_addr constant [7 x i8] c"2.73 s\00", align 1
@.str.12 = private unnamed_addr constant [7 x i8] c"5.46 s\00", align 1
@.str.13 = private unnamed_addr constant [7 x i8] c"10.9 s\00", align 1
@.str.14 = private unnamed_addr constant [7 x i8] c"21.8 s\00", align 1
@.str.15 = private unnamed_addr constant [7 x i8] c"43.7 s\00", align 1
@wm8776_field_enum_info.atk_lim = internal constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.16, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.17, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.21, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.22, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.23, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.24, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.25, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.26, i32 0, i32 0)], align 16
@.str.16 = private unnamed_addr constant [8 x i8] c"0.25 ms\00", align 1
@.str.17 = private unnamed_addr constant [7 x i8] c"0.5 ms\00", align 1
@.str.18 = private unnamed_addr constant [5 x i8] c"1 ms\00", align 1
@.str.19 = private unnamed_addr constant [5 x i8] c"2 ms\00", align 1
@.str.20 = private unnamed_addr constant [5 x i8] c"4 ms\00", align 1
@.str.21 = private unnamed_addr constant [5 x i8] c"8 ms\00", align 1
@.str.22 = private unnamed_addr constant [6 x i8] c"16 ms\00", align 1
@.str.23 = private unnamed_addr constant [6 x i8] c"32 ms\00", align 1
@.str.24 = private unnamed_addr constant [6 x i8] c"64 ms\00", align 1
@.str.25 = private unnamed_addr constant [7 x i8] c"128 ms\00", align 1
@.str.26 = private unnamed_addr constant [7 x i8] c"256 ms\00", align 1
@wm8776_field_enum_info.atk_alc = internal constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.27, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.28, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.29, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.30, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.32, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.33, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.34, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.35, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.36, i32 0, i32 0), i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.37, i32 0, i32 0)], align 16
@.str.27 = private unnamed_addr constant [8 x i8] c"8.40 ms\00", align 1
@.str.28 = private unnamed_addr constant [8 x i8] c"16.8 ms\00", align 1
@.str.29 = private unnamed_addr constant [8 x i8] c"33.6 ms\00", align 1
@.str.30 = private unnamed_addr constant [8 x i8] c"67.2 ms\00", align 1
@.str.31 = private unnamed_addr constant [7 x i8] c"134 ms\00", align 1
@.str.32 = private unnamed_addr constant [7 x i8] c"269 ms\00", align 1
@.str.33 = private unnamed_addr constant [7 x i8] c"538 ms\00", align 1
@.str.34 = private unnamed_addr constant [7 x i8] c"1.08 s\00", align 1
@.str.35 = private unnamed_addr constant [7 x i8] c"2.15 s\00", align 1
@.str.36 = private unnamed_addr constant [6 x i8] c"4.3 s\00", align 1
@.str.37 = private unnamed_addr constant [6 x i8] c"8.6 s\00", align 1
@wm8776_field_enum_info.dcy_lim = internal constant [11 x i8*] [i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.38, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.39, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.40, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.41, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.42, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.43, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.44, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.45, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.46, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.47, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.48, i32 0, i32 0)], align 16
@.str.38 = private unnamed_addr constant [7 x i8] c"1.2 ms\00", align 1
@.str.39 = private unnamed_addr constant [7 x i8] c"2.4 ms\00", align 1
@.str.40 = private unnamed_addr constant [7 x i8] c"4.8 ms\00", align 1
@.str.41 = private unnamed_addr constant [7 x i8] c"9.6 ms\00", align 1
@.str.42 = private unnamed_addr constant [8 x i8] c"19.2 ms\00", align 1
@.str.43 = private unnamed_addr constant [8 x i8] c"38.4 ms\00", align 1
@.str.44 = private unnamed_addr constant [8 x i8] c"76.8 ms\00", align 1
@.str.45 = private unnamed_addr constant [7 x i8] c"154 ms\00", align 1
@.str.46 = private unnamed_addr constant [7 x i8] c"307 ms\00", align 1
@.str.47 = private unnamed_addr constant [7 x i8] c"614 ms\00", align 1
@.str.48 = private unnamed_addr constant [7 x i8] c"1.23 s\00", align 1
@wm8776_field_enum_info.dcy_alc = internal constant [11 x i8*] [i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.49, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.50, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.31, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.51, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.52, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.53, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.54, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.55, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.56, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.57, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.58, i32 0, i32 0)], align 16
@.str.49 = private unnamed_addr constant [8 x i8] c"33.5 ms\00", align 1
@.str.50 = private unnamed_addr constant [8 x i8] c"67.0 ms\00", align 1
@.str.51 = private unnamed_addr constant [7 x i8] c"268 ms\00", align 1
@.str.52 = private unnamed_addr constant [7 x i8] c"536 ms\00", align 1
@.str.53 = private unnamed_addr constant [7 x i8] c"1.07 s\00", align 1
@.str.54 = private unnamed_addr constant [7 x i8] c"2.14 s\00", align 1
@.str.55 = private unnamed_addr constant [7 x i8] c"4.29 s\00", align 1
@.str.56 = private unnamed_addr constant [7 x i8] c"8.58 s\00", align 1
@.str.57 = private unnamed_addr constant [7 x i8] c"17.2 s\00", align 1
@.str.58 = private unnamed_addr constant [7 x i8] c"34.3 s\00", align 1
@wm8776_field_enum_info.tranwin = internal constant [8 x i8*] [i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.59, i32 0, i32 0), i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str.60, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.61, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.62, i32 0, i32 0), i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str.63, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.18, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.19, i32 0, i32 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.20, i32 0, i32 0)], align 16
@.str.59 = private unnamed_addr constant [5 x i8] c"0 us\00", align 1
@.str.60 = private unnamed_addr constant [8 x i8] c"62.5 us\00", align 1
@.str.61 = private unnamed_addr constant [7 x i8] c"125 us\00", align 1
@.str.62 = private unnamed_addr constant [7 x i8] c"250 us\00", align 1
@.str.63 = private unnamed_addr constant [7 x i8] c"500 us\00", align 1
@LC_CONTROL_LIMITER = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_kcontrol*, %struct.snd_ctl_elem_info*)* @wm8776_field_enum_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @wm8776_field_enum_info(%struct.snd_kcontrol* %0, %struct.snd_ctl_elem_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_kcontrol*, align 8
  %5 = alloca %struct.snd_ctl_elem_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8**, align 8
  store %struct.snd_kcontrol* %0, %struct.snd_kcontrol** %4, align 8
  store %struct.snd_ctl_elem_info* %1, %struct.snd_ctl_elem_info** %5, align 8
  %8 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %9 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = ashr i32 %10, 12
  %12 = and i32 %11, 15
  store i32 %12, i32* %6, align 4
  %13 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %14 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = ashr i32 %15, 24
  %17 = and i32 %16, 31
  switch i32 %17, label %48 [
    i32 130, label %18
    i32 129, label %19
    i32 128, label %47
  ]

18:                                               ; preds = %2
  store i8** getelementptr inbounds ([16 x i8*], [16 x i8*]* @wm8776_field_enum_info.hld, i64 0, i64 0), i8*** %7, align 8
  br label %51

19:                                               ; preds = %2
  %20 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %21 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = ashr i32 %22, 20
  %24 = and i32 %23, 15
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %19
  %27 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %28 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* @LC_CONTROL_LIMITER, align 4
  %31 = and i32 %29, %30
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %26
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @wm8776_field_enum_info.atk_lim, i64 0, i64 0), i8*** %7, align 8
  br label %35

34:                                               ; preds = %26
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @wm8776_field_enum_info.atk_alc, i64 0, i64 0), i8*** %7, align 8
  br label %35

35:                                               ; preds = %34, %33
  br label %46

36:                                               ; preds = %19
  %37 = load %struct.snd_kcontrol*, %struct.snd_kcontrol** %4, align 8
  %38 = getelementptr inbounds %struct.snd_kcontrol, %struct.snd_kcontrol* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* @LC_CONTROL_LIMITER, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %36
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @wm8776_field_enum_info.dcy_lim, i64 0, i64 0), i8*** %7, align 8
  br label %45

44:                                               ; preds = %36
  store i8** getelementptr inbounds ([11 x i8*], [11 x i8*]* @wm8776_field_enum_info.dcy_alc, i64 0, i64 0), i8*** %7, align 8
  br label %45

45:                                               ; preds = %44, %43
  br label %46

46:                                               ; preds = %45, %35
  br label %51

47:                                               ; preds = %2
  store i8** getelementptr inbounds ([8 x i8*], [8 x i8*]* @wm8776_field_enum_info.tranwin, i64 0, i64 0), i8*** %7, align 8
  br label %51

48:                                               ; preds = %2
  %49 = load i32, i32* @ENXIO, align 4
  %50 = sub nsw i32 0, %49
  store i32 %50, i32* %3, align 4
  br label %57

51:                                               ; preds = %47, %46, %18
  %52 = load %struct.snd_ctl_elem_info*, %struct.snd_ctl_elem_info** %5, align 8
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  %55 = load i8**, i8*** %7, align 8
  %56 = call i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info* %52, i32 1, i32 %54, i8** %55)
  store i32 %56, i32* %3, align 4
  br label %57

57:                                               ; preds = %51, %48
  %58 = load i32, i32* %3, align 4
  ret i32 %58
}

declare dso_local i32 @snd_ctl_enum_info(%struct.snd_ctl_elem_info*, i32, i32, i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
