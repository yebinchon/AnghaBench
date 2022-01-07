; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_hwdep.c_snd_mixart_setup_firmware.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/mixart/extr_mixart_hwdep.c_snd_mixart_setup_firmware.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.mixart_mgr = type { i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.firmware = type { i32 }

@snd_mixart_setup_firmware.fw_files = internal global [3 x i8*] [i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str, i32 0, i32 0), i8* getelementptr inbounds ([12 x i8], [12 x i8]* @.str.1, i32 0, i32 0), i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.2, i32 0, i32 0)], align 16
@.str = private unnamed_addr constant [12 x i8] c"miXart8.xlx\00", align 1
@.str.1 = private unnamed_addr constant [12 x i8] c"miXart8.elf\00", align 1
@.str.2 = private unnamed_addr constant [15 x i8] c"miXart8AES.xlx\00", align 1
@.str.3 = private unnamed_addr constant [10 x i8] c"mixart/%s\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"miXart: can't load firmware %s\0A\00", align 1
@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_mixart_setup_firmware(%struct.mixart_mgr* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.mixart_mgr*, align 8
  %4 = alloca [32 x i8], align 16
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.mixart_mgr* %0, %struct.mixart_mgr** %3, align 8
  store i32 0, i32* %6, align 4
  br label %8

8:                                                ; preds = %52, %1
  %9 = load i32, i32* %6, align 4
  %10 = icmp slt i32 %9, 3
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %13 = load i32, i32* %6, align 4
  %14 = sext i32 %13 to i64
  %15 = getelementptr inbounds [3 x i8*], [3 x i8*]* @snd_mixart_setup_firmware.fw_files, i64 0, i64 %14
  %16 = load i8*, i8** %15, align 8
  %17 = call i32 @sprintf(i8* %12, i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.3, i64 0, i64 0), i8* %16)
  %18 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %19 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %20 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %19, i32 0, i32 1
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = call i64 @request_firmware(%struct.firmware** %5, i8* %18, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %34

25:                                               ; preds = %11
  %26 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %27 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %26, i32 0, i32 1
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = getelementptr inbounds [32 x i8], [32 x i8]* %4, i64 0, i64 0
  %31 = call i32 @dev_err(i32* %29, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i8* %30)
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %2, align 4
  br label %56

34:                                               ; preds = %11
  %35 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %36 = load i32, i32* %6, align 4
  %37 = load %struct.firmware*, %struct.firmware** %5, align 8
  %38 = call i32 @mixart_dsp_load(%struct.mixart_mgr* %35, i32 %36, %struct.firmware* %37)
  store i32 %38, i32* %7, align 4
  %39 = load %struct.firmware*, %struct.firmware** %5, align 8
  %40 = call i32 @release_firmware(%struct.firmware* %39)
  %41 = load i32, i32* %7, align 4
  %42 = icmp slt i32 %41, 0
  br i1 %42, label %43, label %45

43:                                               ; preds = %34
  %44 = load i32, i32* %7, align 4
  store i32 %44, i32* %2, align 4
  br label %56

45:                                               ; preds = %34
  %46 = load i32, i32* %6, align 4
  %47 = shl i32 1, %46
  %48 = load %struct.mixart_mgr*, %struct.mixart_mgr** %3, align 8
  %49 = getelementptr inbounds %struct.mixart_mgr, %struct.mixart_mgr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = or i32 %50, %47
  store i32 %51, i32* %49, align 8
  br label %52

52:                                               ; preds = %45
  %53 = load i32, i32* %6, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %6, align 4
  br label %8

55:                                               ; preds = %8
  store i32 0, i32* %2, align 4
  br label %56

56:                                               ; preds = %55, %43, %25
  %57 = load i32, i32* %2, align 4
  ret i32 %57
}

declare dso_local i32 @sprintf(i8*, i8*, i8*) #1

declare dso_local i64 @request_firmware(%struct.firmware**, i8*, i32*) #1

declare dso_local i32 @dev_err(i32*, i8*, i8*) #1

declare dso_local i32 @mixart_dsp_load(%struct.mixart_mgr*, i32, %struct.firmware*) #1

declare dso_local i32 @release_firmware(%struct.firmware*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
