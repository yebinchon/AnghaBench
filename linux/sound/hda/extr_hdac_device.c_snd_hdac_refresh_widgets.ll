; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_refresh_widgets.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_snd_hdac_refresh_widgets.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hdac_device = type { i32, i32, i8*, i8*, i32, i32 }

@.str = private unnamed_addr constant [37 x i8] c"cannot read sub nodes for FG 0x%02x\0A\00", align 1
@EINVAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @snd_hdac_refresh_widgets(%struct.hdac_device* %0) #0 {
  %2 = alloca %struct.hdac_device*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.hdac_device* %0, %struct.hdac_device** %2, align 8
  store i32 0, i32* %5, align 4
  %6 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %7 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %6, i32 0, i32 1
  %8 = call i32 @mutex_lock(i32* %7)
  %9 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %10 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %11 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %10, i32 0, i32 4
  %12 = load i32, i32* %11, align 8
  %13 = call i32 @snd_hdac_get_sub_nodes(%struct.hdac_device* %9, i32 %12, i8** %3)
  store i32 %13, i32* %4, align 4
  %14 = load i8*, i8** %3, align 8
  %15 = icmp ne i8* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %1
  %17 = load i32, i32* %4, align 4
  %18 = icmp sle i32 %17, 0
  br i1 %18, label %22, label %19

19:                                               ; preds = %16
  %20 = load i32, i32* %4, align 4
  %21 = icmp sge i32 %20, 255
  br i1 %21, label %22, label %31

22:                                               ; preds = %19, %16, %1
  %23 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %24 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %23, i32 0, i32 5
  %25 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %26 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %25, i32 0, i32 4
  %27 = load i32, i32* %26, align 8
  %28 = call i32 @dev_err(i32* %24, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), i32 %27)
  %29 = load i32, i32* @EINVAL, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %5, align 4
  br label %52

31:                                               ; preds = %19
  %32 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %33 = load i8*, i8** %3, align 8
  %34 = load i32, i32* %4, align 4
  %35 = call i32 @hda_widget_sysfs_reinit(%struct.hdac_device* %32, i8* %33, i32 %34)
  store i32 %35, i32* %5, align 4
  %36 = load i32, i32* %5, align 4
  %37 = icmp slt i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %31
  br label %52

39:                                               ; preds = %31
  %40 = load i32, i32* %4, align 4
  %41 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %42 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load i8*, i8** %3, align 8
  %44 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %45 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %44, i32 0, i32 3
  store i8* %43, i8** %45, align 8
  %46 = load i8*, i8** %3, align 8
  %47 = load i32, i32* %4, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %46, i64 %48
  %50 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %51 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %50, i32 0, i32 2
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %39, %38, %22
  %53 = load %struct.hdac_device*, %struct.hdac_device** %2, align 8
  %54 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %53, i32 0, i32 1
  %55 = call i32 @mutex_unlock(i32* %54)
  %56 = load i32, i32* %5, align 4
  ret i32 %56
}

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @snd_hdac_get_sub_nodes(%struct.hdac_device*, i32, i8**) #1

declare dso_local i32 @dev_err(i32*, i8*, i32) #1

declare dso_local i32 @hda_widget_sysfs_reinit(%struct.hdac_device*, i8*, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
