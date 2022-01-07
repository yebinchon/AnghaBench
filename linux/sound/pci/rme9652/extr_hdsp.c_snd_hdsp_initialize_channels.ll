; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_initialize_channels.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_initialize_channels.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdsp = type { i32, i8*, i8*, i8*, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [30 x i8] c"RME Hammerfall DSP + Digiface\00", align 1
@DIGIFACE_SS_CHANNELS = common dso_local global i8* null, align 8
@DIGIFACE_DS_CHANNELS = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [25 x i8] c"RME Hammerfall HDSP 9652\00", align 1
@H9652_SS_CHANNELS = common dso_local global i8* null, align 8
@H9652_DS_CHANNELS = common dso_local global i8* null, align 8
@HDSP_statusRegister = common dso_local global i32 0, align 4
@HDSP_AEBI = common dso_local global i32 0, align 4
@HDSP_AEBO = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [25 x i8] c"RME Hammerfall HDSP 9632\00", align 1
@H9632_SS_CHANNELS = common dso_local global i32 0, align 4
@H9632_DS_CHANNELS = common dso_local global i32 0, align 4
@H9632_QS_CHANNELS = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [31 x i8] c"RME Hammerfall DSP + Multiface\00", align 1
@MULTIFACE_SS_CHANNELS = common dso_local global i8* null, align 8
@MULTIFACE_DS_CHANNELS = common dso_local global i8* null, align 8
@.str.4 = private unnamed_addr constant [25 x i8] c"RME Hammerfall DSP + RPM\00", align 1
@RPM_CHANNELS = common dso_local global i8* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hdsp*)* @snd_hdsp_initialize_channels to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @snd_hdsp_initialize_channels(%struct.hdsp* %0) #0 {
  %2 = alloca %struct.hdsp*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdsp* %0, %struct.hdsp** %2, align 8
  %6 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %7 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 8
  switch i32 %8, label %121 [
    i32 132, label %9
    i32 130, label %22
    i32 131, label %35
    i32 129, label %91
    i32 128, label %104
  ]

9:                                                ; preds = %1
  %10 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %11 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %10, i32 0, i32 1
  store i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0), i8** %11, align 8
  %12 = load i8*, i8** @DIGIFACE_SS_CHANNELS, align 8
  %13 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %14 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %13, i32 0, i32 4
  store i8* %12, i8** %14, align 8
  %15 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %16 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %15, i32 0, i32 5
  store i8* %12, i8** %16, align 8
  %17 = load i8*, i8** @DIGIFACE_DS_CHANNELS, align 8
  %18 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %19 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %18, i32 0, i32 2
  store i8* %17, i8** %19, align 8
  %20 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %21 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %20, i32 0, i32 3
  store i8* %17, i8** %21, align 8
  br label %122

22:                                               ; preds = %1
  %23 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %24 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %23, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i8** %24, align 8
  %25 = load i8*, i8** @H9652_SS_CHANNELS, align 8
  %26 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %27 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %26, i32 0, i32 4
  store i8* %25, i8** %27, align 8
  %28 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %29 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %28, i32 0, i32 5
  store i8* %25, i8** %29, align 8
  %30 = load i8*, i8** @H9652_DS_CHANNELS, align 8
  %31 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %32 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %31, i32 0, i32 2
  store i8* %30, i8** %32, align 8
  %33 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %34 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %33, i32 0, i32 3
  store i8* %30, i8** %34, align 8
  br label %122

