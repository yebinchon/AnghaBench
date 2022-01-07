; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_path_init.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_recv.c_rds_inc_path_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_incoming = type { %struct.TYPE_2__, %struct.in6_addr, %struct.rds_conn_path*, i32, i32, i32 }
%struct.TYPE_2__ = type { i32, i64 }
%struct.in6_addr = type { i32 }
%struct.rds_conn_path = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rds_inc_path_init(%struct.rds_incoming* %0, %struct.rds_conn_path* %1, %struct.in6_addr* %2) #0 {
  %4 = alloca %struct.rds_incoming*, align 8
  %5 = alloca %struct.rds_conn_path*, align 8
  %6 = alloca %struct.in6_addr*, align 8
  store %struct.rds_incoming* %0, %struct.rds_incoming** %4, align 8
  store %struct.rds_conn_path* %1, %struct.rds_conn_path** %5, align 8
  store %struct.in6_addr* %2, %struct.in6_addr** %6, align 8
  %7 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %8 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %7, i32 0, i32 5
  %9 = call i32 @refcount_set(i32* %8, i32 1)
  %10 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %11 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %10, i32 0, i32 4
  %12 = call i32 @INIT_LIST_HEAD(i32* %11)
  %13 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %14 = getelementptr inbounds %struct.rds_conn_path, %struct.rds_conn_path* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %17 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %16, i32 0, i32 3
  store i32 %15, i32* %17, align 8
  %18 = load %struct.rds_conn_path*, %struct.rds_conn_path** %5, align 8
  %19 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %20 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %19, i32 0, i32 2
  store %struct.rds_conn_path* %18, %struct.rds_conn_path** %20, align 8
  %21 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %22 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %21, i32 0, i32 1
  %23 = load %struct.in6_addr*, %struct.in6_addr** %6, align 8
  %24 = bitcast %struct.in6_addr* %22 to i8*
  %25 = bitcast %struct.in6_addr* %23 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %24, i8* align 4 %25, i64 4, i1 false)
  %26 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %27 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 1
  store i64 0, i64* %28, align 8
  %29 = call i32 @ktime_set(i32 0, i32 0)
  %30 = load %struct.rds_incoming*, %struct.rds_incoming** %4, align 8
  %31 = getelementptr inbounds %struct.rds_incoming, %struct.rds_incoming* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  store i32 %29, i32* %32, align 8
  ret void
}

declare dso_local i32 @refcount_set(i32*, i32) #1

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @ktime_set(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
