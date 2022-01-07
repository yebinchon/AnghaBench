; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_setup_out_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_setup_out_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { i64, %struct.skl_module* }
%struct.skl_module = type { %struct.skl_module_iface* }
%struct.skl_module_iface = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.skl_module_fmt }
%struct.skl_module_fmt = type { i32, i32, i32, i32, i32, i32, i32, i64 }
%struct.skl_audio_data_format = type { i64, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [46 x i8] c"copier out format chan=%d fre=%d bitdepth=%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.skl_dev*, %struct.skl_module_cfg*, %struct.skl_audio_data_format*)* @skl_setup_out_format to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @skl_setup_out_format(%struct.skl_dev* %0, %struct.skl_module_cfg* %1, %struct.skl_audio_data_format* %2) #0 {
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_audio_data_format*, align 8
  %7 = alloca %struct.skl_module*, align 8
  %8 = alloca %struct.skl_module_iface*, align 8
  %9 = alloca %struct.skl_module_fmt*, align 8
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  store %struct.skl_audio_data_format* %2, %struct.skl_audio_data_format** %6, align 8
  %10 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %11 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %10, i32 0, i32 1
  %12 = load %struct.skl_module*, %struct.skl_module** %11, align 8
  store %struct.skl_module* %12, %struct.skl_module** %7, align 8
  %13 = load %struct.skl_module*, %struct.skl_module** %7, align 8
  %14 = getelementptr inbounds %struct.skl_module, %struct.skl_module* %13, i32 0, i32 0
  %15 = load %struct.skl_module_iface*, %struct.skl_module_iface** %14, align 8
  %16 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %17 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %15, i64 %18
  store %struct.skl_module_iface* %19, %struct.skl_module_iface** %8, align 8
  %20 = load %struct.skl_module_iface*, %struct.skl_module_iface** %8, align 8
  %21 = getelementptr inbounds %struct.skl_module_iface, %struct.skl_module_iface* %20, i32 0, i32 0
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i64 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  store %struct.skl_module_fmt* %24, %struct.skl_module_fmt** %9, align 8
  %25 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %26 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %25, i32 0, i32 7
  %27 = load i64, i64* %26, align 8
  %28 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %29 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %28, i32 0, i32 0
  store i64 %27, i64* %29, align 8
  %30 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %31 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %34 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %33, i32 0, i32 7
  store i32 %32, i32* %34, align 8
  %35 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %36 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %39 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %38, i32 0, i32 6
  store i32 %37, i32* %39, align 4
  %40 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %41 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %40, i32 0, i32 6
  %42 = load i32, i32* %41, align 8
  %43 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %44 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %46 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %45, i32 0, i32 5
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %49 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %48, i32 0, i32 4
  store i32 %47, i32* %49, align 4
  %50 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %51 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %50, i32 0, i32 4
  %52 = load i32, i32* %51, align 8
  %53 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %54 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %53, i32 0, i32 3
  store i32 %52, i32* %54, align 8
  %55 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %56 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %59 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %58, i32 0, i32 2
  store i32 %57, i32* %59, align 4
  %60 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %61 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 8
  %63 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %64 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %63, i32 0, i32 1
  store i32 %62, i32* %64, align 8
  %65 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %66 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %65, i32 0, i32 0
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.skl_audio_data_format*, %struct.skl_audio_data_format** %6, align 8
  %69 = getelementptr inbounds %struct.skl_audio_data_format, %struct.skl_audio_data_format* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %72 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %71, i32 0, i32 1
  %73 = load i32, i32* %72, align 4
  %74 = load %struct.skl_module_fmt*, %struct.skl_module_fmt** %9, align 8
  %75 = getelementptr inbounds %struct.skl_module_fmt, %struct.skl_module_fmt* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 8
  %77 = call i32 @dev_dbg(i32 %67, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i64 %70, i32 %73, i32 %76)
  ret void
}

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
