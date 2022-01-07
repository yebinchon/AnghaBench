; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_stream_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_stream = type { i64, i32, %struct.TYPE_8__, %struct.TYPE_6__ }
%struct.TYPE_8__ = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { i32* }
%struct.sctp_sched_ops = type { i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_stream_update(%struct.sctp_stream* %0, %struct.sctp_stream* %1) #0 {
  %3 = alloca %struct.sctp_stream*, align 8
  %4 = alloca %struct.sctp_stream*, align 8
  %5 = alloca %struct.sctp_sched_ops*, align 8
  store %struct.sctp_stream* %0, %struct.sctp_stream** %3, align 8
  store %struct.sctp_stream* %1, %struct.sctp_stream** %4, align 8
  %6 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %7 = call %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream* %6)
  store %struct.sctp_sched_ops* %7, %struct.sctp_sched_ops** %5, align 8
  %8 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %5, align 8
  %9 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %8, i32 0, i32 1
  %10 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %9, align 8
  %11 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %12 = call i32 %10(%struct.sctp_stream* %11)
  %13 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %14 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %15 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %16 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %15, i32 0, i32 1
  %17 = load i32, i32* %16, align 8
  %18 = call i32 @sctp_stream_outq_migrate(%struct.sctp_stream* %13, %struct.sctp_stream* %14, i32 %17)
  %19 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %20 = call i32 @sctp_stream_free(%struct.sctp_stream* %19)
  %21 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %22 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %21, i32 0, i32 3
  %23 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %24 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %23, i32 0, i32 3
  %25 = bitcast %struct.TYPE_6__* %22 to i8*
  %26 = bitcast %struct.TYPE_6__* %24 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %25, i8* align 8 %26, i64 8, i1 false)
  %27 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %28 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %27, i32 0, i32 2
  %29 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %30 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %29, i32 0, i32 2
  %31 = bitcast %struct.TYPE_8__* %28 to i8*
  %32 = bitcast %struct.TYPE_8__* %30 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %31, i8* align 8 %32, i64 8, i1 false)
  %33 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %34 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %33, i32 0, i32 1
  %35 = load i32, i32* %34, align 8
  %36 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 8
  %38 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %39 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %42 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %41, i32 0, i32 0
  store i64 %40, i64* %42, align 8
  %43 = load %struct.sctp_sched_ops*, %struct.sctp_sched_ops** %5, align 8
  %44 = getelementptr inbounds %struct.sctp_sched_ops, %struct.sctp_sched_ops* %43, i32 0, i32 0
  %45 = load i32 (%struct.sctp_stream*)*, i32 (%struct.sctp_stream*)** %44, align 8
  %46 = load %struct.sctp_stream*, %struct.sctp_stream** %3, align 8
  %47 = call i32 %45(%struct.sctp_stream* %46)
  %48 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %49 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %48, i32 0, i32 3
  %50 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %49, i32 0, i32 0
  %51 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %50, i32 0, i32 0
  store i32* null, i32** %51, align 8
  %52 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %53 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %52, i32 0, i32 2
  %54 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %53, i32 0, i32 0
  %55 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %54, i32 0, i32 0
  store i32* null, i32** %55, align 8
  %56 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %57 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %56, i32 0, i32 1
  store i32 0, i32* %57, align 8
  %58 = load %struct.sctp_stream*, %struct.sctp_stream** %4, align 8
  %59 = getelementptr inbounds %struct.sctp_stream, %struct.sctp_stream* %58, i32 0, i32 0
  store i64 0, i64* %59, align 8
  ret void
}

declare dso_local %struct.sctp_sched_ops* @sctp_sched_ops_from_stream(%struct.sctp_stream*) #1

declare dso_local i32 @sctp_stream_outq_migrate(%struct.sctp_stream*, %struct.sctp_stream*, i32) #1

declare dso_local i32 @sctp_stream_free(%struct.sctp_stream*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
