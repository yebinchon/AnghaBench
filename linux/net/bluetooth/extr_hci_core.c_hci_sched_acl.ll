; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_core.c_hci_sched_acl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_dev = type { i64, i32, i32 }

@.str = private unnamed_addr constant [3 x i8] c"%s\00", align 1
@ACL_LINK = common dso_local global i32 0, align 4
@HCI_PRIMARY = common dso_local global i64 0, align 8
@AMP_LINK = common dso_local global i32 0, align 4
@HCI_AMP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.hci_dev*)* @hci_sched_acl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @hci_sched_acl(%struct.hci_dev* %0) #0 {
  %2 = alloca %struct.hci_dev*, align 8
  store %struct.hci_dev* %0, %struct.hci_dev** %2, align 8
  %3 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %4 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %3, i32 0, i32 2
  %5 = load i32, i32* %4, align 4
  %6 = call i32 @BT_DBG(i8* getelementptr inbounds ([3 x i8], [3 x i8]* @.str, i64 0, i64 0), i32 %5)
  %7 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %8 = load i32, i32* @ACL_LINK, align 4
  %9 = call i32 @hci_conn_num(%struct.hci_dev* %7, i32 %8)
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %18, label %11

11:                                               ; preds = %1
  %12 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %13 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load i64, i64* @HCI_PRIMARY, align 8
  %16 = icmp eq i64 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %11
  br label %40

18:                                               ; preds = %11, %1
  %19 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %20 = load i32, i32* @AMP_LINK, align 4
  %21 = call i32 @hci_conn_num(%struct.hci_dev* %19, i32 %20)
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %30, label %23

23:                                               ; preds = %18
  %24 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %25 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @HCI_AMP, align 8
  %28 = icmp eq i64 %26, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %23
  br label %40

30:                                               ; preds = %23, %18
  %31 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %32 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 8
  switch i32 %33, label %40 [
    i32 128, label %34
    i32 129, label %37
  ]

34:                                               ; preds = %30
  %35 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %36 = call i32 @hci_sched_acl_pkt(%struct.hci_dev* %35)
  br label %40

37:                                               ; preds = %30
  %38 = load %struct.hci_dev*, %struct.hci_dev** %2, align 8
  %39 = call i32 @hci_sched_acl_blk(%struct.hci_dev* %38)
  br label %40

40:                                               ; preds = %17, %29, %30, %37, %34
  ret void
}

declare dso_local i32 @BT_DBG(i8*, i32) #1

declare dso_local i32 @hci_conn_num(%struct.hci_dev*, i32) #1

declare dso_local i32 @hci_sched_acl_pkt(%struct.hci_dev*) #1

declare dso_local i32 @hci_sched_acl_blk(%struct.hci_dev*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
