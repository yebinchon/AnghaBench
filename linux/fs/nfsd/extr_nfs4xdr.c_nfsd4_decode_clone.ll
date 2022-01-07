; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_clone.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_clone.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_clone = type { i32, i32, i32, i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@p = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundargs*, %struct.nfsd4_clone*)* @nfsd4_decode_clone to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_decode_clone(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_clone* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_clone*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_clone* %1, %struct.nfsd4_clone** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %8 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %8, i32 0, i32 4
  %10 = call i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs* %7, i32* %9)
  store i64 %10, i64* @status, align 8
  %11 = load i64, i64* @status, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @status, align 8
  store i64 %14, i64* %3, align 8
  br label %39

15:                                               ; preds = %2
  %16 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %17 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %17, i32 0, i32 3
  %19 = call i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs* %16, i32* %18)
  store i64 %19, i64* @status, align 8
  %20 = load i64, i64* @status, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %15
  %23 = load i64, i64* @status, align 8
  store i64 %23, i64* %3, align 8
  br label %39

24:                                               ; preds = %15
  %25 = call i32 @READ_BUF(i32 24)
  %26 = load i32, i32* @p, align 4
  %27 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %5, align 8
  %28 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %27, i32 0, i32 2
  %29 = call i32 @xdr_decode_hyper(i32 %26, i32* %28)
  store i32 %29, i32* @p, align 4
  %30 = load i32, i32* @p, align 4
  %31 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %5, align 8
  %32 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %31, i32 0, i32 1
  %33 = call i32 @xdr_decode_hyper(i32 %30, i32* %32)
  store i32 %33, i32* @p, align 4
  %34 = load i32, i32* @p, align 4
  %35 = load %struct.nfsd4_clone*, %struct.nfsd4_clone** %5, align 8
  %36 = getelementptr inbounds %struct.nfsd4_clone, %struct.nfsd4_clone* %35, i32 0, i32 0
  %37 = call i32 @xdr_decode_hyper(i32 %34, i32* %36)
  store i32 %37, i32* @p, align 4
  %38 = load i32, i32* @DECODE_TAIL, align 4
  br label %39

39:                                               ; preds = %24, %22, %13
  %40 = load i64, i64* %3, align 8
  ret i64 %40
}

declare dso_local i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs*, i32*) #1

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @xdr_decode_hyper(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
