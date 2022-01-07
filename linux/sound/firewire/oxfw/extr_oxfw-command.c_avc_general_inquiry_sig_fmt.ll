; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_general_inquiry_sig_fmt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_general_inquiry_sig_fmt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@CIP_SFC_COUNT = common dso_local global i32 0, align 4
@amdtp_rate_table = common dso_local global i32* null, align 8
@EINVAL = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@AVC_GENERAL_PLUG_DIR_IN = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_general_inquiry_sig_fmt(%struct.fw_unit* %0, i32 %1, i32 %2, i16 zeroext %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.fw_unit*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i16, align 2
  %10 = alloca i32, align 4
  %11 = alloca i32*, align 8
  %12 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i16 %3, i16* %9, align 2
  store i32 0, i32* %10, align 4
  br label %13

13:                                               ; preds = %27, %4
  %14 = load i32, i32* %10, align 4
  %15 = load i32, i32* @CIP_SFC_COUNT, align 4
  %16 = icmp ult i32 %14, %15
  br i1 %16, label %17, label %30

17:                                               ; preds = %13
  %18 = load i32*, i32** @amdtp_rate_table, align 8
  %19 = load i32, i32* %10, align 4
  %20 = zext i32 %19 to i64
  %21 = getelementptr inbounds i32, i32* %18, i64 %20
  %22 = load i32, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %30

26:                                               ; preds = %17
  br label %27

27:                                               ; preds = %26
  %28 = load i32, i32* %10, align 4
  %29 = add i32 %28, 1
  store i32 %29, i32* %10, align 4
  br label %13

30:                                               ; preds = %25, %13
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @CIP_SFC_COUNT, align 4
  %33 = icmp eq i32 %31, %32
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i32, i32* @EINVAL, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %5, align 4
  br label %116

37:                                               ; preds = %30
  %38 = load i32, i32* @GFP_KERNEL, align 4
  %39 = call i32* @kzalloc(i32 8, i32 %38)
  store i32* %39, i32** %11, align 8
  %40 = load i32*, i32** %11, align 8
  %41 = icmp eq i32* %40, null
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @ENOMEM, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %5, align 4
  br label %116

45:                                               ; preds = %37
  %46 = load i32*, i32** %11, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 0
  store i32 2, i32* %47, align 4
  %48 = load i32*, i32** %11, align 8
  %49 = getelementptr inbounds i32, i32* %48, i64 1
  store i32 255, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load i32, i32* @AVC_GENERAL_PLUG_DIR_IN, align 4
  %52 = icmp eq i32 %50, %51
  br i1 %52, label %53, label %56

53:                                               ; preds = %45
  %54 = load i32*, i32** %11, align 8
  %55 = getelementptr inbounds i32, i32* %54, i64 2
  store i32 25, i32* %55, align 4
  br label %59

56:                                               ; preds = %45
  %57 = load i32*, i32** %11, align 8
  %58 = getelementptr inbounds i32, i32* %57, i64 2
  store i32 24, i32* %58, align 4
  br label %59

59:                                               ; preds = %56, %53
  %60 = load i16, i16* %9, align 2
  %61 = zext i16 %60 to i32
  %62 = and i32 255, %61
  %63 = load i32*, i32** %11, align 8
  %64 = getelementptr inbounds i32, i32* %63, i64 3
  store i32 %62, i32* %64, align 4
  %65 = load i32*, i32** %11, align 8
  %66 = getelementptr inbounds i32, i32* %65, i64 4
  store i32 144, i32* %66, align 4
  %67 = load i32, i32* %10, align 4
  %68 = and i32 7, %67
  %69 = load i32*, i32** %11, align 8
  %70 = getelementptr inbounds i32, i32* %69, i64 5
  store i32 %68, i32* %70, align 4
  %71 = load i32*, i32** %11, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 6
  store i32 255, i32* %72, align 4
  %73 = load i32*, i32** %11, align 8
  %74 = getelementptr inbounds i32, i32* %73, i64 7
  store i32 255, i32* %74, align 4
  %75 = load %struct.fw_unit*, %struct.fw_unit** %6, align 8
  %76 = load i32*, i32** %11, align 8
  %77 = load i32*, i32** %11, align 8
  %78 = call i32 @BIT(i32 1)
  %79 = call i32 @BIT(i32 2)
  %80 = or i32 %78, %79
  %81 = call i32 @BIT(i32 3)
  %82 = or i32 %80, %81
  %83 = call i32 @BIT(i32 4)
  %84 = or i32 %82, %83
  %85 = call i32 @BIT(i32 5)
  %86 = or i32 %84, %85
  %87 = call i32 @fcp_avc_transaction(%struct.fw_unit* %75, i32* %76, i32 8, i32* %77, i32 8, i32 %86)
  store i32 %87, i32* %12, align 4
  %88 = load i32, i32* %12, align 4
  %89 = icmp slt i32 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %59
  br label %107

91:                                               ; preds = %59
  %92 = load i32, i32* %12, align 4
  %93 = icmp slt i32 %92, 8
  br i1 %93, label %94, label %97

94:                                               ; preds = %91
  %95 = load i32, i32* @EIO, align 4
  %96 = sub nsw i32 0, %95
  store i32 %96, i32* %12, align 4
  br label %106

97:                                               ; preds = %91
  %98 = load i32*, i32** %11, align 8
  %99 = getelementptr inbounds i32, i32* %98, i64 0
  %100 = load i32, i32* %99, align 4
  %101 = icmp eq i32 %100, 8
  br i1 %101, label %102, label %105

102:                                              ; preds = %97
  %103 = load i32, i32* @ENOSYS, align 4
  %104 = sub nsw i32 0, %103
  store i32 %104, i32* %12, align 4
  br label %105

105:                                              ; preds = %102, %97
  br label %106

106:                                              ; preds = %105, %94
  br label %107

107:                                              ; preds = %106, %90
  %108 = load i32, i32* %12, align 4
  %109 = icmp slt i32 %108, 0
  br i1 %109, label %110, label %111

110:                                              ; preds = %107
  br label %112

111:                                              ; preds = %107
  store i32 0, i32* %12, align 4
  br label %112

112:                                              ; preds = %111, %110
  %113 = load i32*, i32** %11, align 8
  %114 = call i32 @kfree(i32* %113)
  %115 = load i32, i32* %12, align 4
  store i32 %115, i32* %5, align 4
  br label %116

116:                                              ; preds = %112, %42, %34
  %117 = load i32, i32* %5, align 4
  ret i32 %117
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
