; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_alsa_devices.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/rme9652/extr_hdsp.c_snd_hdsp_create_alsa_devices.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_card = type { i32, i32, i32 }
%struct.hdsp = type { i64, i32, i32, i32, i32, i8*, i32, i32, i32*, i32* }

@.str = private unnamed_addr constant [30 x i8] c"Error creating pcm interface\0A\00", align 1
@.str.1 = private unnamed_addr constant [37 x i8] c"Error creating first midi interface\0A\00", align 1
@Digiface = common dso_local global i64 0, align 8
@H9652 = common dso_local global i64 0, align 8
@.str.2 = private unnamed_addr constant [38 x i8] c"Error creating second midi interface\0A\00", align 1
@.str.3 = private unnamed_addr constant [30 x i8] c"Error creating ctl interface\0A\00", align 1
@.str.4 = private unnamed_addr constant [30 x i8] c"Error setting default values\0A\00", align 1
@HDSP_InitializationComplete = common dso_local global i32 0, align 4
@.str.5 = private unnamed_addr constant [15 x i8] c"Hammerfall DSP\00", align 1
@.str.6 = private unnamed_addr constant [20 x i8] c"%s at 0x%lx, irq %d\00", align 1
@.str.7 = private unnamed_addr constant [24 x i8] c"error registering card\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_card*, %struct.hdsp*)* @snd_hdsp_create_alsa_devices to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_hdsp_create_alsa_devices(%struct.snd_card* %0, %struct.hdsp* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_card*, align 8
  %5 = alloca %struct.hdsp*, align 8
  %6 = alloca i32, align 4
  store %struct.snd_card* %0, %struct.snd_card** %4, align 8
  store %struct.hdsp* %1, %struct.hdsp** %5, align 8
  %7 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %8 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %9 = call i32 @snd_hdsp_create_pcm(%struct.snd_card* %7, %struct.hdsp* %8)
  store i32 %9, i32* %6, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %17

11:                                               ; preds = %2
  %12 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %13 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @dev_err(i32 %14, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str, i64 0, i64 0))
  %16 = load i32, i32* %6, align 4
  store i32 %16, i32* %3, align 4
  br label %126

17:                                               ; preds = %2
  %18 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %19 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %20 = call i32 @snd_hdsp_create_midi(%struct.snd_card* %18, %struct.hdsp* %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = icmp slt i32 %20, 0
  br i1 %21, label %22, label %28

22:                                               ; preds = %17
  %23 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %24 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = call i32 @dev_err(i32 %25, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.1, i64 0, i64 0))
  %27 = load i32, i32* %6, align 4
  store i32 %27, i32* %3, align 4
  br label %126

28:                                               ; preds = %17
  %29 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %30 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @Digiface, align 8
  %33 = icmp eq i64 %31, %32
  br i1 %33, label %40, label %34

34:                                               ; preds = %28
  %35 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %36 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %35, i32 0, i32 0
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* @H9652, align 8
  %39 = icmp eq i64 %37, %38
  br i1 %39, label %40, label %52

40:                                               ; preds = %34, %28
  %41 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %42 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %43 = call i32 @snd_hdsp_create_midi(%struct.snd_card* %41, %struct.hdsp* %42, i32 1)
  store i32 %43, i32* %6, align 4
  %44 = icmp slt i32 %43, 0
  br i1 %44, label %45, label %51

45:                                               ; preds = %40
  %46 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %47 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @dev_err(i32 %48, i8* getelementptr inbounds ([38 x i8], [38 x i8]* @.str.2, i64 0, i64 0))
  %50 = load i32, i32* %6, align 4
  store i32 %50, i32* %3, align 4
  br label %126

51:                                               ; preds = %40
  br label %52

52:                                               ; preds = %51, %34
  %53 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %54 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %55 = call i32 @snd_hdsp_create_controls(%struct.snd_card* %53, %struct.hdsp* %54)
  store i32 %55, i32* %6, align 4
  %56 = icmp slt i32 %55, 0
  br i1 %56, label %57, label %63

57:                                               ; preds = %52
  %58 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %59 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %58, i32 0, i32 0
  %60 = load i32, i32* %59, align 4
  %61 = call i32 @dev_err(i32 %60, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.3, i64 0, i64 0))
  %62 = load i32, i32* %6, align 4
  store i32 %62, i32* %3, align 4
  br label %126

