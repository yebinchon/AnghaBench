; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_opaque.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_opaque.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.xdr_netobj = type { i32, i32 }

@NFS4_OPAQUE_LIMIT = common dso_local global i32 0, align 4
@nfserr_bad_xdr = common dso_local global i32 0, align 4
@nfs_ok = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.xdr_netobj*)* @nfsd4_decode_opaque to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_opaque(%struct.nfsd4_compoundargs* %0, %struct.xdr_netobj* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.xdr_netobj*, align 8
  %6 = alloca i32*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.xdr_netobj* %1, %struct.xdr_netobj** %5, align 8
  %7 = call i32 @READ_BUF(i32 4)
  %8 = load i32*, i32** %6, align 8
  %9 = getelementptr inbounds i32, i32* %8, i32 1
  store i32* %9, i32** %6, align 8
  %10 = ptrtoint i32* %8 to i32
  %11 = call i32 @be32_to_cpup(i32 %10)
  %12 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %13 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %12, i32 0, i32 0
  store i32 %11, i32* %13, align 4
  %14 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %15 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = icmp eq i32 %16, 0
  br i1 %17, label %24, label %18

18:                                               ; preds = %2
  %19 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %20 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load i32, i32* @NFS4_OPAQUE_LIMIT, align 4
  %23 = icmp sgt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %18, %2
  %25 = load i32, i32* @nfserr_bad_xdr, align 4
  store i32 %25, i32* %3, align 4
  br label %41

26:                                               ; preds = %18
  %27 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %28 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @READ_BUF(i32 %29)
  %31 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %32 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %31, i32 0, i32 1
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xdr_netobj*, %struct.xdr_netobj** %5, align 8
  %35 = getelementptr inbounds %struct.xdr_netobj, %struct.xdr_netobj* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @SAVEMEM(i32 %33, i32 %36)
  %38 = load i32, i32* @nfs_ok, align 4
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; No predecessors!
  %40 = load i32, i32* @nfserr_bad_xdr, align 4
  store i32 %40, i32* %3, align 4
  br label %41

41:                                               ; preds = %39, %26, %24
  %42 = load i32, i32* %3, align 4
  ret i32 %42
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
