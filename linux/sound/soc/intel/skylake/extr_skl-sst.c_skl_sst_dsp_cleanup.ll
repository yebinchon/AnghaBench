; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_sst_dsp_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_sst_dsp_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_dev = type { %struct.TYPE_11__*, i64, i32 }
%struct.TYPE_11__ = type { %struct.TYPE_10__, %struct.TYPE_8__*, i64 }
%struct.TYPE_10__ = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32 (%struct.TYPE_11__*)* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_11__*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @skl_sst_dsp_cleanup(%struct.device* %0, %struct.skl_dev* %1) #0 {
  %3 = alloca %struct.device*, align 8
  %4 = alloca %struct.skl_dev*, align 8
  store %struct.device* %0, %struct.device** %3, align 8
  store %struct.skl_dev* %1, %struct.skl_dev** %4, align 8
  %5 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %6 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %5, i32 0, i32 0
  %7 = load %struct.TYPE_11__*, %struct.TYPE_11__** %6, align 8
  %8 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %7, i32 0, i32 2
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %18

11:                                               ; preds = %2
  %12 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %13 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %12, i32 0, i32 0
  %14 = load %struct.TYPE_11__*, %struct.TYPE_11__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %14, i32 0, i32 2
  %16 = load i64, i64* %15, align 8
  %17 = call i32 @release_firmware(i64 %16)
  br label %18

18:                                               ; preds = %11, %2
  %19 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %20 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %19, i32 0, i32 0
  %21 = load %struct.TYPE_11__*, %struct.TYPE_11__** %20, align 8
  %22 = call i32 @skl_clear_module_table(%struct.TYPE_11__* %21)
  %23 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %24 = call i32 @skl_freeup_uuid_list(%struct.skl_dev* %23)
  %25 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %26 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %25, i32 0, i32 2
  %27 = call i32 @skl_ipc_free(i32* %26)
  %28 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %29 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %28, i32 0, i32 0
  %30 = load %struct.TYPE_11__*, %struct.TYPE_11__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %30, i32 0, i32 1
  %32 = load %struct.TYPE_8__*, %struct.TYPE_8__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %33, align 8
  %35 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %36 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %35, i32 0, i32 0
  %37 = load %struct.TYPE_11__*, %struct.TYPE_11__** %36, align 8
  %38 = call i32 %34(%struct.TYPE_11__* %37)
  %39 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %40 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %39, i32 0, i32 1
  %41 = load i64, i64* %40, align 8
  %42 = icmp ne i64 %41, 0
  br i1 %42, label %43, label %59

43:                                               ; preds = %18
  %44 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %45 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %44, i32 0, i32 0
  %46 = load %struct.TYPE_11__*, %struct.TYPE_11__** %45, align 8
  %47 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %48, i32 0, i32 0
  %50 = load i32 (%struct.TYPE_11__*)*, i32 (%struct.TYPE_11__*)** %49, align 8
  %51 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %52 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %51, i32 0, i32 0
  %53 = load %struct.TYPE_11__*, %struct.TYPE_11__** %52, align 8
  %54 = call i32 %50(%struct.TYPE_11__* %53)
  %55 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %56 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %55, i32 0, i32 0
  %57 = load %struct.TYPE_11__*, %struct.TYPE_11__** %56, align 8
  %58 = call i32 @skl_cldma_int_disable(%struct.TYPE_11__* %57)
  br label %59

59:                                               ; preds = %43, %18
  ret void
}

declare dso_local i32 @release_firmware(i64) #1

declare dso_local i32 @skl_clear_module_table(%struct.TYPE_11__*) #1

declare dso_local i32 @skl_freeup_uuid_list(%struct.skl_dev*) #1

declare dso_local i32 @skl_ipc_free(i32*) #1

declare dso_local i32 @skl_cldma_int_disable(%struct.TYPE_11__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
