; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32*, i32 }

@.str = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@nfc_devlist_mutex = common dso_local global i32 0, align 4
@nfc_devlist_generation = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Could not register llcp device\0A\00", align 1
@.str.2 = private unnamed_addr constant [62 x i8] c"The userspace won't be notified that the device %s was added\0A\00", align 1
@RFKILL_TYPE_NFC = common dso_local global i32 0, align 4
@nfc_rfkill_ops = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_register_device(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %5 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %5, i32 0, i32 1
  %7 = call i32 @dev_name(i32* %6)
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = call i32 @mutex_lock(i32* @nfc_devlist_mutex)
  %10 = load i32, i32* @nfc_devlist_generation, align 4
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* @nfc_devlist_generation, align 4
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 1
  %14 = call i32 @device_add(i32* %13)
  store i32 %14, i32* %4, align 4
  %15 = call i32 @mutex_unlock(i32* @nfc_devlist_mutex)
  %16 = load i32, i32* %4, align 4
  %17 = icmp slt i32 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %1
  %19 = load i32, i32* %4, align 4
  store i32 %19, i32* %2, align 4
  br label %67

20:                                               ; preds = %1
  %21 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %22 = call i32 @nfc_llcp_register_device(%struct.nfc_dev* %21)
  store i32 %22, i32* %4, align 4
  %23 = load i32, i32* %4, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %20
  %26 = call i32 @pr_err(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  br label %27

27:                                               ; preds = %25, %20
  %28 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %29 = call i32 @nfc_genl_device_added(%struct.nfc_dev* %28)
  store i32 %29, i32* %4, align 4
  %30 = load i32, i32* %4, align 4
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %32, label %37

32:                                               ; preds = %27
  %33 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %34 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %33, i32 0, i32 1
  %35 = call i32 @dev_name(i32* %34)
  %36 = call i32 @pr_debug(i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str.2, i64 0, i64 0), i32 %35)
  br label %37

37:                                               ; preds = %32, %27
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 1
  %40 = call i32 @dev_name(i32* %39)
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %42 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %41, i32 0, i32 1
  %43 = load i32, i32* @RFKILL_TYPE_NFC, align 4
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %45 = call i32* @rfkill_alloc(i32 %40, i32* %42, i32 %43, i32* @nfc_rfkill_ops, %struct.nfc_dev* %44)
  %46 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %47 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %46, i32 0, i32 0
  store i32* %45, i32** %47, align 8
  %48 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %49 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %48, i32 0, i32 0
  %50 = load i32*, i32** %49, align 8
  %51 = icmp ne i32* %50, null
  br i1 %51, label %52, label %66

52:                                               ; preds = %37
  %53 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %54 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %53, i32 0, i32 0
  %55 = load i32*, i32** %54, align 8
  %56 = call i64 @rfkill_register(i32* %55)
  %57 = icmp slt i64 %56, 0
  br i1 %57, label %58, label %65

58:                                               ; preds = %52
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %60 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %59, i32 0, i32 0
  %61 = load i32*, i32** %60, align 8
  %62 = call i32 @rfkill_destroy(i32* %61)
  %63 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %64 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %63, i32 0, i32 0
  store i32* null, i32** %64, align 8
  br label %65

65:                                               ; preds = %58, %52
  br label %66

66:                                               ; preds = %65, %37
  store i32 0, i32* %2, align 4
  br label %67

67:                                               ; preds = %66, %18
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @device_add(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @nfc_llcp_register_device(%struct.nfc_dev*) #1

declare dso_local i32 @pr_err(i8*) #1

declare dso_local i32 @nfc_genl_device_added(%struct.nfc_dev*) #1

declare dso_local i32* @rfkill_alloc(i32, i32*, i32, i32*, %struct.nfc_dev*) #1

declare dso_local i64 @rfkill_register(i32*) #1

declare dso_local i32 @rfkill_destroy(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
