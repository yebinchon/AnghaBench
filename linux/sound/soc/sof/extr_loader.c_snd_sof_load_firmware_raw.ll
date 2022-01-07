; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_load_firmware_raw.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_snd_sof_load_firmware_raw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32, i32, %struct.snd_sof_pdata* }
%struct.snd_sof_pdata = type { i64, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"%s/%s\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [43 x i8] c"error: request firmware %s failed err: %d\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_sof_load_firmware_raw(%struct.snd_sof_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.snd_sof_dev*, align 8
  %4 = alloca %struct.snd_sof_pdata*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %3, align 8
  %7 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %8 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %7, i32 0, i32 2
  %9 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %8, align 8
  store %struct.snd_sof_pdata* %9, %struct.snd_sof_pdata** %4, align 8
  %10 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %11 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %10, i32 0, i32 0
  store i32 1, i32* %11, align 8
  %12 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %13 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %52

17:                                               ; preds = %1
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %23 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 8
  %25 = call i8* @kasprintf(i32 %18, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %21, i32 %24)
  store i8* %25, i8** %5, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = icmp ne i8* %26, null
  br i1 %27, label %31, label %28

28:                                               ; preds = %17
  %29 = load i32, i32* @ENOMEM, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %2, align 4
  br label %52

31:                                               ; preds = %17
  %32 = load %struct.snd_sof_pdata*, %struct.snd_sof_pdata** %4, align 8
  %33 = getelementptr inbounds %struct.snd_sof_pdata, %struct.snd_sof_pdata* %32, i32 0, i32 0
  %34 = load i8*, i8** %5, align 8
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = call i32 @request_firmware(i64* %33, i8* %34, i32 %37)
  store i32 %38, i32* %6, align 4
  %39 = load i32, i32* %6, align 4
  %40 = icmp slt i32 %39, 0
  br i1 %40, label %41, label %48

41:                                               ; preds = %31
  %42 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %3, align 8
  %43 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %42, i32 0, i32 1
  %44 = load i32, i32* %43, align 4
  %45 = load i8*, i8** %5, align 8
  %46 = load i32, i32* %6, align 4
  %47 = call i32 @dev_err(i32 %44, i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str.1, i64 0, i64 0), i8* %45, i32 %46)
  br label %48

48:                                               ; preds = %41, %31
  %49 = load i8*, i8** %5, align 8
  %50 = call i32 @kfree(i8* %49)
  %51 = load i32, i32* %6, align 4
  store i32 %51, i32* %2, align 4
  br label %52

52:                                               ; preds = %48, %28, %16
  %53 = load i32, i32* %2, align 4
  ret i32 %53
}

declare dso_local i8* @kasprintf(i32, i8*, i32, i32) #1

declare dso_local i32 @request_firmware(i64*, i8*, i32) #1

declare dso_local i32 @dev_err(i32, i8*, i8*, i32) #1

declare dso_local i32 @kfree(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
