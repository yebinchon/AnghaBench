; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_module.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-sst.c_skl_load_module.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_dsp = type { i32 }
%struct.skl_module_table = type { %struct.TYPE_4__*, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32, i32 }

@.str = private unnamed_addr constant [22 x i8] c"intel/dsp_fw_%pUL.bin\00", align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"Failed to Load module\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_dsp*, i32, i32*)* @skl_load_module to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_load_module(%struct.sst_dsp* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sst_dsp*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.skl_module_table*, align 8
  %9 = alloca i32, align 4
  %10 = alloca [64 x i8], align 16
  store %struct.sst_dsp* %0, %struct.sst_dsp** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store %struct.skl_module_table* null, %struct.skl_module_table** %8, align 8
  store i32 0, i32* %9, align 4
  %11 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %12 = load i32*, i32** %7, align 8
  %13 = call i32 @snprintf(i8* %11, i32 64, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i32* %12)
  %14 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %15 = load i32, i32* %6, align 4
  %16 = call %struct.skl_module_table* @skl_module_get_from_id(%struct.sst_dsp* %14, i32 %15)
  store %struct.skl_module_table* %16, %struct.skl_module_table** %8, align 8
  %17 = load %struct.skl_module_table*, %struct.skl_module_table** %8, align 8
  %18 = icmp eq %struct.skl_module_table* %17, null
  br i1 %18, label %19, label %34

19:                                               ; preds = %3
  %20 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %21 = getelementptr inbounds [64 x i8], [64 x i8]* %10, i64 0, i64 0
  %22 = load i32, i32* %6, align 4
  %23 = call %struct.skl_module_table* @skl_fill_module_table(%struct.sst_dsp* %20, i8* %21, i32 %22)
  store %struct.skl_module_table* %23, %struct.skl_module_table** %8, align 8
  %24 = load %struct.skl_module_table*, %struct.skl_module_table** %8, align 8
  %25 = icmp eq %struct.skl_module_table* %24, null
  br i1 %25, label %26, label %33

26:                                               ; preds = %19
  %27 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %28 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32, i32* @EINVAL, align 4
  %32 = sub nsw i32 0, %31
  store i32 %32, i32* %4, align 4
  br label %71

33:                                               ; preds = %19
  br label %34

34:                                               ; preds = %33, %3
  %35 = load %struct.skl_module_table*, %struct.skl_module_table** %8, align 8
  %36 = getelementptr inbounds %struct.skl_module_table, %struct.skl_module_table* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 8
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %66, label %39

39:                                               ; preds = %34
  %40 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %41 = load %struct.skl_module_table*, %struct.skl_module_table** %8, align 8
  %42 = getelementptr inbounds %struct.skl_module_table, %struct.skl_module_table* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = load %struct.skl_module_table*, %struct.skl_module_table** %8, align 8
  %49 = getelementptr inbounds %struct.skl_module_table, %struct.skl_module_table* %48, i32 0, i32 0
  %50 = load %struct.TYPE_4__*, %struct.TYPE_4__** %49, align 8
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 0
  %52 = load %struct.TYPE_3__*, %struct.TYPE_3__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @skl_transfer_module(%struct.sst_dsp* %40, i32 %47, i32 %54, i32 %55, i32 0, i32 1)
  store i32 %56, i32* %9, align 4
  %57 = load i32, i32* %9, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %65

59:                                               ; preds = %39
  %60 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %61 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 4
  %63 = call i32 @dev_err(i32 %62, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %64 = load i32, i32* %9, align 4
  store i32 %64, i32* %4, align 4
  br label %71

65:                                               ; preds = %39
  br label %66

66:                                               ; preds = %65, %34
  %67 = load %struct.sst_dsp*, %struct.sst_dsp** %5, align 8
  %68 = load i32, i32* %6, align 4
  %69 = call i32 @skl_get_module(%struct.sst_dsp* %67, i32 %68)
  store i32 %69, i32* %9, align 4
  %70 = load i32, i32* %9, align 4
  store i32 %70, i32* %4, align 4
  br label %71

71:                                               ; preds = %66, %59, %26
  %72 = load i32, i32* %4, align 4
  ret i32 %72
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32*) #1

declare dso_local %struct.skl_module_table* @skl_module_get_from_id(%struct.sst_dsp*, i32) #1

declare dso_local %struct.skl_module_table* @skl_fill_module_table(%struct.sst_dsp*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @skl_transfer_module(%struct.sst_dsp*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @skl_get_module(%struct.sst_dsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
