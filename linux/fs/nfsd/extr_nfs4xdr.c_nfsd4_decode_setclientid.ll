; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_setclientid = type { i32, i32, i8*, i32, i32, i8*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@nfserr_notsupp = common dso_local global i32 0, align 4
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@nfserr_bad_xdr = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_setclientid*)* @nfsd4_decode_setclientid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_setclientid(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_setclientid* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_setclientid*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_setclientid* %1, %struct.nfsd4_setclientid** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @nfserr_notsupp, align 4
  store i32 %12, i32* %3, align 4
  br label %79

13:                                               ; preds = %2
  %14 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %15 = call i32 @READ_BUF(i32 %14)
  %16 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %17 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %16, i32 0, i32 7
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %21 = call i32 @COPYMEM(i32 %19, i32 %20)
  %22 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %23 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %23, i32 0, i32 6
  %25 = call i64 @nfsd4_decode_opaque(%struct.nfsd4_compoundargs* %22, i32* %24)
  store i64 %25, i64* @status, align 8
  %26 = load i64, i64* @status, align 8
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %30

28:                                               ; preds = %13
  %29 = load i32, i32* @nfserr_bad_xdr, align 4
  store i32 %29, i32* %3, align 4
  br label %79

30:                                               ; preds = %13
  %31 = call i32 @READ_BUF(i32 8)
  %32 = load i32, i32* @p, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* @p, align 4
  %34 = call i8* @be32_to_cpup(i32 %32)
  %35 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %35, i32 0, i32 5
  store i8* %34, i8** %36, align 8
  %37 = load i32, i32* @p, align 4
  %38 = add nsw i32 %37, 1
  store i32 %38, i32* @p, align 4
  %39 = call i8* @be32_to_cpup(i32 %37)
  %40 = ptrtoint i8* %39 to i32
  %41 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %42 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %41, i32 0, i32 0
  store i32 %40, i32* %42, align 8
  %43 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @READ_BUF(i32 %45)
  %47 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %48 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %47, i32 0, i32 4
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %51 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = call i32 @SAVEMEM(i32 %49, i32 %52)
  %54 = call i32 @READ_BUF(i32 4)
  %55 = load i32, i32* @p, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* @p, align 4
  %57 = call i8* @be32_to_cpup(i32 %55)
  %58 = ptrtoint i8* %57 to i32
  %59 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %60 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %59, i32 0, i32 1
  store i32 %58, i32* %60, align 4
  %61 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %62 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @READ_BUF(i32 %63)
  %65 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %66 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %65, i32 0, i32 3
  %67 = load i32, i32* %66, align 8
  %68 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %69 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 4
  %71 = call i32 @SAVEMEM(i32 %67, i32 %70)
  %72 = call i32 @READ_BUF(i32 4)
  %73 = load i32, i32* @p, align 4
  %74 = add nsw i32 %73, 1
  store i32 %74, i32* @p, align 4
  %75 = call i8* @be32_to_cpup(i32 %73)
  %76 = load %struct.nfsd4_setclientid*, %struct.nfsd4_setclientid** %5, align 8
  %77 = getelementptr inbounds %struct.nfsd4_setclientid, %struct.nfsd4_setclientid* %76, i32 0, i32 2
  store i8* %75, i8** %77, align 8
  %78 = load i32, i32* @DECODE_TAIL, align 4
  br label %79

79:                                               ; preds = %30, %28, %11
  %80 = load i32, i32* %3, align 4
  ret i32 %80
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @COPYMEM(i32, i32) #1

declare dso_local i64 @nfsd4_decode_opaque(%struct.nfsd4_compoundargs*, i32*) #1

declare dso_local i8* @be32_to_cpup(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
