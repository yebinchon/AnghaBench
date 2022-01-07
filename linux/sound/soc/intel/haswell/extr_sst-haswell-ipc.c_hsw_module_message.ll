; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_module_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/haswell/extr_sst-haswell-ipc.c_hsw_module_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_hsw = type { i32 }

@.str = private unnamed_addr constant [41 x i8] c"received module message header: 0x%8.8x\0A\00", align 1
@.str.1 = private unnamed_addr constant [39 x i8] c"operation: 0x%8.8x module_id: 0x%8.8x\0A\00", align 1
@.str.2 = private unnamed_addr constant [29 x i8] c"module notification received\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_hsw*, i32)* @hsw_module_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hsw_module_message(%struct.sst_hsw* %0, i32 %1) #0 {
  %3 = alloca %struct.sst_hsw*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sst_hsw* %0, %struct.sst_hsw** %3, align 8
  store i32 %1, i32* %4, align 4
  store i32 0, i32* %7, align 4
  %8 = load i32, i32* %4, align 4
  %9 = call i32 @msg_get_module_operation(i32 %8)
  store i32 %9, i32* %5, align 4
  %10 = load i32, i32* %4, align 4
  %11 = call i32 @msg_get_module_id(i32 %10)
  store i32 %11, i32* %6, align 4
  %12 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %13 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* %4, align 4
  %16 = call i32 (i32, i8*, ...) @dev_dbg(i32 %14, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0), i32 %15)
  %17 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %18 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* %6, align 4
  %22 = call i32 (i32, i8*, ...) @dev_dbg(i32 %19, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  switch i32 %23, label %29 [
    i32 128, label %24
  ]

24:                                               ; preds = %2
  %25 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %26 = getelementptr inbounds %struct.sst_hsw, %struct.sst_hsw* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 (i32, i8*, ...) @dev_dbg(i32 %27, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  store i32 1, i32* %7, align 4
  br label %33

29:                                               ; preds = %2
  %30 = load %struct.sst_hsw*, %struct.sst_hsw** %3, align 8
  %31 = load i32, i32* %4, align 4
  %32 = call i32 @hsw_process_reply(%struct.sst_hsw* %30, i32 %31)
  store i32 %32, i32* %7, align 4
  br label %33

33:                                               ; preds = %29, %24
  %34 = load i32, i32* %7, align 4
  ret i32 %34
}

declare dso_local i32 @msg_get_module_operation(i32) #1

declare dso_local i32 @msg_get_module_id(i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @hsw_process_reply(%struct.sst_hsw*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
