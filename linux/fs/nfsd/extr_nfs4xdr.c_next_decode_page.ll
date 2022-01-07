; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_next_decode_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_next_decode_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { i32, i64, i64, i32* }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfsd4_compoundargs*)* @next_decode_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @next_decode_page(%struct.nfsd4_compoundargs* %0) #0 {
  %2 = alloca %struct.nfsd4_compoundargs*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %2, align 8
  %3 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %4 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %3, i32 0, i32 3
  %5 = load i32*, i32** %4, align 8
  %6 = getelementptr inbounds i32, i32* %5, i64 0
  %7 = load i32, i32* %6, align 4
  %8 = call i64 @page_address(i32 %7)
  %9 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %9, i32 0, i32 1
  store i64 %8, i64* %10, align 8
  %11 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %12 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %11, i32 0, i32 3
  %13 = load i32*, i32** %12, align 8
  %14 = getelementptr inbounds i32, i32* %13, i32 1
  store i32* %14, i32** %12, align 8
  %15 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @PAGE_SIZE, align 4
  %19 = icmp slt i32 %17, %18
  br i1 %19, label %20, label %33

20:                                               ; preds = %1
  %21 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %21, i32 0, i32 1
  %23 = load i64, i64* %22, align 8
  %24 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %25 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 8
  %27 = call i64 @XDR_QUADLEN(i32 %26)
  %28 = add nsw i64 %23, %27
  %29 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %30 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %29, i32 0, i32 2
  store i64 %28, i64* %30, align 8
  %31 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %32 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %31, i32 0, i32 0
  store i32 0, i32* %32, align 8
  br label %48

33:                                               ; preds = %1
  %34 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %35 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %34, i32 0, i32 1
  %36 = load i64, i64* %35, align 8
  %37 = load i32, i32* @PAGE_SIZE, align 4
  %38 = ashr i32 %37, 2
  %39 = sext i32 %38 to i64
  %40 = add nsw i64 %36, %39
  %41 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %42 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %41, i32 0, i32 2
  store i64 %40, i64* %42, align 8
  %43 = load i32, i32* @PAGE_SIZE, align 4
  %44 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %2, align 8
  %45 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = sub nsw i32 %46, %43
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %33, %20
  ret void
}

declare dso_local i64 @page_address(i32) #1

declare dso_local i64 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
