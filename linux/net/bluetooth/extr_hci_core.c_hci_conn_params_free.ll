; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_conn_params_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_conn_params_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn_params = type { i32, i32, i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn_params*)* @hci_conn_params_free to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_conn_params_free(%struct.hci_conn_params* %0) #0 {
  %2 = alloca %struct.hci_conn_params*, align 8
  store %struct.hci_conn_params* %0, %struct.hci_conn_params** %2, align 8
  %3 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %4 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %3, i32 0, i32 2
  %5 = load i64, i64* %4, align 8
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %16

7:                                                ; preds = %1
  %8 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %9 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %8, i32 0, i32 2
  %10 = load i64, i64* %9, align 8
  %11 = call i32 @hci_conn_drop(i64 %10)
  %12 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %13 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %12, i32 0, i32 2
  %14 = load i64, i64* %13, align 8
  %15 = call i32 @hci_conn_put(i64 %14)
  br label %16

16:                                               ; preds = %7, %1
  %17 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %18 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %17, i32 0, i32 1
  %19 = call i32 @list_del(i32* %18)
  %20 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %21 = getelementptr inbounds %struct.hci_conn_params, %struct.hci_conn_params* %20, i32 0, i32 0
  %22 = call i32 @list_del(i32* %21)
  %23 = load %struct.hci_conn_params*, %struct.hci_conn_params** %2, align 8
  %24 = call i32 @kfree(%struct.hci_conn_params* %23)
  ret void
}

declare dso_local i32 @hci_conn_drop(i64) #1

declare dso_local i32 @hci_conn_put(i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @kfree(%struct.hci_conn_params*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
