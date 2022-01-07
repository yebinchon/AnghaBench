; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_close.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6adm.c_q6adm_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.device = type { i32 }
%struct.q6copp = type { i32, i32, i32 }
%struct.q6adm = type { i32 }

@.str = private unnamed_addr constant [25 x i8] c"Failed to close copp %d\0A\00", align 1
@q6adm_free_copp = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @q6adm_close(%struct.device* %0, %struct.q6copp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.device*, align 8
  %5 = alloca %struct.q6copp*, align 8
  %6 = alloca %struct.q6adm*, align 8
  %7 = alloca i32, align 4
  store %struct.device* %0, %struct.device** %4, align 8
  store %struct.q6copp* %1, %struct.q6copp** %5, align 8
  %8 = load %struct.device*, %struct.device** %4, align 8
  %9 = getelementptr inbounds %struct.device, %struct.device* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.q6adm* @dev_get_drvdata(i32 %10)
  store %struct.q6adm* %11, %struct.q6adm** %6, align 8
  store i32 0, i32* %7, align 4
  %12 = load %struct.q6adm*, %struct.q6adm** %6, align 8
  %13 = load %struct.q6copp*, %struct.q6copp** %5, align 8
  %14 = load %struct.q6copp*, %struct.q6copp** %5, align 8
  %15 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %14, i32 0, i32 2
  %16 = load i32, i32* %15, align 4
  %17 = load %struct.q6copp*, %struct.q6copp** %5, align 8
  %18 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @q6adm_device_close(%struct.q6adm* %12, %struct.q6copp* %13, i32 %16, i32 %19)
  store i32 %20, i32* %7, align 4
  %21 = load i32, i32* %7, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %2
  %24 = load %struct.q6adm*, %struct.q6adm** %6, align 8
  %25 = getelementptr inbounds %struct.q6adm, %struct.q6adm* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %7, align 4
  %28 = call i32 @dev_err(i32 %26, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* %7, align 4
  store i32 %29, i32* %3, align 4
  br label %35

30:                                               ; preds = %2
  %31 = load %struct.q6copp*, %struct.q6copp** %5, align 8
  %32 = getelementptr inbounds %struct.q6copp, %struct.q6copp* %31, i32 0, i32 0
  %33 = load i32, i32* @q6adm_free_copp, align 4
  %34 = call i32 @kref_put(i32* %32, i32 %33)
  store i32 0, i32* %3, align 4
  br label %35

35:                                               ; preds = %30, %23
  %36 = load i32, i32* %3, align 4
  ret i32 %36
}

declare dso_local %struct.q6adm* @dev_get_drvdata(i32) #1

declare dso_local i32 @q6adm_device_close(%struct.q6adm*, %struct.q6copp*, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @kref_put(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