35:                                               ; preds = %1
  %36 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %37 = load i32, i32* @HDSP_statusRegister, align 4
  %38 = call i32 @hdsp_read(%struct.hdsp* %36, i32 %37)
  store i32 %38, i32* %3, align 4
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @HDSP_AEBI, align 4
  %41 = and i32 %39, %40
  %42 = icmp ne i32 %41, 0
  %43 = zext i1 %42 to i64
  %44 = select i1 %42, i32 0, i32 4
  store i32 %44, i32* %4, align 4
  %45 = load i32, i32* %3, align 4
  %46 = load i32, i32* @HDSP_AEBO, align 4
  %47 = and i32 %45, %46
  %48 = icmp ne i32 %47, 0
  %49 = zext i1 %48 to i64
  %50 = select i1 %48, i32 0, i32 4
  store i32 %50, i32* %5, align 4
  %51 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %52 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %51, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.2, i64 0, i64 0), i8** %52, align 8
  %53 = load i32, i32* @H9632_SS_CHANNELS, align 4
  %54 = load i32, i32* %4, align 4
  %55 = add nsw i32 %53, %54
  %56 = sext i32 %55 to i64
  %57 = inttoptr i64 %56 to i8*
  %58 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %59 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %58, i32 0, i32 5
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* @H9632_DS_CHANNELS, align 4
  %61 = load i32, i32* %4, align 4
  %62 = add nsw i32 %60, %61
  %63 = sext i32 %62 to i64
  %64 = inttoptr i64 %63 to i8*
  %65 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %66 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %65, i32 0, i32 3
  store i8* %64, i8** %66, align 8
  %67 = load i32, i32* @H9632_QS_CHANNELS, align 4
  %68 = load i32, i32* %4, align 4
  %69 = add nsw i32 %67, %68
  %70 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %71 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %70, i32 0, i32 7
  store i32 %69, i32* %71, align 4
  %72 = load i32, i32* @H9632_SS_CHANNELS, align 4
  %73 = load i32, i32* %5, align 4
  %74 = add nsw i32 %72, %73
  %75 = sext i32 %74 to i64
  %76 = inttoptr i64 %75 to i8*
  %77 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %78 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %77, i32 0, i32 4
  store i8* %76, i8** %78, align 8
  %79 = load i32, i32* @H9632_DS_CHANNELS, align 4
  %80 = load i32, i32* %5, align 4
  %81 = add nsw i32 %79, %80
  %82 = sext i32 %81 to i64
  %83 = inttoptr i64 %82 to i8*
  %84 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %85 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %84, i32 0, i32 2
  store i8* %83, i8** %85, align 8
  %86 = load i32, i32* @H9632_QS_CHANNELS, align 4
  %87 = load i32, i32* %5, align 4
  %88 = add nsw i32 %86, %87
  %89 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %90 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %89, i32 0, i32 6
  store i32 %88, i32* %90, align 8
  br label %122

91:                                               ; preds = %1
  %92 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %93 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %92, i32 0, i32 1
  store i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.3, i64 0, i64 0), i8** %93, align 8
  %94 = load i8*, i8** @MULTIFACE_SS_CHANNELS, align 8
  %95 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %96 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %95, i32 0, i32 4
  store i8* %94, i8** %96, align 8
  %97 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %98 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %97, i32 0, i32 5
  store i8* %94, i8** %98, align 8
  %99 = load i8*, i8** @MULTIFACE_DS_CHANNELS, align 8
  %100 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %101 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %100, i32 0, i32 2
  store i8* %99, i8** %101, align 8
  %102 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %103 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %102, i32 0, i32 3
  store i8* %99, i8** %103, align 8
  br label %122

104:                                              ; preds = %1
  %105 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %106 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %105, i32 0, i32 1
  store i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.4, i64 0, i64 0), i8** %106, align 8
  %107 = load i8*, i8** @RPM_CHANNELS, align 8
  %108 = getelementptr i8, i8* %107, i64 -1
  %109 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %110 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %109, i32 0, i32 5
  store i8* %108, i8** %110, align 8
  %111 = load i8*, i8** @RPM_CHANNELS, align 8
  %112 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %113 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %112, i32 0, i32 4
  store i8* %111, i8** %113, align 8
  %114 = load i8*, i8** @RPM_CHANNELS, align 8
  %115 = getelementptr i8, i8* %114, i64 -1
  %116 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %117 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %116, i32 0, i32 3
  store i8* %115, i8** %117, align 8
  %118 = load i8*, i8** @RPM_CHANNELS, align 8
  %119 = load %struct.hdsp*, %struct.hdsp** %2, align 8
  %120 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %119, i32 0, i32 2
  store i8* %118, i8** %120, align 8
  br label %122

121:                                              ; preds = %1
  br label %122

122:                                              ; preds = %121, %104, %91, %35, %22, %9
  ret void
}

declare dso_local i32 @hdsp_read(%struct.hdsp*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
