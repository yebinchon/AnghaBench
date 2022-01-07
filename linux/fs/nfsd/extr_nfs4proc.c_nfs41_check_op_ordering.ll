; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfs41_check_op_ordering.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4proc.c_nfs41_check_op_ordering.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_2__ = type { i32 }
%struct.nfsd4_compoundargs = type { i64, i32, %struct.nfsd4_op* }
%struct.nfsd4_op = type { i64, i64 }

@nfs_ok = common dso_local global i32 0, align 4
@nfserr_op_illegal = common dso_local global i64 0, align 8
@nfsd4_ops = common dso_local global %struct.TYPE_2__* null, align 8
@ALLOWED_AS_FIRST_OP = common dso_local global i32 0, align 4
@nfserr_op_not_in_session = common dso_local global i32 0, align 4
@OP_SEQUENCE = common dso_local global i64 0, align 8
@nfserr_not_only_op = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*)* @nfs41_check_op_ordering to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs41_check_op_ordering(%struct.nfsd4_compoundargs* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.nfsd4_compoundargs*, align 8
  %4 = alloca %struct.nfsd4_op*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %3, align 8
  %5 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %6 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %5, i32 0, i32 2
  %7 = load %struct.nfsd4_op*, %struct.nfsd4_op** %6, align 8
  %8 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %7, i64 0
  store %struct.nfsd4_op* %8, %struct.nfsd4_op** %4, align 8
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %1
  %14 = load i32, i32* @nfs_ok, align 4
  store i32 %14, i32* %2, align 4
  br label %60

15:                                               ; preds = %1
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %17 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %22

20:                                               ; preds = %15
  %21 = load i32, i32* @nfs_ok, align 4
  store i32 %21, i32* %2, align 4
  br label %60

22:                                               ; preds = %15
  %23 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %24 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @nfserr_op_illegal, align 8
  %27 = icmp eq i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = load i32, i32* @nfs_ok, align 4
  store i32 %29, i32* %2, align 4
  br label %60

30:                                               ; preds = %22
  %31 = load %struct.TYPE_2__*, %struct.TYPE_2__** @nfsd4_ops, align 8
  %32 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %33 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i64 %34
  %36 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* @ALLOWED_AS_FIRST_OP, align 4
  %39 = and i32 %37, %38
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %43, label %41

41:                                               ; preds = %30
  %42 = load i32, i32* @nfserr_op_not_in_session, align 4
  store i32 %42, i32* %2, align 4
  br label %60

43:                                               ; preds = %30
  %44 = load %struct.nfsd4_op*, %struct.nfsd4_op** %4, align 8
  %45 = getelementptr inbounds %struct.nfsd4_op, %struct.nfsd4_op* %44, i32 0, i32 1
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @OP_SEQUENCE, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %43
  %50 = load i32, i32* @nfs_ok, align 4
  store i32 %50, i32* %2, align 4
  br label %60

51:                                               ; preds = %43
  %52 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %53 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %52, i32 0, i32 1
  %54 = load i32, i32* %53, align 8
  %55 = icmp ne i32 %54, 1
  br i1 %55, label %56, label %58

56:                                               ; preds = %51
  %57 = load i32, i32* @nfserr_not_only_op, align 4
  store i32 %57, i32* %2, align 4
  br label %60

58:                                               ; preds = %51
  %59 = load i32, i32* @nfs_ok, align 4
  store i32 %59, i32* %2, align 4
  br label %60

60:                                               ; preds = %58, %56, %49, %41, %28, %20, %13
  %61 = load i32, i32* %2, align 4
  ret i32 %61
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
