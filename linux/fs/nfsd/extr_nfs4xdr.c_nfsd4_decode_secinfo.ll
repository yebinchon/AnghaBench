; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_secinfo.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_secinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_secinfo = type { i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@status = common dso_local global i64 0, align 8
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundargs*, %struct.nfsd4_secinfo*)* @nfsd4_decode_secinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_decode_secinfo(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_secinfo* %1) #0 {
  %3 = alloca i64, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca %struct.nfsd4_secinfo*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store %struct.nfsd4_secinfo* %1, %struct.nfsd4_secinfo** %5, align 8
  %6 = load i32, i32* @DECODE_HEAD, align 4
  %7 = call i32 @READ_BUF(i32 4)
  %8 = load i32, i32* @p, align 4
  %9 = add nsw i32 %8, 1
  store i32 %9, i32* @p, align 4
  %10 = call i32 @be32_to_cpup(i32 %8)
  %11 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %12 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %11, i32 0, i32 0
  store i32 %10, i32* %12, align 4
  %13 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %14 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @READ_BUF(i32 %15)
  %17 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %18 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %17, i32 0, i32 1
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %21 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @SAVEMEM(i32 %19, i32 %22)
  %24 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %25 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.nfsd4_secinfo*, %struct.nfsd4_secinfo** %5, align 8
  %28 = getelementptr inbounds %struct.nfsd4_secinfo, %struct.nfsd4_secinfo* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @check_filename(i32 %26, i32 %29)
  store i64 %30, i64* @status, align 8
  %31 = load i64, i64* @status, align 8
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %2
  %34 = load i64, i64* @status, align 8
  store i64 %34, i64* %3, align 8
  br label %37

35:                                               ; preds = %2
  %36 = load i32, i32* @DECODE_TAIL, align 4
  br label %37

37:                                               ; preds = %35, %33
  %38 = load i64, i64* %3, align 8
  ret i64 %38
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @SAVEMEM(i32, i32) #1

declare dso_local i64 @check_filename(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
