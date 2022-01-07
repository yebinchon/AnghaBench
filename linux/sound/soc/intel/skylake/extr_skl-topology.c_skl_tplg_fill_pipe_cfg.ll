; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pipe_cfg.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_fill_pipe_cfg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.skl_pipe = type { %struct.skl_path_config* }
%struct.skl_path_config = type { i32, %struct.skl_pipe_fmt, %struct.skl_pipe_fmt }
%struct.skl_pipe_fmt = type { i32, i32, i32 }

@.str = private unnamed_addr constant [23 x i8] c"Invalid direction: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"Invalid token config: %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.device*, %struct.skl_pipe*, i32, i32, i32, i32)* @skl_tplg_fill_pipe_cfg to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_fill_pipe_cfg(%struct.device* %0, %struct.skl_pipe* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.skl_pipe*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.skl_pipe_fmt*, align 8
  %15 = alloca %struct.skl_path_config*, align 8
  store %struct.device* %0, %struct.device** %8, align 8
  store %struct.skl_pipe* %1, %struct.skl_pipe** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %16 = load i32, i32* %13, align 4
  switch i32 %16, label %33 [
    i32 133, label %17
    i32 132, label %25
  ]

17:                                               ; preds = %6
  %18 = load %struct.skl_pipe*, %struct.skl_pipe** %9, align 8
  %19 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %18, i32 0, i32 0
  %20 = load %struct.skl_path_config*, %struct.skl_path_config** %19, align 8
  %21 = load i32, i32* %12, align 4
  %22 = sext i32 %21 to i64
  %23 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %20, i64 %22
  %24 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %23, i32 0, i32 2
  store %struct.skl_pipe_fmt* %24, %struct.skl_pipe_fmt** %14, align 8
  br label %39

25:                                               ; preds = %6
  %26 = load %struct.skl_pipe*, %struct.skl_pipe** %9, align 8
  %27 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %26, i32 0, i32 0
  %28 = load %struct.skl_path_config*, %struct.skl_path_config** %27, align 8
  %29 = load i32, i32* %12, align 4
  %30 = sext i32 %29 to i64
  %31 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %28, i64 %30
  %32 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %31, i32 0, i32 1
  store %struct.skl_pipe_fmt* %32, %struct.skl_pipe_fmt** %14, align 8
  br label %39

33:                                               ; preds = %6
  %34 = load %struct.device*, %struct.device** %8, align 8
  %35 = load i32, i32* %13, align 4
  %36 = call i32 @dev_err(%struct.device* %34, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0), i32 %35)
  %37 = load i32, i32* @EINVAL, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %7, align 4
  br label %70

39:                                               ; preds = %25, %17
  %40 = load %struct.skl_pipe*, %struct.skl_pipe** %9, align 8
  %41 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %40, i32 0, i32 0
  %42 = load %struct.skl_path_config*, %struct.skl_path_config** %41, align 8
  %43 = load i32, i32* %12, align 4
  %44 = sext i32 %43 to i64
  %45 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %42, i64 %44
  store %struct.skl_path_config* %45, %struct.skl_path_config** %15, align 8
  %46 = load i32, i32* %10, align 4
  switch i32 %46, label %63 [
    i32 131, label %47
    i32 128, label %51
    i32 129, label %55
    i32 130, label %59
  ]

47:                                               ; preds = %39
  %48 = load i32, i32* %11, align 4
  %49 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %14, align 8
  %50 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  br label %69

51:                                               ; preds = %39
  %52 = load i32, i32* %11, align 4
  %53 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %14, align 8
  %54 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %53, i32 0, i32 1
  store i32 %52, i32* %54, align 4
  br label %69

55:                                               ; preds = %39
  %56 = load i32, i32* %11, align 4
  %57 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %14, align 8
  %58 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %57, i32 0, i32 2
  store i32 %56, i32* %58, align 4
  br label %69

59:                                               ; preds = %39
  %60 = load i32, i32* %11, align 4
  %61 = load %struct.skl_path_config*, %struct.skl_path_config** %15, align 8
  %62 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %61, i32 0, i32 0
  store i32 %60, i32* %62, align 4
  br label %69

63:                                               ; preds = %39
  %64 = load %struct.device*, %struct.device** %8, align 8
  %65 = load i32, i32* %10, align 4
  %66 = call i32 @dev_err(%struct.device* %64, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i32 %65)
  %67 = load i32, i32* @EINVAL, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %7, align 4
  br label %70

69:                                               ; preds = %59, %55, %51, %47
  store i32 0, i32* %7, align 4
  br label %70

70:                                               ; preds = %69, %63, %33
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @dev_err(%struct.device*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
