; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_fill_header_mrfld.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/atom/sst/extr_sst_pvt.c_sst_fill_header_mrfld.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.ipc_header_mrfld = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, i32, i32, i32, i32, i32, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sst_fill_header_mrfld(%union.ipc_header_mrfld* %0, i32 %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %union.ipc_header_mrfld*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %union.ipc_header_mrfld* %0, %union.ipc_header_mrfld** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %12 = bitcast %union.ipc_header_mrfld* %11 to i64*
  store i64 0, i64* %12, align 8
  %13 = load i32, i32* %7, align 4
  %14 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %15 = bitcast %union.ipc_header_mrfld* %14 to %struct.TYPE_6__*
  %16 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %15, i32 0, i32 0
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  store i32 %13, i32* %18, align 8
  %19 = load i32, i32* %8, align 4
  %20 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %21 = bitcast %union.ipc_header_mrfld* %20 to %struct.TYPE_6__*
  %22 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %21, i32 0, i32 0
  %23 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 1
  store i32 %19, i32* %24, align 4
  %25 = load i32, i32* %9, align 4
  %26 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %27 = bitcast %union.ipc_header_mrfld* %26 to %struct.TYPE_6__*
  %28 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %27, i32 0, i32 0
  %29 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %28, i32 0, i32 0
  %30 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %29, i32 0, i32 2
  store i32 %25, i32* %30, align 8
  %31 = load i32, i32* %10, align 4
  %32 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %33 = bitcast %union.ipc_header_mrfld* %32 to %struct.TYPE_6__*
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %35, i32 0, i32 3
  store i32 %31, i32* %36, align 4
  %37 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %38 = bitcast %union.ipc_header_mrfld* %37 to %struct.TYPE_6__*
  %39 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %39, i32 0, i32 0
  %41 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %40, i32 0, i32 6
  store i64 0, i64* %41, align 8
  %42 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %43 = bitcast %union.ipc_header_mrfld* %42 to %struct.TYPE_6__*
  %44 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %43, i32 0, i32 0
  %45 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %45, i32 0, i32 4
  store i32 1, i32* %46, align 8
  %47 = load %union.ipc_header_mrfld*, %union.ipc_header_mrfld** %6, align 8
  %48 = bitcast %union.ipc_header_mrfld* %47 to %struct.TYPE_6__*
  %49 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %48, i32 0, i32 0
  %50 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %50, i32 0, i32 5
  store i32 1, i32* %51, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
