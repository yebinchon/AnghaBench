; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_phylink_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_amp.c_phylink_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_conn = type { i32, i32, i32, i32, i32 }
%struct.hci_dev = type { i32 }
%struct.amp_mgr = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }

@HCI_ROLE_MASTER = common dso_local global i32 0, align 4
@HCI_ROLE_SLAVE = common dso_local global i32 0, align 4
@AMP_LINK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"hcon %p dst %pMR\00", align 1
@BT_CONNECT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_conn* @phylink_add(%struct.hci_dev* %0, %struct.amp_mgr* %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.hci_conn*, align 8
  %6 = alloca %struct.hci_dev*, align 8
  %7 = alloca %struct.amp_mgr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  %11 = alloca %struct.hci_conn*, align 8
  %12 = alloca i32, align 4
  store %struct.hci_dev* %0, %struct.hci_dev** %6, align 8
  store %struct.amp_mgr* %1, %struct.amp_mgr** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %14 = getelementptr inbounds %struct.amp_mgr, %struct.amp_mgr* %13, i32 0, i32 0
  %15 = load %struct.TYPE_4__*, %struct.TYPE_4__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_3__*, %struct.TYPE_3__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %17, i32 0, i32 0
  store i32* %18, i32** %10, align 8
  %19 = load i32, i32* %9, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %4
  %22 = load i32, i32* @HCI_ROLE_MASTER, align 4
  br label %25

23:                                               ; preds = %4
  %24 = load i32, i32* @HCI_ROLE_SLAVE, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = phi i32 [ %22, %21 ], [ %24, %23 ]
  store i32 %26, i32* %12, align 4
  %27 = load %struct.hci_dev*, %struct.hci_dev** %6, align 8
  %28 = load i32, i32* @AMP_LINK, align 4
  %29 = load i32*, i32** %10, align 8
  %30 = load i32, i32* %12, align 4
  %31 = call %struct.hci_conn* @hci_conn_add(%struct.hci_dev* %27, i32 %28, i32* %29, i32 %30)
  store %struct.hci_conn* %31, %struct.hci_conn** %11, align 8
  %32 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %33 = icmp ne %struct.hci_conn* %32, null
  br i1 %33, label %35, label %34

34:                                               ; preds = %25
  store %struct.hci_conn* null, %struct.hci_conn** %5, align 8
  br label %58

35:                                               ; preds = %25
  %36 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @BT_DBG(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), %struct.hci_conn* %36, i32* %37)
  %39 = load i32, i32* @BT_CONNECT, align 4
  %40 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 4
  store i32 %39, i32* %41, align 4
  %42 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %43 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %43, align 4
  %46 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %47 = call i32 @__next_handle(%struct.amp_mgr* %46)
  %48 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %49 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %48, i32 0, i32 2
  store i32 %47, i32* %49, align 4
  %50 = load i32, i32* %8, align 4
  %51 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %52 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %51, i32 0, i32 1
  store i32 %50, i32* %52, align 4
  %53 = load %struct.amp_mgr*, %struct.amp_mgr** %7, align 8
  %54 = call i32 @amp_mgr_get(%struct.amp_mgr* %53)
  %55 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  %56 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load %struct.hci_conn*, %struct.hci_conn** %11, align 8
  store %struct.hci_conn* %57, %struct.hci_conn** %5, align 8
  br label %58

58:                                               ; preds = %35, %34
  %59 = load %struct.hci_conn*, %struct.hci_conn** %5, align 8
  ret %struct.hci_conn* %59
}

declare dso_local %struct.hci_conn* @hci_conn_add(%struct.hci_dev*, i32, i32*, i32) #1

declare dso_local i32 @BT_DBG(i8*, %struct.hci_conn*, i32*) #1

declare dso_local i32 @__next_handle(%struct.amp_mgr*) #1

declare dso_local i32 @amp_mgr_get(%struct.amp_mgr*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
