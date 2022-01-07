; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_close_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/nci/extr_core.c_nci_close_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nci_dev = type { i32, i64, i32, i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { {}* }

@ENODEV = common dso_local global i32 0, align 4
@NCI_UP = common dso_local global i32 0, align 4
@NCI_INIT = common dso_local global i32 0, align 4
@nci_reset_req = common dso_local global i32 0, align 4
@NCI_RESET_TIMEOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nci_dev*)* @nci_close_device to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nci_close_device(%struct.nci_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nci_dev*, align 8
  store %struct.nci_dev* %0, %struct.nci_dev** %3, align 8
  %4 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %5 = load i32, i32* @ENODEV, align 4
  %6 = call i32 @nci_req_cancel(%struct.nci_dev* %4, i32 %5)
  %7 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %8 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %7, i32 0, i32 0
  %9 = call i32 @mutex_lock(i32* %8)
  %10 = load i32, i32* @NCI_UP, align 4
  %11 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %12 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %11, i32 0, i32 1
  %13 = call i32 @test_and_clear_bit(i32 %10, i64* %12)
  %14 = icmp ne i32 %13, 0
  br i1 %14, label %25, label %15

15:                                               ; preds = %1
  %16 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %17 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %16, i32 0, i32 3
  %18 = call i32 @del_timer_sync(i32* %17)
  %19 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %20 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %19, i32 0, i32 11
  %21 = call i32 @del_timer_sync(i32* %20)
  %22 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %23 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %22, i32 0, i32 0
  %24 = call i32 @mutex_unlock(i32* %23)
  store i32 0, i32* %2, align 4
  br label %79

25:                                               ; preds = %1
  %26 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %27 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %26, i32 0, i32 10
  %28 = call i32 @skb_queue_purge(i32* %27)
  %29 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %30 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %29, i32 0, i32 9
  %31 = call i32 @skb_queue_purge(i32* %30)
  %32 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %33 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %32, i32 0, i32 8
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @flush_workqueue(i32 %34)
  %36 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %37 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %36, i32 0, i32 7
  %38 = load i32, i32* %37, align 8
  %39 = call i32 @flush_workqueue(i32 %38)
  %40 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %41 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %40, i32 0, i32 6
  %42 = call i32 @skb_queue_purge(i32* %41)
  %43 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %44 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %43, i32 0, i32 5
  %45 = call i32 @atomic_set(i32* %44, i32 1)
  %46 = load i32, i32* @NCI_INIT, align 4
  %47 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %48 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %47, i32 0, i32 1
  %49 = call i32 @set_bit(i32 %46, i64* %48)
  %50 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %51 = load i32, i32* @nci_reset_req, align 4
  %52 = load i32, i32* @NCI_RESET_TIMEOUT, align 4
  %53 = call i32 @msecs_to_jiffies(i32 %52)
  %54 = call i32 @__nci_request(%struct.nci_dev* %50, i32 %51, i32 0, i32 %53)
  %55 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %56 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %55, i32 0, i32 4
  %57 = load %struct.TYPE_2__*, %struct.TYPE_2__** %56, align 8
  %58 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %57, i32 0, i32 0
  %59 = bitcast {}** %58 to i32 (%struct.nci_dev*)**
  %60 = load i32 (%struct.nci_dev*)*, i32 (%struct.nci_dev*)** %59, align 8
  %61 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %62 = call i32 %60(%struct.nci_dev* %61)
  %63 = load i32, i32* @NCI_INIT, align 4
  %64 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %65 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %64, i32 0, i32 1
  %66 = call i32 @clear_bit(i32 %63, i64* %65)
  %67 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %68 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %67, i32 0, i32 3
  %69 = call i32 @del_timer_sync(i32* %68)
  %70 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %71 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 8
  %73 = call i32 @flush_workqueue(i32 %72)
  %74 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %75 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %74, i32 0, i32 1
  store i64 0, i64* %75, align 8
  %76 = load %struct.nci_dev*, %struct.nci_dev** %3, align 8
  %77 = getelementptr inbounds %struct.nci_dev, %struct.nci_dev* %76, i32 0, i32 0
  %78 = call i32 @mutex_unlock(i32* %77)
  store i32 0, i32* %2, align 4
  br label %79

79:                                               ; preds = %25, %15
  %80 = load i32, i32* %2, align 4
  ret i32 %80
}

declare dso_local i32 @nci_req_cancel(%struct.nci_dev*, i32) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @test_and_clear_bit(i32, i64*) #1

declare dso_local i32 @del_timer_sync(i32*) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @flush_workqueue(i32) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @set_bit(i32, i64*) #1

declare dso_local i32 @__nci_request(%struct.nci_dev*, i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @clear_bit(i32, i64*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
