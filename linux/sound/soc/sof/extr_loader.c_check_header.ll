; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_check_header.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_check_header.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.firmware = type { i64, i64 }
%struct.snd_sof_fw_header = type { i64, i32, i32, i32 }

@SND_SOF_FW_SIG = common dso_local global i32 0, align 4
@SND_SOF_FW_SIG_SIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [35 x i8] c"error: invalid firmware signature\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [59 x i8] c"error: invalid filesize mismatch got 0x%zx expected 0x%zx\0A\00", align 1
@.str.2 = private unnamed_addr constant [49 x i8] c"header size=0x%x modules=0x%x abi=0x%x size=%zu\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.firmware*)* @check_header to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @check_header(%struct.snd_sof_dev* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.snd_sof_fw_header*, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %7 = load %struct.firmware*, %struct.firmware** %5, align 8
  %8 = getelementptr inbounds %struct.firmware, %struct.firmware* %7, i32 0, i32 1
  %9 = load i64, i64* %8, align 8
  %10 = inttoptr i64 %9 to %struct.snd_sof_fw_header*
  store %struct.snd_sof_fw_header* %10, %struct.snd_sof_fw_header** %6, align 8
  %11 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %12 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %11, i32 0, i32 3
  %13 = load i32, i32* %12, align 8
  %14 = load i32, i32* @SND_SOF_FW_SIG, align 4
  %15 = load i32, i32* @SND_SOF_FW_SIG_SIZE, align 4
  %16 = call i64 @strncmp(i32 %13, i32 %14, i32 %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %2
  %19 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %20 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 (i32, i8*, ...) @dev_err(i32 %21, i8* getelementptr inbounds ([35 x i8], [35 x i8]* @.str, i64 0, i64 0))
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %62

25:                                               ; preds = %2
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %30 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = add i64 %31, 24
  %33 = icmp ne i64 %28, %32
  br i1 %33, label %34, label %48

34:                                               ; preds = %25
  %35 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %36 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.firmware*, %struct.firmware** %5, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %42 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %41, i32 0, i32 0
  %43 = load i64, i64* %42, align 8
  %44 = add i64 %43, 24
  %45 = call i32 (i32, i8*, ...) @dev_err(i32 %37, i8* getelementptr inbounds ([59 x i8], [59 x i8]* @.str.1, i64 0, i64 0), i64 %40, i64 %44)
  %46 = load i32, i32* @EINVAL, align 4
  %47 = sub nsw i32 0, %46
  store i32 %47, i32* %3, align 4
  br label %62

48:                                               ; preds = %25
  %49 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %50 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %53 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  %55 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %56 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %55, i32 0, i32 2
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %59 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 8
  %61 = call i32 @dev_dbg(i32 %51, i8* getelementptr inbounds ([49 x i8], [49 x i8]* @.str.2, i64 0, i64 0), i64 %54, i32 %57, i32 %60, i32 24)
  store i32 0, i32* %3, align 4
  br label %62

62:                                               ; preds = %48, %34, %18
  %63 = load i32, i32* %3, align 4
  ret i32 %63
}

declare dso_local i64 @strncmp(i32, i32, i32) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

declare dso_local i32 @dev_dbg(i32, i8*, i64, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
