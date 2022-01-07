; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_sattrguard3.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_encode_sattrguard3.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs3_sattrargs = type { i32, i64 }

@xdr_one = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xdr_stream*, %struct.nfs3_sattrargs*)* @encode_sattrguard3 to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @encode_sattrguard3(%struct.xdr_stream* %0, %struct.nfs3_sattrargs* %1) #0 {
  %3 = alloca %struct.xdr_stream*, align 8
  %4 = alloca %struct.nfs3_sattrargs*, align 8
  %5 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %3, align 8
  store %struct.nfs3_sattrargs* %1, %struct.nfs3_sattrargs** %4, align 8
  %6 = load %struct.nfs3_sattrargs*, %struct.nfs3_sattrargs** %4, align 8
  %7 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %20

10:                                               ; preds = %2
  %11 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %12 = call i32* @xdr_reserve_space(%struct.xdr_stream* %11, i32 12)
  store i32* %12, i32** %5, align 8
  %13 = load i32, i32* @xdr_one, align 4
  %14 = load i32*, i32** %5, align 8
  %15 = getelementptr inbounds i32, i32* %14, i32 1
  store i32* %15, i32** %5, align 8
  store i32 %13, i32* %14, align 4
  %16 = load i32*, i32** %5, align 8
  %17 = load %struct.nfs3_sattrargs*, %struct.nfs3_sattrargs** %4, align 8
  %18 = getelementptr inbounds %struct.nfs3_sattrargs, %struct.nfs3_sattrargs* %17, i32 0, i32 0
  %19 = call i32 @xdr_encode_nfstime3(i32* %16, i32* %18)
  br label %25

20:                                               ; preds = %2
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %3, align 8
  %22 = call i32* @xdr_reserve_space(%struct.xdr_stream* %21, i32 4)
  store i32* %22, i32** %5, align 8
  %23 = load i32, i32* @xdr_zero, align 4
  %24 = load i32*, i32** %5, align 8
  store i32 %23, i32* %24, align 4
  br label %25

25:                                               ; preds = %20, %10
  ret void
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @xdr_encode_nfstime3(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
