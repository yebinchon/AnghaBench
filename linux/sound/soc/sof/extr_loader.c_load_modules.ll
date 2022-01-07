; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_load_modules.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/sof/extr_loader.c_load_modules.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_sof_dev = type { i32 }
%struct.firmware = type { i32, i64 }
%struct.snd_sof_fw_header = type { i32 }
%struct.snd_sof_mod_hdr = type { i64 }
%struct.TYPE_2__ = type { i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)* }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [41 x i8] c"error: fw size smaller than header size\0A\00", align 1
@.str.1 = private unnamed_addr constant [34 x i8] c"error: not enough data remaining\0A\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"error: invalid module %d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_sof_dev*, %struct.firmware*)* @load_modules to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @load_modules(%struct.snd_sof_dev* %0, %struct.firmware* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_sof_dev*, align 8
  %5 = alloca %struct.firmware*, align 8
  %6 = alloca %struct.snd_sof_fw_header*, align 8
  %7 = alloca %struct.snd_sof_mod_hdr*, align 8
  %8 = alloca i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.snd_sof_dev* %0, %struct.snd_sof_dev** %4, align 8
  store %struct.firmware* %1, %struct.firmware** %5, align 8
  %12 = load %struct.firmware*, %struct.firmware** %5, align 8
  %13 = getelementptr inbounds %struct.firmware, %struct.firmware* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = inttoptr i64 %14 to %struct.snd_sof_fw_header*
  store %struct.snd_sof_fw_header* %15, %struct.snd_sof_fw_header** %6, align 8
  %16 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %17 = call %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)*, i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)** %18, align 8
  store i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)* %19, i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)** %8, align 8
  %20 = load i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)*, i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)** %8, align 8
  %21 = icmp ne i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %2
  %23 = load i32, i32* @EINVAL, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %3, align 4
  br label %114

25:                                               ; preds = %2
  %26 = load %struct.firmware*, %struct.firmware** %5, align 8
  %27 = getelementptr inbounds %struct.firmware, %struct.firmware* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = inttoptr i64 %28 to i32*
  %30 = getelementptr inbounds i32, i32* %29, i64 4
  %31 = bitcast i32* %30 to %struct.snd_sof_mod_hdr*
  store %struct.snd_sof_mod_hdr* %31, %struct.snd_sof_mod_hdr** %7, align 8
  %32 = load %struct.firmware*, %struct.firmware** %5, align 8
  %33 = getelementptr inbounds %struct.firmware, %struct.firmware* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = sext i32 %34 to i64
  %36 = sub i64 %35, 4
  store i64 %36, i64* %11, align 8
  %37 = load i64, i64* %11, align 8
  %38 = load %struct.firmware*, %struct.firmware** %5, align 8
  %39 = getelementptr inbounds %struct.firmware, %struct.firmware* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = sext i32 %40 to i64
  %42 = icmp ugt i64 %37, %41
  br i1 %42, label %43, label %50

43:                                               ; preds = %25
  %44 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %45 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = call i32 (i32, i8*, ...) @dev_err(i32 %46, i8* getelementptr inbounds ([41 x i8], [41 x i8]* @.str, i64 0, i64 0))
  %48 = load i32, i32* @EINVAL, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %3, align 4
  br label %114

50:                                               ; preds = %25
  store i32 0, i32* %10, align 4
  br label %51

51:                                               ; preds = %110, %50
  %52 = load i32, i32* %10, align 4
  %53 = load %struct.snd_sof_fw_header*, %struct.snd_sof_fw_header** %6, align 8
  %54 = getelementptr inbounds %struct.snd_sof_fw_header, %struct.snd_sof_fw_header* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = icmp slt i32 %52, %55
  br i1 %56, label %57, label %113

57:                                               ; preds = %51
  %58 = load i64, i64* %11, align 8
  %59 = icmp ult i64 %58, 8
  br i1 %59, label %60, label %67

