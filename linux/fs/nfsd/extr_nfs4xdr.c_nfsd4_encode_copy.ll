; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_copy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_copy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32 }
%struct.nfsd4_copy = type { i32, i32 }

@xdr_one = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.nfsd4_compoundres*, i64, %struct.nfsd4_copy*)* @nfsd4_encode_copy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @nfsd4_encode_copy(%struct.nfsd4_compoundres* %0, i64 %1, %struct.nfsd4_copy* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.nfsd4_copy*, align 8
  %8 = alloca i64*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i64 %1, i64* %6, align 8
  store %struct.nfsd4_copy* %2, %struct.nfsd4_copy** %7, align 8
  %9 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %10 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %11 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %10, i32 0, i32 1
  %12 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %13 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call i64 @nfsd42_encode_write_res(%struct.nfsd4_compoundres* %9, i32* %11, i32 %14)
  store i64 %15, i64* %6, align 8
  %16 = load i64, i64* %6, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %20

18:                                               ; preds = %3
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* %4, align 8
  br label %35

20:                                               ; preds = %3
  %21 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %21, i32 0, i32 0
  %23 = call i64* @xdr_reserve_space(i32* %22, i32 8)
  store i64* %23, i64** %8, align 8
  %24 = load i32, i32* @xdr_one, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64*, i64** %8, align 8
  %27 = getelementptr inbounds i64, i64* %26, i32 1
  store i64* %27, i64** %8, align 8
  store i64 %25, i64* %26, align 8
  %28 = load %struct.nfsd4_copy*, %struct.nfsd4_copy** %7, align 8
  %29 = getelementptr inbounds %struct.nfsd4_copy, %struct.nfsd4_copy* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = call i32 @cpu_to_be32(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = load i64*, i64** %8, align 8
  %34 = getelementptr inbounds i64, i64* %33, i32 1
  store i64* %34, i64** %8, align 8
  store i64 %32, i64* %33, align 8
  store i64 0, i64* %4, align 8
  br label %35

35:                                               ; preds = %20, %18
  %36 = load i64, i64* %4, align 8
  ret i64 %36
}

declare dso_local i64 @nfsd42_encode_write_res(%struct.nfsd4_compoundres*, i32*, i32) #1

declare dso_local i64* @xdr_reserve_space(i32*, i32) #1

declare dso_local i32 @cpu_to_be32(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
