; ModuleID = '/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_toggle_pipe.c'
source_filename = "/home/carl/AnghaBench/linux/sound/drivers/vx/extr_vx_pcm.c_vx_toggle_pipe.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vx_core = type { i32 }
%struct.vx_pipe = type { i32 }

@EBADFD = common dso_local global i32 0, align 4
@MAX_WAIT_FOR_DSP = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.vx_core*, %struct.vx_pipe*, i32)* @vx_toggle_pipe to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vx_toggle_pipe(%struct.vx_core* %0, %struct.vx_pipe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.vx_core*, align 8
  %6 = alloca %struct.vx_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.vx_core* %0, %struct.vx_core** %5, align 8
  store %struct.vx_pipe* %1, %struct.vx_pipe** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %12 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %13 = call i32 @vx_get_pipe_state(%struct.vx_core* %11, %struct.vx_pipe* %12, i32* %10)
  %14 = icmp slt i32 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %3
  %16 = load i32, i32* @EBADFD, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load i32, i32* %7, align 4
  %20 = load i32, i32* %10, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %18
  store i32 0, i32* %4, align 4
  br label %89

23:                                               ; preds = %18
  %24 = load i32, i32* %7, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %44

26:                                               ; preds = %23
  store i32 0, i32* %9, align 4
  br label %27

27:                                               ; preds = %40, %26
  %28 = load i32, i32* %9, align 4
  %29 = load i32, i32* @MAX_WAIT_FOR_DSP, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %43

31:                                               ; preds = %27
  %32 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %33 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %34 = call i32 @vx_pipe_can_start(%struct.vx_core* %32, %struct.vx_pipe* %33)
  store i32 %34, i32* %8, align 4
  %35 = load i32, i32* %8, align 4
  %36 = icmp sgt i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %31
  br label %43

38:                                               ; preds = %31
  %39 = call i32 @mdelay(i32 1)
  br label %40

40:                                               ; preds = %38
  %41 = load i32, i32* %9, align 4
  %42 = add nsw i32 %41, 1
  store i32 %42, i32* %9, align 4
  br label %27

43:                                               ; preds = %37, %27
  br label %44

44:                                               ; preds = %43, %23
  %45 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %46 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %47 = call i32 @vx_conf_pipe(%struct.vx_core* %45, %struct.vx_pipe* %46)
  store i32 %47, i32* %8, align 4
  %48 = icmp slt i32 %47, 0
  br i1 %48, label %49, label %51

49:                                               ; preds = %44
  %50 = load i32, i32* %8, align 4
  store i32 %50, i32* %4, align 4
  br label %89

51:                                               ; preds = %44
  %52 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %53 = call i32 @vx_send_irqa(%struct.vx_core* %52)
  store i32 %53, i32* %8, align 4
  %54 = icmp slt i32 %53, 0
  br i1 %54, label %55, label %57

55:                                               ; preds = %51
  %56 = load i32, i32* %8, align 4
  store i32 %56, i32* %4, align 4
  br label %89

57:                                               ; preds = %51
  store i32 0, i32* %9, align 4
  br label %58

58:                                               ; preds = %77, %57
  %59 = load i32, i32* %9, align 4
  %60 = load i32, i32* @MAX_WAIT_FOR_DSP, align 4
  %61 = icmp slt i32 %59, %60
  br i1 %61, label %62, label %80

62:                                               ; preds = %58
  %63 = load %struct.vx_core*, %struct.vx_core** %5, align 8
  %64 = load %struct.vx_pipe*, %struct.vx_pipe** %6, align 8
  %65 = call i32 @vx_get_pipe_state(%struct.vx_core* %63, %struct.vx_pipe* %64, i32* %10)
  store i32 %65, i32* %8, align 4
  %66 = load i32, i32* %8, align 4
  %67 = icmp slt i32 %66, 0
  br i1 %67, label %72, label %68

68:                                               ; preds = %62
  %69 = load i32, i32* %10, align 4
  %70 = load i32, i32* %7, align 4
  %71 = icmp eq i32 %69, %70
  br i1 %71, label %72, label %73

72:                                               ; preds = %68, %62
  br label %80

73:                                               ; preds = %68
  %74 = load i32, i32* @EIO, align 4
  %75 = sub nsw i32 0, %74
  store i32 %75, i32* %8, align 4
  %76 = call i32 @mdelay(i32 1)
  br label %77

77:                                               ; preds = %73
  %78 = load i32, i32* %9, align 4
  %79 = add nsw i32 %78, 1
  store i32 %79, i32* %9, align 4
  br label %58

80:                                               ; preds = %72, %58
  %81 = load i32, i32* %8, align 4
  %82 = icmp slt i32 %81, 0
  br i1 %82, label %83, label %86

83:                                               ; preds = %80
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  br label %87

86:                                               ; preds = %80
  br label %87

87:                                               ; preds = %86, %83
  %88 = phi i32 [ %85, %83 ], [ 0, %86 ]
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %87, %55, %49, %22, %15
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @vx_get_pipe_state(%struct.vx_core*, %struct.vx_pipe*, i32*) #1

declare dso_local i32 @vx_pipe_can_start(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @vx_conf_pipe(%struct.vx_core*, %struct.vx_pipe*) #1

declare dso_local i32 @vx_send_irqa(%struct.vx_core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
