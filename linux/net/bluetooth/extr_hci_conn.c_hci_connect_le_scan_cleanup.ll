; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le_scan_cleanup.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_connect_le_scan_cleanup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32, i32 }
%struct.hci_conn_params = type { i32, i32, i32 }
%struct.smp_irk = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*)* @hci_connect_le_scan_cleanup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_connect_le_scan_cleanup(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_conn*, align 8
  %3 = alloca %struct.hci_conn_params*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.smp_irk*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32, align 4
  store %struct.hci_conn* %0, %struct.hci_conn** %2, align 8
  %8 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %9 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %8, i32 0, i32 2
  %10 = load %struct.hci_dev*, %struct.hci_dev** %9, align 8
  store %struct.hci_dev* %10, %struct.hci_dev** %4, align 8
  %11 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %12 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %11, i32 0, i32 1
  store i32* %12, i32** %6, align 8
  %13 = load %struct.hci_conn*, %struct.hci_conn** %2, align 8
  %14 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 8
  store i32 %15, i32* %7, align 4
  %16 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %17 = load i32*, i32** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call %struct.smp_irk* @hci_get_irk(%struct.hci_dev* %16, i32* %17, i32 %18)
  store %struct.smp_irk* %19, %struct.smp_irk** %5, align 8
  %20 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %21 = icmp ne %struct.smp_irk* %20, null
  br i1 %21, label %22, label %28

22:                                               ; preds = %1
  %23 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %24 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %23, i32 0, i32 1
  store i32* %24, i32** %6, align 8
  %25 = load %struct.smp_irk*, %struct.smp_irk** %5, align 8
  %26 = getelementptr inbounds %struct.smp_irk, %struct.smp_irk* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  store i32 %27, i32* %7, align 4
  br label %28

28:                                               ; preds = %22, %1
  %29 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %30 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %29, i32 0, i32 1
  %31 = load i32*, i32** %6, align 8
  %32 = load i32, i32* %7, align 4
  %33 = call %struct.hci_conn_params* @hci_pend_le_action_lookup(i32* %30, i32* %31, i32 %32)
  store %struct.hci_conn_params* %33, %struct.hci_conn_params** %3, align 8
  %34 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %35 = icmp ne %struct.hci_conn_params* %34, null
  br i1 %35, label %36, label %41

36:                                               ; preds = %28
  %37 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %38 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %42, label %41

41:                                               ; preds = %36, %28
  br label %72

42:                                               ; preds = %36
  %43 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %44 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %43, i32 0, i32 0
  store i32 0, i32* %44, align 4
  %45 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %46 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %45, i32 0, i32 2
  %47 = call i32 @list_del_init(i32* %46)
  %48 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %49 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  switch i32 %50, label %68 [
    i32 129, label %51
    i32 130, label %56
    i32 131, label %56
    i32 128, label %62
  ]

51:                                               ; preds = %42
  %52 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %53 = load i32*, i32** %6, align 8
  %54 = load i32, i32* %7, align 4
  %55 = call i32 @hci_conn_params_del(%struct.hci_dev* %52, i32* %53, i32 %54)
  br label %72

56:                                               ; preds = %42, %42
  %57 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %58 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %57, i32 0, i32 2
  %59 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %60 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %59, i32 0, i32 1
  %61 = call i32 @list_add(i32* %58, i32* %60)
  br label %69

62:                                               ; preds = %42
  %63 = load %struct.hci_conn_params*, %struct.hci_conn_params** %3, align 8
  %64 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %63, i32 0, i32 2
  %65 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %66 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %65, i32 0, i32 0
  %67 = call i32 @list_add(i32* %64, i32* %66)
  br label %69

68:                                               ; preds = %42
  br label %69

69:                                               ; preds = %68, %62, %56
  %70 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %71 = call i32 @hci_update_background_scan(%struct.hci_dev* %70)
  br label %72

72:                                               ; preds = %69, %51, %41
  ret void
}

declare dso_local %struct.smp_irk* @hci_get_irk(%struct.hci_dev*, i32*, i32) #1

declare dso_local %struct.hci_conn_params* @hci_pend_le_action_lookup(i32*, i32*, i32) #1

declare dso_local i32 @list_del_init(i32*) #1

declare dso_local i32 @hci_conn_params_del(%struct.hci_dev*, i32*, i32) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hci_update_background_scan(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
