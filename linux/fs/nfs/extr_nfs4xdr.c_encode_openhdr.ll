; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_openhdr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_encode_openhdr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_openargs = type { %struct.TYPE_4__, %struct.TYPE_3__*, i32, i32, i32 }
%struct.TYPE_4__ = type { i32, i32 }
%struct.TYPE_3__ = type { i32 }

@.str = private unnamed_addr constant [9 x i8] c"open id:\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs_openargs*)* @encode_openhdr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_openhdr(%struct.xdr_stream* %0, %struct.nfs_openargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs_openargs*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs_openargs* %1, %struct.nfs_openargs** %4, align 8
  %6 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %7 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %8 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %7, i32 0, i32 4
  %9 = load i32, i32* %8, align 8
  %10 = call i32 @encode_nfs4_seqid(%struct.xdr_stream* %6, i32 %9)
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %12 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %13 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %12, i32 0, i32 3
  %14 = load i32, i32* %13, align 4
  %15 = call i32 @encode_share_access(%struct.xdr_stream* %11, i32 %14)
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %17 = call i32* @reserve_space(%struct.xdr_stream* %16, i32 36)
  store i32* %17, i32** %5, align 8
  %18 = load i32*, i32** %5, align 8
  %19 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %20 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %19, i32 0, i32 2
  %21 = load i32, i32* %20, align 8
  %22 = call i32* @xdr_encode_hyper(i32* %18, i32 %21)
  store i32* %22, i32** %5, align 8
  %23 = call i8* @cpu_to_be32(i32 24)
  %24 = ptrtoint i8* %23 to i32
  %25 = load i32*, i32** %5, align 8
  %26 = getelementptr inbounds i32, i32* %25, i32 1
  store i32* %26, i32** %5, align 8
  store i32 %24, i32* %25, align 4
  %27 = load i32*, i32** %5, align 8
  %28 = call i32* @xdr_encode_opaque_fixed(i32* %27, i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), i32 8)
  store i32* %28, i32** %5, align 8
  %29 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %30 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %29, i32 0, i32 1
  %31 = load %struct.TYPE_3__*, %struct.TYPE_3__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i8* @cpu_to_be32(i32 %33)
  %35 = ptrtoint i8* %34 to i32
  %36 = load i32*, i32** %5, align 8
  %37 = getelementptr inbounds i32, i32* %36, i32 1
  store i32* %37, i32** %5, align 8
  store i32 %35, i32* %36, align 4
  %38 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %39 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %38, i32 0, i32 0
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 8
  %42 = call i8* @cpu_to_be32(i32 %41)
  %43 = ptrtoint i8* %42 to i32
  %44 = load i32*, i32** %5, align 8
  %45 = getelementptr inbounds i32, i32* %44, i32 1
  store i32* %45, i32** %5, align 8
  store i32 %43, i32* %44, align 4
  %46 = load i32*, i32** %5, align 8
  %47 = load %struct.nfs_openargs*, %struct.nfs_openargs** %4, align 8
  %48 = getelementptr inbounds %struct.nfs_openargs, %struct.nfs_openargs* %47, i32 0, i32 0
  %49 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %48, i32 0, i32 1
  %50 = load i32, i32* %49, align 4
  %51 = call i32* @xdr_encode_hyper(i32* %46, i32 %50)
  ret void
}

declare dso_local i32 @encode_nfs4_seqid(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_share_access(%struct.xdr_stream*, i32) #1

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
