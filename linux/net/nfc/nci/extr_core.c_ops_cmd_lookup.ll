; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_ops_cmd_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_ops_cmd_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_driver_ops = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.nci_driver_ops* (%struct.nci_driver_ops*, i64, i64)* @ops_cmd_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.nci_driver_ops* @ops_cmd_lookup(%struct.nci_driver_ops* %0, i64 %1, i64 %2) #0 {
  %4 = alloca %struct.nci_driver_ops*, align 8
  %5 = alloca %struct.nci_driver_ops*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.nci_driver_ops*, align 8
  store %struct.nci_driver_ops* %0, %struct.nci_driver_ops** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %10 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %5, align 8
  %11 = icmp ne %struct.nci_driver_ops* %10, null
  br i1 %11, label %12, label %15

12:                                               ; preds = %3
  %13 = load i64, i64* %6, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %16, label %15

15:                                               ; preds = %12, %3
  store %struct.nci_driver_ops* null, %struct.nci_driver_ops** %4, align 8
  br label %37

16:                                               ; preds = %12
  store i64 0, i64* %8, align 8
  br label %17

17:                                               ; preds = %33, %16
  %18 = load i64, i64* %8, align 8
  %19 = load i64, i64* %6, align 8
  %20 = icmp ult i64 %18, %19
  br i1 %20, label %21, label %36

21:                                               ; preds = %17
  %22 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %5, align 8
  %23 = load i64, i64* %8, align 8
  %24 = getelementptr inbounds %struct.nci_driver_ops, %struct.nci_driver_ops* %22, i64 %23
  store %struct.nci_driver_ops* %24, %struct.nci_driver_ops** %9, align 8
  %25 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %9, align 8
  %26 = getelementptr inbounds %struct.nci_driver_ops, %struct.nci_driver_ops* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %32

30:                                               ; preds = %21
  %31 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %9, align 8
  store %struct.nci_driver_ops* %31, %struct.nci_driver_ops** %4, align 8
  br label %37

32:                                               ; preds = %21
  br label %33

33:                                               ; preds = %32
  %34 = load i64, i64* %8, align 8
  %35 = add i64 %34, 1
  store i64 %35, i64* %8, align 8
  br label %17

36:                                               ; preds = %17
  store %struct.nci_driver_ops* null, %struct.nci_driver_ops** %4, align 8
  br label %37

37:                                               ; preds = %36, %30, %15
  %38 = load %struct.nci_driver_ops*, %struct.nci_driver_ops** %4, align 8
  ret %struct.nci_driver_ops* %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