60:                                               ; preds = %57
  %61 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %62 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 (i32, i8*, ...) @dev_err(i32 %63, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %3, align 4
  br label %114

67:                                               ; preds = %57
  %68 = load i64, i64* %11, align 8
  %69 = sub i64 %68, 8
  store i64 %69, i64* %11, align 8
  %70 = load i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)*, i32 (%struct.snd_sof_dev*, %struct.snd_sof_mod_hdr*)** %8, align 8
  %71 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %72 = load %struct.snd_sof_mod_hdr*, %struct.snd_sof_mod_hdr** %7, align 8
  %73 = call i32 %70(%struct.snd_sof_dev* %71, %struct.snd_sof_mod_hdr* %72)
  store i32 %73, i32* %9, align 4
  %74 = load i32, i32* %9, align 4
  %75 = icmp slt i32 %74, 0
  br i1 %75, label %76, label %83

76:                                               ; preds = %67
  %77 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %78 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 4
  %80 = load i32, i32* %10, align 4
  %81 = call i32 (i32, i8*, ...) @dev_err(i32 %79, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0), i32 %80)
  %82 = load i32, i32* %9, align 4
  store i32 %82, i32* %3, align 4
  br label %114

83:                                               ; preds = %67
  %84 = load i64, i64* %11, align 8
  %85 = load %struct.snd_sof_mod_hdr*, %struct.snd_sof_mod_hdr** %7, align 8
  %86 = getelementptr inbounds %struct.snd_sof_mod_hdr, %struct.snd_sof_mod_hdr* %85, i32 0, i32 0
  %87 = load i64, i64* %86, align 8
  %88 = icmp ult i64 %84, %87
  br i1 %88, label %89, label %96

89:                                               ; preds = %83
  %90 = load %struct.snd_sof_dev*, %struct.snd_sof_dev** %4, align 8
  %91 = getelementptr inbounds %struct.snd_sof_dev, %struct.snd_sof_dev* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = call i32 (i32, i8*, ...) @dev_err(i32 %92, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0))
  %94 = load i32, i32* @EINVAL, align 4
  %95 = sub nsw i32 0, %94
  store i32 %95, i32* %3, align 4
  br label %114

96:                                               ; preds = %83
  %97 = load %struct.snd_sof_mod_hdr*, %struct.snd_sof_mod_hdr** %7, align 8
  %98 = getelementptr inbounds %struct.snd_sof_mod_hdr, %struct.snd_sof_mod_hdr* %97, i32 0, i32 0
  %99 = load i64, i64* %98, align 8
  %100 = load i64, i64* %11, align 8
  %101 = sub i64 %100, %99
  store i64 %101, i64* %11, align 8
  %102 = load %struct.snd_sof_mod_hdr*, %struct.snd_sof_mod_hdr** %7, align 8
  %103 = bitcast %struct.snd_sof_mod_hdr* %102 to i32*
  %104 = getelementptr inbounds i32, i32* %103, i64 8
  %105 = load %struct.snd_sof_mod_hdr*, %struct.snd_sof_mod_hdr** %7, align 8
  %106 = getelementptr inbounds %struct.snd_sof_mod_hdr, %struct.snd_sof_mod_hdr* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = getelementptr inbounds i32, i32* %104, i64 %107
  %109 = bitcast i32* %108 to %struct.snd_sof_mod_hdr*
  store %struct.snd_sof_mod_hdr* %109, %struct.snd_sof_mod_hdr** %7, align 8
  br label %110

110:                                              ; preds = %96
  %111 = load i32, i32* %10, align 4
  %112 = add nsw i32 %111, 1
  store i32 %112, i32* %10, align 4
  br label %51

113:                                              ; preds = %51
  store i32 0, i32* %3, align 4
  br label %114

114:                                              ; preds = %113, %89, %76, %60, %43, %22
  %115 = load i32, i32* %3, align 4
  ret i32 %115
}

declare dso_local %struct.TYPE_2__* @sof_ops(%struct.snd_sof_dev*) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
