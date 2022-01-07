; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_hci_conn_params_set.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_mgmt.c_hci_conn_params_set.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32, i32 }
%struct.hci_conn_params = type { i32, i32, i32 }

@EIO = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"addr %pMR (type %u) auto_connect %u\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.hci_dev*, i32*, i32, i32)* @hci_conn_params_set to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hci_conn_params_set(%struct.hci_dev* %0, i32* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.hci_conn_params*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store i32* %1, i32** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %12 = load i32*, i32** %7, align 8
  %13 = load i32, i32* %8, align 4
  %14 = call %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev* %11, i32* %12, i32 %13)
  store %struct.hci_conn_params* %14, %struct.hci_conn_params** %10, align 8
  %15 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %16 = icmp ne %struct.hci_conn_params* %15, null
  br i1 %16, label %20, label %17

17:                                               ; preds = %4
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %5, align 4
  br label %83

20:                                               ; preds = %4
  %21 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %22 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = load i32, i32* %9, align 4
  %25 = icmp eq i32 %23, %24
  br i1 %25, label %26, label %27

26:                                               ; preds = %20
  store i32 0, i32* %5, align 4
  br label %83

27:                                               ; preds = %20
  %28 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %29 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %28, i32 0, i32 1
  %30 = call i32 @list_del_init(i32* %29)
  %31 = load i32, i32* %9, align 4
  switch i32 %31, label %75 [
    i32 130, label %32
    i32 129, label %32
    i32 128, label %44
    i32 131, label %62
    i32 132, label %62
  ]

32:                                               ; preds = %27, %27
  %33 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %34 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %33, i32 0, i32 2
  %35 = load i32, i32* %34, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %32
  %38 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %39 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %38, i32 0, i32 1
  %40 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %41 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %40, i32 0, i32 0
  %42 = call i32 @list_add(i32* %39, i32* %41)
  br label %43

43:                                               ; preds = %37, %32
  br label %75

44:                                               ; preds = %27
  %45 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %46 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %45, i32 0, i32 2
  %47 = load i32, i32* %46, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %55

49:                                               ; preds = %44
  %50 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %51 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %50, i32 0, i32 1
  %52 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %53 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %52, i32 0, i32 0
  %54 = call i32 @list_add(i32* %51, i32* %53)
  br label %61

55:                                               ; preds = %44
  %56 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %57 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %56, i32 0, i32 1
  %58 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %59 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %58, i32 0, i32 1
  %60 = call i32 @list_add(i32* %57, i32* %59)
  br label %61

61:                                               ; preds = %55, %49
  br label %75

62:                                               ; preds = %27, %27
  %63 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %64 = load i32*, i32** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = call i32 @is_connected(%struct.hci_dev* %63, i32* %64, i32 %65)
  %67 = icmp ne i32 %66, 0
  br i1 %67, label %74, label %68

68:                                               ; preds = %62
  %69 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %70 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %69, i32 0, i32 1
  %71 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %72 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %71, i32 0, i32 0
  %73 = call i32 @list_add(i32* %70, i32* %72)
  br label %74

74:                                               ; preds = %68, %62
  br label %75

75:                                               ; preds = %27, %74, %61, %43
  %76 = load i32, i32* %9, align 4
  %77 = load %struct.hci_conn_params*, %struct.hci_conn_params** %10, align 8
  %78 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %77, i32 0, i32 0
  store i32 %76, i32* %78, align 4
  %79 = load i32*, i32** %7, align 8
  %80 = load i32, i32* %8, align 4
  %81 = load i32, i32* %9, align 4
  %82 = call i32 @BT_DBG(i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0), i32* %79, i32 %80, i32 %81)
  store i32 0, i32* %5, align 4
  br label %83

83:                                               ; preds = %75, %26, %17
  %84 = load i32, i32* %5, align 4
  ret i32 %84
}

declare dso_local %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @is_connected(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @BT_DBG(i8*, i32*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
