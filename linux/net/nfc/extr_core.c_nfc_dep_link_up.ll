; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32, %struct.nfc_target*, %struct.TYPE_2__* }
%struct.nfc_target = type { i32 }
%struct.TYPE_2__ = type { i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)* }

@.str = private unnamed_addr constant [21 x i8] c"dev_name=%s comm %d\0A\00", align 1
@EOPNOTSUPP = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4
@EALREADY = common dso_local global i32 0, align 4
@NFC_MAX_GT_LEN = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4
@NFC_RF_INITIATOR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_dep_link_up(%struct.nfc_dev* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfc_dev*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.nfc_target*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 0, i32* %8, align 4
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 1
  %14 = call i32 @dev_name(i32* %13)
  %15 = load i32, i32* %7, align 4
  %16 = call i32 @pr_debug(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  %17 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %18 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %17, i32 0, i32 4
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)** %20, align 8
  %22 = icmp ne i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)* %21, null
  br i1 %22, label %26, label %23

23:                                               ; preds = %3
  %24 = load i32, i32* @EOPNOTSUPP, align 4
  %25 = sub nsw i32 0, %24
  store i32 %25, i32* %4, align 4
  br label %90

26:                                               ; preds = %3
  %27 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %28 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %27, i32 0, i32 1
  %29 = call i32 @device_lock(i32* %28)
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %31 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %30, i32 0, i32 1
  %32 = call i32 @device_is_registered(i32* %31)
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %37, label %34

34:                                               ; preds = %26
  %35 = load i32, i32* @ENODEV, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %8, align 4
  br label %85

37:                                               ; preds = %26
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp eq i32 %40, 1
  br i1 %41, label %42, label %45

42:                                               ; preds = %37
  %43 = load i32, i32* @EALREADY, align 4
  %44 = sub nsw i32 0, %43
  store i32 %44, i32* %8, align 4
  br label %85

45:                                               ; preds = %37
  %46 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %47 = call i32* @nfc_llcp_general_bytes(%struct.nfc_dev* %46, i64* %10)
  store i32* %47, i32** %9, align 8
  %48 = load i64, i64* %10, align 8
  %49 = load i64, i64* @NFC_MAX_GT_LEN, align 8
  %50 = icmp ugt i64 %48, %49
  br i1 %50, label %51, label %54

51:                                               ; preds = %45
  %52 = load i32, i32* @EINVAL, align 4
  %53 = sub nsw i32 0, %52
  store i32 %53, i32* %8, align 4
  br label %85

54:                                               ; preds = %45
  %55 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call %struct.nfc_target* @nfc_find_target(%struct.nfc_dev* %55, i32 %56)
  store %struct.nfc_target* %57, %struct.nfc_target** %11, align 8
  %58 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %59 = icmp eq %struct.nfc_target* %58, null
  br i1 %59, label %60, label %63

60:                                               ; preds = %54
  %61 = load i32, i32* @ENOTCONN, align 4
  %62 = sub nsw i32 0, %61
  store i32 %62, i32* %8, align 4
  br label %85

63:                                               ; preds = %54
  %64 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %65 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %64, i32 0, i32 4
  %66 = load %struct.TYPE_2__*, %struct.TYPE_2__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %66, i32 0, i32 0
  %68 = load i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)*, i32 (%struct.nfc_dev*, %struct.nfc_target*, i32, i32*, i64)** %67, align 8
  %69 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %70 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %71 = load i32, i32* %7, align 4
  %72 = load i32*, i32** %9, align 8
  %73 = load i64, i64* %10, align 8
  %74 = call i32 %68(%struct.nfc_dev* %69, %struct.nfc_target* %70, i32 %71, i32* %72, i64 %73)
  store i32 %74, i32* %8, align 4
  %75 = load i32, i32* %8, align 4
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %84, label %77

77:                                               ; preds = %63
  %78 = load %struct.nfc_target*, %struct.nfc_target** %11, align 8
  %79 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %80 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %79, i32 0, i32 3
  store %struct.nfc_target* %78, %struct.nfc_target** %80, align 8
  %81 = load i32, i32* @NFC_RF_INITIATOR, align 4
  %82 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %83 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %82, i32 0, i32 2
  store i32 %81, i32* %83, align 8
  br label %84

84:                                               ; preds = %77, %63
  br label %85

85:                                               ; preds = %84, %60, %51, %42, %34
  %86 = load %struct.nfc_dev*, %struct.nfc_dev** %5, align 8
  %87 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %86, i32 0, i32 1
  %88 = call i32 @device_unlock(i32* %87)
  %89 = load i32, i32* %8, align 4
  store i32 %89, i32* %4, align 4
  br label %90

90:                                               ; preds = %85, %23
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32 @pr_debug(i8*, i32, i32) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32* @nfc_llcp_general_bytes(%struct.nfc_dev*, i64*) #1

declare dso_local %struct.nfc_target* @nfc_find_target(%struct.nfc_dev*, i32) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
