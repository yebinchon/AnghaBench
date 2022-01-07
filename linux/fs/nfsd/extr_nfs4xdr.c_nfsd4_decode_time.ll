; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_time.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_time.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.timespec64 = type { i64, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.timespec64*)* @nfsd4_decode_time to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_time(%struct.nfsd4_compoundargs* %0, %struct.timespec64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.timespec64*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.timespec64* %1, %struct.timespec64** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 12)
  %8 = load i32, i32* @p, align 4
  %9 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %10 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %9, i32 0, i32 1
  %11 = call i32 @xdr_decode_hyper(i32 %8, i32* %10)
  store i32 %11, i32* @p, align 4
  %12 = load i32, i32* @p, align 4
  %13 = add nsw i32 %12, 1
  store i32 %13, i32* @p, align 4
  %14 = call i64 @be32_to_cpup(i32 %12)
  %15 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %16 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  %17 = load %struct.timespec64*, %struct.timespec64** %5, align 8
  %18 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp sge i64 %19, 1000000000
  br i1 %20, label %21, label %23

21:                                               ; preds = %2
  %22 = load i32, i32* @nfserr_inval, align 4
  store i32 %22, i32* %3, align 4
  br label %25

23:                                               ; preds = %2
  %24 = load i32, i32* @DECODE_TAIL, align 4
  br label %25

25:                                               ; preds = %23, %21
  %26 = load i32, i32* %3, align 4
  ret i32 %26
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @xdr_decode_hyper(i32, i32*) #1

declare dso_local i64 @be32_to_cpup(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
