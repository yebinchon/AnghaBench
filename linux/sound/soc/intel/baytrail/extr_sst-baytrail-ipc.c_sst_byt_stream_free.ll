; ModuleID = '/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_free.c'
source_filename = "/home/carl/AnghaBench/linux/sound/soc/intel/baytrail/extr_sst-baytrail-ipc.c_sst_byt_stream_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sst_byt = type { i32, i32, %struct.sst_dsp* }
%struct.sst_dsp = type { i32 }
%struct.sst_byt_stream = type { i32, i32, i32 }
%struct.sst_ipc_message = type { i32, i32 }

@IPC_IA_FREE_STREAM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [28 x i8] c"ipc: free stream %d failed\0A\00", align 1
@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sst_byt_stream_free(%struct.sst_byt* %0, %struct.sst_byt_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.sst_byt*, align 8
  %5 = alloca %struct.sst_byt_stream*, align 8
  %6 = alloca %struct.sst_ipc_message, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.sst_dsp*, align 8
  %9 = alloca i64, align 8
  store %struct.sst_byt* %0, %struct.sst_byt** %4, align 8
  store %struct.sst_byt_stream* %1, %struct.sst_byt_stream** %5, align 8
  %10 = bitcast %struct.sst_ipc_message* %6 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 4 %10, i8 0, i64 8, i1 false)
  store i32 0, i32* %7, align 4
  %11 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %12 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %11, i32 0, i32 2
  %13 = load %struct.sst_dsp*, %struct.sst_dsp** %12, align 8
  store %struct.sst_dsp* %13, %struct.sst_dsp** %8, align 8
  %14 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %15 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %19, label %18

18:                                               ; preds = %2
  br label %46

19:                                               ; preds = %2
  %20 = load i32, i32* @IPC_IA_FREE_STREAM, align 4
  %21 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %22 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @sst_byt_header(i32 %20, i32 0, i32 0, i32 %23)
  %25 = getelementptr inbounds %struct.sst_ipc_message, %struct.sst_ipc_message* %6, i32 0, i32 0
  store i32 %24, i32* %25, align 4
  %26 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %27 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %26, i32 0, i32 1
  %28 = bitcast %struct.sst_ipc_message* %6 to i64*
  %29 = load i64, i64* %28, align 4
  %30 = call i32 @sst_ipc_tx_message_wait(i32* %27, i64 %29, i32* null)
  store i32 %30, i32* %7, align 4
  %31 = load i32, i32* %7, align 4
  %32 = icmp slt i32 %31, 0
  br i1 %32, label %33, label %43

33:                                               ; preds = %19
  %34 = load %struct.sst_byt*, %struct.sst_byt** %4, align 8
  %35 = getelementptr inbounds %struct.sst_byt, %struct.sst_byt* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %38 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %37, i32 0, i32 2
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @dev_err(i32 %36, i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str, i64 0, i64 0), i32 %39)
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %3, align 4
  br label %61

43:                                               ; preds = %19
  %44 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %45 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %44, i32 0, i32 0
  store i32 0, i32* %45, align 4
  br label %46

46:                                               ; preds = %43, %18
  %47 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %48 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %47, i32 0, i32 0
  %49 = load i64, i64* %9, align 8
  %50 = call i32 @spin_lock_irqsave(i32* %48, i64 %49)
  %51 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %52 = getelementptr inbounds %struct.sst_byt_stream, %struct.sst_byt_stream* %51, i32 0, i32 1
  %53 = call i32 @list_del(i32* %52)
  %54 = load %struct.sst_byt_stream*, %struct.sst_byt_stream** %5, align 8
  %55 = call i32 @kfree(%struct.sst_byt_stream* %54)
  %56 = load %struct.sst_dsp*, %struct.sst_dsp** %8, align 8
  %57 = getelementptr inbounds %struct.sst_dsp, %struct.sst_dsp* %56, i32 0, i32 0
  %58 = load i64, i64* %9, align 8
  %59 = call i32 @spin_unlock_irqrestore(i32* %57, i64 %58)
  %60 = load i32, i32* %7, align 4
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %46, %33
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @sst_byt_header(i32, i32, i32, i32) #2

declare dso_local i32 @sst_ipc_tx_message_wait(i32*, i64, i32*) #2

declare dso_local i32 @dev_err(i32, i8*, i32) #2

declare dso_local i32 @spin_lock_irqsave(i32*, i64) #2

declare dso_local i32 @list_del(i32*) #2

declare dso_local i32 @kfree(%struct.sst_byt_stream*) #2

declare dso_local i32 @spin_unlock_irqrestore(i32*, i64) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
