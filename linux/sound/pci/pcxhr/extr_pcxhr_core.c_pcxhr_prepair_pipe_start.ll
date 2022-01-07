; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_prepair_pipe_start.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_prepair_pipe_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i64* }

@CMD_CAN_START_PIPE = common dso_local global i32 0, align 4
@PCXHR_PIPE_STATE_CAPTURE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [47 x i8] c"error pipe start (CMD_CAN_START_PIPE) err=%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32, i32*)* @pcxhr_prepair_pipe_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_prepair_pipe_start(%struct.pcxhr_mgr* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pcxhr_mgr*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.pcxhr_rmh, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  store i32 0, i32* %10, align 4
  %11 = load i32*, i32** %7, align 8
  store i32 0, i32* %11, align 4
  br label %12

12:                                               ; preds = %59, %3
  %13 = load i32, i32* %6, align 4
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %15, label %64

15:                                               ; preds = %12
  %16 = load i32, i32* %6, align 4
  %17 = and i32 %16, 1
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %59

19:                                               ; preds = %15
  %20 = load i32, i32* @CMD_CAN_START_PIPE, align 4
  %21 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %8, i32 %20)
  %22 = load i32, i32* %10, align 4
  %23 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %24 = icmp slt i32 %22, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %19
  %26 = load i32, i32* %10, align 4
  %27 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %8, i32 0, i32 %26, i32 0, i32 0)
  br label %33

28:                                               ; preds = %19
  %29 = load i32, i32* %10, align 4
  %30 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %31 = sub nsw i32 %29, %30
  %32 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %8, i32 1, i32 %31, i32 0, i32 0)
  br label %33

33:                                               ; preds = %28, %25
  %34 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %35 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %34, %struct.pcxhr_rmh* %8)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %46

38:                                               ; preds = %33
  %39 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %5, align 8
  %40 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %39, i32 0, i32 0
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @dev_err(i32* %42, i8* getelementptr inbounds ([47 x i8], [47 x i8]* @.str, i64 0, i64 0), i32 %43)
  %45 = load i32, i32* %9, align 4
  store i32 %45, i32* %4, align 4
  br label %65

46:                                               ; preds = %33
  %47 = getelementptr inbounds %struct.pcxhr_rmh, %struct.pcxhr_rmh* %8, i32 0, i32 0
  %48 = load i64*, i64** %47, align 8
  %49 = getelementptr inbounds i64, i64* %48, i64 0
  %50 = load i64, i64* %49, align 8
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %58

52:                                               ; preds = %46
  %53 = load i32, i32* %10, align 4
  %54 = shl i32 1, %53
  %55 = load i32*, i32** %7, align 8
  %56 = load i32, i32* %55, align 4
  %57 = or i32 %56, %54
  store i32 %57, i32* %55, align 4
  br label %58

58:                                               ; preds = %52, %46
  br label %59

59:                                               ; preds = %58, %15
  %60 = load i32, i32* %6, align 4
  %61 = ashr i32 %60, 1
  store i32 %61, i32* %6, align 4
  %62 = load i32, i32* %10, align 4
  %63 = add nsw i32 %62, 1
  store i32 %63, i32* %10, align 4
  br label %12

64:                                               ; preds = %12
  store i32 0, i32* %4, align 4
  br label %65

65:                                               ; preds = %64, %38
  %66 = load i32, i32* %4, align 4
  ret i32 %66
}

declare dso_local i32 @pcxhr_init_rmh(%struct.pcxhr_rmh*, i32) #1

declare dso_local i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh*, i32, i32, i32, i32) #1

declare dso_local i32 @pcxhr_send_msg(%struct.pcxhr_mgr*, %struct.pcxhr_rmh*) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
