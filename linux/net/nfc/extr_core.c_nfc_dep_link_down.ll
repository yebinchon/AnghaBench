; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_down.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_down.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, i32*, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { {}* }

@.str = private unnamed_addr constant [13 x i8] c"dev_name=%s\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@NFC_RF_NONE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_dep_link_down(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  store i32 0, i32* %4, align 4
  %5 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %6 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %5, i32 0, i32 1
  %7 = call i32 @dev_name(i32* %6)
  %8 = call i32 @pr_debug(i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i32 %7)
  %9 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %10 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %9, i32 0, i32 4
  %11 = load %struct.TYPE_2__*, %struct.TYPE_2__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %11, i32 0, i32 0
  %13 = bitcast {}** %12 to i32 (%struct.nfc_dev*)**
  %14 = load i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)** %13, align 8
  %15 = icmp ne i32 (%struct.nfc_dev*)* %14, null
  br i1 %15, label %19, label %16

16:                                               ; preds = %1
  %17 = load i32, i32* @EOPNOTSUPP, align 4
  %18 = sub nsw i32 0, %17
  store i32 %18, i32* %2, align 4
  br label %67

19:                                               ; preds = %1
  %20 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %21 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %20, i32 0, i32 1
  %22 = call i32 @device_lock(i32* %21)
  %23 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %24 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %23, i32 0, i32 1
  %25 = call i32 @device_is_registered(i32* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %19
  %28 = load i32, i32* @ENODEV, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %62

30:                                               ; preds = %19
  %31 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %32 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = icmp eq i32 %33, 0
  br i1 %34, label %35, label %38

35:                                               ; preds = %30
  %36 = load i32, i32* @EALREADY, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %4, align 4
  br label %62

38:                                               ; preds = %30
  %39 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %40 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %39, i32 0, i32 4
  %41 = load %struct.TYPE_2__*, %struct.TYPE_2__** %40, align 8
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = bitcast {}** %42 to i32 (%struct.nfc_dev*)**
  %44 = load i32 (%struct.nfc_dev*)*, i32 (%struct.nfc_dev*)** %43, align 8
  %45 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %46 = call i32 %44(%struct.nfc_dev* %45)
  store i32 %46, i32* %4, align 4
  %47 = load i32, i32* %4, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %61, label %49

49:                                               ; preds = %38
  %50 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %51 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %50, i32 0, i32 0
  store i32 0, i32* %51, align 8
  %52 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %53 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %52, i32 0, i32 3
  store i32* null, i32** %53, align 8
  %54 = load i32, i32* @NFC_RF_NONE, align 4
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %55, i32 0, i32 2
  store i32 %54, i32* %56, align 8
  %57 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %58 = call i32 @nfc_llcp_mac_is_down(%struct.nfc_dev* %57)
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %60 = call i32 @nfc_genl_dep_link_down_event(%struct.nfc_dev* %59)
  br label %61

61:                                               ; preds = %49, %38
  br label %62

62:                                               ; preds = %61, %35, %27
  %63 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %64 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %63, i32 0, i32 1
  %65 = call i32 @device_unlock(i32* %64)
  %66 = load i32, i32* %4, align 4
  store i32 %66, i32* %2, align 4
  br label %67

67:                                               ; preds = %62, %16
  %68 = load i32, i32* %2, align 4
  ret i32 %68
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @nfc_llcp_mac_is_down(%struct.nfc_dev*) #1

declare dso_local i32 @nfc_genl_dep_link_down_event(%struct.nfc_dev*) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
