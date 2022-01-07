; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_lockowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_lowner = type { i32, i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"lock id:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_lowner*)* @encode_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_lockowner(%struct.xdr_stream* %0, %struct.nfs_lowner* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_lowner*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_lowner* %1, %struct.nfs_lowner** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = call i32* @reserve_space(%struct.xdr_stream* %6, i32 32)
  store i32* %7, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load %struct.nfs_lowner*, %struct.nfs_lowner** %4, align 8
  %10 = getelementptr inbounds %struct.nfs_lowner, %struct.nfs_lowner* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i32* @xdr_encode_hyper(i32* %8, i32 %11)
  store i32* %12, i32** %5, align 8
  %13 = call i8* @cpu_to_be32(i32 20)
  %14 = ptrtoint i8* %13 to i32
  %15 = load i32*, i32** %5, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %5, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32*, i32** %5, align 8
  %18 = call i32* @xdr_encode_opaque_fixed(i32* %17, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i32* %18, i32** %5, align 8
  %19 = load %struct.nfs_lowner*, %struct.nfs_lowner** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_lowner, %struct.nfs_lowner* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @cpu_to_be32(i32 %21)
  %23 = ptrtoint i8* %22 to i32
  %24 = load i32*, i32** %5, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  %26 = load i32*, i32** %5, align 8
  %27 = load %struct.nfs_lowner*, %struct.nfs_lowner** %4, align 8
  %28 = getelementptr inbounds %struct.nfs_lowner, %struct.nfs_lowner* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 4
  %30 = call i32* @xdr_encode_hyper(i32* %26, i32 %29)
  ret void
}

declare dso_local i32* @reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_opaque_fixed(i32*, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
