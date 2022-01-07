; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_conn_params_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_conn_params_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn_params = type { i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.hci_dev = type { i32, i32, i32, i32, i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [14 x i8] c"out of memory\00", align 1
@HCI_AUTO_CONN_DISABLED = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"addr %pMR (type %u)\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn_params* @hci_conn_params_add(%struct.hci_dev* %0, i32* %1, i32 %2) #0 {
  %4 = alloca %struct.hci_conn_params*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.hci_conn_params*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %10 = load i32*, i32** %6, align 8
  %11 = load i32, i32* %7, align 4
  %12 = call %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev* %9, i32* %10, i32 %11)
  store %struct.hci_conn_params* %12, %struct.hci_conn_params** %8, align 8
  %13 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %14 = icmp ne %struct.hci_conn_params* %13, null
  br i1 %14, label %15, label %17

15:                                               ; preds = %3
  %16 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  store %struct.hci_conn_params* %16, %struct.hci_conn_params** %4, align 8
  br label %68

17:                                               ; preds = %3
  %18 = load i32, i32* @GFP_KERNEL, align 4
  %19 = call %struct.hci_conn_params* @kzalloc(i32 36, i32 %18)
  store %struct.hci_conn_params* %19, %struct.hci_conn_params** %8, align 8
  %20 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %21 = icmp ne %struct.hci_conn_params* %20, null
  br i1 %21, label %25, label %22

22:                                               ; preds = %17
  %23 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %24 = call i32 @bt_dev_err(%struct.hci_dev* %23, i8* getelementptr inbounds ([14 x i8], [14 x i8]* @.str, i64 0, i64 0))
  store %struct.hci_conn_params* null, %struct.hci_conn_params** %4, align 8
  br label %68

25:                                               ; preds = %17
  %26 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %27 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %26, i32 0, i32 8
  %28 = load i32*, i32** %6, align 8
  %29 = call i32 @bacpy(i32* %27, i32* %28)
  %30 = load i32, i32* %7, align 4
  %31 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %32 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %31, i32 0, i32 7
  store i32 %30, i32* %32, align 4
  %33 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %34 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %33, i32 0, i32 6
  %35 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %36 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %35, i32 0, i32 4
  %37 = call i32 @list_add(i32* %34, i32* %36)
  %38 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %39 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %38, i32 0, i32 5
  %40 = call i32 @INIT_LIST_HEAD(i32* %39)
  %41 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %42 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %41, i32 0, i32 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %45 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %44, i32 0, i32 4
  store i32 %43, i32* %45, align 4
  %46 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %47 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %46, i32 0, i32 2
  %48 = load i32, i32* %47, align 4
  %49 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %50 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %49, i32 0, i32 3
  store i32 %48, i32* %50, align 4
  %51 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %52 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %55 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %54, i32 0, i32 2
  store i32 %53, i32* %55, align 4
  %56 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %57 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %56, i32 0, i32 0
  %58 = load i32, i32* %57, align 4
  %59 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %60 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load i32, i32* @HCI_AUTO_CONN_DISABLED, align 4
  %62 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  %63 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 4
  %64 = load i32*, i32** %6, align 8
  %65 = load i32, i32* %7, align 4
  %66 = call i32 @BT_DBG(i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32* %64, i32 %65)
  %67 = load %struct.hci_conn_params*, %struct.hci_conn_params** %8, align 8
  store %struct.hci_conn_params* %67, %struct.hci_conn_params** %4, align 8
  br label %68

68:                                               ; preds = %25, %22, %15
  %69 = load %struct.hci_conn_params*, %struct.hci_conn_params** %4, align 8
  ret %struct.hci_conn_params* %69
}

declare dso_local %struct.hci_conn_params* @hci_conn_params_lookup(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn_params* @kzalloc(i32, i32) #1

declare dso_local i32 @bt_dev_err(%struct.hci_dev*, i8*) #1

declare dso_local i32 @bacpy(i32*, i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @BT_DBG(i8*, i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
