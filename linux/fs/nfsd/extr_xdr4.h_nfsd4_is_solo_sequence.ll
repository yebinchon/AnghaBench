; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_xdr4.h_nfsd4_is_solo_sequence.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_xdr4.h_nfsd4_is_solo_sequence.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { i32, %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.nfsd4_compoundargs* }
%struct.nfsd4_compoundargs = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i64 }

@OP_SEQUENCE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*)* @nfsd4_is_solo_sequence to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_is_solo_sequence(%struct.nfsd4_compoundres* %0) #0 {
  %2 = alloca %struct.nfsd4_compoundres*, align 8
  %3 = alloca %struct.nfsd4_compoundargs*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %2, align 8
  %4 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %2, align 8
  %5 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %4, i32 0, i32 1
  %6 = load %struct.TYPE_3__*, %struct.TYPE_3__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %6, i32 0, i32 0
  %8 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %7, align 8
  store %struct.nfsd4_compoundargs* %8, %struct.nfsd4_compoundargs** %3, align 8
  %9 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %2, align 8
  %10 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = icmp eq i32 %11, 1
  br i1 %12, label %13, label %22

13:                                               ; preds = %1
  %14 = load %struct.nfsd4_compoundargs*, %struct.nfsd4_compoundargs** %3, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compoundargs, %struct.nfsd4_compoundargs* %14, i32 0, i32 0
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %16, i64 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @OP_SEQUENCE, align 8
  %21 = icmp eq i64 %19, %20
  br label %22

22:                                               ; preds = %13, %1
  %23 = phi i1 [ false, %1 ], [ %21, %13 ]
  %24 = zext i1 %23 to i32
  ret i32 %24
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
