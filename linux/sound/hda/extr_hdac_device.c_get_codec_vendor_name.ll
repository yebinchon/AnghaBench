; ModuleID = '/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_get_codec_vendor_name.c'
source_filename = "/home/carl/AnghaBench/linux/sound/hda/extr_hdac_device.c_get_codec_vendor_name.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hda_vendor_id = type { i64, i32 }
%struct.hdac_device = type { i32, i32 }

@hda_vendor_ids = common dso_local global %struct.hda_vendor_id* null, align 8
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [13 x i8] c"Generic %04x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hdac_device*)* @get_codec_vendor_name to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_codec_vendor_name(%struct.hdac_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.hdac_device*, align 8
  %4 = alloca %struct.hda_vendor_id*, align 8
  %5 = alloca i64, align 8
  store %struct.hdac_device* %0, %struct.hdac_device** %3, align 8
  %6 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %7 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = ashr i32 %8, 16
  %10 = sext i32 %9 to i64
  store i64 %10, i64* %5, align 8
  %11 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** @hda_vendor_ids, align 8
  store %struct.hda_vendor_id* %11, %struct.hda_vendor_id** %4, align 8
  br label %12

12:                                               ; preds = %42, %1
  %13 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %14 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %45

17:                                               ; preds = %12
  %18 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %19 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* %5, align 8
  %22 = icmp eq i64 %20, %21
  br i1 %22, label %23, label %41

23:                                               ; preds = %17
  %24 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %25 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load i32, i32* @GFP_KERNEL, align 4
  %28 = call i32 @kstrdup(i32 %26, i32 %27)
  %29 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %30 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %32 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %36

35:                                               ; preds = %23
  br label %39

36:                                               ; preds = %23
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  br label %39

39:                                               ; preds = %36, %35
  %40 = phi i32 [ 0, %35 ], [ %38, %36 ]
  store i32 %40, i32* %2, align 4
  br label %61

41:                                               ; preds = %17
  br label %42

42:                                               ; preds = %41
  %43 = load %struct.hda_vendor_id*, %struct.hda_vendor_id** %4, align 8
  %44 = getelementptr inbounds %struct.hda_vendor_id, %struct.hda_vendor_id* %43, i32 1
  store %struct.hda_vendor_id* %44, %struct.hda_vendor_id** %4, align 8
  br label %12

45:                                               ; preds = %12
  %46 = load i32, i32* @GFP_KERNEL, align 4
  %47 = load i64, i64* %5, align 8
  %48 = call i32 @kasprintf(i32 %46, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i64 %47)
  %49 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %50 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %49, i32 0, i32 1
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hdac_device*, %struct.hdac_device** %3, align 8
  %52 = getelementptr inbounds %struct.hdac_device, %struct.hdac_device* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %45
  br label %59

56:                                               ; preds = %45
  %57 = load i32, i32* @ENOMEM, align 4
  %58 = sub nsw i32 0, %57
  br label %59

59:                                               ; preds = %56, %55
  %60 = phi i32 [ 0, %55 ], [ %58, %56 ]
  store i32 %60, i32* %2, align 4
  br label %61

61:                                               ; preds = %59, %39
  %62 = load i32, i32* %2, align 4
  ret i32 %62
}

declare dso_local i32 @kstrdup(i32, i32) #1

declare dso_local i32 @kasprintf(i32, i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
