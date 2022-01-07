; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_register_device.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_register_device.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_dev = type { i32 }
%struct.nfc_llcp_local = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32, i32*, i32, i32, i32, i32, i32, %struct.nfc_dev* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i32 }
%struct.TYPE_4__ = type { i32 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@nfc_llcp_symm_timer = common dso_local global i32 0, align 4
@nfc_llcp_tx_work = common dso_local global i32 0, align 4
@nfc_llcp_rx_work = common dso_local global i32 0, align 4
@nfc_llcp_timeout_work = common dso_local global i32 0, align 4
@LLCP_MAX_RW = common dso_local global i32 0, align 4
@LLCP_MAX_MIUX = common dso_local global i32 0, align 4
@LLCP_DEFAULT_MIU = common dso_local global i32 0, align 4
@LLCP_DEFAULT_LTO = common dso_local global i32 0, align 4
@nfc_llcp_sdreq_timer = common dso_local global i32 0, align 4
@nfc_llcp_sdreq_timeout_work = common dso_local global i32 0, align 4
@llcp_devices = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfc_llcp_register_device(%struct.nfc_dev* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfc_dev*, align 8
  %4 = alloca %struct.nfc_llcp_local*, align 8
  store %struct.nfc_dev* %0, %struct.nfc_dev** %3, align 8
  %5 = load i32, i32* @GFP_KERNEL, align 4
  %6 = call %struct.nfc_llcp_local* @kzalloc(i32 104, i32 %5)
  store %struct.nfc_llcp_local* %6, %struct.nfc_llcp_local** %4, align 8
  %7 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %8 = icmp eq %struct.nfc_llcp_local* %7, null
  br i1 %8, label %9, label %12

9:                                                ; preds = %1
  %10 = load i32, i32* @ENOMEM, align 4
  %11 = sub nsw i32 0, %10
  store i32 %11, i32* %2, align 4
  br label %94

12:                                               ; preds = %1
  %13 = load %struct.nfc_dev*, %struct.nfc_dev** %3, align 8
  %14 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %15 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %14, i32 0, i32 22
  store %struct.nfc_dev* %13, %struct.nfc_dev** %15, align 8
  %16 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %17 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %16, i32 0, i32 2
  %18 = call i32 @INIT_LIST_HEAD(i32* %17)
  %19 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %20 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %19, i32 0, i32 21
  %21 = call i32 @kref_init(i32* %20)
  %22 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %23 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %22, i32 0, i32 20
  %24 = call i32 @mutex_init(i32* %23)
  %25 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %26 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %25, i32 0, i32 19
  %27 = load i32, i32* @nfc_llcp_symm_timer, align 4
  %28 = call i32 @timer_setup(i32* %26, i32 %27, i32 0)
  %29 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %30 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %29, i32 0, i32 18
  %31 = call i32 @skb_queue_head_init(i32* %30)
  %32 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %33 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %32, i32 0, i32 17
  %34 = load i32, i32* @nfc_llcp_tx_work, align 4
  %35 = call i32 @INIT_WORK(i32* %33, i32 %34)
  %36 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %37 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %36, i32 0, i32 16
  store i32* null, i32** %37, align 8
  %38 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %39 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %38, i32 0, i32 15
  %40 = load i32, i32* @nfc_llcp_rx_work, align 4
  %41 = call i32 @INIT_WORK(i32* %39, i32 %40)
  %42 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %43 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %42, i32 0, i32 14
  %44 = load i32, i32* @nfc_llcp_timeout_work, align 4
  %45 = call i32 @INIT_WORK(i32* %43, i32 %44)
  %46 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %47 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %46, i32 0, i32 13
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 0
  %49 = call i32 @rwlock_init(i32* %48)
  %50 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %51 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %50, i32 0, i32 12
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 0
  %53 = call i32 @rwlock_init(i32* %52)
  %54 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %55 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %54, i32 0, i32 11
  %56 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %55, i32 0, i32 0
  %57 = call i32 @rwlock_init(i32* %56)
  %58 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %59 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %58, i32 0, i32 0
  store i32 150, i32* %59, align 8
  %60 = load i32, i32* @LLCP_MAX_RW, align 4
  %61 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %62 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %61, i32 0, i32 10
  store i32 %60, i32* %62, align 8
  %63 = load i32, i32* @LLCP_MAX_MIUX, align 4
  %64 = call i32 @cpu_to_be16(i32 %63)
  %65 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %66 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %65, i32 0, i32 9
  store i32 %64, i32* %66, align 4
  %67 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %68 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %67, i32 0, i32 1
  store i32 1, i32* %68, align 4
  %69 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %70 = call i32 @nfc_llcp_build_gb(%struct.nfc_llcp_local* %69)
  %71 = load i32, i32* @LLCP_DEFAULT_MIU, align 4
  %72 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %73 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %72, i32 0, i32 8
  store i32 %71, i32* %73, align 8
  %74 = load i32, i32* @LLCP_DEFAULT_LTO, align 4
  %75 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %76 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %75, i32 0, i32 7
  store i32 %74, i32* %76, align 4
  %77 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %78 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %77, i32 0, i32 6
  %79 = call i32 @mutex_init(i32* %78)
  %80 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %81 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %80, i32 0, i32 5
  %82 = call i32 @INIT_HLIST_HEAD(i32* %81)
  %83 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %84 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %83, i32 0, i32 4
  %85 = load i32, i32* @nfc_llcp_sdreq_timer, align 4
  %86 = call i32 @timer_setup(i32* %84, i32 %85, i32 0)
  %87 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %88 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %87, i32 0, i32 3
  %89 = load i32, i32* @nfc_llcp_sdreq_timeout_work, align 4
  %90 = call i32 @INIT_WORK(i32* %88, i32 %89)
  %91 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %4, align 8
  %92 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %91, i32 0, i32 2
  %93 = call i32 @list_add(i32* %92, i32* @llcp_devices)
  store i32 0, i32* %2, align 4
  br label %94

94:                                               ; preds = %12, %9
  %95 = load i32, i32* %2, align 4
  ret i32 %95
}

declare dso_local %struct.nfc_llcp_local* @kzalloc(i32, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @kref_init(i32*) #1

declare dso_local i32 @mutex_init(i32*) #1

declare dso_local i32 @timer_setup(i32*, i32, i32) #1

declare dso_local i32 @skb_queue_head_init(i32*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local i32 @rwlock_init(i32*) #1

declare dso_local i32 @cpu_to_be16(i32) #1

declare dso_local i32 @nfc_llcp_build_gb(%struct.nfc_llcp_local*) #1

declare dso_local i32 @INIT_HLIST_HEAD(i32*) #1

declare dso_local i32 @list_add(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
