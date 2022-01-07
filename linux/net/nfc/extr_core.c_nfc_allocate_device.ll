; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_allocate_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_allocate_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i64, %struct.nfc_ops*, %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32* }
%struct.nfc_ops = type { i64, i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@nfc_index_ida = common dso_local global i32 0, align 4
@nfc_class = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"nfc%d\00", align 1
@NFC_RF_NONE = common dso_local global i32 0, align 4
@nfc_check_pres_timeout = common dso_local global i32 0, align 4
@nfc_check_pres_work = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.nfc_dev* @nfc_allocate_device(%struct.nfc_ops* %0, i64 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca %struct.nfc_ops*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.nfc_dev*, align 8
  %11 = alloca i32, align 4
  store %struct.nfc_ops* %0, %struct.nfc_ops** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %13 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %12, i32 0, i32 5
  %14 = load i32, i32* %13, align 8
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %36

16:                                               ; preds = %4
  %17 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %18 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %17, i32 0, i32 4
  %19 = load i32, i32* %18, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %36

21:                                               ; preds = %16
  %22 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %23 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %22, i32 0, i32 3
  %24 = load i32, i32* %23, align 8
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %26, label %36

26:                                               ; preds = %21
  %27 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %28 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %27, i32 0, i32 2
  %29 = load i32, i32* %28, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %33 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %32, i32 0, i32 1
  %34 = load i32, i32* %33, align 8
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31, %26, %21, %16, %4
  store %struct.nfc_dev* null, %struct.nfc_dev** %5, align 8
  br label %110

37:                                               ; preds = %31
  %38 = load i64, i64* %7, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %41, label %40

40:                                               ; preds = %37
  store %struct.nfc_dev* null, %struct.nfc_dev** %5, align 8
  br label %110

41:                                               ; preds = %37
  %42 = load i32, i32* @GFP_KERNEL, align 4
  %43 = call %struct.nfc_dev* @kzalloc(i32 64, i32 %42)
  store %struct.nfc_dev* %43, %struct.nfc_dev** %10, align 8
  %44 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %45 = icmp ne %struct.nfc_dev* %44, null
  br i1 %45, label %47, label %46

46:                                               ; preds = %41
  store %struct.nfc_dev* null, %struct.nfc_dev** %5, align 8
  br label %110

47:                                               ; preds = %41
  %48 = load i32, i32* @GFP_KERNEL, align 4
  %49 = call i32 @ida_simple_get(i32* @nfc_index_ida, i32 0, i32 0, i32 %48)
  store i32 %49, i32* %11, align 4
  %50 = load i32, i32* %11, align 4
  %51 = icmp slt i32 %50, 0
  br i1 %51, label %52, label %53

52:                                               ; preds = %47
  br label %107

53:                                               ; preds = %47
  %54 = load i32, i32* %11, align 4
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %56 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %58 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %57, i32 0, i32 11
  %59 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %58, i32 0, i32 0
  store i32* @nfc_class, i32** %59, align 8
  %60 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %61 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %60, i32 0, i32 11
  %62 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %63 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 8
  %65 = call i32 @dev_set_name(%struct.TYPE_3__* %61, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i32 %64)
  %66 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %67 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %66, i32 0, i32 11
  %68 = call i32 @device_initialize(%struct.TYPE_3__* %67)
  %69 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %70 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %71 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %70, i32 0, i32 10
  store %struct.nfc_ops* %69, %struct.nfc_ops** %71, align 8
  %72 = load i64, i64* %7, align 8
  %73 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %74 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %73, i32 0, i32 9
  store i64 %72, i64* %74, align 8
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %77 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %76, i32 0, i32 1
  store i32 %75, i32* %77, align 4
  %78 = load i32, i32* %9, align 4
  %79 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %80 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %79, i32 0, i32 2
  store i32 %78, i32* %80, align 8
  %81 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %82 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %81, i32 0, i32 8
  %83 = call i32 @INIT_LIST_HEAD(i32* %82)
  %84 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %85 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %84, i32 0, i32 7
  %86 = call i32 @nfc_genl_data_init(i32* %85)
  %87 = load i32, i32* @NFC_RF_NONE, align 4
  %88 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %89 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %88, i32 0, i32 6
  store i32 %87, i32* %89, align 8
  %90 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %91 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %90, i32 0, i32 3
  store i32 1, i32* %91, align 4
  %92 = load %struct.nfc_ops*, %struct.nfc_ops** %6, align 8
  %93 = getelementptr inbounds %struct.nfc_ops, %struct.nfc_ops* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = icmp ne i64 %94, 0
  br i1 %95, label %96, label %105

96:                                               ; preds = %53
  %97 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %98 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %97, i32 0, i32 5
  %99 = load i32, i32* @nfc_check_pres_timeout, align 4
  %100 = call i32 @timer_setup(i32* %98, i32 %99, i32 0)
  %101 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %102 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %101, i32 0, i32 4
  %103 = load i32, i32* @nfc_check_pres_work, align 4
  %104 = call i32 @INIT_WORK(i32* %102, i32 %103)
  br label %105

105:                                              ; preds = %96, %53
  %106 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  store %struct.nfc_dev* %106, %struct.nfc_dev** %5, align 8
  br label %110

107:                                              ; preds = %52
  %108 = load %struct.nfc_dev*, %struct.nfc_dev** %10, align 8
  %109 = call i32 @kfree(%struct.nfc_dev* %108)
  store %struct.nfc_dev* null, %struct.nfc_dev** %5, align 8
  br label %110

110:                                              ; preds = %107, %105, %46, %40, %36
  %111 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  ret %struct.nfc_dev* %111
}

declare dso_local %struct.nfc_dev* @kzalloc(i32, i32) #1

declare dso_local i32 @ida_simple_get(i32*, i32, i32, i32) #1

declare dso_local i32 @dev_set_name(%struct.TYPE_3__*, i8*, i32) #1

declare dso_local i32 @device_initialize(%struct.TYPE_3__*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @nfc_genl_data_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @kfree(%struct.nfc_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
