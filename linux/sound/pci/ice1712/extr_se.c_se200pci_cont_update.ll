; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_cont_update.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_se.c_se200pci_cont_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { i32, i32 }
%struct.snd_ice1712 = type { %struct.se_spec* }
%struct.se_spec = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@se200pci_cont = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_ice1712*, i32)* @se200pci_cont_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @se200pci_cont_update(%struct.snd_ice1712* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_ice1712*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.se_spec*, align 8
  store %struct.snd_ice1712* %0, %struct.snd_ice1712** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %7 = getelementptr inbounds %struct.snd_ice1712, %struct.snd_ice1712* %6, i32 0, i32 0
  %8 = load %struct.se_spec*, %struct.se_spec** %7, align 8
  store %struct.se_spec* %8, %struct.se_spec** %5, align 8
  %9 = load %struct.TYPE_4__*, %struct.TYPE_4__** @se200pci_cont, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %9, i64 %11
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %111 [
    i32 133, label %15
    i32 130, label %40
    i32 129, label %59
    i32 128, label %78
    i32 131, label %89
    i32 132, label %100
  ]

15:                                               ; preds = %2
  %16 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %17 = load %struct.TYPE_4__*, %struct.TYPE_4__** @se200pci_cont, align 8
  %18 = load i32, i32* %4, align 4
  %19 = sext i32 %18 to i64
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i64 %19
  %21 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %20, i32 0, i32 1
  %22 = load i32, i32* %21, align 4
  %23 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %24 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %23, i32 0, i32 0
  %25 = load %struct.TYPE_3__*, %struct.TYPE_3__** %24, align 8
  %26 = load i32, i32* %4, align 4
  %27 = sext i32 %26 to i64
  %28 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %25, i64 %27
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %32 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %31, i32 0, i32 0
  %33 = load %struct.TYPE_3__*, %struct.TYPE_3__** %32, align 8
  %34 = load i32, i32* %4, align 4
  %35 = sext i32 %34 to i64
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %33, i64 %35
  %37 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = call i32 @se200pci_WM8766_set_volume(%struct.snd_ice1712* %16, i32 %22, i32 %30, i32 %38)
  br label %112

40:                                               ; preds = %2
  %41 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %42 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %43 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %51 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = load i32, i32* %4, align 4
  %54 = sext i32 %53 to i64
  %55 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i64 %54
  %56 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = call i32 @se200pci_WM8776_set_input_volume(%struct.snd_ice1712* %41, i32 %49, i32 %57)
  br label %112

59:                                               ; preds = %2
  %60 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %61 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %62 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %61, i32 0, i32 0
  %63 = load %struct.TYPE_3__*, %struct.TYPE_3__** %62, align 8
  %64 = load i32, i32* %4, align 4
  %65 = sext i32 %64 to i64
  %66 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %63, i64 %65
  %67 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %70 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %69, i32 0, i32 0
  %71 = load %struct.TYPE_3__*, %struct.TYPE_3__** %70, align 8
  %72 = load i32, i32* %4, align 4
  %73 = sext i32 %72 to i64
  %74 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %71, i64 %73
  %75 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i32 @se200pci_WM8776_set_output_volume(%struct.snd_ice1712* %60, i32 %68, i32 %76)
  br label %112

78:                                               ; preds = %2
  %79 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %80 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %81 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %80, i32 0, i32 0
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = load i32, i32* %4, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i64 %84
  %86 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = call i32 @se200pci_WM8776_set_input_selector(%struct.snd_ice1712* %79, i32 %87)
  br label %112

89:                                               ; preds = %2
  %90 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %91 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %92 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %91, i32 0, i32 0
  %93 = load %struct.TYPE_3__*, %struct.TYPE_3__** %92, align 8
  %94 = load i32, i32* %4, align 4
  %95 = sext i32 %94 to i64
  %96 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %93, i64 %95
  %97 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %96, i32 0, i32 0
  %98 = load i32, i32* %97, align 4
  %99 = call i32 @se200pci_WM8776_set_agc(%struct.snd_ice1712* %90, i32 %98)
  br label %112

100:                                              ; preds = %2
  %101 = load %struct.snd_ice1712*, %struct.snd_ice1712** %3, align 8
  %102 = load %struct.se_spec*, %struct.se_spec** %5, align 8
  %103 = getelementptr inbounds %struct.se_spec, %struct.se_spec* %102, i32 0, i32 0
  %104 = load %struct.TYPE_3__*, %struct.TYPE_3__** %103, align 8
  %105 = load i32, i32* %4, align 4
  %106 = sext i32 %105 to i64
  %107 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %104, i64 %106
  %108 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i32 @se200pci_WM8776_set_afl(%struct.snd_ice1712* %101, i32 %109)
  br label %112

111:                                              ; preds = %2
  br label %112

112:                                              ; preds = %111, %100, %89, %78, %59, %40, %15
  ret void
}

declare dso_local i32 @se200pci_WM8766_set_volume(%struct.snd_ice1712*, i32, i32, i32) #1

declare dso_local i32 @se200pci_WM8776_set_input_volume(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @se200pci_WM8776_set_output_volume(%struct.snd_ice1712*, i32, i32) #1

declare dso_local i32 @se200pci_WM8776_set_input_selector(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @se200pci_WM8776_set_agc(%struct.snd_ice1712*, i32) #1

declare dso_local i32 @se200pci_WM8776_set_afl(%struct.snd_ice1712*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
