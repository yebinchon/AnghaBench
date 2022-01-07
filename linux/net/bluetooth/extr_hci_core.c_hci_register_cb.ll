; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_register_cb.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_register_cb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_cb = type { i32, i32 }

@.str = private unnamed_addr constant [11 x i8] c"%p name %s\00", align 1
@hci_cb_list_lock = common dso_local global i32 0, align 4
@hci_cb_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hci_register_cb(%struct.hci_cb* %0) #0 {
  %2 = alloca %struct.hci_cb*, align 8
  store %struct.hci_cb* %0, %struct.hci_cb** %2, align 8
  %3 = load %struct.hci_cb*, %struct.hci_cb** %2, align 8
  %4 = load %struct.hci_cb*, %struct.hci_cb** %2, align 8
  %5 = getelementptr inbounds %struct.hci_cb, %struct.hci_cb* %4, i32 0, i32 1
  %6 = load i32, i32* %5, align 4
  %7 = call i32 @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), %struct.hci_cb* %3, i32 %6)
  %8 = call i32 @mutex_lock(i32* @hci_cb_list_lock)
  %9 = load %struct.hci_cb*, %struct.hci_cb** %2, align 8
  %10 = getelementptr inbounds %struct.hci_cb, %struct.hci_cb* %9, i32 0, i32 0
  %11 = call i32 @list_add_tail(i32* %10, i32* @hci_cb_list)
  %12 = call i32 @mutex_unlock(i32* @hci_cb_list_lock)
  ret i32 0
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_cb*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
