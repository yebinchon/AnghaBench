; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_is_up.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_core.c_nfc_dep_link_is_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32, i32, i64, %struct.nfc_target* }
%struct.nfc_target = type { i32 }

@NFC_RF_INITIATOR = common dso_local global i64 0, align 8
@ENOTCONN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_dep_link_is_up(%struct.nfc_dev* %0, i32 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfc_dev*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca %struct.nfc_target*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  %11 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %12 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %11, i32 0, i32 0
  store i32 1, i32* %12, align 8
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %14 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %13, i32 0, i32 3
  %15 = load %struct.nfc_target*, %struct.nfc_target** %14, align 8
  %16 = icmp ne %struct.nfc_target* %15, null
  br i1 %16, label %34, label %17

17:                                               ; preds = %4
  %18 = load i64, i64* %9, align 8
  %19 = load i64, i64* @NFC_RF_INITIATOR, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %34

21:                                               ; preds = %17
  %22 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call %struct.nfc_target* @nfc_find_target(%struct.nfc_dev* %22, i32 %23)
  store %struct.nfc_target* %24, %struct.nfc_target** %10, align 8
  %25 = load %struct.nfc_target*, %struct.nfc_target** %10, align 8
  %26 = icmp eq %struct.nfc_target* %25, null
  br i1 %26, label %27, label %30

27:                                               ; preds = %21
  %28 = load i32, i32* @ENOTCONN, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %50

30:                                               ; preds = %21
  %31 = load %struct.nfc_target*, %struct.nfc_target** %10, align 8
  %32 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %33 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %32, i32 0, i32 3
  store %struct.nfc_target* %31, %struct.nfc_target** %33, align 8
  br label %34

34:                                               ; preds = %30, %17, %4
  %35 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %36 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %35, i32 0, i32 1
  store i32 0, i32* %36, align 4
  %37 = load i64, i64* %9, align 8
  %38 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %39 = getelementptr inbounds %struct.nfc_dev, %struct.nfc_dev* %38, i32 0, i32 2
  store i64 %37, i64* %39, align 8
  %40 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %41 = load i32, i32* %7, align 4
  %42 = load i64, i64* %8, align 8
  %43 = load i64, i64* %9, align 8
  %44 = call i32 @nfc_llcp_mac_is_up(%struct.nfc_dev* %40, i32 %41, i64 %42, i64 %43)
  %45 = load %struct.nfc_dev*, %struct.nfc_dev** %6, align 8
  %46 = load i32, i32* %7, align 4
  %47 = load i64, i64* %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = call i32 @nfc_genl_dep_link_up_event(%struct.nfc_dev* %45, i32 %46, i64 %47, i64 %48)
  store i32 %49, i32* %5, align 4
  br label %50

50:                                               ; preds = %34, %27
  %51 = load i32, i32* %5, align 4
  ret i32 %51
}

declare dso_local %struct.nfc_target* @nfc_find_target(%struct.nfc_dev*, i32) #1

declare dso_local i32 @nfc_llcp_mac_is_up(%struct.nfc_dev*, i32, i64, i64) #1

declare dso_local i32 @nfc_genl_dep_link_up_event(%struct.nfc_dev*, i32, i64, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
