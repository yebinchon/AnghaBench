; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_gain_cmd.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-atom-controls.c_sst_send_gain_cmd.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_data = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.sst_gain_value = type { i32, i8*, i8*, i64 }
%struct.sst_cmd_set_gain_dual = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i8*, i8* }

@.str = private unnamed_addr constant [7 x i8] c"Enter\0A\00", align 1
@MMX_SET_GAIN = common dso_local global i32 0, align 4
@SST_GAIN_MIN_VALUE = common dso_local global i8* null, align 8
@SST_IPC_IA_SET_PARAMS = common dso_local global i32 0, align 4
@SST_FLAG_BLOCKED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_data*, %struct.sst_gain_value*, i32, i32, i32, i32)* @sst_send_gain_cmd to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_send_gain_cmd(%struct.sst_data* %0, %struct.sst_gain_value* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.sst_data*, align 8
  %8 = alloca %struct.sst_gain_value*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.sst_cmd_set_gain_dual, align 8
  store %struct.sst_data* %0, %struct.sst_data** %7, align 8
  store %struct.sst_gain_value* %1, %struct.sst_gain_value** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  store i32 %5, i32* %12, align 4
  %14 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %15 = getelementptr inbounds %struct.sst_data, %struct.sst_data* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i32 0, i32 0
  %18 = call i32 @dev_dbg(i32* %17, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0))
  %19 = load i32, i32* @MMX_SET_GAIN, align 4
  %20 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 1
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 2
  store i32 %19, i32* %21, align 4
  %22 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = call i32 @SST_FILL_DEFAULT_DESTINATION(i32 %24)
  %26 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 0
  store i32 1, i32* %26, align 8
  %27 = load i32, i32* %12, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %34, label %29

29:                                               ; preds = %6
  %30 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %31 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %30, i32 0, i32 3
  %32 = load i64, i64* %31, align 8
  %33 = icmp ne i64 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %29, %6
  %35 = load i8*, i8** @SST_GAIN_MIN_VALUE, align 8
  %36 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %37 = load %struct.TYPE_5__*, %struct.TYPE_5__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %37, i64 0
  %39 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %38, i32 0, i32 3
  store i8* %35, i8** %39, align 8
  %40 = load i8*, i8** @SST_GAIN_MIN_VALUE, align 8
  %41 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %42 = load %struct.TYPE_5__*, %struct.TYPE_5__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %42, i64 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 2
  store i8* %40, i8** %44, align 8
  br label %60

45:                                               ; preds = %29
  %46 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %47 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %50 = load %struct.TYPE_5__*, %struct.TYPE_5__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i64 0
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 3
  store i8* %48, i8** %52, align 8
  %53 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %54 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %53, i32 0, i32 1
  %55 = load i8*, i8** %54, align 8
  %56 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %57 = load %struct.TYPE_5__*, %struct.TYPE_5__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %57, i64 0
  %59 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %58, i32 0, i32 2
  store i8* %55, i8** %59, align 8
  br label %60

60:                                               ; preds = %45, %34
  %61 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %62 = load %struct.TYPE_5__*, %struct.TYPE_5__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %62, i64 0
  %64 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load i32, i32* %10, align 4
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @SST_FILL_DESTINATION(i32 2, i32 %65, i32 %66, i32 %67)
  %69 = load %struct.sst_gain_value*, %struct.sst_gain_value** %8, align 8
  %70 = getelementptr inbounds %struct.sst_gain_value, %struct.sst_gain_value* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 2
  %73 = load %struct.TYPE_5__*, %struct.TYPE_5__** %72, align 8
  %74 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %73, i64 0
  %75 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %74, i32 0, i32 0
  store i32 %71, i32* %75, align 8
  %76 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 1
  %77 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %76, i32 0, i32 0
  store i32 20, i32* %77, align 4
  %78 = load %struct.sst_data*, %struct.sst_data** %7, align 8
  %79 = load i32, i32* @SST_IPC_IA_SET_PARAMS, align 4
  %80 = load i32, i32* @SST_FLAG_BLOCKED, align 4
  %81 = load i32, i32* %9, align 4
  %82 = getelementptr inbounds %struct.sst_cmd_set_gain_dual, %struct.sst_cmd_set_gain_dual* %13, i32 0, i32 1
  %83 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = sext i32 %84 to i64
  %86 = add i64 12, %85
  %87 = trunc i64 %86 to i32
  %88 = call i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data* %78, i32 %79, i32 %80, i32 %81, i32 0, %struct.sst_cmd_set_gain_dual* %13, i32 %87)
  ret i32 %88
}

declare dso_local i32 @dev_dbg(i32*, i8*) #1

declare dso_local i32 @SST_FILL_DEFAULT_DESTINATION(i32) #1

declare dso_local i32 @SST_FILL_DESTINATION(i32, i32, i32, i32) #1

declare dso_local i32 @sst_fill_and_send_cmd_unlocked(%struct.sst_data*, i32, i32, i32, i32, %struct.sst_cmd_set_gain_dual*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
