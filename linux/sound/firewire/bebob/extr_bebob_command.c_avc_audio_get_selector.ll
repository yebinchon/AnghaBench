; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_command.c_avc_audio_get_selector.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_command.c_avc_audio_get_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_audio_get_selector(%struct.fw_unit* %0, i32 %1, i32 %2, i32* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  %12 = load i32, i32* @GFP_KERNEL, align 4
  %13 = call i32* @kzalloc(i32 12, i32 %12)
  store i32* %13, i32** %10, align 8
  %14 = load i32*, i32** %10, align 8
  %15 = icmp eq i32* %14, null
  br i1 %15, label %16, label %19

16:                                               ; preds = %4
  %17 = load i32, i32* @ENOMEM, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %5, align 4
  br label %110

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 1, i32* %21, align 4
  %22 = load i32, i32* %7, align 4
  %23 = and i32 7, %22
  %24 = or i32 8, %23
  %25 = load i32*, i32** %10, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 1
  store i32 %24, i32* %26, align 4
  %27 = load i32*, i32** %10, align 8
  %28 = getelementptr inbounds i32, i32* %27, i64 2
  store i32 184, i32* %28, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 3
  store i32 128, i32* %30, align 4
  %31 = load i32, i32* %8, align 4
  %32 = and i32 255, %31
  %33 = load i32*, i32** %10, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %10, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 16, i32* %36, align 4
  %37 = load i32*, i32** %10, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 2, i32* %38, align 4
  %39 = load i32*, i32** %10, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  store i32 255, i32* %40, align 4
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 8
  store i32 1, i32* %42, align 4
  %43 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %44 = load i32*, i32** %10, align 8
  %45 = load i32*, i32** %10, align 8
  %46 = call i32 @BIT(i32 1)
  %47 = call i32 @BIT(i32 2)
  %48 = or i32 %46, %47
  %49 = call i32 @BIT(i32 3)
  %50 = or i32 %48, %49
  %51 = call i32 @BIT(i32 4)
  %52 = or i32 %50, %51
  %53 = call i32 @BIT(i32 5)
  %54 = or i32 %52, %53
  %55 = call i32 @BIT(i32 6)
  %56 = or i32 %54, %55
  %57 = call i32 @BIT(i32 8)
  %58 = or i32 %56, %57
  %59 = call i32 @fcp_avc_transaction(%struct.fw_unit* %43, i32* %44, i32 12, i32* %45, i32 12, i32 %58)
  store i32 %59, i32* %11, align 4
  %60 = load i32, i32* %11, align 4
  %61 = icmp slt i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %19
  br label %97

63:                                               ; preds = %19
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 9
  br i1 %65, label %66, label %69

66:                                               ; preds = %63
  %67 = load i32, i32* @EIO, align 4
  %68 = sub nsw i32 0, %67
  store i32 %68, i32* %11, align 4
  br label %96

69:                                               ; preds = %63
  %70 = load i32*, i32** %10, align 8
  %71 = getelementptr inbounds i32, i32* %70, i64 0
  %72 = load i32, i32* %71, align 4
  %73 = icmp eq i32 %72, 8
  br i1 %73, label %74, label %77

74:                                               ; preds = %69
  %75 = load i32, i32* @ENOSYS, align 4
  %76 = sub nsw i32 0, %75
  store i32 %76, i32* %11, align 4
  br label %95

77:                                               ; preds = %69
  %78 = load i32*, i32** %10, align 8
  %79 = getelementptr inbounds i32, i32* %78, i64 0
  %80 = load i32, i32* %79, align 4
  %81 = icmp eq i32 %80, 10
  br i1 %81, label %82, label %85

82:                                               ; preds = %77
  %83 = load i32, i32* @EINVAL, align 4
  %84 = sub nsw i32 0, %83
  store i32 %84, i32* %11, align 4
  br label %94

85:                                               ; preds = %77
  %86 = load i32*, i32** %10, align 8
  %87 = getelementptr inbounds i32, i32* %86, i64 0
  %88 = load i32, i32* %87, align 4
  %89 = icmp eq i32 %88, 11
  br i1 %89, label %90, label %93

90:                                               ; preds = %85
  %91 = load i32, i32* @EAGAIN, align 4
  %92 = sub nsw i32 0, %91
  store i32 %92, i32* %11, align 4
  br label %93

93:                                               ; preds = %90, %85
  br label %94

94:                                               ; preds = %93, %82
  br label %95

95:                                               ; preds = %94, %74
  br label %96

96:                                               ; preds = %95, %66
  br label %97

97:                                               ; preds = %96, %62
  %98 = load i32, i32* %11, align 4
  %99 = icmp slt i32 %98, 0
  br i1 %99, label %100, label %101

100:                                              ; preds = %97
  br label %106

101:                                              ; preds = %97
  %102 = load i32*, i32** %10, align 8
  %103 = getelementptr inbounds i32, i32* %102, i64 7
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %9, align 8
  store i32 %104, i32* %105, align 4
  store i32 0, i32* %11, align 4
  br label %106

106:                                              ; preds = %101, %100
  %107 = load i32*, i32** %10, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32, i32* %11, align 4
  store i32 %109, i32* %5, align 4
  br label %110

110:                                              ; preds = %106, %16
  %111 = load i32, i32* %5, align 4
  ret i32 %111
}

declare dso_local i32* @kzalloc(i32, i32) #1

declare dso_local i32 @fcp_avc_transaction(%struct.fw_unit*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
