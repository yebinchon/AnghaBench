; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_cvt.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/codecs/extr_hdac_hdmi.c_hdac_hdmi_add_cvt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32 }
%struct.hdac_hdmi_priv = type { i32, i32 }
%struct.hdac_hdmi_cvt = type { i32, i32, i32 }

@NAME_SIZE = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [7 x i8] c"cvt %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*, i32)* @hdac_hdmi_add_cvt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hdac_hdmi_add_cvt(%struct.hdac_device* %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.hdac_device*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.hdac_hdmi_priv*, align 8
  %7 = alloca %struct.hdac_hdmi_cvt*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %4, align 8
  store i32 %1, i32* %5, align 4
  %11 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %12 = call %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device* %11)
  store %struct.hdac_hdmi_priv* %12, %struct.hdac_hdmi_priv** %6, align 8
  %13 = load i32, i32* @NAME_SIZE, align 4
  %14 = zext i32 %13 to i64
  %15 = call i8* @llvm.stacksave()
  store i8* %15, i8** %8, align 8
  %16 = alloca i8, i64 %14, align 16
  store i64 %14, i64* %9, align 8
  %17 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %18 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %17, i32 0, i32 0
  %19 = load i32, i32* @GFP_KERNEL, align 4
  %20 = call %struct.hdac_hdmi_cvt* @devm_kzalloc(i32* %18, i32 12, i32 %19)
  store %struct.hdac_hdmi_cvt* %20, %struct.hdac_hdmi_cvt** %7, align 8
  %21 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %22 = icmp ne %struct.hdac_hdmi_cvt* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %2
  %24 = load i32, i32* @ENOMEM, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

26:                                               ; preds = %2
  %27 = load i32, i32* %5, align 4
  %28 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %29 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %28, i32 0, i32 0
  store i32 %27, i32* %29, align 4
  %30 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %31 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @sprintf(i8* %16, i8* getelementptr inbounds ([7 x i8], [7 x i8]* @.str, i64 0, i64 0), i32 %32)
  %34 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %35 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %34, i32 0, i32 0
  %36 = load i32, i32* @GFP_KERNEL, align 4
  %37 = call i32 @devm_kstrdup(i32* %35, i8* %16, i32 %36)
  %38 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %39 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %38, i32 0, i32 2
  store i32 %37, i32* %39, align 4
  %40 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %41 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %40, i32 0, i32 2
  %42 = load i32, i32* %41, align 4
  %43 = icmp ne i32 %42, 0
  br i1 %43, label %47, label %44

44:                                               ; preds = %26
  %45 = load i32, i32* @ENOMEM, align 4
  %46 = sub nsw i32 0, %45
  store i32 %46, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

47:                                               ; preds = %26
  %48 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %49 = getelementptr inbounds %struct.hdac_hdmi_cvt, %struct.hdac_hdmi_cvt* %48, i32 0, i32 1
  %50 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %51 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %50, i32 0, i32 1
  %52 = call i32 @list_add_tail(i32* %49, i32* %51)
  %53 = load %struct.hdac_hdmi_priv*, %struct.hdac_hdmi_priv** %6, align 8
  %54 = getelementptr inbounds %struct.hdac_hdmi_priv, %struct.hdac_hdmi_priv* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %54, align 4
  %57 = load %struct.hdac_device*, %struct.hdac_device** %4, align 8
  %58 = load %struct.hdac_hdmi_cvt*, %struct.hdac_hdmi_cvt** %7, align 8
  %59 = call i32 @hdac_hdmi_query_cvt_params(%struct.hdac_device* %57, %struct.hdac_hdmi_cvt* %58)
  store i32 %59, i32* %3, align 4
  store i32 1, i32* %10, align 4
  br label %60

60:                                               ; preds = %47, %44, %23
  %61 = load i8*, i8** %8, align 8
  call void @llvm.stackrestore(i8* %61)
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

declare dso_local %struct.hdac_hdmi_priv* @hdev_to_hdmi_priv(%struct.hdac_device*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local %struct.hdac_hdmi_cvt* @devm_kzalloc(i32*, i32, i32) #1

declare dso_local i32 @sprintf(i8*, i8*, i32) #1

declare dso_local i32 @devm_kstrdup(i32*, i8*, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @hdac_hdmi_query_cvt_params(%struct.hdac_device*, %struct.hdac_hdmi_cvt*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
