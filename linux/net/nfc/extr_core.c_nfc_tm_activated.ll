; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_tm_activated.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_tm_activated.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i32 }

@NFC_RF_TARGET = common dso_local global i32 0, align 4
@NFC_PROTO_NFC_DEP_MASK = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_tm_activated(%struct.nfc_dev* %0, i64 %1, i32 %2, i32* %3, i64 %4) #0 {
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i64 %4, i64* %10, align 8
  %12 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %13 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %12, i32 0, i32 1
  %14 = call i32 @device_lock(i32* %13)
  %15 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %16 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %15, i32 0, i32 0
  store i32 0, i32* %16, align 4
  %17 = load i32*, i32** %9, align 8
  %18 = icmp ne i32* %17, null
  br i1 %18, label %19, label %28

19:                                               ; preds = %5
  %20 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %21 = load i32*, i32** %9, align 8
  %22 = load i64, i64* %10, align 8
  %23 = call i32 @nfc_set_remote_general_bytes(%struct.nfc_dev* %20, i32* %21, i64 %22)
  store i32 %23, i32* %11, align 4
  %24 = load i32, i32* %11, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %19
  br label %44

27:                                               ; preds = %19
  br label %28

28:                                               ; preds = %27, %5
  %29 = load i32, i32* @NFC_RF_TARGET, align 4
  %30 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %31 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 4
  %32 = load i64, i64* %7, align 8
  %33 = load i64, i64* @NFC_PROTO_NFC_DEP_MASK, align 8
  %34 = icmp eq i64 %32, %33
  br i1 %34, label %35, label %40

35:                                               ; preds = %28
  %36 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %37 = load i32, i32* %8, align 4
  %38 = load i32, i32* @NFC_RF_TARGET, align 4
  %39 = call i32 @nfc_dep_link_is_up(%struct.nfc_dev* %36, i32 0, i32 %37, i32 %38)
  br label %40

40:                                               ; preds = %35, %28
  %41 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %42 = load i64, i64* %7, align 8
  %43 = call i32 @nfc_genl_tm_activated(%struct.nfc_dev* %41, i64 %42)
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %40, %26
  %45 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %46 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %45, i32 0, i32 1
  %47 = call i32 @device_unlock(i32* %46)
  %48 = load i32, i32* %11, align 4
  ret i32 %48
}

declare dso_local i32 @device_lock(i32*) #1

declare dso_local i32 @nfc_set_remote_general_bytes(%struct.nfc_dev*, i32*, i64) #1

declare dso_local i32 @nfc_dep_link_is_up(%struct.nfc_dev*, i32, i32, i32) #1

declare dso_local i32 @nfc_genl_tm_activated(%struct.nfc_dev*, i64) #1

declare dso_local i32 @device_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
