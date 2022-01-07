; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_dsp_allocate_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_hwdep.c_pcxhr_dsp_allocate_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_pipe = type { i32, i32, i32 }
%struct.pcxhr_rmh = type { i32*, i32 }

@PCXHR_PLAYBACK_STREAMS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [33 x i8] c"snd_add_ref_pipe pin(%d) pcm%c0\0A\00", align 1
@CMD_RES_PIPE = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [46 x i8] c"error pipe allocation (CMD_RES_PIPE) err=%x!\0A\00", align 1
@PCXHR_PIPE_DEFINED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, %struct.pcxhr_pipe*, i32, i32)* @pcxhr_dsp_allocate_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_dsp_allocate_pipe(%struct.pcxhr_mgr* %0, %struct.pcxhr_pipe* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca %struct.pcxhr_pipe*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca %struct.pcxhr_rmh, align 8
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %6, align 8
  store %struct.pcxhr_pipe* %1, %struct.pcxhr_pipe** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %24

16:                                               ; preds = %4
  store i32 1, i32* %10, align 4
  %17 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %18 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %22

21:                                               ; preds = %16
  store i32 1, i32* %11, align 4
  br label %23

22:                                               ; preds = %16
  store i32 2, i32* %11, align 4
  br label %23

23:                                               ; preds = %22, %21
  br label %26

24:                                               ; preds = %4
  %25 = load i32, i32* @PCXHR_PLAYBACK_STREAMS, align 4
  store i32 %25, i32* %10, align 4
  store i32 2, i32* %11, align 4
  br label %26

26:                                               ; preds = %24, %23
  %27 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %28 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %27, i32 0, i32 0
  %29 = load %struct.TYPE_2__*, %struct.TYPE_2__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %29, i32 0, i32 0
  %31 = load i32, i32* %9, align 4
  %32 = load i32, i32* %8, align 4
  %33 = icmp ne i32 %32, 0
  %34 = zext i1 %33 to i64
  %35 = select i1 %33, i32 99, i32 112
  %36 = trunc i32 %35 to i8
  %37 = call i32 @dev_dbg(i32* %30, i8* getelementptr inbounds ([33 x i8], [33 x i8]* @.str, i64 0, i64 0), i32 %31, i8 signext %36)
  %38 = load i32, i32* %8, align 4
  %39 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %7, align 8
  %40 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %39, i32 0, i32 0
  store i32 %38, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %7, align 8
  %43 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @CMD_RES_PIPE, align 4
  %45 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %13, i32 %44)
  %46 = load i32, i32* %8, align 4
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* %11, align 4
  %49 = load i32, i32* %10, align 4
  %50 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %13, i32 %46, i32 %47, i32 %48, i32 %49)
  %51 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  %54 = load i32, i32* %53, align 4
  %55 = or i32 %54, 131072
  store i32 %55, i32* %53, align 4
  %56 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %57 = call i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %26
  %60 = load i32, i32* %11, align 4
  %61 = icmp eq i32 %60, 1
  %62 = zext i1 %61 to i64
  %63 = select i1 %61, i32 1, i32 3
  %64 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 0
  %65 = load i32*, i32** %64, align 8
  %66 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %13, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = add nsw i32 %67, 1
  store i32 %68, i32* %66, align 8
  %69 = sext i32 %67 to i64
  %70 = getelementptr inbounds i32, i32* %65, i64 %69
  store i32 %63, i32* %70, align 4
  br label %71

71:                                               ; preds = %59, %26
  %72 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %73 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %72, %struct.pcxhr_rmh* %13)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %71
  %77 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %78 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %77, i32 0, i32 0
  %79 = load %struct.TYPE_2__*, %struct.TYPE_2__** %78, align 8
  %80 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %79, i32 0, i32 0
  %81 = load i32, i32* %12, align 4
  %82 = call i32 @dev_err(i32* %80, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str.1, i64 0, i64 0), i32 %81)
  %83 = load i32, i32* %12, align 4
  store i32 %83, i32* %5, align 4
  br label %88

84:                                               ; preds = %71
  %85 = load i32, i32* @PCXHR_PIPE_DEFINED, align 4
  %86 = load %struct.pcxhr_pipe*, %struct.pcxhr_pipe** %7, align 8
  %87 = getelementptr inbounds %struct.pcxhr_pipe, %struct.pcxhr_pipe* %86, i32 0, i32 2
  store i32 %85, i32* %87, align 4
  store i32 0, i32* %5, align 4
  br label %88

88:                                               ; preds = %84, %76
  %89 = load i32, i32* %5, align 4
  ret i32 %89
}

declare dso_local i32 @dev_dbg(i32*, i8*, i32, i8 signext) #1

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i64 @DSP_EXT_CMD_SET(%struct.pcxhr_mgr*) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
