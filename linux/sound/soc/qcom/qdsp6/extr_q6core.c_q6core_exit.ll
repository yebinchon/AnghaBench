; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_exit.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/qcom/qdsp6/extr_q6core.c_q6core_exit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.apr_device = type { i32 }
%struct.q6core = type { %struct.q6core*, i64, %struct.q6core*, i64 }

@g_core = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.apr_device*)* @q6core_exit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @q6core_exit(%struct.apr_device* %0) #0 {
  %2 = alloca %struct.apr_device*, align 8
  %3 = alloca %struct.q6core*, align 8
  store %struct.apr_device* %0, %struct.apr_device** %2, align 8
  %4 = load %struct.apr_device*, %struct.apr_device** %2, align 8
  %5 = getelementptr inbounds %struct.apr_device, %struct.apr_device* %4, i32 0, i32 0
  %6 = call %struct.q6core* @dev_get_drvdata(i32* %5)
  store %struct.q6core* %6, %struct.q6core** %3, align 8
  %7 = load %struct.q6core*, %struct.q6core** %3, align 8
  %8 = getelementptr inbounds %struct.q6core, %struct.q6core* %7, i32 0, i32 3
  %9 = load i64, i64* %8, align 8
  %10 = icmp ne i64 %9, 0
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load %struct.q6core*, %struct.q6core** %3, align 8
  %13 = getelementptr inbounds %struct.q6core, %struct.q6core* %12, i32 0, i32 2
  %14 = load %struct.q6core*, %struct.q6core** %13, align 8
  %15 = call i32 @kfree(%struct.q6core* %14)
  br label %16

16:                                               ; preds = %11, %1
  %17 = load %struct.q6core*, %struct.q6core** %3, align 8
  %18 = getelementptr inbounds %struct.q6core, %struct.q6core* %17, i32 0, i32 1
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %16
  %22 = load %struct.q6core*, %struct.q6core** %3, align 8
  %23 = getelementptr inbounds %struct.q6core, %struct.q6core* %22, i32 0, i32 0
  %24 = load %struct.q6core*, %struct.q6core** %23, align 8
  %25 = call i32 @kfree(%struct.q6core* %24)
  br label %26

26:                                               ; preds = %21, %16
  store i32* null, i32** @g_core, align 8
  %27 = load %struct.q6core*, %struct.q6core** %3, align 8
  %28 = call i32 @kfree(%struct.q6core* %27)
  ret i32 0
}

declare dso_local %struct.q6core* @dev_get_drvdata(i32*) #1

declare dso_local i32 @kfree(%struct.q6core*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
