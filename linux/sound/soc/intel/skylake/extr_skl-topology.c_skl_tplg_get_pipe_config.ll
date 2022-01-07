; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pipe_config.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-topology.c_skl_tplg_get_pipe_config.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_module_cfg = type { %struct.skl_pipe* }
%struct.skl_pipe = type { i32, i32, i64, i64, i32, i32, %struct.skl_path_config*, %struct.skl_pipe_params* }
%struct.skl_path_config = type { i32, %struct.skl_pipe_fmt, %struct.skl_pipe_fmt }
%struct.skl_pipe_fmt = type { i32, i32, i32 }
%struct.skl_pipe_params = type { i32, i32, i32 }

@SKL_PIPE_CONN_TYPE_NONE = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [40 x i8] c"No conn_type detected, take 0th config\0A\00", align 1
@SKL_PIPE_CONN_TYPE_FE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_PLAYBACK = common dso_local global i64 0, align 8
@SKL_PIPE_CONN_TYPE_BE = common dso_local global i64 0, align 8
@SNDRV_PCM_STREAM_CAPTURE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"Using pipe config: %d\0A\00", align 1
@.str.2 = private unnamed_addr constant [44 x i8] c"Invalid pipe config: %d %d %d for pipe: %d\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.skl_dev*, %struct.skl_module_cfg*)* @skl_tplg_get_pipe_config to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @skl_tplg_get_pipe_config(%struct.skl_dev* %0, %struct.skl_module_cfg* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_module_cfg*, align 8
  %6 = alloca %struct.skl_pipe*, align 8
  %7 = alloca %struct.skl_pipe_params*, align 8
  %8 = alloca %struct.skl_path_config*, align 8
  %9 = alloca %struct.skl_pipe_fmt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_module_cfg* %1, %struct.skl_module_cfg** %5, align 8
  %12 = load %struct.skl_module_cfg*, %struct.skl_module_cfg** %5, align 8
  %13 = getelementptr inbounds %struct.skl_module_cfg, %struct.skl_module_cfg* %12, i32 0, i32 0
  %14 = load %struct.skl_pipe*, %struct.skl_pipe** %13, align 8
  store %struct.skl_pipe* %14, %struct.skl_pipe** %6, align 8
  %15 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %16 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %15, i32 0, i32 7
  %17 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %16, align 8
  store %struct.skl_pipe_params* %17, %struct.skl_pipe_params** %7, align 8
  %18 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %19 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %18, i32 0, i32 6
  %20 = load %struct.skl_path_config*, %struct.skl_path_config** %19, align 8
  %21 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %20, i64 0
  store %struct.skl_path_config* %21, %struct.skl_path_config** %8, align 8
  store %struct.skl_pipe_fmt* null, %struct.skl_pipe_fmt** %9, align 8
  store i32 0, i32* %10, align 4
  %22 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %23 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %2
  %27 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %28 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %27, i32 0, i32 1
  store i32 0, i32* %28, align 4
  store i32 0, i32* %3, align 4
  br label %152

29:                                               ; preds = %2
  %30 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %31 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %30, i32 0, i32 2
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @SKL_PIPE_CONN_TYPE_NONE, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %47

35:                                               ; preds = %29
  %36 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %37 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i32 (i32, i8*, ...) @dev_dbg(i32 %38, i8* getelementptr inbounds ([40 x i8], [40 x i8]* @.str, i64 0, i64 0))
  %40 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %41 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %40, i32 0, i32 1
  store i32 0, i32* %41, align 4
  %42 = load %struct.skl_path_config*, %struct.skl_path_config** %8, align 8
  %43 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %46 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %45, i32 0, i32 5
  store i32 %44, i32* %46, align 4
  store i32 0, i32* %3, align 4
  br label %152

47:                                               ; preds = %29
  %48 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %49 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load i64, i64* @SKL_PIPE_CONN_TYPE_FE, align 8
  %52 = icmp eq i64 %50, %51
  br i1 %52, label %53, label %59

53:                                               ; preds = %47
  %54 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %55 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %54, i32 0, i32 3
  %56 = load i64, i64* %55, align 8
  %57 = load i64, i64* @SNDRV_PCM_STREAM_PLAYBACK, align 8
  %58 = icmp eq i64 %56, %57
  br i1 %58, label %71, label %59

59:                                               ; preds = %53, %47
  %60 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %61 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %60, i32 0, i32 2
  %62 = load i64, i64* %61, align 8
  %63 = load i64, i64* @SKL_PIPE_CONN_TYPE_BE, align 8
  %64 = icmp eq i64 %62, %63
  br i1 %64, label %65, label %72

