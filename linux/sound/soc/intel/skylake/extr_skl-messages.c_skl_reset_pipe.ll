; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_reset_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/skylake/extr_skl-messages.c_skl_reset_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.skl_dev = type { i32 }
%struct.skl_pipe = type { i64 }

@SKL_PIPE_PAUSED = common dso_local global i64 0, align 8
@PPL_RESET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Failed to reset pipe ret=%d\0A\00", align 1
@SKL_PIPE_RESET = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skl_reset_pipe(%struct.skl_dev* %0, %struct.skl_pipe* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.skl_dev*, align 8
  %5 = alloca %struct.skl_pipe*, align 8
  %6 = alloca i32, align 4
  store %struct.skl_dev* %0, %struct.skl_dev** %4, align 8
  store %struct.skl_pipe* %1, %struct.skl_pipe** %5, align 8
  %7 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %8 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* @SKL_PIPE_PAUSED, align 8
  %11 = icmp slt i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %31

13:                                               ; preds = %2
  %14 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %15 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %16 = load i32, i32* @PPL_RESET, align 4
  %17 = call i32 @skl_set_pipe_state(%struct.skl_dev* %14, %struct.skl_pipe* %15, i32 %16)
  store i32 %17, i32* %6, align 4
  %18 = load i32, i32* %6, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %27

20:                                               ; preds = %13
  %21 = load %struct.skl_dev*, %struct.skl_dev** %4, align 8
  %22 = getelementptr inbounds %struct.skl_dev, %struct.skl_dev* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %6, align 4
  %25 = call i32 @dev_dbg(i32 %23, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %24)
  %26 = load i32, i32* %6, align 4
  store i32 %26, i32* %3, align 4
  br label %31

27:                                               ; preds = %13
  %28 = load i64, i64* @SKL_PIPE_RESET, align 8
  %29 = load %struct.skl_pipe*, %struct.skl_pipe** %5, align 8
  %30 = getelementptr inbounds %struct.skl_pipe, %struct.skl_pipe* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  store i32 0, i32* %3, align 4
  br label %31

31:                                               ; preds = %27, %20, %12
  %32 = load i32, i32* %3, align 4
  ret i32 %32
}

declare dso_local i32 @skl_set_pipe_state(%struct.skl_dev*, %struct.skl_pipe*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