63:                                               ; preds = %52
  %64 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %65 = call i32 @snd_hdsp_proc_init(%struct.hdsp* %64)
  %66 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %67 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %66, i32 0, i32 1
  store i32 -1, i32* %67, align 8
  %68 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %69 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %68, i32 0, i32 2
  store i32 -1, i32* %69, align 4
  %70 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %71 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %70, i32 0, i32 3
  store i32 -1, i32* %71, align 8
  %72 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %73 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %72, i32 0, i32 9
  store i32* null, i32** %73, align 8
  %74 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %75 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %74, i32 0, i32 8
  store i32* null, i32** %75, align 8
  %76 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %77 = call i32 @snd_hdsp_set_defaults(%struct.hdsp* %76)
  store i32 %77, i32* %6, align 4
  %78 = icmp slt i32 %77, 0
  br i1 %78, label %79, label %85

79:                                               ; preds = %63
  %80 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %81 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 4
  %83 = call i32 @dev_err(i32 %82, i8* getelementptr inbounds ([30 x i8], [30 x i8]* @.str.4, i64 0, i64 0))
  %84 = load i32, i32* %6, align 4
  store i32 %84, i32* %3, align 4
  br label %126

85:                                               ; preds = %63
  %86 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %87 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %86, i32 0, i32 4
  %88 = load i32, i32* %87, align 4
  %89 = load i32, i32* @HDSP_InitializationComplete, align 4
  %90 = and i32 %88, %89
  %91 = icmp ne i32 %90, 0
  br i1 %91, label %125, label %92

92:                                               ; preds = %85
  %93 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %94 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %93, i32 0, i32 2
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @strcpy(i32 %95, i8* getelementptr inbounds ([15 x i8], [15 x i8]* @.str.5, i64 0, i64 0))
  %97 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %98 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %101 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %100, i32 0, i32 5
  %102 = load i8*, i8** %101, align 8
  %103 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %104 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %103, i32 0, i32 7
  %105 = load i32, i32* %104, align 4
  %106 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %107 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %106, i32 0, i32 6
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @sprintf(i32 %99, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.6, i64 0, i64 0), i8* %102, i32 %105, i32 %108)
  %110 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %111 = call i32 @snd_card_register(%struct.snd_card* %110)
  store i32 %111, i32* %6, align 4
  %112 = icmp slt i32 %111, 0
  br i1 %112, label %113, label %119

113:                                              ; preds = %92
  %114 = load %struct.snd_card*, %struct.snd_card** %4, align 8
  %115 = getelementptr inbounds %struct.snd_card, %struct.snd_card* %114, i32 0, i32 0
  %116 = load i32, i32* %115, align 4
  %117 = call i32 @dev_err(i32 %116, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.7, i64 0, i64 0))
  %118 = load i32, i32* %6, align 4
  store i32 %118, i32* %3, align 4
  br label %126

119:                                              ; preds = %92
  %120 = load i32, i32* @HDSP_InitializationComplete, align 4
  %121 = load %struct.hdsp*, %struct.hdsp** %5, align 8
  %122 = getelementptr inbounds %struct.hdsp, %struct.hdsp* %121, i32 0, i32 4
  %123 = load i32, i32* %122, align 4
  %124 = or i32 %123, %120
  store i32 %124, i32* %122, align 4
  br label %125

125:                                              ; preds = %119, %85
  store i32 0, i32* %3, align 4
  br label %126

126:                                              ; preds = %125, %113, %79, %57, %45, %22, %11
  %127 = load i32, i32* %3, align 4
  ret i32 %127
}

declare dso_local i32 @snd_hdsp_create_pcm(%struct.snd_card*, %struct.hdsp*) #1

declare dso_local i32 @dev_err(i32, i8*) #1

declare dso_local i32 @snd_hdsp_create_midi(%struct.snd_card*, %struct.hdsp*, i32) #1

declare dso_local i32 @snd_hdsp_create_controls(%struct.snd_card*, %struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_proc_init(%struct.hdsp*) #1

declare dso_local i32 @snd_hdsp_set_defaults(%struct.hdsp*) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @sprintf(i32, i8*, i8*, i32, i32) #1

declare dso_local i32 @snd_card_register(%struct.snd_card*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
