; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/extr_es1968.c_snd_es1968_pcm_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.es1968 = type { i32 }
%struct.esschan = type { i64, i32, i32*, i32*, i32* }

@ESM_MODE_CAPTURE = common dso_local global i64 0, align 8
@ESS_FMT_STEREO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.es1968*, %struct.esschan*)* @snd_es1968_pcm_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_es1968_pcm_start(%struct.es1968* %0, %struct.esschan* %1) #0 {
  %3 = alloca %struct.es1968*, align 8
  %4 = alloca %struct.esschan*, align 8
  store %struct.es1968* %0, %struct.es1968** %3, align 8
  store %struct.esschan* %1, %struct.esschan** %4, align 8
  %5 = load %struct.es1968*, %struct.es1968** %3, align 8
  %6 = getelementptr inbounds %struct.es1968, %struct.es1968* %5, i32 0, i32 0
  %7 = call i32 @spin_lock(i32* %6)
  %8 = load %struct.es1968*, %struct.es1968** %3, align 8
  %9 = load %struct.esschan*, %struct.esschan** %4, align 8
  %10 = getelementptr inbounds %struct.esschan, %struct.esschan* %9, i32 0, i32 3
  %11 = load i32*, i32** %10, align 8
  %12 = getelementptr inbounds i32, i32* %11, i64 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.esschan*, %struct.esschan** %4, align 8
  %15 = getelementptr inbounds %struct.esschan, %struct.esschan* %14, i32 0, i32 4
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 0
  %18 = load i32, i32* %17, align 4
  %19 = call i32 @__apu_set_register(%struct.es1968* %8, i32 %13, i32 5, i32 %18)
  %20 = load %struct.es1968*, %struct.es1968** %3, align 8
  %21 = load %struct.esschan*, %struct.esschan** %4, align 8
  %22 = getelementptr inbounds %struct.esschan, %struct.esschan* %21, i32 0, i32 3
  %23 = load i32*, i32** %22, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 0
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.esschan*, %struct.esschan** %4, align 8
  %27 = getelementptr inbounds %struct.esschan, %struct.esschan* %26, i32 0, i32 2
  %28 = load i32*, i32** %27, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %20, i32 %25, i32 %30)
  %32 = load %struct.esschan*, %struct.esschan** %4, align 8
  %33 = getelementptr inbounds %struct.esschan, %struct.esschan* %32, i32 0, i32 0
  %34 = load i64, i64* %33, align 8
  %35 = load i64, i64* @ESM_MODE_CAPTURE, align 8
  %36 = icmp eq i64 %34, %35
  br i1 %36, label %37, label %62

37:                                               ; preds = %2
  %38 = load %struct.es1968*, %struct.es1968** %3, align 8
  %39 = load %struct.esschan*, %struct.esschan** %4, align 8
  %40 = getelementptr inbounds %struct.esschan, %struct.esschan* %39, i32 0, i32 3
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 2
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.esschan*, %struct.esschan** %4, align 8
  %45 = getelementptr inbounds %struct.esschan, %struct.esschan* %44, i32 0, i32 4
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 2
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @__apu_set_register(%struct.es1968* %38, i32 %43, i32 5, i32 %48)
  %50 = load %struct.es1968*, %struct.es1968** %3, align 8
  %51 = load %struct.esschan*, %struct.esschan** %4, align 8
  %52 = getelementptr inbounds %struct.esschan, %struct.esschan* %51, i32 0, i32 3
  %53 = load i32*, i32** %52, align 8
  %54 = getelementptr inbounds i32, i32* %53, i64 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.esschan*, %struct.esschan** %4, align 8
  %57 = getelementptr inbounds %struct.esschan, %struct.esschan* %56, i32 0, i32 2
  %58 = load i32*, i32** %57, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %50, i32 %55, i32 %60)
  br label %62

62:                                               ; preds = %37, %2
  %63 = load %struct.esschan*, %struct.esschan** %4, align 8
  %64 = getelementptr inbounds %struct.esschan, %struct.esschan* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 8
  %66 = load i32, i32* @ESS_FMT_STEREO, align 4
  %67 = and i32 %65, %66
  %68 = icmp ne i32 %67, 0
  br i1 %68, label %69, label %125

