; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_connect_gate.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_hci.c_nci_hci_connect_gate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64*, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@NCI_HCI_DO_NOT_OPEN_PIPE = common dso_local global i64 0, align 8
@NCI_HCI_INVALID_PIPE = common dso_local global i64 0, align 8
@EADDRINUSE = common dso_local global i32 0, align 4
@NCI_HCI_LINK_MGMT_PIPE = common dso_local global i64 0, align 8
@NCI_HCI_ADMIN_PIPE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_hci_connect_gate(%struct.nci_dev* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.nci_dev*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.nci_dev* %0, %struct.nci_dev** %6, align 8
  store i64 %1, i64* %7, align 8
  store i64 %2, i64* %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 0, i32* %10, align 4
  %12 = load i64, i64* %9, align 8
  %13 = load i64, i64* @NCI_HCI_DO_NOT_OPEN_PIPE, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %4
  store i32 0, i32* %5, align 4
  br label %98

16:                                               ; preds = %4
  %17 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %18 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %17, i32 0, i32 0
  %19 = load %struct.TYPE_4__*, %struct.TYPE_4__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %8, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %30

27:                                               ; preds = %16
  %28 = load i32, i32* @EADDRINUSE, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %98

30:                                               ; preds = %16
  %31 = load i64, i64* %9, align 8
  %32 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %33 = icmp ne i64 %31, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %30
  br label %53

35:                                               ; preds = %30
  %36 = load i64, i64* %8, align 8
  switch i64 %36, label %41 [
    i64 128, label %37
    i64 129, label %39
  ]

37:                                               ; preds = %35
  %38 = load i64, i64* @NCI_HCI_LINK_MGMT_PIPE, align 8
  store i64 %38, i64* %9, align 8
  br label %52

39:                                               ; preds = %35
  %40 = load i64, i64* @NCI_HCI_ADMIN_PIPE, align 8
  store i64 %40, i64* %9, align 8
  br label %52

41:                                               ; preds = %35
  %42 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %43 = load i64, i64* %7, align 8
  %44 = load i64, i64* %8, align 8
  %45 = call i64 @nci_hci_create_pipe(%struct.nci_dev* %42, i64 %43, i64 %44, i32* %11)
  store i64 %45, i64* %9, align 8
  %46 = load i64, i64* %9, align 8
  %47 = load i64, i64* @NCI_HCI_INVALID_PIPE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %41
  %50 = load i32, i32* %11, align 4
  store i32 %50, i32* %5, align 4
  br label %98

51:                                               ; preds = %41
  store i32 1, i32* %10, align 4
  br label %52

52:                                               ; preds = %51, %39, %37
  br label %53

53:                                               ; preds = %52, %34
  %54 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %55 = load i64, i64* %9, align 8
  %56 = call i32 @nci_hci_open_pipe(%struct.nci_dev* %54, i64 %55)
  store i32 %56, i32* %11, align 4
  %57 = load i32, i32* %11, align 4
  %58 = icmp slt i32 %57, 0
  br i1 %58, label %59, label %71

59:                                               ; preds = %53
  %60 = load i32, i32* %10, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %69

62:                                               ; preds = %59
  %63 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %64 = load i64, i64* %9, align 8
  %65 = call i64 @nci_hci_delete_pipe(%struct.nci_dev* %63, i64 %64)
  %66 = icmp slt i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %62
  br label %68

68:                                               ; preds = %67, %62
  br label %69

69:                                               ; preds = %68, %59
  %70 = load i32, i32* %11, align 4
  store i32 %70, i32* %5, align 4
  br label %98

71:                                               ; preds = %53
  %72 = load i64, i64* %8, align 8
  %73 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %74 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %73, i32 0, i32 0
  %75 = load %struct.TYPE_4__*, %struct.TYPE_4__** %74, align 8
  %76 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %75, i32 0, i32 1
  %77 = load %struct.TYPE_3__*, %struct.TYPE_3__** %76, align 8
  %78 = load i64, i64* %9, align 8
  %79 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %77, i64 %78
  %80 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %79, i32 0, i32 0
  store i64 %72, i64* %80, align 8
  %81 = load i64, i64* %7, align 8
  %82 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %83 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %82, i32 0, i32 0
  %84 = load %struct.TYPE_4__*, %struct.TYPE_4__** %83, align 8
  %85 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %84, i32 0, i32 1
  %86 = load %struct.TYPE_3__*, %struct.TYPE_3__** %85, align 8
  %87 = load i64, i64* %9, align 8
  %88 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %86, i64 %87
  %89 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %88, i32 0, i32 1
  store i64 %81, i64* %89, align 8
  %90 = load i64, i64* %9, align 8
  %91 = load %struct.nci_dev*, %struct.nci_dev** %6, align 8
  %92 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %91, i32 0, i32 0
  %93 = load %struct.TYPE_4__*, %struct.TYPE_4__** %92, align 8
  %94 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %93, i32 0, i32 0
  %95 = load i64*, i64** %94, align 8
  %96 = load i64, i64* %8, align 8
  %97 = getelementptr inbounds i64, i64* %95, i64 %96
  store i64 %90, i64* %97, align 8
  store i32 0, i32* %5, align 4
  br label %98

98:                                               ; preds = %71, %69, %49, %27, %15
  %99 = load i32, i32* %5, align 4
  ret i32 %99
}

declare dso_local i64 @nci_hci_create_pipe(%struct.nci_dev*, i64, i64, i32*) #1

declare dso_local i32 @nci_hci_open_pipe(%struct.nci_dev*, i64) #1

declare dso_local i64 @nci_hci_delete_pipe(%struct.nci_dev*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
