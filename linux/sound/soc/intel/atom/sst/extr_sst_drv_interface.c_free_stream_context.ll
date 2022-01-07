; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_free_stream_context.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_drv_interface.c_free_stream_context.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.intel_sst_drv = type { i32, i32* }
%struct.stream_info = type { i32 }

@.str = private unnamed_addr constant [55 x i8] c"we tried to free stream context %d which was freed!!!\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @free_stream_context(%struct.intel_sst_drv* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.intel_sst_drv*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.stream_info*, align 8
  %7 = alloca i32, align 4
  store %struct.intel_sst_drv* %0, %struct.intel_sst_drv** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %9 = load i32, i32* %5, align 4
  %10 = call %struct.stream_info* @get_stream_info(%struct.intel_sst_drv* %8, i32 %9)
  store %struct.stream_info* %10, %struct.stream_info** %6, align 8
  %11 = load %struct.stream_info*, %struct.stream_info** %6, align 8
  %12 = icmp ne %struct.stream_info* %11, null
  br i1 %12, label %13, label %29

13:                                               ; preds = %2
  %14 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %15 = load i32, i32* %5, align 4
  %16 = call i32 @sst_free_stream(%struct.intel_sst_drv* %14, i32 %15)
  store i32 %16, i32* %7, align 4
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %27

19:                                               ; preds = %13
  %20 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %21 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %20, i32 0, i32 1
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %5, align 4
  %24 = zext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  %26 = call i32 @sst_clean_stream(i32* %25)
  br label %27

27:                                               ; preds = %19, %13
  %28 = load i32, i32* %7, align 4
  store i32 %28, i32* %3, align 4
  br label %37

29:                                               ; preds = %2
  %30 = load %struct.intel_sst_drv*, %struct.intel_sst_drv** %4, align 8
  %31 = getelementptr inbounds %struct.intel_sst_drv, %struct.intel_sst_drv* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = load i32, i32* %5, align 4
  %34 = call i32 @dev_err(i32 %32, i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i32 %33)
  br label %35

35:                                               ; preds = %29
  %36 = load i32, i32* %7, align 4
  store i32 %36, i32* %3, align 4
  br label %37

37:                                               ; preds = %35, %27
  %38 = load i32, i32* %3, align 4
  ret i32 %38
}

declare dso_local %struct.stream_info* @get_stream_info(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_free_stream(%struct.intel_sst_drv*, i32) #1

declare dso_local i32 @sst_clean_stream(i32*) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
