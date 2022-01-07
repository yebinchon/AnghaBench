; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_mixart_set_clock.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart.c_mixart_set_clock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { i32 }
%struct.mixart_pipe = type { i32, i32 }
%struct.mixart_msg = type { i32, %struct.mixart_clock_properties*, i32, i32 }
%struct.mixart_clock_properties = type { i32, i32, i32*, i64, i32 }
%struct.mixart_clock_properties_resp = type { i64, i64 }

@.str = private unnamed_addr constant [61 x i8] c"error mixart_set_clock(%d) called with wrong pipe->status !\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@CGT_INTERNAL_CLOCK = common dso_local global i32 0, align 4
@CGT_NO_CLOCK = common dso_local global i32 0, align 4
@CM_STANDALONE = common dso_local global i64 0, align 8
@.str.1 = private unnamed_addr constant [28 x i8] c"mixart_set_clock to %d kHz\0A\00", align 1
@MSG_CLOCK_SET_PROPERTIES = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [56 x i8] c"error MSG_CLOCK_SET_PROPERTIES err=%x stat=%x mod=%x !\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.mixart_mgr*, %struct.mixart_pipe*, i32)* @mixart_set_clock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mixart_set_clock(%struct.mixart_mgr* %0, %struct.mixart_pipe* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.mixart_mgr*, align 8
  %6 = alloca %struct.mixart_pipe*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.mixart_msg, align 8
  %9 = alloca %struct.mixart_clock_properties, align 8
  %10 = alloca %struct.mixart_clock_properties_resp, align 8
  %11 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %5, align 8
  store %struct.mixart_pipe* %1, %struct.mixart_pipe** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load %struct.mixart_pipe*, %struct.mixart_pipe** %6, align 8
  %13 = getelementptr inbounds %struct.mixart_pipe, %struct.mixart_pipe* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  switch i32 %14, label %21 [
    i32 129, label %15
    i32 128, label %16
  ]

15:                                               ; preds = %3
  br label %34

16:                                               ; preds = %3
  %17 = load i32, i32* %7, align 4
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %20

19:                                               ; preds = %16
  br label %34

20:                                               ; preds = %16
  br label %21

21:                                               ; preds = %3, %20
  %22 = load i32, i32* %7, align 4
  %23 = icmp eq i32 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %21
  store i32 0, i32* %4, align 4
  br label %106

25:                                               ; preds = %21
  %26 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %27 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %26, i32 0, i32 0
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %7, align 4
  %31 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %29, i8* getelementptr inbounds ([61 x i8], [61 x i8]* @.str, i64 0, i64 0), i32 %30)
  %32 = load i32, i32* @EINVAL, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %4, align 4
  br label %106

34:                                               ; preds = %19, %15
  %35 = call i32 @memset(%struct.mixart_clock_properties* %9, i32 0, i32 32)
  %36 = load i32, i32* %7, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %40

38:                                               ; preds = %34
  %39 = load i32, i32* @CGT_INTERNAL_CLOCK, align 4
  br label %42

40:                                               ; preds = %34
  %41 = load i32, i32* @CGT_NO_CLOCK, align 4
  br label %42

