; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_avc_audio_feature_volume.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_avc_audio_feature_volume.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTL_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"short FCP response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"volume command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, i32, i32*, i32, i32, i32)* @avc_audio_feature_volume to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_audio_feature_volume(%struct.fw_unit* %0, i32 %1, i32* %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.fw_unit*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32*, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %8, align 8
  store i32 %1, i32* %9, align 4
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load i32, i32* @GFP_KERNEL, align 4
  %18 = call i32* @kmalloc(i32 12, i32 %17)
  store i32* %18, i32** %14, align 8
  %19 = load i32*, i32** %14, align 8
  %20 = icmp ne i32* %19, null
  br i1 %20, label %24, label %21

21:                                               ; preds = %6
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %7, align 4
  br label %122

24:                                               ; preds = %6
  %25 = load i32, i32* %13, align 4
  %26 = load i32, i32* @CTL_READ, align 4
  %27 = icmp eq i32 %25, %26
  br i1 %27, label %28, label %31

28:                                               ; preds = %24
  %29 = load i32*, i32** %14, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 1, i32* %30, align 4
  store i32 12, i32* %15, align 4
  br label %34

31:                                               ; preds = %24
  %32 = load i32*, i32** %14, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 0
  store i32 0, i32* %33, align 4
  store i32 9, i32* %15, align 4
  br label %34

34:                                               ; preds = %31, %28
  %35 = load i32*, i32** %14, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 1
  store i32 8, i32* %36, align 4
  %37 = load i32*, i32** %14, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 2
  store i32 184, i32* %38, align 4
  %39 = load i32*, i32** %14, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 3
  store i32 129, i32* %40, align 4
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %14, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 4
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* %12, align 4
  %45 = load i32*, i32** %14, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 5
  store i32 %44, i32* %46, align 4
  %47 = load i32*, i32** %14, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 6
  store i32 2, i32* %48, align 4
  %49 = load i32, i32* %11, align 4
  %50 = load i32*, i32** %14, align 8
  %51 = getelementptr inbounds i32, i32* %50, i64 7
  store i32 %49, i32* %51, align 4
  %52 = load i32*, i32** %14, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 8
  store i32 2, i32* %53, align 4
  %54 = load i32*, i32** %14, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 9
  store i32 2, i32* %55, align 4
  %56 = load i32, i32* %13, align 4
  %57 = load i32, i32* @CTL_READ, align 4
  %58 = icmp eq i32 %56, %57
  br i1 %58, label %59, label %64

59:                                               ; preds = %34
  %60 = load i32*, i32** %14, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 10
  store i32 255, i32* %61, align 4
  %62 = load i32*, i32** %14, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 11
  store i32 255, i32* %63, align 4
  br label %74

64:                                               ; preds = %34
  %65 = load i32*, i32** %10, align 8
  %66 = load i32, i32* %65, align 4
  %67 = ashr i32 %66, 8
  %68 = load i32*, i32** %14, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 10
  store i32 %67, i32* %69, align 4
  %70 = load i32*, i32** %10, align 8
  %71 = load i32, i32* %70, align 4
  %72 = load i32*, i32** %14, align 8
  %73 = getelementptr inbounds i32, i32* %72, i64 11
  store i32 %71, i32* %73, align 4
  br label %74

74:                                               ; preds = %64, %59
  %75 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %76 = load i32*, i32** %14, align 8
  %77 = load i32*, i32** %14, align 8
  %78 = call i32 @fcp_avc_transaction(%struct.fw_unit* %75, i32* %76, i32 12, i32* %77, i32 12, i32 1022)
  store i32 %78, i32* %16, align 4
  %79 = load i32, i32* %16, align 4
  %80 = icmp slt i32 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %74
  br label %118

82:                                               ; preds = %74
  %83 = load i32, i32* %16, align 4
  %84 = icmp slt i32 %83, 12
  br i1 %84, label %85, label %91

85:                                               ; preds = %82
  %86 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %87 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %86, i32 0, i32 0
  %88 = call i32 @dev_err(i32* %87, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %89 = load i32, i32* @EIO, align 4
  %90 = sub nsw i32 0, %89
  store i32 %90, i32* %16, align 4
  br label %118

91:                                               ; preds = %82
  %92 = load i32*, i32** %14, align 8
  %93 = getelementptr inbounds i32, i32* %92, i64 0
  %94 = load i32, i32* %93, align 4
  %95 = load i32, i32* %15, align 4
  %96 = icmp ne i32 %94, %95
  br i1 %96, label %97, label %103

97:                                               ; preds = %91
  %98 = load %struct.fw_unit*, %struct.fw_unit** %8, align 8
  %99 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %98, i32 0, i32 0
  %100 = call i32 @dev_err(i32* %99, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  %101 = load i32, i32* @EIO, align 4
  %102 = sub nsw i32 0, %101
  store i32 %102, i32* %16, align 4
  br label %118

103:                                              ; preds = %91
  %104 = load i32, i32* %13, align 4
  %105 = load i32, i32* @CTL_READ, align 4
  %106 = icmp eq i32 %104, %105
  br i1 %106, label %107, label %117

107:                                              ; preds = %103
  %108 = load i32*, i32** %14, align 8
  %109 = getelementptr inbounds i32, i32* %108, i64 10
  %110 = load i32, i32* %109, align 4
  %111 = shl i32 %110, 8
  %112 = load i32*, i32** %14, align 8
  %113 = getelementptr inbounds i32, i32* %112, i64 11
  %114 = load i32, i32* %113, align 4
  %115 = or i32 %111, %114
  %116 = load i32*, i32** %10, align 8
  store i32 %115, i32* %116, align 4
  br label %117

117:                                              ; preds = %107, %103
  store i32 0, i32* %16, align 4
  br label %118

118:                                              ; preds = %117, %97, %85, %81
  %119 = load i32*, i32** %14, align 8
  %120 = call i32 @kfree(i32* %119)
  %121 = load i32, i32* %16, align 4
  store i32 %121, i32* %7, align 4
  br label %122

122:                                              ; preds = %118, %21
  %123 = load i32, i32* %7, align 4
  ret i32 %123
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @fcp_avc_transaction(%struct.fw_unit*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @dev_err(i32*, i8*) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
