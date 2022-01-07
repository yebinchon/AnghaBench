; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_seek.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_seek.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_seek = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_seek*)* @nfsd4_encode_seek to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_seek(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_seek* %2) #0 {
  %4 = alloca %struct.nfsd4_compoundres*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.nfsd4_seek*, align 8
  %7 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.nfsd4_seek* %2, %struct.nfsd4_seek** %6, align 8
  %8 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %4, align 8
  %9 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %8, i32 0, i32 0
  %10 = call i32* @xdr_reserve_space(i32* %9, i32 12)
  store i32* %10, i32** %7, align 8
  %11 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %6, align 8
  %12 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = call i32 @cpu_to_be32(i32 %13)
  %15 = load i32*, i32** %7, align 8
  %16 = getelementptr inbounds i32, i32* %15, i32 1
  store i32* %16, i32** %7, align 8
  store i32 %14, i32* %15, align 4
  %17 = load i32*, i32** %7, align 8
  %18 = load %struct.nfsd4_seek*, %struct.nfsd4_seek** %6, align 8
  %19 = getelementptr inbounds %struct.nfsd4_seek, %struct.nfsd4_seek* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32* @xdr_encode_hyper(i32* %17, i32 %20)
  store i32* %21, i32** %7, align 8
  ret i32 0
}

declare dso_local i32* @xdr_reserve_space(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
