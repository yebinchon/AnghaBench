; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_del.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_sco.c_sco_conn_del.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { %struct.sco_conn* }
%struct.sco_conn = type { %struct.sock* }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [24 x i8] c"hcon %p conn %p, err %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_conn*, i32)* @sco_conn_del to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sco_conn_del(%struct.hci_conn* %0, i32 %1) #0 {
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.sco_conn*, align 8
  %6 = alloca %struct.sock*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  store i32 %1, i32* %4, align 4
  %7 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %8 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %7, i32 0, i32 0
  %9 = load %struct.sco_conn*, %struct.sco_conn** %8, align 8
  store %struct.sco_conn* %9, %struct.sco_conn** %5, align 8
  %10 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %11 = icmp ne %struct.sco_conn* %10, null
  br i1 %11, label %13, label %12

12:                                               ; preds = %2
  br label %48

13:                                               ; preds = %2
  %14 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %15 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %16 = load i32, i32* %4, align 4
  %17 = call i32 @BT_DBG(i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %14, %struct.sco_conn* %15, i32 %16)
  %18 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %19 = call i32 @sco_conn_lock(%struct.sco_conn* %18)
  %20 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %21 = getelementptr inbounds %struct.sco_conn, %struct.sco_conn* %20, i32 0, i32 0
  %22 = load %struct.sock*, %struct.sock** %21, align 8
  store %struct.sock* %22, %struct.sock** %6, align 8
  %23 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %24 = call i32 @sco_conn_unlock(%struct.sco_conn* %23)
  %25 = load %struct.sock*, %struct.sock** %6, align 8
  %26 = icmp ne %struct.sock* %25, null
  br i1 %26, label %27, label %43

27:                                               ; preds = %13
  %28 = load %struct.sock*, %struct.sock** %6, align 8
  %29 = call i32 @sock_hold(%struct.sock* %28)
  %30 = load %struct.sock*, %struct.sock** %6, align 8
  %31 = call i32 @bh_lock_sock(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %6, align 8
  %33 = call i32 @sco_sock_clear_timer(%struct.sock* %32)
  %34 = load %struct.sock*, %struct.sock** %6, align 8
  %35 = load i32, i32* %4, align 4
  %36 = call i32 @sco_chan_del(%struct.sock* %34, i32 %35)
  %37 = load %struct.sock*, %struct.sock** %6, align 8
  %38 = call i32 @bh_unlock_sock(%struct.sock* %37)
  %39 = load %struct.sock*, %struct.sock** %6, align 8
  %40 = call i32 @sco_sock_kill(%struct.sock* %39)
  %41 = load %struct.sock*, %struct.sock** %6, align 8
  %42 = call i32 @sock_put(%struct.sock* %41)
  br label %43

43:                                               ; preds = %27, %13
  %44 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %45 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %44, i32 0, i32 0
  store %struct.sco_conn* null, %struct.sco_conn** %45, align 8
  %46 = load %struct.sco_conn*, %struct.sco_conn** %5, align 8
  %47 = call i32 @kfree(%struct.sco_conn* %46)
  br label %48

48:                                               ; preds = %43, %12
  ret void
}

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, %struct.sco_conn*, i32) #1

declare dso_local i32 @sco_conn_lock(%struct.sco_conn*) #1

declare dso_local i32 @sco_conn_unlock(%struct.sco_conn*) #1

declare dso_local i32 @sock_hold(%struct.sock*) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @sco_sock_clear_timer(%struct.sock*) #1

declare dso_local i32 @sco_chan_del(%struct.sock*, i32) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sco_sock_kill(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

declare dso_local i32 @kfree(%struct.sco_conn*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
