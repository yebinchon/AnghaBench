; ModuleID = '/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_query_next_port.c'
source_filename = "/home/carl/AnghaBench/linux/sound/core/seq/extr_seq_clientmgr.c_snd_seq_ioctl_query_next_port.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_seq_client = type { i32 }
%struct.snd_seq_port_info = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }
%struct.snd_seq_client_port = type { %struct.TYPE_2__ }

@ENXIO = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.snd_seq_client*, i8*)* @snd_seq_ioctl_query_next_port to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @snd_seq_ioctl_query_next_port(%struct.snd_seq_client* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.snd_seq_client*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.snd_seq_port_info*, align 8
  %7 = alloca %struct.snd_seq_client*, align 8
  %8 = alloca %struct.snd_seq_client_port*, align 8
  store %struct.snd_seq_client* %0, %struct.snd_seq_client** %4, align 8
  store i8* %1, i8** %5, align 8
  %9 = load i8*, i8** %5, align 8
  %10 = bitcast i8* %9 to %struct.snd_seq_port_info*
  store %struct.snd_seq_port_info* %10, %struct.snd_seq_port_info** %6, align 8
  store %struct.snd_seq_client_port* null, %struct.snd_seq_client_port** %8, align 8
  %11 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %12 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 1
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.snd_seq_client* @snd_seq_client_use_ptr(i32 %14)
  store %struct.snd_seq_client* %15, %struct.snd_seq_client** %7, align 8
  %16 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %17 = icmp eq %struct.snd_seq_client* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load i32, i32* @ENXIO, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %3, align 4
  br label %51

21:                                               ; preds = %2
  %22 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %23 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, 1
  store i32 %26, i32* %24, align 4
  %27 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %28 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %29 = call %struct.snd_seq_client_port* @snd_seq_port_query_nearest(%struct.snd_seq_client* %27, %struct.snd_seq_port_info* %28)
  store %struct.snd_seq_client_port* %29, %struct.snd_seq_client_port** %8, align 8
  %30 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %31 = icmp eq %struct.snd_seq_client_port* %30, null
  br i1 %31, label %32, label %37

32:                                               ; preds = %21
  %33 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %34 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %33)
  %35 = load i32, i32* @ENOENT, align 4
  %36 = sub nsw i32 0, %35
  store i32 %36, i32* %3, align 4
  br label %51

37:                                               ; preds = %21
  %38 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %39 = getelementptr inbounds %struct.snd_seq_port_info, %struct.snd_seq_port_info* %38, i32 0, i32 0
  %40 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %41 = getelementptr inbounds %struct.snd_seq_client_port, %struct.snd_seq_client_port* %40, i32 0, i32 0
  %42 = bitcast %struct.TYPE_2__* %39 to i8*
  %43 = bitcast %struct.TYPE_2__* %41 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %42, i8* align 4 %43, i64 8, i1 false)
  %44 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %45 = load %struct.snd_seq_port_info*, %struct.snd_seq_port_info** %6, align 8
  %46 = call i32 @snd_seq_get_port_info(%struct.snd_seq_client_port* %44, %struct.snd_seq_port_info* %45)
  %47 = load %struct.snd_seq_client_port*, %struct.snd_seq_client_port** %8, align 8
  %48 = call i32 @snd_seq_port_unlock(%struct.snd_seq_client_port* %47)
  %49 = load %struct.snd_seq_client*, %struct.snd_seq_client** %7, align 8
  %50 = call i32 @snd_seq_client_unlock(%struct.snd_seq_client* %49)
  store i32 0, i32* %3, align 4
  br label %51

51:                                               ; preds = %37, %32, %18
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local %struct.snd_seq_client* @snd_seq_client_use_ptr(i32) #1

declare dso_local %struct.snd_seq_client_port* @snd_seq_port_query_nearest(%struct.snd_seq_client*, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_client_unlock(%struct.snd_seq_client*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @snd_seq_get_port_info(%struct.snd_seq_client_port*, %struct.snd_seq_port_info*) #1

declare dso_local i32 @snd_seq_port_unlock(%struct.snd_seq_client_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
