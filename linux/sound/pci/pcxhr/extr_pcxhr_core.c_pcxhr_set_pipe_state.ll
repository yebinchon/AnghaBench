; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_set_pipe_state.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/pcxhr/extr_pcxhr_core.c_pcxhr_set_pipe_state.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pcxhr_mgr = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@PCXHR_PIPE_STATE_CAPTURE_OFFSET = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [46 x i8] c"pcxhr_set_pipe_state %s (mask %x current %x)\0A\00", align 1
@.str.1 = private unnamed_addr constant [6 x i8] c"START\00", align 1
@.str.2 = private unnamed_addr constant [5 x i8] c"STOP\00", align 1
@MAX_WAIT_FOR_DSP = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [23 x i8] c"error pipe start/stop\0A\00", align 1
@EBUSY = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @pcxhr_set_pipe_state(%struct.pcxhr_mgr* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.pcxhr_mgr*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  store %struct.pcxhr_mgr* %0, %struct.pcxhr_mgr** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %14 = load i32, i32* %7, align 4
  %15 = load i32, i32* %8, align 4
  %16 = load i32, i32* @PCXHR_PIPE_STATE_CAPTURE_OFFSET, align 4
  %17 = shl i32 %15, %16
  %18 = or i32 %14, %17
  store i32 %18, i32* %13, align 4
  %19 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %20 = call i32 @pcxhr_pipes_running(%struct.pcxhr_mgr* %19)
  store i32 %20, i32* %10, align 4
  %21 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %22 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %21, i32 0, i32 0
  %23 = load %struct.TYPE_2__*, %struct.TYPE_2__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %9, align 4
  %26 = icmp ne i32 %25, 0
  %27 = zext i1 %26 to i64
  %28 = select i1 %26, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str.1, i64 0, i64 0), i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0)
  %29 = load i32, i32* %13, align 4
  %30 = load i32, i32* %10, align 4
  %31 = call i32 (i32*, i8*, ...) @dev_dbg(i32* %24, i8* getelementptr inbounds ([46 x i8], [46 x i8]* @.str, i64 0, i64 0), i8* %28, i32 %29, i32 %30)
  %32 = load i32, i32* %9, align 4
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %62

34:                                               ; preds = %4
  %35 = load i32, i32* %10, align 4
  %36 = xor i32 %35, -1
  %37 = load i32, i32* %13, align 4
  %38 = and i32 %37, %36
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  store i32 %39, i32* %10, align 4
  store i32 0, i32* %11, align 4
  br label %40

40:                                               ; preds = %58, %34
  %41 = load i32, i32* %11, align 4
  %42 = load i32, i32* @MAX_WAIT_FOR_DSP, align 4
  %43 = icmp slt i32 %41, %42
  br i1 %43, label %44, label %61

44:                                               ; preds = %40
  %45 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %46 = load i32, i32* %10, align 4
  %47 = call i32 @pcxhr_prepair_pipe_start(%struct.pcxhr_mgr* %45, i32 %46, i32* %10)
  store i32 %47, i32* %12, align 4
  %48 = load i32, i32* %12, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %52

50:                                               ; preds = %44
  %51 = load i32, i32* %12, align 4
  store i32 %51, i32* %5, align 4
  br label %123

52:                                               ; preds = %44
  %53 = load i32, i32* %10, align 4
  %54 = icmp eq i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %52
  br label %61

56:                                               ; preds = %52
  %57 = call i32 @mdelay(i32 1)
  br label %58

58:                                               ; preds = %56
  %59 = load i32, i32* %11, align 4
  %60 = add nsw i32 %59, 1
  store i32 %60, i32* %11, align 4
  br label %40

61:                                               ; preds = %55, %40
  br label %66

62:                                               ; preds = %4
  %63 = load i32, i32* %10, align 4
  %64 = load i32, i32* %13, align 4
  %65 = and i32 %64, %63
  store i32 %65, i32* %13, align 4
  br label %66

66:                                               ; preds = %62, %61
  %67 = load i32, i32* %13, align 4
  %68 = icmp eq i32 %67, 0
  br i1 %68, label %69, label %70

69:                                               ; preds = %66
  store i32 0, i32* %5, align 4
  br label %123

