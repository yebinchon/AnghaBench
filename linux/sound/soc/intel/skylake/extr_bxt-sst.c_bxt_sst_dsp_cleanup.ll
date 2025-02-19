; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_sst_dsp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_bxt-sst.c_bxt_sst_dsp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_dev = type { %struct.TYPE_4__*, i32, i32, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i32 (%struct.TYPE_4__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @bxt_sst_dsp_cleanup(%struct.device* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.skl_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %4, align 8
  %5 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %6 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %5, i32 0, i32 3
  %7 = load i32, i32* %6, align 8
  %8 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %9 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %8, i32 0, i32 2
  %10 = load i32, i32* %9, align 4
  %11 = call i32 @skl_release_library(i32 %7, i32 %10)
  %12 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %13 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_4__*, %struct.TYPE_4__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %20 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_4__*, %struct.TYPE_4__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = call i32 @release_firmware(i64 %23)
  br label %25

25:                                               ; preds = %18, %2
  %26 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %27 = call i32 @skl_freeup_uuid_list(%struct.skl_dev* %26)
  %28 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 1
  %30 = call i32 @skl_ipc_free(i32* %29)
  %31 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %32 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %31, i32 0, i32 0
  %33 = load %struct.TYPE_4__*, %struct.TYPE_4__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load %struct.TYPE_3__*, %struct.TYPE_3__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %35, i32 0, i32 0
  %37 = load i32 (%struct.TYPE_4__*)*, i32 (%struct.TYPE_4__*)** %36, align 8
  %38 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %39 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %38, i32 0, i32 0
  %40 = load %struct.TYPE_4__*, %struct.TYPE_4__** %39, align 8
  %41 = call i32 %37(%struct.TYPE_4__* %40)
  ret void
}

declare dso_local i32 @skl_release_library(i32, i32) #1

declare dso_local i32 @release_firmware(i64) #1

declare dso_local i32 @skl_freeup_uuid_list(%struct.skl_dev*) #1

declare dso_local i32 @skl_ipc_free(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
