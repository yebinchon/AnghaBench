; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_avc_audio_feature_mute.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-spkr.c_avc_audio_feature_mute.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@CTL_READ = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [20 x i8] c"short FCP response\0A\00", align 1
@EIO = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [21 x i8] c"mute command failed\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.fw_unit*, i32, i32*, i32)* @avc_audio_feature_mute to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @avc_audio_feature_mute(%struct.fw_unit* %0, i32 %1, i32* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32* %2, i32** %8, align 8
  store i32 %3, i32* %9, align 4
  %13 = load i32, i32* @GFP_KERNEL, align 4
  %14 = call i32* @kmalloc(i32 11, i32 %13)
  store i32* %14, i32** %10, align 8
  %15 = load i32*, i32** %10, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @ENOMEM, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %109

20:                                               ; preds = %4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @CTL_READ, align 4
  %23 = icmp eq i32 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %20
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  store i32 1, i32* %26, align 4
  store i32 12, i32* %11, align 4
  br label %30

27:                                               ; preds = %20
  %28 = load i32*, i32** %10, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 0
  store i32 0, i32* %29, align 4
  store i32 9, i32* %11, align 4
  br label %30

30:                                               ; preds = %27, %24
  %31 = load i32*, i32** %10, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 1
  store i32 8, i32* %32, align 4
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 2
  store i32 184, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 3
  store i32 129, i32* %36, align 4
  %37 = load i32, i32* %7, align 4
  %38 = load i32*, i32** %10, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 4
  store i32 %37, i32* %39, align 4
  %40 = load i32*, i32** %10, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 5
  store i32 16, i32* %41, align 4
  %42 = load i32*, i32** %10, align 8
  %43 = getelementptr inbounds i32, i32* %42, i64 6
  store i32 2, i32* %43, align 4
  %44 = load i32*, i32** %10, align 8
  %45 = getelementptr inbounds i32, i32* %44, i64 7
  store i32 0, i32* %45, align 4
  %46 = load i32*, i32** %10, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 8
  store i32 1, i32* %47, align 4
  %48 = load i32*, i32** %10, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 9
  store i32 1, i32* %49, align 4
  %50 = load i32, i32* %9, align 4
  %51 = load i32, i32* @CTL_READ, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %30
  %54 = load i32*, i32** %10, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 10
  store i32 255, i32* %55, align 4
  br label %64

56:                                               ; preds = %30
  %57 = load i32*, i32** %8, align 8
  %58 = load i32, i32* %57, align 4
  %59 = icmp ne i32 %58, 0
  %60 = zext i1 %59 to i64
  %61 = select i1 %59, i32 112, i32 96
  %62 = load i32*, i32** %10, align 8
  %63 = getelementptr inbounds i32, i32* %62, i64 10
  store i32 %61, i32* %63, align 4
  br label %64

64:                                               ; preds = %56, %53
  %65 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %66 = load i32*, i32** %10, align 8
  %67 = load i32*, i32** %10, align 8
  %68 = call i32 @fcp_avc_transaction(%struct.fw_unit* %65, i32* %66, i32 11, i32* %67, i32 11, i32 1022)
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* %12, align 4
  %70 = icmp slt i32 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  br label %105

72:                                               ; preds = %64
  %73 = load i32, i32* %12, align 4
  %74 = icmp slt i32 %73, 11
  br i1 %74, label %75, label %81

75:                                               ; preds = %72
  %76 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %77 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %76, i32 0, i32 0
  %78 = call i32 @dev_err(i32* %77, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str, i64 0, i64 0))
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %12, align 4
  br label %105

81:                                               ; preds = %72
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = load i32, i32* %11, align 4
  %86 = icmp ne i32 %84, %85
  br i1 %86, label %87, label %93

87:                                               ; preds = %81
  %88 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %89 = getelementptr inbounds %struct.fw_unit, %struct.fw_unit* %88, i32 0, i32 0
  %90 = call i32 @dev_err(i32* %89, i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0))
  %91 = load i32, i32* @EIO, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %12, align 4
  br label %105

93:                                               ; preds = %81
  %94 = load i32, i32* %9, align 4
  %95 = load i32, i32* @CTL_READ, align 4
  %96 = icmp eq i32 %94, %95
  br i1 %96, label %97, label %104

97:                                               ; preds = %93
  %98 = load i32*, i32** %10, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 10
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 112
  %102 = zext i1 %101 to i32
  %103 = load i32*, i32** %8, align 8
  store i32 %102, i32* %103, align 4
  br label %104

104:                                              ; preds = %97, %93
  store i32 0, i32* %12, align 4
  br label %105

105:                                              ; preds = %104, %87, %75, %71
  %106 = load i32*, i32** %10, align 8
  %107 = call i32 @kfree(i32* %106)
  %108 = load i32, i32* %12, align 4
  store i32 %108, i32* %5, align 4
  br label %109

109:                                              ; preds = %105, %17
  %110 = load i32, i32* %5, align 4
  ret i32 %110
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
