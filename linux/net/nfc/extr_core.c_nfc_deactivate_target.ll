; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_deactivate_target.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_deactivate_target.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, %struct.TYPE_4__*, %struct.TYPE_3__*, i32 }
%struct.TYPE_4__ = type { i64 }
%struct.TYPE_3__ = type { i32 (%struct.nfc_dev*, %struct.TYPE_4__*, i32)*, i64 }

@.str = private unnamed_addr constant [27 x i8] c"dev_name=%s target_idx=%u\0A\00", align 1
@ENODEV = common dso_local global i32 0, align 4
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_deactivate_target(%struct.nfc_dev* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.nfc_dev*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 0, i32* %7, align 4
  %8 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %9 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %8, i32 0, i32 0
  %10 = call i32 @dev_name(i32* %9)
  %11 = load i64, i64* %5, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i32 %10, i64 %11)
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %14 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %13, i32 0, i32 0
  %15 = call i32 @device_lock(i32* %14)
  %16 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %17 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %16, i32 0, i32 0
  %18 = call i32 @device_is_registered(i32* %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %3
  %21 = load i32, i32* @ENODEV, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %7, align 4
  br label %67

23:                                               ; preds = %3
  %24 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %25 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %24, i32 0, i32 1
  %26 = load %struct.TYPE_4__*, %struct.TYPE_4__** %25, align 8
  %27 = icmp eq %struct.TYPE_4__* %26, null
  br i1 %27, label %28, label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @ENOTCONN, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %7, align 4
  br label %67

31:                                               ; preds = %23
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %33 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %32, i32 0, i32 1
  %34 = load %struct.TYPE_4__*, %struct.TYPE_4__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* %5, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %31
  %40 = load i32, i32* @ENOTCONN, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %7, align 4
  br label %67

42:                                               ; preds = %31
  %43 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %44 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %43, i32 0, i32 2
  %45 = load %struct.TYPE_3__*, %struct.TYPE_3__** %44, align 8
  %46 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %45, i32 0, i32 1
  %47 = load i64, i64* %46, align 8
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %53

49:                                               ; preds = %42
  %50 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %51 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %50, i32 0, i32 3
  %52 = call i32 @del_timer_sync(i32* %51)
  br label %53

53:                                               ; preds = %49, %42
  %54 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %55 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %54, i32 0, i32 2
  %56 = load %struct.TYPE_3__*, %struct.TYPE_3__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %56, i32 0, i32 0
  %58 = load i32 (%struct.nfc_dev*, %struct.TYPE_4__*, i32)*, i32 (%struct.nfc_dev*, %struct.TYPE_4__*, i32)** %57, align 8
  %59 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %60 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %61 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %60, i32 0, i32 1
  %62 = load %struct.TYPE_4__*, %struct.TYPE_4__** %61, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 %58(%struct.nfc_dev* %59, %struct.TYPE_4__* %62, i32 %63)
  %65 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %66 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %65, i32 0, i32 1
  store %struct.TYPE_4__* null, %struct.TYPE_4__** %66, align 8
  br label %67

67:                                               ; preds = %53, %39, %28, %20
  %68 = load %struct.nfc_dev*, %struct.nfc_dev** %4, align 8
  %69 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %68, i32 0, i32 0
  %70 = call i32 @device_unlock(i32* %69)
  %71 = load i32, i32* %7, align 4
  ret i32 %71
}

declare dso_local i32 @pr_debug(i8*, i32, i64) #1

declare dso_local i32 @dev_name(i32*) #1

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @device_is_registered(i32*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
