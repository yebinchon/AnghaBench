; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_open_downgrade.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_open_downgrade.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_open_downgrade = type { i32, i32, i32, i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@p = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundargs*, %struct.nfsd4_open_downgrade*)* @nfsd4_decode_open_downgrade to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_decode_open_downgrade(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_open_downgrade* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_open_downgrade*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_open_downgrade* %1, %struct.nfsd4_open_downgrade** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %8 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %5, align 8
  %9 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %8, i32 0, i32 4
  %10 = call i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs* %7, i32* %9)
  store i64 %10, i64* @status, align 8
  %11 = load i64, i64* @status, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load i64, i64* @status, align 8
  store i64 %14, i64* %3, align 8
  br label %43

15:                                               ; preds = %2
  %16 = call i32 @READ_BUF(i32 4)
  %17 = load i32, i32* @p, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @p, align 4
  %19 = call i32 @be32_to_cpup(i32 %17)
  %20 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %20, i32 0, i32 3
  store i32 %19, i32* %21, align 4
  %22 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %23 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %5, align 8
  %24 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %23, i32 0, i32 2
  %25 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %5, align 8
  %26 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %25, i32 0, i32 1
  %27 = call i64 @nfsd4_decode_share_access(%struct.nfsd4_compoundargs* %22, i32* %24, i32* %26, i32* null)
  store i64 %27, i64* @status, align 8
  %28 = load i64, i64* @status, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %32

30:                                               ; preds = %15
  %31 = load i64, i64* @status, align 8
  store i64 %31, i64* %3, align 8
  br label %43

32:                                               ; preds = %15
  %33 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %34 = load %struct.nfsd4_open_downgrade*, %struct.nfsd4_open_downgrade** %5, align 8
  %35 = getelementptr inbounds %struct.nfsd4_open_downgrade, %struct.nfsd4_open_downgrade* %34, i32 0, i32 0
  %36 = call i64 @nfsd4_decode_share_deny(%struct.nfsd4_compoundargs* %33, i32* %35)
  store i64 %36, i64* @status, align 8
  %37 = load i64, i64* @status, align 8
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %32
  %40 = load i64, i64* @status, align 8
  store i64 %40, i64* %3, align 8
  br label %43

41:                                               ; preds = %32
  %42 = load i32, i32* @DECODE_TAIL, align 4
  br label %43

43:                                               ; preds = %41, %39, %30, %13
  %44 = load i64, i64* %3, align 8
  ret i64 %44
}

declare dso_local i64 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs*, i32*) #1

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i64 @nfsd4_decode_share_access(%struct.nfsd4_compoundargs*, i32*, i32*, i32*) #1

declare dso_local i64 @nfsd4_decode_share_deny(%struct.nfsd4_compoundargs*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
