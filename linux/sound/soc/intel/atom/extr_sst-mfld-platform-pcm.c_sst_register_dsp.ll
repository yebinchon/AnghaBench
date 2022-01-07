; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_register_dsp.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/extr_sst-mfld-platform-pcm.c_sst_register_dsp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_device = type { i32, %struct.TYPE_5__* }
%struct.TYPE_5__ = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@sst_lock = common dso_local global i32 0, align 4
@sst = common dso_local global %struct.sst_device* null, align 8
@.str = private unnamed_addr constant [29 x i8] c"we already have a device %s\0A\00", align 1
@EEXIST = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [23 x i8] c"registering device %s\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_register_dsp(%struct.sst_device* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sst_device*, align 8
  store %struct.sst_device* %0, %struct.sst_device** %3, align 8
  %4 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %5 = icmp ne %struct.sst_device* %4, null
  %6 = xor i1 %5, true
  %7 = zext i1 %6 to i32
  %8 = call i64 @WARN_ON(i32 %7)
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %1
  %11 = load i32, i32* @EINVAL, align 4
  %12 = sub nsw i32 0, %11
  store i32 %12, i32* %2, align 4
  br label %59

13:                                               ; preds = %1
  %14 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %15 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %14, i32 0, i32 1
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load %struct.TYPE_4__*, %struct.TYPE_4__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @try_module_get(i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %26, label %23

23:                                               ; preds = %13
  %24 = load i32, i32* @ENODEV, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %2, align 4
  br label %59

26:                                               ; preds = %13
  %27 = call i32 @mutex_lock(i32* @sst_lock)
  %28 = load %struct.sst_device*, %struct.sst_device** @sst, align 8
  %29 = icmp ne %struct.sst_device* %28, null
  br i1 %29, label %30, label %49

30:                                               ; preds = %26
  %31 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %32 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %31, i32 0, i32 1
  %33 = load %struct.TYPE_5__*, %struct.TYPE_5__** %32, align 8
  %34 = load %struct.sst_device*, %struct.sst_device** @sst, align 8
  %35 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = call i32 @dev_err(%struct.TYPE_5__* %33, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0), i32 %36)
  %38 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %39 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %38, i32 0, i32 1
  %40 = load %struct.TYPE_5__*, %struct.TYPE_5__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @module_put(i32 %44)
  %46 = call i32 @mutex_unlock(i32* @sst_lock)
  %47 = load i32, i32* @EEXIST, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %2, align 4
  br label %59

49:                                               ; preds = %26
  %50 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %51 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %50, i32 0, i32 1
  %52 = load %struct.TYPE_5__*, %struct.TYPE_5__** %51, align 8
  %53 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  %54 = getelementptr inbounds %struct.sst_device, %struct.sst_device* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @dev_dbg(%struct.TYPE_5__* %52, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %55)
  %57 = load %struct.sst_device*, %struct.sst_device** %3, align 8
  store %struct.sst_device* %57, %struct.sst_device** @sst, align 8
  %58 = call i32 @mutex_unlock(i32* @sst_lock)
  store i32 0, i32* %2, align 4
  br label %59

59:                                               ; preds = %49, %30, %23, %10
  %60 = load i32, i32* %2, align 4
  ret i32 %60
}

declare dso_local i64 @WARN_ON(i32) #1

declare dso_local i32 @try_module_get(i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @dev_err(%struct.TYPE_5__*, i8*, i32) #1

declare dso_local i32 @module_put(i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @dev_dbg(%struct.TYPE_5__*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
