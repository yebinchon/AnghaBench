; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_operations.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_operations.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32 }
%struct.sst_ipc_message = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sst_byt*, i32, i32, i32)* @sst_byt_stream_operations to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sst_byt_stream_operations(%struct.sst_byt* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sst_byt*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sst_ipc_message, align 4
  store %struct.sst_byt* %0, %struct.sst_byt** %6, align 8
  store i32 %1, i32* %7, align 4
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = bitcast %struct.sst_ipc_message* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %11, i8 0, i64 8, i1 false)
  %12 = load i32, i32* %7, align 4
  %13 = load i32, i32* %8, align 4
  %14 = call i32 @sst_byt_header(i32 %12, i32 0, i32 0, i32 %13)
  %15 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %10, i32 0, i32 0
  store i32 %14, i32* %15, align 4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %4
  %19 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %20 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %19, i32 0, i32 0
  %21 = bitcast %struct.sst_ipc_message* %10 to i64*
  %22 = load i64, i64* %21, align 4
  %23 = call i32 @sst_ipc_tx_message_wait(i32* %20, i64 %22, i32* null)
  store i32 %23, i32* %5, align 4
  br label %30

24:                                               ; preds = %4
  %25 = load %struct.sst_byt*, %struct.sst_byt** %6, align 8
  %26 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %25, i32 0, i32 0
  %27 = bitcast %struct.sst_ipc_message* %10 to i64*
  %28 = load i64, i64* %27, align 4
  %29 = call i32 @sst_ipc_tx_message_nowait(i32* %26, i64 %28)
  store i32 %29, i32* %5, align 4
  br label %30

30:                                               ; preds = %24, %18
  %31 = load i32, i32* %5, align 4
  ret i32 %31
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sst_byt_header(i32, i32, i32, i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, i64, i32*) #2

declare dso_local i32 @sst_ipc_tx_message_nowait(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
