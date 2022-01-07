; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_fill_swm_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_fill_swm_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_soc_component = type { i32 }
%struct.swm_input_ids = type { i32 }

@.str = private unnamed_addr constant [10 x i8] c"reg: %#x\0A\00", align 1
@SST_SWM_INPUT_COUNT = common dso_local global i64 0, align 8
@swm_mixer_input_ids = common dso_local global i32* null, align 8
@SST_DEFAULT_MODULE_ID = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [30 x i8] c"input id: %#x, nb_inputs: %d\0A\00", align 1
@SST_CMD_SWM_MAX_INPUTS = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [31 x i8] c"SET_SWM cmd max inputs reached\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_soc_component*, %struct.swm_input_ids*, i32)* @fill_swm_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fill_swm_input(%struct.snd_soc_component* %0, %struct.swm_input_ids* %1, i32 %2) #0 {
  %4 = alloca %struct.snd_soc_component*, align 8
  %5 = alloca %struct.swm_input_ids*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.snd_soc_component* %0, %struct.snd_soc_component** %4, align 8
  store %struct.swm_input_ids* %1, %struct.swm_input_ids** %5, align 8
  store i32 %2, i32* %6, align 4
  store i64 0, i64* %9, align 8
  %11 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %12 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %6, align 4
  %15 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %13, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i32 %14)
  store i64 0, i64* %7, align 8
  br label %16

16:                                               ; preds = %59, %3
  %17 = load i64, i64* %7, align 8
  %18 = load i64, i64* @SST_SWM_INPUT_COUNT, align 8
  %19 = icmp ult i64 %17, %18
  br i1 %19, label %20, label %62

20:                                               ; preds = %16
  %21 = load i32, i32* %6, align 4
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @BIT(i64 %22)
  %24 = and i32 %21, %23
  %25 = zext i32 %24 to i64
  store i64 %25, i64* %8, align 8
  %26 = load i64, i64* %8, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %29, label %28

28:                                               ; preds = %20
  br label %59

29:                                               ; preds = %20
  %30 = load i32*, i32** @swm_mixer_input_ids, align 8
  %31 = load i64, i64* %7, align 8
  %32 = getelementptr inbounds i32, i32* %30, i64 %31
  %33 = load i32, i32* %32, align 4
  store i32 %33, i32* %10, align 4
  %34 = load %struct.swm_input_ids*, %struct.swm_input_ids** %5, align 8
  %35 = getelementptr inbounds %struct.swm_input_ids, %struct.swm_input_ids* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* %10, align 4
  %38 = load i32, i32* @SST_DEFAULT_MODULE_ID, align 4
  %39 = call i32 @SST_FILL_DESTINATION(i32 2, i32 %36, i32 %37, i32 %38)
  %40 = load i64, i64* %9, align 8
  %41 = add i64 %40, 1
  store i64 %41, i64* %9, align 8
  %42 = load %struct.swm_input_ids*, %struct.swm_input_ids** %5, align 8
  %43 = getelementptr inbounds %struct.swm_input_ids, %struct.swm_input_ids* %42, i32 1
  store %struct.swm_input_ids* %43, %struct.swm_input_ids** %5, align 8
  %44 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %45 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = load i32, i32* %10, align 4
  %48 = load i64, i64* %9, align 8
  %49 = call i32 (i32, i8*, i32, ...) @dev_dbg(i32 %46, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.1, i64 0, i64 0), i32 %47, i64 %48)
  %50 = load i64, i64* %9, align 8
  %51 = load i64, i64* @SST_CMD_SWM_MAX_INPUTS, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %58

53:                                               ; preds = %29
  %54 = load %struct.snd_soc_component*, %struct.snd_soc_component** %4, align 8
  %55 = getelementptr inbounds %struct.snd_soc_component, %struct.snd_soc_component* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 4
  %57 = call i32 @dev_warn(i32 %56, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  br label %62

58:                                               ; preds = %29
  br label %59

59:                                               ; preds = %58, %28
  %60 = load i64, i64* %7, align 8
  %61 = add i64 %60, 1
  store i64 %61, i64* %7, align 8
  br label %16

62:                                               ; preds = %53, %16
  %63 = load i64, i64* %9, align 8
  %64 = trunc i64 %63 to i32
  ret i32 %64
}

declare dso_local i32 @dev_dbg(i32, i8*, i32, ...) #1

declare dso_local i32 @BIT(i64) #1

declare dso_local i32 @SST_FILL_DESTINATION(i32, i32, i32, i32) #1

declare dso_local i32 @dev_warn(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
