; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_stop_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_stop_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32 }

@CMD_STOP_PIPE = common dso_local global i32 0, align 4
@PCXHR_PIPE_STATE_CAPTURE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error pipe stop (CMD_STOP_PIPE) err=%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32)* @pcxhr_stop_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_stop_pipes(%struct.pcxhr_mgr* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.pcxhr_mgr*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_rmh, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %8, align 4
  br label %9

9:                                                ; preds = %44, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %49

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %44

16:                                               ; preds = %12
  %17 = load i32, i32* @CMD_STOP_PIPE, align 4
  %18 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %6, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %6, i32 0, i32 %23, i32 0, i32 0)
  br label %30

25:                                               ; preds = %16
  %26 = load i32, i32* %8, align 4
  %27 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %28 = sub nsw i32 %26, %27
  %29 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %6, i32 1, i32 %28, i32 0, i32 0)
  br label %30

30:                                               ; preds = %25, %22
  %31 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %32 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %31, %struct.pcxhr_rmh* %6)
  store i32 %32, i32* %7, align 4
  %33 = load i32, i32* %7, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %43

35:                                               ; preds = %30
  %36 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %37 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %7, align 4
  %41 = call i32 @dev_err(i32* %39, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %40)
  %42 = load i32, i32* %7, align 4
  store i32 %42, i32* %3, align 4
  br label %50

43:                                               ; preds = %30
  br label %44

44:                                               ; preds = %43, %12
  %45 = load i32, i32* %5, align 4
  %46 = ashr i32 %45, 1
  store i32 %46, i32* %5, align 4
  %47 = load i32, i32* %8, align 4
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %8, align 4
  br label %9

49:                                               ; preds = %9
  store i32 0, i32* %3, align 4
  br label %50

50:                                               ; preds = %49, %35
  %51 = load i32, i32* %3, align 4
  ret i32 %51
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
