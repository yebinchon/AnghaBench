; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_snd_sof_load_topology.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_topology.c_snd_sof_load_topology.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32 }
%struct.firmware = type { i32 }

@.str = private unnamed_addr constant [21 x i8] c"loading topology:%s\0A\00", align 1
@.str.1 = private unnamed_addr constant [48 x i8] c"error: tplg request firmware %s failed err: %d\0A\00", align 1
@sof_tplg_ops = common dso_local global i32 0, align 4
@SND_SOC_TPLG_INDEX_ALL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [38 x i8] c"error: tplg component load failed %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_load_topology(%struct.snd_sof_dev* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.firmware*, align 8
  %7 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store i8* %1, i8** %5, align 8
  %8 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %9 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = load i8*, i8** %5, align 8
  %12 = call i32 @dev_dbg(i32 %10, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i8* %11)
  %13 = load i8*, i8** %5, align 8
  %14 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %15 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @request_firmware(%struct.firmware** %6, i8* %13, i32 %16)
  store i32 %17, i32* %7, align 4
  %18 = load i32, i32* %7, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %28

20:                                               ; preds = %2
  %21 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %22 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i8*, i8** %5, align 8
  %25 = load i32, i32* %7, align 4
  %26 = call i32 (i32, i8*, ...) @dev_err(i32 %23, i8* getelementptr inbounds ([48 x i8], [48 x i8]* @.str.1, i64 0, i64 0), i8* %24, i32 %25)
  %27 = load i32, i32* %7, align 4
  store i32 %27, i32* %3, align 4
  br label %49

28:                                               ; preds = %2
  %29 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %30 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %29, i32 0, i32 1
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.firmware*, %struct.firmware** %6, align 8
  %33 = load i32, i32* @SND_SOC_TPLG_INDEX_ALL, align 4
  %34 = call i32 @snd_soc_tplg_component_load(i32 %31, i32* @sof_tplg_ops, %struct.firmware* %32, i32 %33)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %28
  %38 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %39 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = load i32, i32* %7, align 4
  %42 = call i32 (i32, i8*, ...) @dev_err(i32 %40, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0), i32 %41)
  %43 = load i32, i32* @EINVAL, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %7, align 4
  br label %45

45:                                               ; preds = %37, %28
  %46 = load %struct.firmware*, %struct.firmware** %6, align 8
  %47 = call i32 @release_firmware(%struct.firmware* %46)
  %48 = load i32, i32* %7, align 4
  store i32 %48, i32* %3, align 4
  br label %49

49:                                               ; preds = %45, %20
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32 @dev_dbg(i32, i8*, i8*) #1

declare dso_local i32 @request_firmware(%struct.firmware**, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @snd_soc_tplg_component_load(i32, i32*, %struct.firmware*, i32) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
