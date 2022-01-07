; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_fifo_setadbctrl.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/au88x0/extr_au88x0_core.c_vortex_fifo_setadbctrl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_6__ = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@VORTEX_FIFO_ADBCTRL = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [29 x i8] c"vortex_fifo_setadbctrl fail\0A\00", align 1
@FIFO_RDONLY = common dso_local global i32 0, align 4
@FIFO_VALID = common dso_local global i32 0, align 4
@FIFO_SIZE = common dso_local global i32 0, align 4
@FIFO_U1 = common dso_local global i32 0, align 4
@FIFO_BITS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.TYPE_6__*, i32, i32, i32, i32, i32, i32)* @vortex_fifo_setadbctrl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @vortex_fifo_setadbctrl(%struct.TYPE_6__* %0, i32 %1, i32 %2, i32 %3, i32 %4, i32 %5, i32 %6) #0 {
  %8 = alloca %struct.TYPE_6__*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  store %struct.TYPE_6__* %0, %struct.TYPE_6__** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  store i32 %6, i32* %14, align 4
  store i32 0, i32* %16, align 4
  store i32 2, i32* %17, align 4
  br label %18

18:                                               ; preds = %39, %7
  %19 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %20 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = load i64, i64* @VORTEX_FIFO_ADBCTRL, align 8
  %23 = load i32, i32* %9, align 4
  %24 = shl i32 %23, 2
  %25 = sext i32 %24 to i64
  %26 = add nsw i64 %22, %25
  %27 = call i32 @hwread(i32 %21, i64 %26)
  store i32 %27, i32* %15, align 4
  %28 = load i32, i32* %16, align 4
  %29 = add nsw i32 %28, 1
  store i32 %29, i32* %16, align 4
  %30 = icmp sgt i32 %28, 3000
  br i1 %30, label %31, label %38

31:                                               ; preds = %18
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 1
  %34 = load %struct.TYPE_5__*, %struct.TYPE_5__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  br label %44

38:                                               ; preds = %18
  br label %39

39:                                               ; preds = %38
  %40 = load i32, i32* %15, align 4
  %41 = load i32, i32* @FIFO_RDONLY, align 4
  %42 = and i32 %40, %41
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %18, label %44

44:                                               ; preds = %39, %31
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %88

47:                                               ; preds = %44
  %48 = load i32, i32* %15, align 4
  %49 = load i32, i32* @FIFO_VALID, align 4
  %50 = and i32 %48, %49
  %51 = icmp eq i32 %50, 0
  br i1 %51, label %52, label %87

52:                                               ; preds = %47
  %53 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %54 = load i32, i32* %9, align 4
  %55 = load i32, i32* @FIFO_SIZE, align 4
  %56 = call i32 @vortex_fifo_clearadbdata(%struct.TYPE_6__* %53, i32 %54, i32 %55)
  %57 = load i32, i32* %17, align 4
  %58 = and i32 %57, 63
  %59 = shl i32 %58, 12
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = and i32 %60, -3
  %62 = load i32, i32* %10, align 4
  %63 = and i32 %62, 1
  %64 = shl i32 %63, 1
  %65 = or i32 %61, %64
  store i32 %65, i32* %15, align 4
  %66 = load i32, i32* %15, align 4
  %67 = and i32 %66, -13
  %68 = load i32, i32* %11, align 4
  %69 = and i32 %68, 3
  %70 = shl i32 %69, 2
  %71 = or i32 %67, %70
  store i32 %71, i32* %15, align 4
  %72 = load i32, i32* %15, align 4
  %73 = and i32 %72, -17
  %74 = load i32, i32* %13, align 4
  %75 = and i32 %74, 1
  %76 = shl i32 %75, 4
  %77 = or i32 %73, %76
  store i32 %77, i32* %15, align 4
  %78 = load i32, i32* @FIFO_U1, align 4
  %79 = load i32, i32* %15, align 4
  %80 = or i32 %79, %78
  store i32 %80, i32* %15, align 4
  %81 = load i32, i32* %15, align 4
  %82 = and i32 %81, -33
  %83 = load i32, i32* %12, align 4
  %84 = and i32 %83, 1
  %85 = shl i32 %84, 5
  %86 = or i32 %82, %85
  store i32 %86, i32* %15, align 4
  br label %87

87:                                               ; preds = %52, %47
  br label %100

88:                                               ; preds = %44
  %89 = load i32, i32* %15, align 4
  %90 = load i32, i32* @FIFO_VALID, align 4
  %91 = and i32 %89, %90
  %92 = icmp ne i32 %91, 0
  br i1 %92, label %93, label %94

93:                                               ; preds = %88
  br label %99

94:                                               ; preds = %88
  %95 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %96 = load i32, i32* %9, align 4
  %97 = load i32, i32* @FIFO_SIZE, align 4
  %98 = call i32 @vortex_fifo_clearadbdata(%struct.TYPE_6__* %95, i32 %96, i32 %97)
  br label %99

99:                                               ; preds = %94, %93
  br label %100

100:                                              ; preds = %99, %87
  %101 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %102 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 8
  %104 = load i64, i64* @VORTEX_FIFO_ADBCTRL, align 8
  %105 = load i32, i32* %9, align 4
  %106 = shl i32 %105, 2
  %107 = sext i32 %106 to i64
  %108 = add nsw i64 %104, %107
  %109 = load i32, i32* %15, align 4
  %110 = call i32 @hwwrite(i32 %103, i64 %108, i32 %109)
  %111 = load %struct.TYPE_6__*, %struct.TYPE_6__** %8, align 8
  %112 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 8
  %114 = load i64, i64* @VORTEX_FIFO_ADBCTRL, align 8
  %115 = load i32, i32* %9, align 4
  %116 = shl i32 %115, 2
  %117 = sext i32 %116 to i64
  %118 = add nsw i64 %114, %117
  %119 = call i32 @hwread(i32 %113, i64 %118)
  ret void
}

declare dso_local i32 @hwread(i32, i64) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @vortex_fifo_clearadbdata(%struct.TYPE_6__*, i32, i32) #1

declare dso_local i32 @hwwrite(i32, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