69:                                               ; preds = %62
  %70 = load %struct.es1968*, %struct.es1968** %3, align 8
  %71 = load %struct.esschan*, %struct.esschan** %4, align 8
  %72 = getelementptr inbounds %struct.esschan, %struct.esschan* %71, i32 0, i32 3
  %73 = load i32*, i32** %72, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 1
  %75 = load i32, i32* %74, align 4
  %76 = load %struct.esschan*, %struct.esschan** %4, align 8
  %77 = getelementptr inbounds %struct.esschan, %struct.esschan* %76, i32 0, i32 4
  %78 = load i32*, i32** %77, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 1
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__apu_set_register(%struct.es1968* %70, i32 %75, i32 5, i32 %80)
  %82 = load %struct.es1968*, %struct.es1968** %3, align 8
  %83 = load %struct.esschan*, %struct.esschan** %4, align 8
  %84 = getelementptr inbounds %struct.esschan, %struct.esschan* %83, i32 0, i32 3
  %85 = load i32*, i32** %84, align 8
  %86 = getelementptr inbounds i32, i32* %85, i64 1
  %87 = load i32, i32* %86, align 4
  %88 = load %struct.esschan*, %struct.esschan** %4, align 8
  %89 = getelementptr inbounds %struct.esschan, %struct.esschan* %88, i32 0, i32 2
  %90 = load i32*, i32** %89, align 8
  %91 = getelementptr inbounds i32, i32* %90, i64 1
  %92 = load i32, i32* %91, align 4
  %93 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %82, i32 %87, i32 %92)
  %94 = load %struct.esschan*, %struct.esschan** %4, align 8
  %95 = getelementptr inbounds %struct.esschan, %struct.esschan* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = load i64, i64* @ESM_MODE_CAPTURE, align 8
  %98 = icmp eq i64 %96, %97
  br i1 %98, label %99, label %124

99:                                               ; preds = %69
  %100 = load %struct.es1968*, %struct.es1968** %3, align 8
  %101 = load %struct.esschan*, %struct.esschan** %4, align 8
  %102 = getelementptr inbounds %struct.esschan, %struct.esschan* %101, i32 0, i32 3
  %103 = load i32*, i32** %102, align 8
  %104 = getelementptr inbounds i32, i32* %103, i64 3
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.esschan*, %struct.esschan** %4, align 8
  %107 = getelementptr inbounds %struct.esschan, %struct.esschan* %106, i32 0, i32 4
  %108 = load i32*, i32** %107, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 3
  %110 = load i32, i32* %109, align 4
  %111 = call i32 @__apu_set_register(%struct.es1968* %100, i32 %105, i32 5, i32 %110)
  %112 = load %struct.es1968*, %struct.es1968** %3, align 8
  %113 = load %struct.esschan*, %struct.esschan** %4, align 8
  %114 = getelementptr inbounds %struct.esschan, %struct.esschan* %113, i32 0, i32 3
  %115 = load i32*, i32** %114, align 8
  %116 = getelementptr inbounds i32, i32* %115, i64 3
  %117 = load i32, i32* %116, align 4
  %118 = load %struct.esschan*, %struct.esschan** %4, align 8
  %119 = getelementptr inbounds %struct.esschan, %struct.esschan* %118, i32 0, i32 2
  %120 = load i32*, i32** %119, align 8
  %121 = getelementptr inbounds i32, i32* %120, i64 3
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @snd_es1968_trigger_apu(%struct.es1968* %112, i32 %117, i32 %122)
  br label %124

124:                                              ; preds = %99, %69
  br label %125

125:                                              ; preds = %124, %62
  %126 = load %struct.es1968*, %struct.es1968** %3, align 8
  %127 = getelementptr inbounds %struct.es1968, %struct.es1968* %126, i32 0, i32 0
  %128 = call i32 @spin_unlock(i32* %127)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @__apu_set_register(%struct.es1968*, i32, i32, i32) #1

declare dso_local i32 @snd_es1968_trigger_apu(%struct.es1968*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