42:                                               ; preds = %40, %38
  %43 = phi i32 [ %39, %38 ], [ %41, %40 ]
  %44 = getelementptr inbounds %struct.mixart_clock_properties, %struct.mixart_clock_properties* %9, i32 0, i32 4
  store i32 %43, i32* %44, align 8
  %45 = load i64, i64* @CM_STANDALONE, align 8
  %46 = getelementptr inbounds %struct.mixart_clock_properties, %struct.mixart_clock_properties* %9, i32 0, i32 3
  store i64 %45, i64* %46, align 8
  %47 = load i32, i32* %7, align 4
  %48 = getelementptr inbounds %struct.mixart_clock_properties, %struct.mixart_clock_properties* %9, i32 0, i32 0
  store i32 %47, i32* %48, align 8
  %49 = getelementptr inbounds %struct.mixart_clock_properties, %struct.mixart_clock_properties* %9, i32 0, i32 1
  store i32 1, i32* %49, align 4
  %50 = load %struct.mixart_pipe*, %struct.mixart_pipe** %6, align 8
  %51 = getelementptr inbounds %struct.mixart_pipe, %struct.mixart_pipe* %50, i32 0, i32 1
  %52 = load i32, i32* %51, align 4
  %53 = getelementptr inbounds %struct.mixart_clock_properties, %struct.mixart_clock_properties* %9, i32 0, i32 2
  %54 = load i32*, i32** %53, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 0
  store i32 %52, i32* %55, align 4
  %56 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %57 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %56, i32 0, i32 0
  %58 = load %struct.TYPE_2__*, %struct.TYPE_2__** %57, align 8
  %59 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %58, i32 0, i32 0
  %60 = load i32, i32* %7, align 4
  %61 = call i32 @dev_dbg(i32* %59, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.1, i64 0, i64 0), i32 %60)
  %62 = load i32, i32* @MSG_CLOCK_SET_PROPERTIES, align 4
  %63 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 3
  store i32 %62, i32* %63, align 4
  %64 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %65 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 8
  %67 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 2
  store i32 %66, i32* %67, align 8
  %68 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 1
  store %struct.mixart_clock_properties* %9, %struct.mixart_clock_properties** %68, align 8
  %69 = getelementptr inbounds %struct.mixart_msg, %struct.mixart_msg* %8, i32 0, i32 0
  store i32 32, i32* %69, align 8
  %70 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %71 = call i32 @snd_mixart_send_msg(%struct.mixart_mgr* %70, %struct.mixart_msg* %8, i32 16, %struct.mixart_clock_properties_resp* %10)
  store i32 %71, i32* %11, align 4
  %72 = load i32, i32* %11, align 4
  %73 = icmp slt i32 %72, 0
  br i1 %73, label %83, label %74

74:                                               ; preds = %42
  %75 = getelementptr inbounds %struct.mixart_clock_properties_resp, %struct.mixart_clock_properties_resp* %10, i32 0, i32 0
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %83, label %78

78:                                               ; preds = %74
  %79 = getelementptr inbounds %struct.mixart_clock_properties_resp, %struct.mixart_clock_properties_resp* %10, i32 0, i32 1
  %80 = load i64, i64* %79, align 8
  %81 = load i64, i64* @CM_STANDALONE, align 8
  %82 = icmp ne i64 %80, %81
  br i1 %82, label %83, label %96

83:                                               ; preds = %78, %74, %42
  %84 = load %struct.mixart_mgr*, %struct.mixart_mgr** %5, align 8
  %85 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %84, i32 0, i32 0
  %86 = load %struct.TYPE_2__*, %struct.TYPE_2__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %86, i32 0, i32 0
  %88 = load i32, i32* %11, align 4
  %89 = getelementptr inbounds %struct.mixart_clock_properties_resp, %struct.mixart_clock_properties_resp* %10, i32 0, i32 0
  %90 = load i64, i64* %89, align 8
  %91 = getelementptr inbounds %struct.mixart_clock_properties_resp, %struct.mixart_clock_properties_resp* %10, i32 0, i32 1
  %92 = load i64, i64* %91, align 8
  %93 = call i32 (i32*, i8*, i32, ...) @dev_err(i32* %87, i8* getelementptr inbounds ([56 x i8], [56 x i8]* @.str.2, i64 0, i64 0), i32 %88, i64 %90, i64 %92)
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %4, align 4
  br label %106

96:                                               ; preds = %78
  %97 = load i32, i32* %7, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %102

99:                                               ; preds = %96
  %100 = load %struct.mixart_pipe*, %struct.mixart_pipe** %6, align 8
  %101 = getelementptr inbounds %struct.mixart_pipe, %struct.mixart_pipe* %100, i32 0, i32 0
  store i32 129, i32* %101, align 4
  br label %105

102:                                              ; preds = %96
  %103 = load %struct.mixart_pipe*, %struct.mixart_pipe** %6, align 8
  %104 = getelementptr inbounds %struct.mixart_pipe, %struct.mixart_pipe* %103, i32 0, i32 0
  store i32 128, i32* %104, align 4
  br label %105

105:                                              ; preds = %102, %99
  store i32 0, i32* %4, align 4
  br label %106

106:                                              ; preds = %105, %83, %25, %24
  %107 = load i32, i32* %4, align 4
  ret i32 %107
}

declare dso_local i32 @dev_err(i32*, i8*, i32, ...) #1

declare dso_local i32 @memset(%struct.mixart_clock_properties*, i32, i32) #1

declare dso_local i32 @dev_dbg(i32*, i8*, i32) #1

declare dso_local i32 @snd_mixart_send_msg(%struct.mixart_mgr*, %struct.mixart_msg*, i32, %struct.mixart_clock_properties_resp*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
