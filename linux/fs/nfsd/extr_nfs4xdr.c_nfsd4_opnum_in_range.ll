; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_opnum_in_range.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_opnum_in_range.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_op = type { i64 }

@FIRST_NFS4_OP = common dso_local global i64 0, align 8
@LAST_NFS40_OP = common dso_local global i64 0, align 8
@LAST_NFS41_OP = common dso_local global i64 0, align 8
@LAST_NFS42_OP = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_op*)* @nfsd4_opnum_in_range to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_opnum_in_range(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_op* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_op*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_op* %1, %struct.nfsd4_op** %5, align 8
  %6 = load %struct.nfsd4_op*, %struct.nfsd4_op** %5, align 8
  %7 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load i64, i64* @FIRST_NFS4_OP, align 8
  %10 = icmp slt i64 %8, %9
  br i1 %10, label %11, label %12

11:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %52

12:                                               ; preds = %2
  %13 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = icmp eq i32 %15, 0
  br i1 %16, label %17, label %24

17:                                               ; preds = %12
  %18 = load %struct.nfsd4_op*, %struct.nfsd4_op** %5, align 8
  %19 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i64, i64* @LAST_NFS40_OP, align 8
  %22 = icmp sgt i64 %20, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i32 0, i32* %3, align 4
  br label %52

24:                                               ; preds = %17, %12
  %25 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %26 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 4
  %28 = icmp eq i32 %27, 1
  br i1 %28, label %29, label %36

29:                                               ; preds = %24
  %30 = load %struct.nfsd4_op*, %struct.nfsd4_op** %5, align 8
  %31 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @LAST_NFS41_OP, align 8
  %34 = icmp sgt i64 %32, %33
  br i1 %34, label %35, label %36

35:                                               ; preds = %29
  store i32 0, i32* %3, align 4
  br label %52

36:                                               ; preds = %29, %24
  %37 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %38 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = icmp eq i32 %39, 2
  br i1 %40, label %41, label %48

41:                                               ; preds = %36
  %42 = load %struct.nfsd4_op*, %struct.nfsd4_op** %5, align 8
  %43 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = load i64, i64* @LAST_NFS42_OP, align 8
  %46 = icmp sgt i64 %44, %45
  br i1 %46, label %47, label %48

47:                                               ; preds = %41
  store i32 0, i32* %3, align 4
  br label %52

48:                                               ; preds = %41, %36
  br label %49

49:                                               ; preds = %48
  br label %50

50:                                               ; preds = %49
  br label %51

51:                                               ; preds = %50
  store i32 1, i32* %3, align 4
  br label %52

52:                                               ; preds = %51, %47, %35, %23, %11
  %53 = load i32, i32* %3, align 4
  ret i32 %53
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
