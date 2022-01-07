; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_setclientid_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_setclientid_confirm = type { i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@nfserr_notsupp = common dso_local global i32 0, align 4
@NFS4_VERIFIER_SIZE = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_setclientid_confirm*)* @nfsd4_decode_setclientid_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_setclientid_confirm(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_setclientid_confirm* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_setclientid_confirm*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_setclientid_confirm* %1, %struct.nfsd4_setclientid_confirm** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @nfserr_notsupp, align 4
  store i32 %12, i32* %3, align 4
  br label %25

13:                                               ; preds = %2
  %14 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %15 = add nsw i32 8, %14
  %16 = call i32 @READ_BUF(i32 %15)
  %17 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %17, i32 0, i32 1
  %19 = call i32 @COPYMEM(i32* %18, i32 8)
  %20 = load %struct.nfsd4_setclientid_confirm*, %struct.nfsd4_setclientid_confirm** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_setclientid_confirm, %struct.nfsd4_setclientid_confirm* %20, i32 0, i32 0
  %22 = load i32, i32* @NFS4_VERIFIER_SIZE, align 4
  %23 = call i32 @COPYMEM(i32* %21, i32 %22)
  %24 = load i32, i32* @DECODE_TAIL, align 4
  br label %25

25:                                               ; preds = %13, %11
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @COPYMEM(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
