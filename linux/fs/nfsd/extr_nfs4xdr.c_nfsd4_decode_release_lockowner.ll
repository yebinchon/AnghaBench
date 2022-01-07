; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_release_lockowner.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_release_lockowner.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_release_lockowner = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@nfserr_notsupp = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_release_lockowner*)* @nfsd4_decode_release_lockowner to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_release_lockowner(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_release_lockowner* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_release_lockowner*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_release_lockowner* %1, %struct.nfsd4_release_lockowner** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %8 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 4
  %10 = icmp sge i32 %9, 1
  br i1 %10, label %11, label %13

11:                                               ; preds = %2
  %12 = load i32, i32* @nfserr_notsupp, align 4
  store i32 %12, i32* %3, align 4
  br label %51

13:                                               ; preds = %2
  %14 = call i32 @READ_BUF(i32 12)
  %15 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %16 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %15, i32 0, i32 0
  %17 = call i32 @COPYMEM(i32* %16, i32 4)
  %18 = load i32, i32* @p, align 4
  %19 = add nsw i32 %18, 1
  store i32 %19, i32* @p, align 4
  %20 = call i32 @be32_to_cpup(i32 %18)
  %21 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %21, i32 0, i32 1
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  store i32 %20, i32* %23, align 4
  %24 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %24, i32 0, i32 1
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = call i32 @READ_BUF(i32 %27)
  %29 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %30 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %34 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = call i32 @READMEM(i32 %32, i32 %36)
  %38 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %39 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %49

42:                                               ; preds = %13
  %43 = load %struct.nfsd4_release_lockowner*, %struct.nfsd4_release_lockowner** %5, align 8
  %44 = getelementptr inbounds %struct.nfsd4_release_lockowner, %struct.nfsd4_release_lockowner* %43, i32 0, i32 0
  %45 = call i32 @zero_clientid(i32* %44)
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %49, label %47

47:                                               ; preds = %42
  %48 = load i32, i32* @nfserr_inval, align 4
  store i32 %48, i32* %3, align 4
  br label %51

49:                                               ; preds = %42, %13
  %50 = load i32, i32* @DECODE_TAIL, align 4
  br label %51

51:                                               ; preds = %49, %47, %11
  %52 = load i32, i32* %3, align 4
  ret i32 %52
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @COPYMEM(i32*, i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @READMEM(i32, i32) #1

declare dso_local i32 @zero_clientid(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