65:                                               ; preds = %59
  %66 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %67 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %66, i32 0, i32 3
  %68 = load i64, i64* %67, align 8
  %69 = load i64, i64* @SNDRV_PCM_STREAM_CAPTURE, align 8
  %70 = icmp eq i64 %68, %69
  br i1 %70, label %71, label %72

71:                                               ; preds = %65, %53
  store i32 1, i32* %10, align 4
  br label %72

72:                                               ; preds = %71, %65, %59
  store i32 0, i32* %11, align 4
  br label %73

73:                                               ; preds = %130, %72
  %74 = load i32, i32* %11, align 4
  %75 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %76 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = icmp slt i32 %74, %77
  br i1 %78, label %79, label %133

79:                                               ; preds = %73
  %80 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %81 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %80, i32 0, i32 6
  %82 = load %struct.skl_path_config*, %struct.skl_path_config** %81, align 8
  %83 = load i32, i32* %11, align 4
  %84 = sext i32 %83 to i64
  %85 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %82, i64 %84
  store %struct.skl_path_config* %85, %struct.skl_path_config** %8, align 8
  %86 = load i32, i32* %10, align 4
  %87 = icmp ne i32 %86, 0
  br i1 %87, label %88, label %91

88:                                               ; preds = %79
  %89 = load %struct.skl_path_config*, %struct.skl_path_config** %8, align 8
  %90 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %89, i32 0, i32 2
  store %struct.skl_pipe_fmt* %90, %struct.skl_pipe_fmt** %9, align 8
  br label %94

91:                                               ; preds = %79
  %92 = load %struct.skl_path_config*, %struct.skl_path_config** %8, align 8
  %93 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %92, i32 0, i32 1
  store %struct.skl_pipe_fmt* %93, %struct.skl_pipe_fmt** %9, align 8
  br label %94

94:                                               ; preds = %91, %88
  %95 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %96 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %95, i32 0, i32 2
  %97 = load i32, i32* %96, align 4
  %98 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %99 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %98, i32 0, i32 1
  %100 = load i32, i32* %99, align 4
  %101 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %102 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %9, align 8
  %105 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %104, i32 0, i32 2
  %106 = load i32, i32* %105, align 4
  %107 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %9, align 8
  %108 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = load %struct.skl_pipe_fmt*, %struct.skl_pipe_fmt** %9, align 8
  %111 = getelementptr inbounds %struct.skl_pipe_fmt, %struct.skl_pipe_fmt* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 4
  %113 = call i64 @CHECK_HW_PARAMS(i32 %97, i32 %100, i32 %103, i32 %106, i32 %109, i32 %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %129

115:                                              ; preds = %94
  %116 = load i32, i32* %11, align 4
  %117 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %118 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %117, i32 0, i32 1
  store i32 %116, i32* %118, align 4
  %119 = load %struct.skl_path_config*, %struct.skl_path_config** %8, align 8
  %120 = getelementptr inbounds %struct.skl_path_config, %struct.skl_path_config* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %123 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %122, i32 0, i32 5
  store i32 %121, i32* %123, align 4
  %124 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %125 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %124, i32 0, i32 0
  %126 = load i32, i32* %125, align 4
  %127 = load i32, i32* %11, align 4
  %128 = call i32 (i32, i8*, ...) @dev_dbg(i32 %126, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %127)
  store i32 0, i32* %3, align 4
  br label %152

129:                                              ; preds = %94
  br label %130

130:                                              ; preds = %129
  %131 = load i32, i32* %11, align 4
  %132 = add nsw i32 %131, 1
  store i32 %132, i32* %11, align 4
  br label %73

133:                                              ; preds = %73
  %134 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %135 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %138 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %137, i32 0, i32 2
  %139 = load i32, i32* %138, align 4
  %140 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %141 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %140, i32 0, i32 1
  %142 = load i32, i32* %141, align 4
  %143 = load %struct.skl_pipe_params*, %struct.skl_pipe_params** %7, align 8
  %144 = getelementptr inbounds %struct.skl_pipe_params, %struct.skl_pipe_params* %143, i32 0, i32 0
  %145 = load i32, i32* %144, align 4
  %146 = load %struct.skl_pipe*, %struct.skl_pipe** %6, align 8
  %147 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %146, i32 0, i32 4
  %148 = load i32, i32* %147, align 8
  %149 = call i32 @dev_err(i32 %136, i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str.2, i64 0, i64 0), i32 %139, i32 %142, i32 %145, i32 %148)
  %150 = load i32, i32* @EINVAL, align 4
  %151 = sub nsw i32 0, %150
  store i32 %151, i32* %3, align 4
  br label %152

152:                                              ; preds = %133, %115, %35, %26
  %153 = load i32, i32* %3, align 4
  ret i32 %153
}

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i64 @CHECK_HW_PARAMS(i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
