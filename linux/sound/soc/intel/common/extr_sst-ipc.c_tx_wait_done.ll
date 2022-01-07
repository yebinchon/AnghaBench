; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_tx_wait_done.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_tx_wait_done.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { %struct.TYPE_6__*, i32, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_4__ = type { i32 (%struct.sst_generic_ipc.0*, i8*)* }
%struct.sst_generic_ipc.0 = type opaque
%struct.ipc_message = type { i32, i32, %struct.TYPE_5__, i32, i32 }
%struct.TYPE_5__ = type { i32, i32, i32 }
%struct.sst_ipc_message = type { i64, i32 }

@IPC_TIMEOUT_MSECS = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [16 x i8] c"message timeout\00", align 1
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_generic_ipc*, %struct.ipc_message*, %struct.sst_ipc_message*)* @tx_wait_done to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tx_wait_done(%struct.sst_generic_ipc* %0, %struct.ipc_message* %1, %struct.sst_ipc_message* %2) #0 {
  %4 = alloca %struct.sst_generic_ipc*, align 8
  %5 = alloca %struct.ipc_message*, align 8
  %6 = alloca %struct.sst_ipc_message*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %4, align 8
  store %struct.ipc_message* %1, %struct.ipc_message** %5, align 8
  store %struct.sst_ipc_message* %2, %struct.sst_ipc_message** %6, align 8
  %9 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %10 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %9, i32 0, i32 4
  %11 = load i32, i32* %10, align 4
  %12 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %13 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = load i32, i32* @IPC_TIMEOUT_MSECS, align 4
  %16 = call i32 @msecs_to_jiffies(i32 %15)
  %17 = call i32 @wait_event_timeout(i32 %11, i32 %14, i32 %16)
  store i32 %17, i32* %8, align 4
  %18 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %19 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %18, i32 0, i32 0
  %20 = load %struct.TYPE_6__*, %struct.TYPE_6__** %19, align 8
  %21 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %20, i32 0, i32 0
  %22 = load i64, i64* %7, align 8
  %23 = call i32 @spin_lock_irqsave(i32* %21, i64 %22)
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %46

26:                                               ; preds = %3
  %27 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %28 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %27, i32 0, i32 2
  %29 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %28, i32 0, i32 0
  %30 = load i32 (%struct.sst_generic_ipc.0*, i8*)*, i32 (%struct.sst_generic_ipc.0*, i8*)** %29, align 8
  %31 = icmp ne i32 (%struct.sst_generic_ipc.0*, i8*)* %30, null
  br i1 %31, label %32, label %40

32:                                               ; preds = %26
  %33 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %34 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %33, i32 0, i32 2
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32 (%struct.sst_generic_ipc.0*, i8*)*, i32 (%struct.sst_generic_ipc.0*, i8*)** %35, align 8
  %37 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %38 = bitcast %struct.sst_generic_ipc* %37 to %struct.sst_generic_ipc.0*
  %39 = call i32 %36(%struct.sst_generic_ipc.0* %38, i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0))
  br label %40

40:                                               ; preds = %32, %26
  %41 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %42 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %41, i32 0, i32 1
  %43 = call i32 @list_del(i32* %42)
  %44 = load i32, i32* @ETIMEDOUT, align 4
  %45 = sub nsw i32 0, %44
  store i32 %45, i32* %8, align 4
  br label %78

46:                                               ; preds = %3
  %47 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %6, align 8
  %48 = icmp ne %struct.sst_ipc_message* %47, null
  br i1 %48, label %49, label %74

49:                                               ; preds = %46
  %50 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %51 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %50, i32 0, i32 2
  %52 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %6, align 8
  %55 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %54, i32 0, i32 1
  store i32 %53, i32* %55, align 8
  %56 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %6, align 8
  %57 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %56, i32 0, i32 0
  %58 = load i64, i64* %57, align 8
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %73

60:                                               ; preds = %49
  %61 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %6, align 8
  %62 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %65 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %64, i32 0, i32 2
  %66 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %69 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %68, i32 0, i32 2
  %70 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 4
  %72 = call i32 @memcpy(i64 %63, i32 %67, i32 %71)
  br label %73

73:                                               ; preds = %60, %49
  br label %74

74:                                               ; preds = %73, %46
  %75 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %76 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  store i32 %77, i32* %8, align 4
  br label %78

78:                                               ; preds = %74, %40
  %79 = load %struct.ipc_message*, %struct.ipc_message** %5, align 8
  %80 = getelementptr inbounds %struct.ipc_message, %struct.ipc_message* %79, i32 0, i32 1
  %81 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %82 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %81, i32 0, i32 1
  %83 = call i32 @list_add_tail(i32* %80, i32* %82)
  %84 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %4, align 8
  %85 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %84, i32 0, i32 0
  %86 = load %struct.TYPE_6__*, %struct.TYPE_6__** %85, align 8
  %87 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %86, i32 0, i32 0
  %88 = load i64, i64* %7, align 8
  %89 = call i32 @spin_unlock_irqrestore(i32* %87, i64 %88)
  %90 = load i32, i32* %8, align 4
  ret i32 %90
}

declare dso_local i32 @wait_event_timeout(i32, i32, i32) #1

declare dso_local i32 @msecs_to_jiffies(i32) #1

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
