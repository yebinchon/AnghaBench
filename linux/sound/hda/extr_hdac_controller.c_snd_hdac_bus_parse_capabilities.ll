; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_parse_capabilities.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_controller.c_snd_hdac_bus_parse_capabilities.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_bus = type { i32, i32, i32, i32, i32, i32, i32 }

@LLCH = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"Capability version: 0x%x\0A\00", align 1
@AZX_CAP_HDR_VER_MASK = common dso_local global i32 0, align 4
@AZX_CAP_HDR_VER_OFF = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [25 x i8] c"HDA capability ID: 0x%x\0A\00", align 1
@AZX_CAP_HDR_ID_MASK = common dso_local global i32 0, align 4
@AZX_CAP_HDR_ID_OFF = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [29 x i8] c"Invalid capability reg read\0A\00", align 1
@.str.3 = private unnamed_addr constant [21 x i8] c"Found ML capability\0A\00", align 1
@.str.4 = private unnamed_addr constant [32 x i8] c"Found GTS capability offset=%x\0A\00", align 1
@.str.5 = private unnamed_addr constant [31 x i8] c"Found PP capability offset=%x\0A\00", align 1
@.str.6 = private unnamed_addr constant [22 x i8] c"Found SPB capability\0A\00", align 1
@.str.7 = private unnamed_addr constant [23 x i8] c"Found DRSM capability\0A\00", align 1
@.str.8 = private unnamed_addr constant [23 x i8] c"Unknown capability %d\0A\00", align 1
@HDAC_MAX_CAPS = common dso_local global i32 0, align 4
@.str.9 = private unnamed_addr constant [34 x i8] c"We exceeded HDAC capabilities!!!\0A\00", align 1
@AZX_CAP_HDR_NXT_PTR_MASK = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_bus_parse_capabilities(%struct.hdac_bus* %0) #0 {
  %2 = alloca %struct.hdac_bus*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdac_bus* %0, %struct.hdac_bus** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %7 = load i32, i32* @LLCH, align 4
  %8 = call i32 @snd_hdac_chip_readw(%struct.hdac_bus* %6, i32 %7)
  store i32 %8, i32* %4, align 4
  br label %9

9:                                                ; preds = %127, %1
  %10 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %11 = load i32, i32* %4, align 4
  %12 = call i32 @_snd_hdac_chip_readl(%struct.hdac_bus* %10, i32 %11)
  store i32 %12, i32* %3, align 4
  %13 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %14 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load i32, i32* %3, align 4
  %17 = load i32, i32* @AZX_CAP_HDR_VER_MASK, align 4
  %18 = and i32 %16, %17
  %19 = load i32, i32* @AZX_CAP_HDR_VER_OFF, align 4
  %20 = lshr i32 %18, %19
  %21 = call i32 (i32, i8*, ...) @dev_dbg(i32 %15, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %20)
  %22 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %23 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = load i32, i32* %3, align 4
  %26 = load i32, i32* @AZX_CAP_HDR_ID_MASK, align 4
  %27 = and i32 %25, %26
  %28 = load i32, i32* @AZX_CAP_HDR_ID_OFF, align 4
  %29 = lshr i32 %27, %28
  %30 = call i32 (i32, i8*, ...) @dev_dbg(i32 %24, i8* getelementptr inbounds ([25 x i8], [25 x i8]* @.str.1, i64 0, i64 0), i32 %29)
  %31 = load i32, i32* %3, align 4
  %32 = icmp eq i32 %31, -1
  br i1 %32, label %33, label %38

33:                                               ; preds = %9
  %34 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %35 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 (i32, i8*, ...) @dev_dbg(i32 %36, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.2, i64 0, i64 0))
  br label %130

38:                                               ; preds = %9
  %39 = load i32, i32* %3, align 4
  %40 = load i32, i32* @AZX_CAP_HDR_ID_MASK, align 4
  %41 = and i32 %39, %40
  %42 = load i32, i32* @AZX_CAP_HDR_ID_OFF, align 4
  %43 = lshr i32 %41, %42
  switch i32 %43, label %106 [
    i32 130, label %44
    i32 131, label %56
    i32 129, label %69
    i32 128, label %82
    i32 132, label %94
  ]