70:                                               ; preds = %66
  %71 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %72 = load i32, i32* %13, align 4
  %73 = call i32 @pcxhr_toggle_pipes(%struct.pcxhr_mgr* %71, i32 %72)
  store i32 %73, i32* %12, align 4
  %74 = load i32, i32* %12, align 4
  %75 = icmp ne i32 %74, 0
  br i1 %75, label %76, label %78

76:                                               ; preds = %70
  %77 = load i32, i32* %12, align 4
  store i32 %77, i32* %5, align 4
  br label %123

78:                                               ; preds = %70
  store i32 0, i32* %11, align 4
  br label %79

79:                                               ; preds = %78, %108
  %80 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %81 = call i32 @pcxhr_pipes_running(%struct.pcxhr_mgr* %80)
  store i32 %81, i32* %10, align 4
  %82 = load i32, i32* %10, align 4
  %83 = load i32, i32* %13, align 4
  %84 = and i32 %82, %83
  %85 = load i32, i32* %9, align 4
  %86 = icmp ne i32 %85, 0
  br i1 %86, label %87, label %89

87:                                               ; preds = %79
  %88 = load i32, i32* %13, align 4
  br label %90

89:                                               ; preds = %79
  br label %90

90:                                               ; preds = %89, %87
  %91 = phi i32 [ %88, %87 ], [ 0, %89 ]
  %92 = icmp eq i32 %84, %91
  br i1 %92, label %93, label %94

93:                                               ; preds = %90
  br label %110

94:                                               ; preds = %90
  %95 = load i32, i32* %11, align 4
  %96 = add nsw i32 %95, 1
  store i32 %96, i32* %11, align 4
  %97 = load i32, i32* @MAX_WAIT_FOR_DSP, align 4
  %98 = mul nsw i32 %97, 100
  %99 = icmp sge i32 %96, %98
  br i1 %99, label %100, label %108

100:                                              ; preds = %94
  %101 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %102 = getelementptr inbounds %struct.pcxhr_mgr, %struct.pcxhr_mgr* %101, i32 0, i32 0
  %103 = load %struct.TYPE_2__*, %struct.TYPE_2__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %103, i32 0, i32 0
  %105 = call i32 @dev_err(i32* %104, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.3, i64 0, i64 0))
  %106 = load i32, i32* @EBUSY, align 4
  %107 = sub nsw i32 0, %106
  store i32 %107, i32* %5, align 4
  br label %123

108:                                              ; preds = %94
  %109 = call i32 @udelay(i32 10)
  br label %79

110:                                              ; preds = %93
  %111 = load i32, i32* %9, align 4
  %112 = icmp ne i32 %111, 0
  br i1 %112, label %122, label %113

113:                                              ; preds = %110
  %114 = load %struct.pcxhr_mgr*, %struct.pcxhr_mgr** %6, align 8
  %115 = load i32, i32* %13, align 4
  %116 = call i32 @pcxhr_stop_pipes(%struct.pcxhr_mgr* %114, i32 %115)
  store i32 %116, i32* %12, align 4
  %117 = load i32, i32* %12, align 4
  %118 = icmp ne i32 %117, 0
  br i1 %118, label %119, label %121

119:                                              ; preds = %113
  %120 = load i32, i32* %12, align 4
  store i32 %120, i32* %5, align 4
  br label %123

121:                                              ; preds = %113
  br label %122

122:                                              ; preds = %121, %110
  store i32 0, i32* %5, align 4
  br label %123

123:                                              ; preds = %122, %119, %100, %76, %69, %50
  %124 = load i32, i32* %5, align 4
  ret i32 %124
}

declare dso_local i32 @pcxhr_pipes_running(%struct.pcxhr_mgr*) #1

declare dso_local i32 @dev_dbg(i32*, i8*, ...) #1

declare dso_local i32 @pcxhr_prepair_pipe_start(%struct.pcxhr_mgr*, i32, i32*) #1

declare dso_local i32 @mdelay(i32) #1

declare dso_local i32 @pcxhr_toggle_pipes(%struct.pcxhr_mgr*, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @udelay(i32) #1

declare dso_local i32 @pcxhr_stop_pipes(%struct.pcxhr_mgr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
