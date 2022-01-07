; ModuleID = '/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_stream_set_format.c'
source_filename = "/home/carl/AnghaBench/linux/sound/firewire/oxfw/extr_oxfw-command.c_avc_stream_set_format.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fw_unit = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@ENOSYS = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @avc_stream_set_format(%struct.fw_unit* %0, i32 %1, i32 %2, i32* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.fw_unit*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.fw_unit* %0, %struct.fw_unit** %7, align 8
  store i32 %1, i32* %8, align 4
  store i32 %2, i32* %9, align 4
  store i32* %3, i32** %10, align 8
  store i32 %4, i32* %11, align 4
  %14 = load i32, i32* %11, align 4
  %15 = add i32 %14, 10
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call i32* @kmalloc(i32 %15, i32 %16)
  store i32* %17, i32** %12, align 8
  %18 = load i32*, i32** %12, align 8
  %19 = icmp eq i32* %18, null
  br i1 %19, label %20, label %23

20:                                               ; preds = %5
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %6, align 4
  br label %110

23:                                               ; preds = %5
  %24 = load i32*, i32** %12, align 8
  %25 = getelementptr inbounds i32, i32* %24, i64 0
  store i32 0, i32* %25, align 4
  %26 = load i32*, i32** %12, align 8
  %27 = getelementptr inbounds i32, i32* %26, i64 1
  store i32 255, i32* %27, align 4
  %28 = load i32*, i32** %12, align 8
  %29 = getelementptr inbounds i32, i32* %28, i64 2
  store i32 191, i32* %29, align 4
  %30 = load i32*, i32** %12, align 8
  %31 = getelementptr inbounds i32, i32* %30, i64 3
  store i32 192, i32* %31, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32*, i32** %12, align 8
  %34 = getelementptr inbounds i32, i32* %33, i64 4
  store i32 %32, i32* %34, align 4
  %35 = load i32*, i32** %12, align 8
  %36 = getelementptr inbounds i32, i32* %35, i64 5
  store i32 0, i32* %36, align 4
  %37 = load i32*, i32** %12, align 8
  %38 = getelementptr inbounds i32, i32* %37, i64 6
  store i32 0, i32* %38, align 4
  %39 = load i32, i32* %9, align 4
  %40 = and i32 255, %39
  %41 = load i32*, i32** %12, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 7
  store i32 %40, i32* %42, align 4
  %43 = load i32*, i32** %12, align 8
  %44 = getelementptr inbounds i32, i32* %43, i64 8
  store i32 255, i32* %44, align 4
  %45 = load i32*, i32** %12, align 8
  %46 = getelementptr inbounds i32, i32* %45, i64 9
  store i32 255, i32* %46, align 4
  %47 = load i32*, i32** %12, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 10
  %49 = load i32*, i32** %10, align 8
  %50 = load i32, i32* %11, align 4
  %51 = call i32 @memcpy(i32* %48, i32* %49, i32 %50)
  %52 = load %struct.fw_unit*, %struct.fw_unit** %7, align 8
  %53 = load i32*, i32** %12, align 8
  %54 = load i32, i32* %11, align 4
  %55 = add i32 %54, 10
  %56 = load i32*, i32** %12, align 8
  %57 = load i32, i32* %11, align 4
  %58 = add i32 %57, 10
  %59 = call i32 @BIT(i32 1)
  %60 = call i32 @BIT(i32 2)
  %61 = or i32 %59, %60
  %62 = call i32 @BIT(i32 3)
  %63 = or i32 %61, %62
  %64 = call i32 @BIT(i32 4)
  %65 = or i32 %63, %64
  %66 = call i32 @BIT(i32 5)
  %67 = or i32 %65, %66
  %68 = call i32 @BIT(i32 6)
  %69 = or i32 %67, %68
  %70 = call i32 @BIT(i32 7)
  %71 = or i32 %69, %70
  %72 = call i32 @BIT(i32 8)
  %73 = or i32 %71, %72
  %74 = call i32 @fcp_avc_transaction(%struct.fw_unit* %52, i32* %53, i32 %55, i32* %56, i32 %58, i32 %73)
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = icmp slt i32 %75, 0
  br i1 %76, label %77, label %78

77:                                               ; preds = %23
  br label %106

78:                                               ; preds = %23
  %79 = load i32, i32* %13, align 4
  %80 = load i32, i32* %11, align 4
  %81 = add i32 %80, 10
  %82 = icmp ult i32 %79, %81
  br i1 %82, label %83, label %86

83:                                               ; preds = %78
  %84 = load i32, i32* @EIO, align 4
  %85 = sub nsw i32 0, %84
  store i32 %85, i32* %13, align 4
  br label %105

86:                                               ; preds = %78
  %87 = load i32*, i32** %12, align 8
  %88 = getelementptr inbounds i32, i32* %87, i64 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp eq i32 %89, 8
  br i1 %90, label %91, label %94

91:                                               ; preds = %86
  %92 = load i32, i32* @ENOSYS, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %13, align 4
  br label %104

94:                                               ; preds = %86
  %95 = load i32*, i32** %12, align 8
  %96 = getelementptr inbounds i32, i32* %95, i64 0
  %97 = load i32, i32* %96, align 4
  %98 = icmp eq i32 %97, 10
  br i1 %98, label %99, label %102

99:                                               ; preds = %94
  %100 = load i32, i32* @EINVAL, align 4
  %101 = sub nsw i32 0, %100
  store i32 %101, i32* %13, align 4
  br label %103

102:                                              ; preds = %94
  store i32 0, i32* %13, align 4
  br label %103

103:                                              ; preds = %102, %99
  br label %104

104:                                              ; preds = %103, %91
  br label %105

105:                                              ; preds = %104, %83
  br label %106

106:                                              ; preds = %105, %77
  %107 = load i32*, i32** %12, align 8
  %108 = call i32 @kfree(i32* %107)
  %109 = load i32, i32* %13, align 4
  store i32 %109, i32* %6, align 4
  br label %110

110:                                              ; preds = %106, %20
  %111 = load i32, i32* %6, align 4
  ret i32 %111
}

declare dso_local i32* @kmalloc(i32, i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @fcp_avc_transaction(%struct.fw_unit*, i32*, i32, i32*, i32, i32) #1

declare dso_local i32 @BIT(i32) #1

declare dso_local i32 @kfree(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
