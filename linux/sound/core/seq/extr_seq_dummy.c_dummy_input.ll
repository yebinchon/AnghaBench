; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_dummy.c_dummy_input.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_dummy.c_dummy_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_event = type { i64, %struct.TYPE_3__, %struct.TYPE_4__ }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.snd_seq_dummy_port = type { i32, i32, i32, i64 }

@SNDRV_SEQ_CLIENT_SYSTEM = common dso_local global i64 0, align 8
@SNDRV_SEQ_EVENT_KERNEL_ERROR = common dso_local global i64 0, align 8
@SNDRV_SEQ_ADDRESS_SUBSCRIBERS = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_event*, i32, i8*, i32, i32)* @dummy_input to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dummy_input(%struct.snd_seq_event* %0, i32 %1, i8* %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.snd_seq_event*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.snd_seq_dummy_port*, align 8
  %13 = alloca %struct.snd_seq_event, align 8
  store %struct.snd_seq_event* %0, %struct.snd_seq_event** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %14 = load i8*, i8** %9, align 8
  %15 = bitcast i8* %14 to %struct.snd_seq_dummy_port*
  store %struct.snd_seq_dummy_port* %15, %struct.snd_seq_dummy_port** %12, align 8
  %16 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %17 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %16, i32 0, i32 2
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @SNDRV_SEQ_CLIENT_SYSTEM, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %28, label %22

22:                                               ; preds = %5
  %23 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %24 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @SNDRV_SEQ_EVENT_KERNEL_ERROR, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %29

28:                                               ; preds = %22, %5
  store i32 0, i32* %6, align 4
  br label %59

29:                                               ; preds = %22
  %30 = load %struct.snd_seq_event*, %struct.snd_seq_event** %7, align 8
  %31 = bitcast %struct.snd_seq_event* %13 to i8*
  %32 = bitcast %struct.snd_seq_event* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 32, i1 false)
  %33 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %12, align 8
  %34 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %33, i32 0, i32 3
  %35 = load i64, i64* %34, align 8
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %43

37:                                               ; preds = %29
  %38 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %12, align 8
  %39 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 2
  %42 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %41, i32 0, i32 1
  store i32 %40, i32* %42, align 8
  br label %49

43:                                               ; preds = %29
  %44 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %12, align 8
  %45 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 2
  %48 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %47, i32 0, i32 1
  store i32 %46, i32* %48, align 8
  br label %49

49:                                               ; preds = %43, %37
  %50 = load i32, i32* @SNDRV_SEQ_ADDRESS_SUBSCRIBERS, align 4
  %51 = getelementptr inbounds %struct.snd_seq_event, %struct.snd_seq_event* %13, i32 0, i32 1
  %52 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %51, i32 0, i32 0
  store i32 %50, i32* %52, align 8
  %53 = load %struct.snd_seq_dummy_port*, %struct.snd_seq_dummy_port** %12, align 8
  %54 = getelementptr inbounds %struct.snd_seq_dummy_port, %struct.snd_seq_dummy_port* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = load i32, i32* %10, align 4
  %57 = load i32, i32* %11, align 4
  %58 = call i32 @snd_seq_kernel_client_dispatch(i32 %55, %struct.snd_seq_event* %13, i32 %56, i32 %57)
  store i32 %58, i32* %6, align 4
  br label %59

59:                                               ; preds = %49, %28
  %60 = load i32, i32* %6, align 4
  ret i32 %60
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local i32 @snd_seq_kernel_client_dispatch(i32, %struct.snd_seq_event*, i32, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
