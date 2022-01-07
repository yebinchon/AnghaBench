; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_eir.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_request.c_create_eir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i64, i64, i64, i64, i32 }

@EIR_NAME_SHORT = common dso_local global i32 0, align 4
@EIR_NAME_COMPLETE = common dso_local global i32 0, align 4
@HCI_TX_POWER_INVALID = common dso_local global i64 0, align 8
@EIR_TX_POWER = common dso_local global i32 0, align 4
@EIR_DEVICE_ID = common dso_local global i32 0, align 4
@HCI_MAX_EIR_LENGTH = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, i32*)* @create_eir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @create_eir(%struct.hci_dev* %0, i32* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca i64, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store i32* %1, i32** %4, align 8
  %7 = load i32*, i32** %4, align 8
  store i32* %7, i32** %5, align 8
  %8 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %9 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %8, i32 0, i32 5
  %10 = load i32, i32* %9, align 8
  %11 = call i64 @strlen(i32 %10)
  store i64 %11, i64* %6, align 8
  %12 = load i64, i64* %6, align 8
  %13 = icmp ugt i64 %12, 0
  br i1 %13, label %14, label %42

14:                                               ; preds = %2
  %15 = load i64, i64* %6, align 8
  %16 = icmp ugt i64 %15, 48
  br i1 %16, label %17, label %21

17:                                               ; preds = %14
  store i64 48, i64* %6, align 8
  %18 = load i32, i32* @EIR_NAME_SHORT, align 4
  %19 = load i32*, i32** %5, align 8
  %20 = getelementptr inbounds i32, i32* %19, i64 1
  store i32 %18, i32* %20, align 4
  br label %25

21:                                               ; preds = %14
  %22 = load i32, i32* @EIR_NAME_COMPLETE, align 4
  %23 = load i32*, i32** %5, align 8
  %24 = getelementptr inbounds i32, i32* %23, i64 1
  store i32 %22, i32* %24, align 4
  br label %25

25:                                               ; preds = %21, %17
  %26 = load i64, i64* %6, align 8
  %27 = add i64 %26, 1
  %28 = trunc i64 %27 to i32
  %29 = load i32*, i32** %5, align 8
  %30 = getelementptr inbounds i32, i32* %29, i64 0
  store i32 %28, i32* %30, align 4
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds i32, i32* %31, i64 2
  %33 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %34 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %33, i32 0, i32 5
  %35 = load i32, i32* %34, align 8
  %36 = load i64, i64* %6, align 8
  %37 = call i32 @memcpy(i32* %32, i32 %35, i64 %36)
  %38 = load i64, i64* %6, align 8
  %39 = add i64 %38, 2
  %40 = load i32*, i32** %5, align 8
  %41 = getelementptr inbounds i32, i32* %40, i64 %39
  store i32* %41, i32** %5, align 8
  br label %42

42:                                               ; preds = %25, %2
  %43 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %44 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @HCI_TX_POWER_INVALID, align 8
  %47 = icmp ne i64 %45, %46
  br i1 %47, label %48, label %62

48:                                               ; preds = %42
  %49 = load i32*, i32** %5, align 8
  %50 = getelementptr inbounds i32, i32* %49, i64 0
  store i32 2, i32* %50, align 4
  %51 = load i32, i32* @EIR_TX_POWER, align 4
  %52 = load i32*, i32** %5, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 1
  store i32 %51, i32* %53, align 4
  %54 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %55 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %54, i32 0, i32 0
  %56 = load i64, i64* %55, align 8
  %57 = trunc i64 %56 to i32
  %58 = load i32*, i32** %5, align 8
  %59 = getelementptr inbounds i32, i32* %58, i64 2
  store i32 %57, i32* %59, align 4
  %60 = load i32*, i32** %5, align 8
  %61 = getelementptr inbounds i32, i32* %60, i64 3
  store i32* %61, i32** %5, align 8
  br label %62

62:                                               ; preds = %48, %42
  %63 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %64 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %63, i32 0, i32 1
  %65 = load i64, i64* %64, align 8
  %66 = icmp sgt i64 %65, 0
  br i1 %66, label %67, label %99

67:                                               ; preds = %62
  %68 = load i32*, i32** %5, align 8
  %69 = getelementptr inbounds i32, i32* %68, i64 0
  store i32 9, i32* %69, align 4
  %70 = load i32, i32* @EIR_DEVICE_ID, align 4
  %71 = load i32*, i32** %5, align 8
  %72 = getelementptr inbounds i32, i32* %71, i64 1
  store i32 %70, i32* %72, align 4
  %73 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %74 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = load i32*, i32** %5, align 8
  %77 = getelementptr inbounds i32, i32* %76, i64 2
  %78 = call i32 @put_unaligned_le16(i64 %75, i32* %77)
  %79 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %80 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %79, i32 0, i32 2
  %81 = load i64, i64* %80, align 8
  %82 = load i32*, i32** %5, align 8
  %83 = getelementptr inbounds i32, i32* %82, i64 4
  %84 = call i32 @put_unaligned_le16(i64 %81, i32* %83)
  %85 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %86 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %85, i32 0, i32 3
  %87 = load i64, i64* %86, align 8
  %88 = load i32*, i32** %5, align 8
  %89 = getelementptr inbounds i32, i32* %88, i64 6
  %90 = call i32 @put_unaligned_le16(i64 %87, i32* %89)
  %91 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %92 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %91, i32 0, i32 4
  %93 = load i64, i64* %92, align 8
  %94 = load i32*, i32** %5, align 8
  %95 = getelementptr inbounds i32, i32* %94, i64 8
  %96 = call i32 @put_unaligned_le16(i64 %93, i32* %95)
  %97 = load i32*, i32** %5, align 8
  %98 = getelementptr inbounds i32, i32* %97, i64 10
  store i32* %98, i32** %5, align 8
  br label %99

99:                                               ; preds = %67, %62
  %100 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %101 = load i32*, i32** %5, align 8
  %102 = load i64, i64* @HCI_MAX_EIR_LENGTH, align 8
  %103 = load i32*, i32** %5, align 8
  %104 = load i32*, i32** %4, align 8
  %105 = ptrtoint i32* %103 to i64
  %106 = ptrtoint i32* %104 to i64
  %107 = sub i64 %105, %106
  %108 = sdiv exact i64 %107, 4
  %109 = sub nsw i64 %102, %108
  %110 = call i32* @create_uuid16_list(%struct.hci_dev* %100, i32* %101, i64 %109)
  store i32* %110, i32** %5, align 8
  %111 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %112 = load i32*, i32** %5, align 8
  %113 = load i64, i64* @HCI_MAX_EIR_LENGTH, align 8
  %114 = load i32*, i32** %5, align 8
  %115 = load i32*, i32** %4, align 8
  %116 = ptrtoint i32* %114 to i64
  %117 = ptrtoint i32* %115 to i64
  %118 = sub i64 %116, %117
  %119 = sdiv exact i64 %118, 4
  %120 = sub nsw i64 %113, %119
  %121 = call i32* @create_uuid32_list(%struct.hci_dev* %111, i32* %112, i64 %120)
  store i32* %121, i32** %5, align 8
  %122 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %123 = load i32*, i32** %5, align 8
  %124 = load i64, i64* @HCI_MAX_EIR_LENGTH, align 8
  %125 = load i32*, i32** %5, align 8
  %126 = load i32*, i32** %4, align 8
  %127 = ptrtoint i32* %125 to i64
  %128 = ptrtoint i32* %126 to i64
  %129 = sub i64 %127, %128
  %130 = sdiv exact i64 %129, 4
  %131 = sub nsw i64 %124, %130
  %132 = call i32* @create_uuid128_list(%struct.hci_dev* %122, i32* %123, i64 %131)
  store i32* %132, i32** %5, align 8
  ret void
}

declare dso_local i64 @strlen(i32) #1

declare dso_local i32 @memcpy(i32*, i32, i64) #1

declare dso_local i32 @put_unaligned_le16(i64, i32*) #1

declare dso_local i32* @create_uuid16_list(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32* @create_uuid32_list(%struct.hci_dev*, i32*, i64) #1

declare dso_local i32* @create_uuid128_list(%struct.hci_dev*, i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
