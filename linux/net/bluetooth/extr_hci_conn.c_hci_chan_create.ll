; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_chan_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_hci_conn.c_hci_chan_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hci_chan = type { i32, i32, i32, i32 }
%struct.hci_conn = type { i32, i32, %struct.hci_dev* }
%struct.hci_dev = type { i32 }

@.str = private unnamed_addr constant [11 x i8] c"%s hcon %p\00", align 1
@HCI_CONN_DROP = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [32 x i8] c"Refusing to create new hci_chan\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@BT_CONNECTED = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hci_chan* @hci_chan_create(%struct.hci_conn* %0) #0 {
  %2 = alloca %struct.hci_chan*, align 8
  %3 = alloca %struct.hci_conn*, align 8
  %4 = alloca %struct.hci_dev*, align 8
  %5 = alloca %struct.hci_chan*, align 8
  store %struct.hci_conn* %0, %struct.hci_conn** %3, align 8
  %6 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %7 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %6, i32 0, i32 2
  %8 = load %struct.hci_dev*, %struct.hci_dev** %7, align 8
  store %struct.hci_dev* %8, %struct.hci_dev** %4, align 8
  %9 = load %struct.hci_dev*, %struct.hci_dev** %4, align 8
  %10 = getelementptr inbounds %struct.hci_dev, %struct.hci_dev* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %13 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i32 %11, %struct.hci_conn* %12)
  %14 = load i32, i32* @HCI_CONN_DROP, align 4
  %15 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %16 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %15, i32 0, i32 1
  %17 = call i64 @test_bit(i32 %14, i32* %16)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %1
  %20 = call i32 (i8*, ...) @BT_DBG(i8* getelementptr inbounds ([32 x i8], [32 x i8]* @.str.1, i64 0, i64 0))
  store %struct.hci_chan* null, %struct.hci_chan** %2, align 8
  br label %44

21:                                               ; preds = %1
  %22 = load i32, i32* @GFP_KERNEL, align 4
  %23 = call %struct.hci_chan* @kzalloc(i32 16, i32 %22)
  store %struct.hci_chan* %23, %struct.hci_chan** %5, align 8
  %24 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %25 = icmp ne %struct.hci_chan* %24, null
  br i1 %25, label %27, label %26

26:                                               ; preds = %21
  store %struct.hci_chan* null, %struct.hci_chan** %2, align 8
  br label %44

27:                                               ; preds = %21
  %28 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %29 = call i32 @hci_conn_get(%struct.hci_conn* %28)
  %30 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %31 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %30, i32 0, i32 3
  store i32 %29, i32* %31, align 4
  %32 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %33 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %32, i32 0, i32 2
  %34 = call i32 @skb_queue_head_init(i32* %33)
  %35 = load i32, i32* @BT_CONNECTED, align 4
  %36 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %37 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  %39 = getelementptr inbounds %struct.hci_chan, %struct.hci_chan* %38, i32 0, i32 0
  %40 = load %struct.hci_conn*, %struct.hci_conn** %3, align 8
  %41 = getelementptr inbounds %struct.hci_conn, %struct.hci_conn* %40, i32 0, i32 0
  %42 = call i32 @list_add_rcu(i32* %39, i32* %41)
  %43 = load %struct.hci_chan*, %struct.hci_chan** %5, align 8
  store %struct.hci_chan* %43, %struct.hci_chan** %2, align 8
  br label %44

44:                                               ; preds = %27, %26, %19
  %45 = load %struct.hci_chan*, %struct.hci_chan** %2, align 8
  ret %struct.hci_chan* %45
}

declare dso_local i32 @BT_DBG(i8*, ...) #1

declare dso_local i64 @test_bit(i32, i32*) #1

declare dso_local %struct.hci_chan* @kzalloc(i32, i32) #1

declare dso_local i32 @hci_conn_get(%struct.hci_conn*) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @list_add_rcu(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
