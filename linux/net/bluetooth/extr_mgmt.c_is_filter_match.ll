; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_is_filter_match.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_is_filter_match.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { i64, i64, i32 }

@HCI_RSSI_INVALID = common dso_local global i64 0, align 8
@HCI_QUIRK_STRICT_DUPLICATE_FILTER = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i64, i32*, i32, i32*, i32)* @is_filter_match to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_filter_match(%struct.hci_dev* %0, i64 %1, i32* %2, i32 %3, i32* %4, i32 %5) #0 {
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_dev*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %8, align 8
  store i64 %1, i64* %9, align 8
  store i32* %2, i32** %10, align 8
  store i32 %3, i32* %11, align 4
  store i32* %4, i32** %12, align 8
  store i32 %5, i32* %13, align 4
  %14 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %15 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = load i64, i64* @HCI_RSSI_INVALID, align 8
  %19 = icmp ne i64 %17, %18
  br i1 %19, label %20, label %38

20:                                               ; preds = %6
  %21 = load i64, i64* %9, align 8
  %22 = load i64, i64* @HCI_RSSI_INVALID, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %37, label %24

24:                                               ; preds = %20
  %25 = load i64, i64* %9, align 8
  %26 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %27 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  %29 = load i64, i64* %28, align 8
  %30 = icmp slt i64 %25, %29
  br i1 %30, label %31, label %38

31:                                               ; preds = %24
  %32 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %33 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 1
  %35 = call i64 @test_bit(i32 %32, i32* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %38, label %37

37:                                               ; preds = %31, %20
  store i32 0, i32* %7, align 4
  br label %97

38:                                               ; preds = %31, %24, %6
  %39 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %40 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %40, i32 0, i32 1
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %72

44:                                               ; preds = %38
  %45 = load i32*, i32** %10, align 8
  %46 = load i32, i32* %11, align 4
  %47 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %48 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %48, i32 0, i32 1
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 0
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 2
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @eir_has_uuids(i32* %45, i32 %46, i64 %50, i32 %54)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %71, label %57

57:                                               ; preds = %44
  %58 = load i32*, i32** %12, align 8
  %59 = load i32, i32* %13, align 4
  %60 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %61 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %65 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %64, i32 0, i32 0
  %66 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 8
  %68 = call i32 @eir_has_uuids(i32* %58, i32 %59, i64 %63, i32 %67)
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %71, label %70

70:                                               ; preds = %57
  store i32 0, i32* %7, align 4
  br label %97

71:                                               ; preds = %57, %44
  br label %72

72:                                               ; preds = %71, %38
  %73 = load i32, i32* @HCI_QUIRK_STRICT_DUPLICATE_FILTER, align 4
  %74 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %75 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %74, i32 0, i32 1
  %76 = call i64 @test_bit(i32 %73, i32* %75)
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %96

78:                                               ; preds = %72
  %79 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %80 = call i32 @restart_le_scan(%struct.hci_dev* %79)
  %81 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %82 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %81, i32 0, i32 0
  %83 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i64, i64* @HCI_RSSI_INVALID, align 8
  %86 = icmp ne i64 %84, %85
  br i1 %86, label %87, label %95

87:                                               ; preds = %78
  %88 = load i64, i64* %9, align 8
  %89 = load %struct.hci_dev*, %struct.hci_dev** %8, align 8
  %90 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %89, i32 0, i32 0
  %91 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %90, i32 0, i32 0
  %92 = load i64, i64* %91, align 8
  %93 = icmp slt i64 %88, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %87
  store i32 0, i32* %7, align 4
  br label %97

95:                                               ; preds = %87, %78
  br label %96

96:                                               ; preds = %95, %72
  store i32 1, i32* %7, align 4
  br label %97

97:                                               ; preds = %96, %94, %70, %37
  %98 = load i32, i32* %7, align 4
  ret i32 %98
}

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local i32 @eir_has_uuids(i32*, i32, i64, i32) #1

declare dso_local i32 @restart_le_scan(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
