; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_command.c_avc_audio_set_selector.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/bebob/extr_bebob_command.c_avc_audio_set_selector.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_audio_set_selector(%struct.fw_unit* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
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
  br label %97

19:                                               ; preds = %4
  %20 = load i32*, i32** %10, align 8
  %21 = getelementptr inbounds i32, i32* %20, i64 0
  store i32 0, i32* %21, align 4
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
  %39 = load i32, i32* %9, align 4
  %40 = and i32 255, %39
  %41 = load i32*, i32** %10, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %10, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 1, i32* %44, align 4
  %45 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %46 = load i32*, i32** %10, align 8
  %47 = load i32*, i32** %10, align 8
  %48 = call i32 @BIT(i32 1)
  %49 = call i32 @BIT(i32 2)
  %50 = or i32 %48, %49
  %51 = call i32 @BIT(i32 3)
  %52 = or i32 %50, %51
  %53 = call i32 @BIT(i32 4)
  %54 = or i32 %52, %53
  %55 = call i32 @BIT(i32 5)
  %56 = or i32 %54, %55
  %57 = call i32 @BIT(i32 6)
  %58 = or i32 %56, %57
  %59 = call i32 @BIT(i32 7)
  %60 = or i32 %58, %59
  %61 = call i32 @BIT(i32 8)
  %62 = or i32 %60, %61
  %63 = call i32 @fcp_avc_transaction(%struct.fw_unit* %45, i32* %46, i32 12, i32* %47, i32 12, i32 %62)
  store i32 %63, i32* %11, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp slt i32 %64, 0
  br i1 %65, label %66, label %67

66:                                               ; preds = %19
  br label %93

67:                                               ; preds = %19
  %68 = load i32, i32* %11, align 4
  %69 = icmp slt i32 %68, 9
  br i1 %69, label %70, label %73

70:                                               ; preds = %67
  %71 = load i32, i32* @EIO, align 4
  %72 = sub nsw i32 0, %71
  store i32 %72, i32* %11, align 4
  br label %92

73:                                               ; preds = %67
  %74 = load i32*, i32** %10, align 8
  %75 = getelementptr inbounds i32, i32* %74, i64 0
  %76 = load i32, i32* %75, align 4
  %77 = icmp eq i32 %76, 8
  br i1 %77, label %78, label %81

78:                                               ; preds = %73
  %79 = load i32, i32* @ENOSYS, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %11, align 4
  br label %91

81:                                               ; preds = %73
  %82 = load i32*, i32** %10, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 0
  %84 = load i32, i32* %83, align 4
  %85 = icmp eq i32 %84, 10
  br i1 %85, label %86, label %89

86:                                               ; preds = %81
  %87 = load i32, i32* @EINVAL, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %11, align 4
  br label %90

89:                                               ; preds = %81
  store i32 0, i32* %11, align 4
  br label %90

90:                                               ; preds = %89, %86
  br label %91

91:                                               ; preds = %90, %78
  br label %92

92:                                               ; preds = %91, %70
  br label %93

93:                                               ; preds = %92, %66
  %94 = load i32*, i32** %10, align 8
  %95 = call i32 @kfree(i32* %94)
  %96 = load i32, i32* %11, align 4
  store i32 %96, i32* %5, align 4
  br label %97

97:                                               ; preds = %93, %16
  %98 = load i32, i32* %5, align 4
  ret i32 %98
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
