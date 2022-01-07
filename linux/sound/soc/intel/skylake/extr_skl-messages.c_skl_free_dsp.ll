; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_free_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_free_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { %struct.TYPE_8__*, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i64 }
%struct.TYPE_6__ = type { i32, i32 }
%struct.TYPE_5__ = type { i32 (i32, %struct.skl_dev*)* }
%struct.hdac_bus = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_free_dsp(%struct.skl_dev* %0) #0 {
  %2 = alloca %struct.skl_dev*, align 8
  %3 = alloca %struct.hdac_bus*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %2, align 8
  %4 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %5 = call %struct.hdac_bus* @skl_to_bus(%struct.skl_dev* %4)
  store %struct.hdac_bus* %5, %struct.hdac_bus** %3, align 8
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %7 = call i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus* %6, i32 0)
  %8 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %9 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %8, i32 0, i32 2
  %10 = load %struct.TYPE_5__*, %struct.TYPE_5__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %10, i32 0, i32 0
  %12 = load i32 (i32, %struct.skl_dev*)*, i32 (i32, %struct.skl_dev*)** %11, align 8
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %3, align 8
  %14 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %17 = call i32 %12(i32 %15, %struct.skl_dev* %16)
  %18 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %19 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %18, i32 0, i32 1
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @kfree(i32 %21)
  %23 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %24 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %23, i32 0, i32 1
  %25 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i32 @kfree(i32 %26)
  %28 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = icmp ne i64 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %1
  %36 = load %struct.skl_dev*, %struct.skl_dev** %2, align 8
  %37 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %36, i32 0, i32 0
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = call i32 @iounmap(i64 %41)
  br label %43

43:                                               ; preds = %35, %1
  ret i32 0
}

declare dso_local %struct.hdac_bus* @skl_to_bus(%struct.skl_dev*) #1

declare dso_local i32 @snd_hdac_ext_bus_ppcap_int_enable(%struct.hdac_bus*, i32) #1

declare dso_local i32 @kfree(i32) #1

declare dso_local i32 @iounmap(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