44:                                               ; preds = %38
  %45 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %46 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = call i32 (i32, i8*, ...) @dev_dbg(i32 %47, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.3, i64 0, i64 0))
  %49 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %50 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = load i32, i32* %4, align 4
  %53 = add i32 %51, %52
  %54 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %55 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %54, i32 0, i32 6
  store i32 %53, i32* %55, align 4
  br label %112

56:                                               ; preds = %38
  %57 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %58 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load i32, i32* %4, align 4
  %61 = call i32 (i32, i8*, ...) @dev_dbg(i32 %59, i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.4, i64 0, i64 0), i32 %60)
  %62 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %63 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = load i32, i32* %4, align 4
  %66 = add i32 %64, %65
  %67 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %68 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %67, i32 0, i32 5
  store i32 %66, i32* %68, align 4
  br label %112

69:                                               ; preds = %38
  %70 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %71 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %70, i32 0, i32 0
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %4, align 4
  %74 = call i32 (i32, i8*, ...) @dev_dbg(i32 %72, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.5, i64 0, i64 0), i32 %73)
  %75 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %76 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %75, i32 0, i32 1
  %77 = load i32, i32* %76, align 4
  %78 = load i32, i32* %4, align 4
  %79 = add i32 %77, %78
  %80 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %81 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %80, i32 0, i32 4
  store i32 %79, i32* %81, align 4
  br label %112

82:                                               ; preds = %38
  %83 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %84 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i32 (i32, i8*, ...) @dev_dbg(i32 %85, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.6, i64 0, i64 0))
  %87 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %88 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %87, i32 0, i32 1
  %89 = load i32, i32* %88, align 4
  %90 = load i32, i32* %4, align 4
  %91 = add i32 %89, %90
  %92 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %93 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %92, i32 0, i32 3
  store i32 %91, i32* %93, align 4
  br label %112

94:                                               ; preds = %38
  %95 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %96 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 4
  %98 = call i32 (i32, i8*, ...) @dev_dbg(i32 %97, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.7, i64 0, i64 0))
  %99 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %100 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = load i32, i32* %4, align 4
  %103 = add i32 %101, %102
  %104 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %105 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %104, i32 0, i32 2
  store i32 %103, i32* %105, align 4
  br label %112

106:                                              ; preds = %38
  %107 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %108 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = load i32, i32* %3, align 4
  %111 = call i32 (i32, i8*, ...) @dev_err(i32 %109, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.8, i64 0, i64 0), i32 %110)
  store i32 0, i32* %3, align 4
  br label %112

112:                                              ; preds = %106, %94, %82, %69, %56, %44
  %113 = load i32, i32* %5, align 4
  %114 = add i32 %113, 1
  store i32 %114, i32* %5, align 4
  %115 = load i32, i32* %5, align 4
  %116 = load i32, i32* @HDAC_MAX_CAPS, align 4
  %117 = icmp ugt i32 %115, %116
  br i1 %117, label %118, label %123

118:                                              ; preds = %112
  %119 = load %struct.hdac_bus*, %struct.hdac_bus** %2, align 8
  %120 = getelementptr inbounds %struct.hdac_bus, %struct.hdac_bus* %119, i32 0, i32 0
  %121 = load i32, i32* %120, align 4
  %122 = call i32 (i32, i8*, ...) @dev_err(i32 %121, i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.9, i64 0, i64 0))
  br label %130

123:                                              ; preds = %112
  %124 = load i32, i32* %3, align 4
  %125 = load i32, i32* @AZX_CAP_HDR_NXT_PTR_MASK, align 4
  %126 = and i32 %124, %125
  store i32 %126, i32* %4, align 4
  br label %127

127:                                              ; preds = %123
  %128 = load i32, i32* %4, align 4
  %129 = icmp ne i32 %128, 0
  br i1 %129, label %9, label %130

130:                                              ; preds = %127, %118, %33
  ret i32 0
}

declare dso_local i32 @snd_hdac_chip_readw(%struct.hdac_bus*, i32) #1

declare dso_local i32 @_snd_hdac_chip_readl(%struct.hdac_bus*, i32) #1

declare dso_local i32 @dev_dbg(i32, i8*, ...) #1

declare dso_local i32 @dev_err(i32, i8*, ...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
