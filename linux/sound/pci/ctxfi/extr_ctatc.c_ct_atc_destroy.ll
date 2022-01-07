; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_ct_atc_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctatc.c_ct_atc_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 (i64)* }
%struct.ct_atc = type { i32*, i64, i64*, i64, i32* }

@NUM_RSCTYP = common dso_local global i32 0, align 4
@rsc_mgr_funcs = common dso_local global %struct.TYPE_2__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ct_atc*)* @ct_atc_destroy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ct_atc_destroy(%struct.ct_atc* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.ct_atc*, align 8
  %4 = alloca i32, align 4
  store %struct.ct_atc* %0, %struct.ct_atc** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %6 = icmp ne %struct.ct_atc* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %98

8:                                                ; preds = %1
  %9 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %10 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %9, i32 0, i32 4
  %11 = load i32*, i32** %10, align 8
  %12 = icmp ne i32* %11, null
  br i1 %12, label %13, label %20

13:                                               ; preds = %8
  %14 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %15 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = call i32 @ct_timer_free(i32* %16)
  %18 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %19 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %18, i32 0, i32 4
  store i32* null, i32** %19, align 8
  br label %20

20:                                               ; preds = %13, %8
  %21 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %22 = call i32 @atc_release_resources(%struct.ct_atc* %21)
  %23 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %24 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %23, i32 0, i32 3
  %25 = load i64, i64* %24, align 8
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %32

27:                                               ; preds = %20
  %28 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %29 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %28, i32 0, i32 3
  %30 = load i64, i64* %29, align 8
  %31 = call i32 @ct_mixer_destroy(i64 %30)
  br label %32

32:                                               ; preds = %27, %20
  store i32 0, i32* %4, align 4
  br label %33

33:                                               ; preds = %70, %32
  %34 = load i32, i32* %4, align 4
  %35 = load i32, i32* @NUM_RSCTYP, align 4
  %36 = icmp slt i32 %34, %35
  br i1 %36, label %37, label %73

37:                                               ; preds = %33
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsc_mgr_funcs, align 8
  %39 = load i32, i32* %4, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i64 %40
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32 (i64)*, i32 (i64)** %42, align 8
  %44 = icmp ne i32 (i64)* %43, null
  br i1 %44, label %45, label %69

45:                                               ; preds = %37
  %46 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %47 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %46, i32 0, i32 2
  %48 = load i64*, i64** %47, align 8
  %49 = load i32, i32* %4, align 4
  %50 = sext i32 %49 to i64
  %51 = getelementptr inbounds i64, i64* %48, i64 %50
  %52 = load i64, i64* %51, align 8
  %53 = icmp ne i64 %52, 0
  br i1 %53, label %54, label %69

54:                                               ; preds = %45
  %55 = load %struct.TYPE_2__*, %struct.TYPE_2__** @rsc_mgr_funcs, align 8
  %56 = load i32, i32* %4, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %55, i64 %57
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32 (i64)*, i32 (i64)** %59, align 8
  %61 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %62 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %61, i32 0, i32 2
  %63 = load i64*, i64** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds i64, i64* %63, i64 %65
  %67 = load i64, i64* %66, align 8
  %68 = call i32 %60(i64 %67)
  br label %69

69:                                               ; preds = %54, %45, %37
  br label %70

70:                                               ; preds = %69
  %71 = load i32, i32* %4, align 4
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %4, align 4
  br label %33

73:                                               ; preds = %33
  %74 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %75 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %74, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %83

78:                                               ; preds = %73
  %79 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %80 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %79, i32 0, i32 1
  %81 = load i64, i64* %80, align 8
  %82 = call i32 @destroy_hw_obj(i64 %81)
  br label %83

83:                                               ; preds = %78, %73
  %84 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %85 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp ne i32* %86, null
  br i1 %87, label %88, label %95

88:                                               ; preds = %83
  %89 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %90 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %89, i32 0, i32 0
  %91 = load i32*, i32** %90, align 8
  %92 = call i32 @ct_vm_destroy(i32* %91)
  %93 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %94 = getelementptr inbounds %struct.ct_atc, %struct.ct_atc* %93, i32 0, i32 0
  store i32* null, i32** %94, align 8
  br label %95

95:                                               ; preds = %88, %83
  %96 = load %struct.ct_atc*, %struct.ct_atc** %3, align 8
  %97 = call i32 @kfree(%struct.ct_atc* %96)
  store i32 0, i32* %2, align 4
  br label %98

98:                                               ; preds = %95, %7
  %99 = load i32, i32* %2, align 4
  ret i32 %99
}

declare dso_local i32 @ct_timer_free(i32*) #1

declare dso_local i32 @atc_release_resources(%struct.ct_atc*) #1

declare dso_local i32 @ct_mixer_destroy(i64) #1

declare dso_local i32 @destroy_hw_obj(i64) #1

declare dso_local i32 @ct_vm_destroy(i32*) #1

declare dso_local i32 @kfree(%struct.ct_atc*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
