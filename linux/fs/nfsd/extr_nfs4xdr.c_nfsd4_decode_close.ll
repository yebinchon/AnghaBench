; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_close.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_decode_close.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32 }
%struct.nfsd4_close = type { i32, i32 }

@DECODE_HEAD = common dso_local global i32 0, align 4
@p = common dso_local global i32 0, align 4
@DECODE_TAIL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundargs*, %struct.nfsd4_close*)* @nfsd4_decode_close to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_decode_close(%struct.nfsd4_compoundargs* %0, %struct.nfsd4_close* %1) #0 {
  %3 = alloca %struct.nfsd4_compoundargs*, align 8
  %4 = alloca %struct.nfsd4_close*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %3, align 8
  store %struct.nfsd4_close* %1, %struct.nfsd4_close** %4, align 8
  %5 = load i32, i32* @DECODE_HEAD, align 4
  %6 = call i32 @READ_BUF(i32 4)
  %7 = load i32, i32* @p, align 4
  %8 = add nsw i32 %7, 1
  store i32 %8, i32* @p, align 4
  %9 = call i32 @be32_to_cpup(i32 %7)
  %10 = load %struct.nfsd4_close*, %struct.nfsd4_close** %4, align 8
  %11 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %10, i32 0, i32 1
  store i32 %9, i32* %11, align 4
  %12 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %13 = load %struct.nfsd4_close*, %struct.nfsd4_close** %4, align 8
  %14 = getelementptr inbounds %struct.nfsd4_close, %struct.nfsd4_close* %13, i32 0, i32 0
  %15 = call i32 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs* %12, i32* %14)
  ret i32 %15
}

declare dso_local i32 @READ_BUF(i32) #1

declare dso_local i32 @be32_to_cpup(i32) #1

declare dso_local i32 @nfsd4_decode_stateid(%struct.nfsd4_compoundargs*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
