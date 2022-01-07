; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_resume_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_resume_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { %struct.TYPE_3__, i32, i32 (i32, i32)*, i32 (i32, i32)*, i32, i64 }
%struct.TYPE_3__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.hdac_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_resume_dsp(%struct.skl_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.skl_dev*, align 8
  %4 = alloca %struct.hdac_bus*, align 8
  %5 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %3, align 8
  %6 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %7 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %6)
  store %struct.hdac_bus* %7, %struct.hdac_bus** %4, align 8
  %8 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %9 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %81

13:                                               ; preds = %1
  %14 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %15 = call i32 @snd_hdac_ext_bus_ppcap_enable(%struct.hdac_bus* %14, i32 1)
  %16 = load %struct.hdac_bus*, %struct.hdac_bus** %4, align 8
  %17 = call i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus* %16, i32 1)
  %18 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %19 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %18, i32 0, i32 5
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %81

23:                                               ; preds = %13
  %24 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %25 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %24, i32 0, i32 3
  %26 = load i32 (i32, i32)*, i32 (i32, i32)** %25, align 8
  %27 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %28 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i32 %26(i32 %29, i32 0)
  %31 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %32 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %31, i32 0, i32 2
  %33 = load i32 (i32, i32)*, i32 (i32, i32)** %32, align 8
  %34 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %35 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = call i32 %33(i32 %36, i32 0)
  %38 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %39 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %38, i32 0, i32 4
  %40 = load i32, i32* %39, align 8
  %41 = call i32 @skl_dsp_wake(i32 %40)
  store i32 %41, i32* %5, align 4
  %42 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %43 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %42, i32 0, i32 3
  %44 = load i32 (i32, i32)*, i32 (i32, i32)** %43, align 8
  %45 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %46 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 %44(i32 %47, i32 1)
  %49 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %50 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %49, i32 0, i32 2
  %51 = load i32 (i32, i32)*, i32 (i32, i32)** %50, align 8
  %52 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %53 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = call i32 %51(i32 %54, i32 1)
  %56 = load i32, i32* %5, align 4
  %57 = icmp slt i32 %56, 0
  br i1 %57, label %58, label %60

58:                                               ; preds = %23
  %59 = load i32, i32* %5, align 4
  store i32 %59, i32* %2, align 4
  br label %81

60:                                               ; preds = %23
  %61 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %62 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %61, i32 0, i32 0
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load %struct.TYPE_4__*, %struct.TYPE_4__** %63, align 8
  %65 = icmp ne %struct.TYPE_4__* %64, null
  br i1 %65, label %66, label %79

66:                                               ; preds = %60
  %67 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %68 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %69 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %68, i32 0, i32 0
  %70 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %69, i32 0, i32 0
  %71 = load %struct.TYPE_4__*, %struct.TYPE_4__** %70, align 8
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.skl_dev*, %struct.skl_dev** %3, align 8
  %75 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %74, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %75, i32 0, i32 0
  %77 = load %struct.TYPE_4__*, %struct.TYPE_4__** %76, align 8
  %78 = call i32 @skl_dsp_set_astate_cfg(%struct.skl_dev* %67, i32 %73, %struct.TYPE_4__* %77)
  br label %79

79:                                               ; preds = %66, %60
  %80 = load i32, i32* %5, align 4
  store i32 %80, i32* %2, align 4
  br label %81

81:                                               ; preds = %79, %58, %22, %12
  %82 = load i32, i32* %2, align 4
  ret i32 %82
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @snd_hdac_ext_bus_ppcap_enable(%struct.hdac_bus*, i32) #1

declare dso_local i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus*, i32) #1

declare dso_local i32 @skl_dsp_wake(i32) #1

declare dso_local i32 @skl_dsp_set_astate_cfg(%struct.skl_dev*, i32, %struct.TYPE_4__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
