; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_svcxdr_tmpalloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_svcxdr_tmpalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundargs = type { %struct.svcxdr_tmpbuf* }
%struct.svcxdr_tmpbuf = type { i8*, %struct.svcxdr_tmpbuf* }

@GFP_KERNEL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.nfsd4_compoundargs*, i64)* @svcxdr_tmpalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @svcxdr_tmpalloc(%struct.nfsd4_compoundargs* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.nfsd4_compoundargs*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.svcxdr_tmpbuf*, align 8
  store %struct.nfsd4_compoundargs* %0, %struct.nfsd4_compoundargs** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load i64, i64* %5, align 8
  %8 = add i64 16, %7
  %9 = load i32, i32* @GFP_KERNEL, align 4
  %10 = call %struct.svcxdr_tmpbuf* @kmalloc(i64 %8, i32 %9)
  store %struct.svcxdr_tmpbuf* %10, %struct.svcxdr_tmpbuf** %6, align 8
  %11 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %6, align 8
  %12 = icmp ne %struct.svcxdr_tmpbuf* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  store i8* null, i8** %3, align 8
  br label %26

14:                                               ; preds = %2
  %15 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %16 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %15, i32 0, i32 0
  %17 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %16, align 8
  %18 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %6, align 8
  %19 = getelementptr inbounds %struct.svcxdr_tmpbuf, %struct.svcxdr_tmpbuf* %18, i32 0, i32 1
  store %struct.svcxdr_tmpbuf* %17, %struct.svcxdr_tmpbuf** %19, align 8
  %20 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %6, align 8
  %21 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %4, align 8
  %22 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %21, i32 0, i32 0
  store %struct.svcxdr_tmpbuf* %20, %struct.svcxdr_tmpbuf** %22, align 8
  %23 = load %struct.svcxdr_tmpbuf*, %struct.svcxdr_tmpbuf** %6, align 8
  %24 = getelementptr inbounds %struct.svcxdr_tmpbuf, %struct.svcxdr_tmpbuf* %23, i32 0, i32 0
  %25 = load i8*, i8** %24, align 8
  store i8* %25, i8** %3, align 8
  br label %26

26:                                               ; preds = %14, %13
  %27 = load i8*, i8** %3, align 8
  ret i8* %27
}

declare dso_local %struct.svcxdr_tmpbuf* @kmalloc(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
