; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_identify_card.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_atc_identify_card.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_pci_quirk = type { i64 }
%struct.ct_atc = type { i32, i8*, i64, i32, %struct.TYPE_4__*, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [5 x i8] c"20K1\00", align 1
@subsys_20k1_list = common dso_local global %struct.snd_pci_quirk* null, align 8
@.str.1 = private unnamed_addr constant [5 x i8] c"20K2\00", align 1
@subsys_20k2_list = common dso_local global %struct.snd_pci_quirk* null, align 8
@ENOENT = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [34 x i8] c"Device %04x:%04x is black-listed\0A\00", align 1
@CT20K1_UNKNOWN = common dso_local global i64 0, align 8
@CT20K2_UNKNOWN = common dso_local global i64 0, align 8
@ct_subsys_name = common dso_local global i32* null, align 8
@.str.3 = private unnamed_addr constant [39 x i8] c"chip %s model %s (%04x:%04x) is found\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*, i32)* @atc_identify_card to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @atc_identify_card(%struct.ct_atc* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ct_atc*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.snd_pci_quirk*, align 8
  %7 = alloca %struct.snd_pci_quirk*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %4, align 8
  store i32 %1, i32* %5, align 4
  %10 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %11 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %21 [
    i32 129, label %13
    i32 128, label %17
  ]

13:                                               ; preds = %2
  %14 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %15 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %14, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i8** %15, align 8
  %16 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** @subsys_20k1_list, align 8
  store %struct.snd_pci_quirk* %16, %struct.snd_pci_quirk** %7, align 8
  br label %24

17:                                               ; preds = %2
  %18 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %19 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %18, i32 0, i32 1
  store i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.1, i64 0, i64 0), i8** %19, align 8
  %20 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** @subsys_20k2_list, align 8
  store %struct.snd_pci_quirk* %20, %struct.snd_pci_quirk** %7, align 8
  br label %24

21:                                               ; preds = %2
  %22 = load i32, i32* @ENOENT, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %3, align 4
  br label %109

24:                                               ; preds = %17, %13
  %25 = load i32, i32* %5, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %24
  %28 = load i32, i32* %5, align 4
  %29 = lshr i32 %28, 16
  store i32 %29, i32* %8, align 4
  %30 = load i32, i32* %5, align 4
  %31 = and i32 %30, 65535
  store i32 %31, i32* %9, align 4
  br label %43

32:                                               ; preds = %24
  %33 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %34 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %33, i32 0, i32 5
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  store i32 %37, i32* %8, align 4
  %38 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %39 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %38, i32 0, i32 5
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  %42 = load i32, i32* %41, align 4
  store i32 %42, i32* %9, align 4
  br label %43

43:                                               ; preds = %32, %27
  %44 = load i32, i32* %8, align 4
  %45 = load i32, i32* %9, align 4
  %46 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %7, align 8
  %47 = call %struct.snd_pci_quirk* @snd_pci_quirk_lookup_id(i32 %44, i32 %45, %struct.snd_pci_quirk* %46)
  store %struct.snd_pci_quirk* %47, %struct.snd_pci_quirk** %6, align 8
  %48 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %49 = icmp ne %struct.snd_pci_quirk* %48, null
  br i1 %49, label %50, label %72

50:                                               ; preds = %43
  %51 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %52 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp slt i64 %53, 0
  br i1 %54, label %55, label %66

55:                                               ; preds = %50
  %56 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %57 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %56, i32 0, i32 4
  %58 = load %struct.TYPE_4__*, %struct.TYPE_4__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = load i32, i32* %8, align 4
  %62 = load i32, i32* %9, align 4
  %63 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.2, i64 0, i64 0), i32 %61, i32 %62)
  %64 = load i32, i32* @ENOENT, align 4
  %65 = sub nsw i32 0, %64
  store i32 %65, i32* %3, align 4
  br label %109

66:                                               ; preds = %50
  %67 = load %struct.snd_pci_quirk*, %struct.snd_pci_quirk** %6, align 8
  %68 = getelementptr inbounds %struct.snd_pci_quirk, %struct.snd_pci_quirk* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %71 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %70, i32 0, i32 2
  store i64 %69, i64* %71, align 8
  br label %86

72:                                               ; preds = %43
  %73 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %74 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 8
  %76 = icmp eq i32 %75, 129
  br i1 %76, label %77, label %81

77:                                               ; preds = %72
  %78 = load i64, i64* @CT20K1_UNKNOWN, align 8
  %79 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %80 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %79, i32 0, i32 2
  store i64 %78, i64* %80, align 8
  br label %85

81:                                               ; preds = %72
  %82 = load i64, i64* @CT20K2_UNKNOWN, align 8
  %83 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %84 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %83, i32 0, i32 2
  store i64 %82, i64* %84, align 8
  br label %85

85:                                               ; preds = %81, %77
  br label %86

86:                                               ; preds = %85, %66
  %87 = load i32*, i32** @ct_subsys_name, align 8
  %88 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %89 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %88, i32 0, i32 2
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds i32, i32* %87, i64 %90
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %94 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %93, i32 0, i32 3
  store i32 %92, i32* %94, align 8
  %95 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %96 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %95, i32 0, i32 4
  %97 = load %struct.TYPE_4__*, %struct.TYPE_4__** %96, align 8
  %98 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %97, i32 0, i32 0
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %101 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %100, i32 0, i32 1
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.ct_atc*, %struct.ct_atc** %4, align 8
  %104 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %103, i32 0, i32 3
  %105 = load i32, i32* %104, align 8
  %106 = load i32, i32* %8, align 4
  %107 = load i32, i32* %9, align 4
  %108 = call i32 @dev_info(i32 %99, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0), i8* %102, i32 %105, i32 %106, i32 %107)
  store i32 0, i32* %3, align 4
  br label %109

109:                                              ; preds = %86, %55, %21
  %110 = load i32, i32* %3, align 4
  ret i32 %110
}

declare dso_local %struct.snd_pci_quirk* @snd_pci_quirk_lookup_id(i32, i32, %struct.snd_pci_quirk*) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32) #1

declare dso_local i32 @dev_info(i32, i8*, i8*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
