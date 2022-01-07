; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_nfstime.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/flexfilelayout/extr_flexfilelayout.c_ff_layout_encode_nfstime.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.timespec64 = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, i32)* @ff_layout_encode_nfstime to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ff_layout_encode_nfstime(%struct.xdr_stream* %0, i32 %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.timespec64, align 4
  %6 = alloca i32*, align 8
  %7 = alloca %struct.timespec64, align 4
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store i32 %1, i32* %4, align 4
  %8 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %9 = call i32* @xdr_reserve_space(%struct.xdr_stream* %8, i32 12)
  store i32* %9, i32** %6, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call i64 @ktime_to_timespec64(i32 %10)
  %12 = bitcast %struct.timespec64* %7 to i64*
  store i64 %11, i64* %12, align 4
  %13 = bitcast %struct.timespec64* %5 to i8*
  %14 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %13, i8* align 4 %14, i64 8, i1 false)
  %15 = load i32*, i32** %6, align 8
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 1
  %17 = load i32, i32* %16, align 4
  %18 = call i32* @xdr_encode_hyper(i32* %15, i32 %17)
  store i32* %18, i32** %6, align 8
  %19 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %5, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 @cpu_to_be32(i32 %20)
  %22 = load i32*, i32** %6, align 8
  %23 = getelementptr inbounds i32, i32* %22, i32 1
  store i32* %23, i32** %6, align 8
  store i32 %21, i32* %22, align 4
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i64 @ktime_to_timespec64(i32) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
