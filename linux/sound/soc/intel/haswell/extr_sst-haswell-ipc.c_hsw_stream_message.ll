; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_stream_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_stream_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }
%struct.sst_hsw_stream = type { i32, i32 }

@.str = private unnamed_addr constant [42 x i8] c"error: stage msg not implemented 0x%8.8x\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_hsw*, i32)* @hsw_stream_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_stream_message(%struct.sst_hsw* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_hsw*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_hsw_stream*, align 8
  %9 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 0, i32* %9, align 4
  %10 = load i32, i32* %5, align 4
  %11 = call i32 @msg_get_stream_type(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %5, align 4
  %13 = call i32 @msg_get_stream_id(i32 %12)
  store i32 %13, i32* %7, align 4
  %14 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %15 = load i32, i32* %7, align 4
  %16 = call %struct.sst_hsw_stream* @get_stream_by_id(%struct.sst_hsw* %14, i32 %15)
  store %struct.sst_hsw_stream* %16, %struct.sst_hsw_stream** %8, align 8
  %17 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %18 = icmp eq %struct.sst_hsw_stream* %17, null
  br i1 %18, label %19, label %21

19:                                               ; preds = %2
  %20 = load i32, i32* %9, align 4
  store i32 %20, i32* %3, align 4
  br label %42

21:                                               ; preds = %2
  %22 = load i32, i32* %5, align 4
  %23 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %24 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %23, i32 0, i32 0
  store i32 %22, i32* %24, align 4
  %25 = load i32, i32* %6, align 4
  switch i32 %25, label %36 [
    i32 128, label %26
    i32 129, label %32
  ]

26:                                               ; preds = %21
  %27 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %28 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = load i32, i32* %5, align 4
  %31 = call i32 @dev_err(i32 %29, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %30)
  br label %40

32:                                               ; preds = %21
  %33 = load %struct.sst_hsw_stream*, %struct.sst_hsw_stream** %8, align 8
  %34 = getelementptr inbounds %struct.sst_hsw_stream, %struct.sst_hsw_stream* %33, i32 0, i32 1
  %35 = call i32 @schedule_work(i32* %34)
  br label %40

36:                                               ; preds = %21
  %37 = load %struct.sst_hsw*, %struct.sst_hsw** %4, align 8
  %38 = load i32, i32* %5, align 4
  %39 = call i32 @hsw_process_reply(%struct.sst_hsw* %37, i32 %38)
  store i32 %39, i32* %9, align 4
  br label %40

40:                                               ; preds = %36, %32, %26
  %41 = load i32, i32* %9, align 4
  store i32 %41, i32* %3, align 4
  br label %42

42:                                               ; preds = %40, %19
  %43 = load i32, i32* %3, align 4
  ret i32 %43
}

declare dso_local i32 @msg_get_stream_type(i32) #1

declare dso_local i32 @msg_get_stream_id(i32) #1

declare dso_local %struct.sst_hsw_stream* @get_stream_by_id(%struct.sst_hsw*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i32) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @hsw_process_reply(%struct.sst_hsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
