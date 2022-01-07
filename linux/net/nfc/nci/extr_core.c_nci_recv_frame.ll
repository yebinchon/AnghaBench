; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_recv_frame.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_recv_frame.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i32, i32, i32 }
%struct.sk_buff = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"len %d\0A\00", align 1
@NCI_UP = common dso_local global i32 0, align 4
@NCI_INIT = common dso_local global i32 0, align 4
@ENXIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nci_recv_frame(%struct.nci_dev* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nci_dev*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  %6 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %7 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  %9 = call i32 @pr_debug(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), i32 %8)
  %10 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %11 = icmp ne %struct.nci_dev* %10, null
  br i1 %11, label %12, label %24

12:                                               ; preds = %2
  %13 = load i32, i32* @NCI_UP, align 4
  %14 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %15 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %14, i32 0, i32 3
  %16 = call i32 @test_bit(i32 %13, i32* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %29, label %18

18:                                               ; preds = %12
  %19 = load i32, i32* @NCI_INIT, align 4
  %20 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %21 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %20, i32 0, i32 3
  %22 = call i32 @test_bit(i32 %19, i32* %21)
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %29, label %24

24:                                               ; preds = %18, %2
  %25 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %26 = call i32 @kfree_skb(%struct.sk_buff* %25)
  %27 = load i32, i32* @ENXIO, align 4
  %28 = sub nsw i32 0, %27
  store i32 %28, i32* %3, align 4
  br label %40

29:                                               ; preds = %18, %12
  %30 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %31 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %30, i32 0, i32 2
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call i32 @skb_queue_tail(i32* %31, %struct.sk_buff* %32)
  %34 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %35 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load %struct.nci_dev*, %struct.nci_dev** %4, align 8
  %38 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %37, i32 0, i32 0
  %39 = call i32 @queue_work(i32 %36, i32* %38)
  store i32 0, i32* %3, align 4
  br label %40

40:                                               ; preds = %29, %24
  %41 = load i32, i32* %3, align 4
  ret i32 %41
}

declare dso_local i32 @pr_debug(i8*, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_queue_tail(i32*, %struct.sk_buff*) #1

declare dso_local i32 @queue_work(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
