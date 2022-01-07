; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_persistent_key.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_persistent_key.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.hci_conn = type { i64, i32, i32 }

@HCI_LK_DEBUG_COMBINATION = common dso_local global i32 0, align 4
@HCI_LK_CHANGED_COMBINATION = common dso_local global i32 0, align 4
@LE_LINK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, %struct.hci_conn*, i32, i32)* @hci_persistent_key to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_persistent_key(%struct.hci_dev* %0, %struct.hci_conn* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.hci_conn*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store %struct.hci_conn* %1, %struct.hci_conn** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %8, align 4
  %11 = icmp slt i32 %10, 3
  br i1 %11, label %12, label %13

12:                                               ; preds = %4
  store i32 1, i32* %5, align 4
  br label %71

13:                                               ; preds = %4
  %14 = load i32, i32* %8, align 4
  %15 = load i32, i32* @HCI_LK_DEBUG_COMBINATION, align 4
  %16 = icmp eq i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store i32 0, i32* %5, align 4
  br label %71

18:                                               ; preds = %13
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @HCI_LK_CHANGED_COMBINATION, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %26

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = icmp eq i32 %23, 255
  br i1 %24, label %25, label %26

25:                                               ; preds = %22
  store i32 0, i32* %5, align 4
  br label %71

26:                                               ; preds = %22, %18
  %27 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %28 = icmp ne %struct.hci_conn* %27, null
  br i1 %28, label %30, label %29

29:                                               ; preds = %26
  store i32 1, i32* %5, align 4
  br label %71

30:                                               ; preds = %26
  %31 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %32 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @LE_LINK, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %36, label %37

36:                                               ; preds = %30
  store i32 1, i32* %5, align 4
  br label %71

37:                                               ; preds = %30
  %38 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %39 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 8
  %41 = icmp sgt i32 %40, 1
  br i1 %41, label %42, label %48

42:                                               ; preds = %37
  %43 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %44 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 4
  %46 = icmp sgt i32 %45, 1
  br i1 %46, label %47, label %48

47:                                               ; preds = %42
  store i32 1, i32* %5, align 4
  br label %71

48:                                               ; preds = %42, %37
  %49 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %50 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 8
  %52 = icmp eq i32 %51, 2
  br i1 %52, label %58, label %53

53:                                               ; preds = %48
  %54 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %55 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 8
  %57 = icmp eq i32 %56, 3
  br i1 %57, label %58, label %59

58:                                               ; preds = %53, %48
  store i32 1, i32* %5, align 4
  br label %71

59:                                               ; preds = %53
  %60 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %61 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = icmp eq i32 %62, 2
  br i1 %63, label %69, label %64

64:                                               ; preds = %59
  %65 = load %struct.hci_conn*, %struct.hci_conn** %7, align 8
  %66 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %65, i32 0, i32 2
  %67 = load i32, i32* %66, align 4
  %68 = icmp eq i32 %67, 3
  br i1 %68, label %69, label %70

69:                                               ; preds = %64, %59
  store i32 1, i32* %5, align 4
  br label %71

70:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %71

71:                                               ; preds = %70, %69, %58, %47, %36, %29, %25, %17, %12
  %72 = load i32, i32* %5, align 4
  ret i32 %72
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
