; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_ipc_tx_message.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/common/extr_sst-ipc.c_ipc_tx_message.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_generic_ipc = type { %struct.TYPE_8__*, i32, i32, %struct.TYPE_7__ }
%struct.TYPE_8__ = type { i32 }
%struct.TYPE_7__ = type { i32 (%struct.ipc_message*, i32, i64)* }
%struct.ipc_message = type opaque
%struct.sst_ipc_message = type { i64, i32, i32 }
%struct.ipc_message.0 = type { i32, i32, i32, i32, i64, %struct.TYPE_6__, %struct.TYPE_5__ }
%struct.TYPE_6__ = type { i64, i64 }
%struct.TYPE_5__ = type { i64, i32 }

@EBUSY = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_generic_ipc*, i64, i64, %struct.sst_ipc_message*, i32)* @ipc_tx_message to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ipc_tx_message(%struct.sst_generic_ipc* %0, i64 %1, i64 %2, %struct.sst_ipc_message* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sst_ipc_message, align 8
  %8 = alloca %struct.sst_generic_ipc*, align 8
  %9 = alloca %struct.sst_ipc_message*, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ipc_message.0*, align 8
  %12 = alloca i64, align 8
  %13 = bitcast %struct.sst_ipc_message* %7 to { i64, i64 }*
  %14 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 0
  store i64 %1, i64* %14, align 8
  %15 = getelementptr inbounds { i64, i64 }, { i64, i64 }* %13, i32 0, i32 1
  store i64 %2, i64* %15, align 8
  store %struct.sst_generic_ipc* %0, %struct.sst_generic_ipc** %8, align 8
  store %struct.sst_ipc_message* %3, %struct.sst_ipc_message** %9, align 8
  store i32 %4, i32* %10, align 4
  %16 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %17 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %16, i32 0, i32 0
  %18 = load %struct.TYPE_8__*, %struct.TYPE_8__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %18, i32 0, i32 0
  %20 = load i64, i64* %12, align 8
  %21 = call i32 @spin_lock_irqsave(i32* %19, i64 %20)
  %22 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %23 = call %struct.ipc_message.0* @msg_get_empty(%struct.sst_generic_ipc* %22)
  store %struct.ipc_message.0* %23, %struct.ipc_message.0** %11, align 8
  %24 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %25 = icmp eq %struct.ipc_message.0* %24, null
  br i1 %25, label %26, label %35

26:                                               ; preds = %5
  %27 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %28 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %27, i32 0, i32 0
  %29 = load %struct.TYPE_8__*, %struct.TYPE_8__** %28, align 8
  %30 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %29, i32 0, i32 0
  %31 = load i64, i64* %12, align 8
  %32 = call i32 @spin_unlock_irqrestore(i32* %30, i64 %31)
  %33 = load i32, i32* @EBUSY, align 4
  %34 = sub nsw i32 0, %33
  store i32 %34, i32* %6, align 4
  br label %114

35:                                               ; preds = %5
  %36 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 2
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %39 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %38, i32 0, i32 6
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 1
  store i32 %37, i32* %40, align 8
  %41 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %44 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %43, i32 0, i32 6
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  store i64 %42, i64* %45, align 8
  %46 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %47 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %46, i32 0, i32 5
  %48 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %47, i32 0, i32 1
  store i64 0, i64* %48, align 8
  %49 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %9, align 8
  %50 = icmp ne %struct.sst_ipc_message* %49, null
  br i1 %50, label %51, label %55

51:                                               ; preds = %35
  %52 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %9, align 8
  %53 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %52, i32 0, i32 0
  %54 = load i64, i64* %53, align 8
  br label %56

55:                                               ; preds = %35
  br label %56

56:                                               ; preds = %55, %51
  %57 = phi i64 [ %54, %51 ], [ 0, %55 ]
  %58 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %59 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %58, i32 0, i32 5
  %60 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %59, i32 0, i32 0
  store i64 %57, i64* %60, align 8
  %61 = load i32, i32* %10, align 4
  %62 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %63 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %62, i32 0, i32 0
  store i32 %61, i32* %63, align 8
  %64 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %65 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %64, i32 0, i32 4
  store i64 0, i64* %65, align 8
  %66 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %67 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %66, i32 0, i32 1
  store i32 0, i32* %67, align 4
  %68 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %69 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %68, i32 0, i32 2
  store i32 0, i32* %69, align 8
  %70 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = icmp ne i64 %71, 0
  br i1 %72, label %73, label %91

73:                                               ; preds = %56
  %74 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %75 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %74, i32 0, i32 3
  %76 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %75, i32 0, i32 0
  %77 = load i32 (%struct.ipc_message*, i32, i64)*, i32 (%struct.ipc_message*, i32, i64)** %76, align 8
  %78 = icmp ne i32 (%struct.ipc_message*, i32, i64)* %77, null
  br i1 %78, label %79, label %91

79:                                               ; preds = %73
  %80 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %81 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %80, i32 0, i32 3
  %82 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %81, i32 0, i32 0
  %83 = load i32 (%struct.ipc_message*, i32, i64)*, i32 (%struct.ipc_message*, i32, i64)** %82, align 8
  %84 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %85 = bitcast %struct.ipc_message.0* %84 to %struct.ipc_message*
  %86 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 1
  %87 = load i32, i32* %86, align 8
  %88 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %7, i32 0, i32 0
  %89 = load i64, i64* %88, align 8
  %90 = call i32 %83(%struct.ipc_message* %85, i32 %87, i64 %89)
  br label %91

91:                                               ; preds = %79, %73, %56
  %92 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %93 = getelementptr inbounds %struct.ipc_message.0, %struct.ipc_message.0* %92, i32 0, i32 3
  %94 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %95 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %94, i32 0, i32 2
  %96 = call i32 @list_add_tail(i32* %93, i32* %95)
  %97 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %98 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %97, i32 0, i32 1
  %99 = call i32 @schedule_work(i32* %98)
  %100 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %101 = getelementptr inbounds %struct.sst_generic_ipc, %struct.sst_generic_ipc* %100, i32 0, i32 0
  %102 = load %struct.TYPE_8__*, %struct.TYPE_8__** %101, align 8
  %103 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %102, i32 0, i32 0
  %104 = load i64, i64* %12, align 8
  %105 = call i32 @spin_unlock_irqrestore(i32* %103, i64 %104)
  %106 = load i32, i32* %10, align 4
  %107 = icmp ne i32 %106, 0
  br i1 %107, label %108, label %113

108:                                              ; preds = %91
  %109 = load %struct.sst_generic_ipc*, %struct.sst_generic_ipc** %8, align 8
  %110 = load %struct.ipc_message.0*, %struct.ipc_message.0** %11, align 8
  %111 = load %struct.sst_ipc_message*, %struct.sst_ipc_message** %9, align 8
  %112 = call i32 @tx_wait_done(%struct.sst_generic_ipc* %109, %struct.ipc_message.0* %110, %struct.sst_ipc_message* %111)
  store i32 %112, i32* %6, align 4
  br label %114

113:                                              ; preds = %91
  store i32 0, i32* %6, align 4
  br label %114

114:                                              ; preds = %113, %108, %26
  %115 = load i32, i32* %6, align 4
  ret i32 %115
}

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #1

declare dso_local %struct.ipc_message.0* @msg_get_empty(%struct.sst_generic_ipc*) #1

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @schedule_work(i32*) #1

declare dso_local i32 @tx_wait_done(%struct.sst_generic_ipc*, %struct.ipc_message.0*, %struct.sst_ipc_message*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
