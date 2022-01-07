; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_register_user.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_register_user.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_conn = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.hci_dev* }
%struct.hci_dev = type { i32 }
%struct.l2cap_user = type { i32 (%struct.l2cap_conn.0*, %struct.l2cap_user*)*, i32 }
%struct.l2cap_conn.0 = type opaque

@EINVAL = common dso_local global i32 0, align 4
@ENODEV = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @l2cap_register_user(%struct.l2cap_conn* %0, %struct.l2cap_user* %1) #0 {
  %3 = alloca %struct.l2cap_conn*, align 8
  %4 = alloca %struct.l2cap_user*, align 8
  %5 = alloca %struct.hci_dev*, align 8
  %6 = alloca i32, align 4
  store %struct.l2cap_conn* %0, %struct.l2cap_conn** %3, align 8
  store %struct.l2cap_user* %1, %struct.l2cap_user** %4, align 8
  %7 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %8 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %7, i32 0, i32 2
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.hci_dev*, %struct.hci_dev** %10, align 8
  store %struct.hci_dev* %11, %struct.hci_dev** %5, align 8
  %12 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %13 = call i32 @hci_dev_lock(%struct.hci_dev* %12)
  %14 = load %struct.l2cap_user*, %struct.l2cap_user** %4, align 8
  %15 = getelementptr inbounds %struct.l2cap_user, %struct.l2cap_user* %14, i32 0, i32 1
  %16 = call i32 @list_empty(i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %21, label %18

18:                                               ; preds = %2
  %19 = load i32, i32* @EINVAL, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %6, align 4
  br label %46

21:                                               ; preds = %2
  %22 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %23 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = icmp ne i32 %24, 0
  br i1 %25, label %29, label %26

26:                                               ; preds = %21
  %27 = load i32, i32* @ENODEV, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %6, align 4
  br label %46

29:                                               ; preds = %21
  %30 = load %struct.l2cap_user*, %struct.l2cap_user** %4, align 8
  %31 = getelementptr inbounds %struct.l2cap_user, %struct.l2cap_user* %30, i32 0, i32 0
  %32 = load i32 (%struct.l2cap_conn.0*, %struct.l2cap_user*)*, i32 (%struct.l2cap_conn.0*, %struct.l2cap_user*)** %31, align 8
  %33 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %34 = bitcast %struct.l2cap_conn* %33 to %struct.l2cap_conn.0*
  %35 = load %struct.l2cap_user*, %struct.l2cap_user** %4, align 8
  %36 = call i32 %32(%struct.l2cap_conn.0* %34, %struct.l2cap_user* %35)
  store i32 %36, i32* %6, align 4
  %37 = load i32, i32* %6, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %29
  br label %46

40:                                               ; preds = %29
  %41 = load %struct.l2cap_user*, %struct.l2cap_user** %4, align 8
  %42 = getelementptr inbounds %struct.l2cap_user, %struct.l2cap_user* %41, i32 0, i32 1
  %43 = load %struct.l2cap_conn*, %struct.l2cap_conn** %3, align 8
  %44 = getelementptr inbounds %struct.l2cap_conn, %struct.l2cap_conn* %43, i32 0, i32 0
  %45 = call i32 @list_add(i32* %42, i32* %44)
  store i32 0, i32* %6, align 4
  br label %46

46:                                               ; preds = %40, %39, %26, %18
  %47 = load %struct.hci_dev*, %struct.hci_dev** %5, align 8
  %48 = call i32 @hci_dev_unlock(%struct.hci_dev* %47)
  %49 = load i32, i32* %6, align 4
  ret i32 %49
}

declare dso_local i32 @hci_dev_lock(%struct.hci_dev*) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

declare dso_local i32 @hci_dev_unlock(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
