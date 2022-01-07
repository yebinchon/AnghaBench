; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_conn_complete_evt.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_event.c_hci_le_conn_complete_evt.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i32 }
%struct.sk_buff = type { i64 }
%struct.hci_ev_le_conn_complete = type { i32, i32, i32, i32, i32, i32, i32, i32 }

@.str = private unnamed_addr constant [18 x i8] c"%s status 0x%2.2x\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*, %struct.sk_buff*)* @hci_le_conn_complete_evt to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_le_conn_complete_evt(%struct.hci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.hci_dev*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.hci_ev_le_conn_complete*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = inttoptr i64 %8 to i8*
  %10 = bitcast i8* %9 to %struct.hci_ev_le_conn_complete*
  store %struct.hci_ev_le_conn_complete* %10, %struct.hci_ev_le_conn_complete** %5, align 8
  %11 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %15 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %14, i32 0, i32 7
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i32 %13, i32 %16)
  %18 = load %struct.hci_dev*, %struct.hci_dev** %3, align 8
  %19 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %20 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %19, i32 0, i32 7
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %23 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %22, i32 0, i32 6
  %24 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %25 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %24, i32 0, i32 5
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %28 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %27, i32 0, i32 4
  %29 = load i32, i32* %28, align 4
  %30 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %31 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %30, i32 0, i32 3
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @le16_to_cpu(i32 %32)
  %34 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %35 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %34, i32 0, i32 2
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @le16_to_cpu(i32 %36)
  %38 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %39 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %38, i32 0, i32 1
  %40 = load i32, i32* %39, align 4
  %41 = call i32 @le16_to_cpu(i32 %40)
  %42 = load %struct.hci_ev_le_conn_complete*, %struct.hci_ev_le_conn_complete** %5, align 8
  %43 = getelementptr inbounds %struct.hci_ev_le_conn_complete, %struct.hci_ev_le_conn_complete* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @le16_to_cpu(i32 %44)
  %46 = call i32 @le_conn_complete_evt(%struct.hci_dev* %18, i32 %21, i32* %23, i32 %26, i32 %29, i32 %33, i32 %37, i32 %41, i32 %45)
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32, i32) #1

declare dso_local i32 @le_conn_complete_evt(%struct.hci_dev*, i32, i32*, i32, i32, i32, i32, i32, i32) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
