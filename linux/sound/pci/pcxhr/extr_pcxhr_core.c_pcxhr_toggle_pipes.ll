; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_toggle_pipes.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_toggle_pipes.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.pcxhr_rmh = type { i32 }

@CMD_CONF_PIPE = common dso_local global i32 0, align 4
@PCXHR_PIPE_STATE_CAPTURE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"error pipe start (CMD_CONF_PIPE) err=%x!\0A\00", align 1
@CMD_SEND_IRQA = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [42 x i8] c"error pipe start (CMD_SEND_IRQA) err=%x!\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pcxhr_mgr*, i32)* @pcxhr_toggle_pipes to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pcxhr_toggle_pipes(%struct.pcxhr_mgr* %0, i32 %1) #0 {
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

9:                                                ; preds = %46, %2
  %10 = load i32, i32* %5, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %51

12:                                               ; preds = %9
  %13 = load i32, i32* %5, align 4
  %14 = and i32 %13, 1
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %46

16:                                               ; preds = %12
  %17 = load i32, i32* @CMD_CONF_PIPE, align 4
  %18 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %6, i32 %17)
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %21 = icmp slt i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %16
  %23 = load i32, i32* %8, align 4
  %24 = shl i32 1, %23
  %25 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %6, i32 0, i32 0, i32 0, i32 %24)
  br label %32

26:                                               ; preds = %16
  %27 = load i32, i32* %8, align 4
  %28 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %29 = sub nsw i32 %27, %28
  %30 = shl i32 1, %29
  %31 = call i32 @pcxhr_set_pipe_cmd_params(%struct.pcxhr_rmh* %6, i32 1, i32 0, i32 0, i32 %30)
  br label %32

32:                                               ; preds = %26, %22
  %33 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %34 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %33, %struct.pcxhr_rmh* %6)
  store i32 %34, i32* %7, align 4
  %35 = load i32, i32* %7, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %45

37:                                               ; preds = %32
  %38 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %39 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %38, i32 0, i32 0
  %40 = load %struct.TYPE_2__*, %struct.TYPE_2__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 0
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @dev_err(i32* %41, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %42)
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %3, align 4
  br label %67

45:                                               ; preds = %32
  br label %46

46:                                               ; preds = %45, %12
  %47 = load i32, i32* %5, align 4
  %48 = ashr i32 %47, 1
  store i32 %48, i32* %5, align 4
  %49 = load i32, i32* %8, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %8, align 4
  br label %9

51:                                               ; preds = %9
  %52 = load i32, i32* @CMD_SEND_IRQA, align 4
  %53 = call i32 @pcxhr_init_rmh(%struct.pcxhr_rmh* %6, i32 %52)
  %54 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %55 = call i32 @pcxhr_send_msg(%struct.pcxhr_mgr* %54, %struct.pcxhr_rmh* %6)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %51
  %59 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %4, align 8
  %60 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %59, i32 0, i32 0
  %61 = load %struct.TYPE_2__*, %struct.TYPE_2__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 0
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @dev_err(i32* %62, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.1, i64 0, i64 0), i32 %63)
  %65 = load i32, i32* %7, align 4
  store i32 %65, i32* %3, align 4
  br label %67

66:                                               ; preds = %51
  store i32 0, i32* %3, align 4
  br label %67

67:                                               ; preds = %66, %58, %37
  %68 = load i32, i32* %3, align 4
  ret i32 %68
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
