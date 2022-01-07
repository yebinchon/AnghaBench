; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_fsid.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_fsid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.TYPE_4__*, %struct.TYPE_6__* }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_6__ = type { %struct.TYPE_5__* }
%struct.TYPE_5__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.svc_fh*)* @encode_fsid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_fsid(i32* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca %struct.svc_fh*, align 8
  %5 = alloca i32, align 4
  store i32* %0, i32** %3, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %4, align 8
  %6 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %7 = call i32 @fsid_source(%struct.svc_fh* %6)
  switch i32 %7, label %8 [
    i32 130, label %9
    i32 129, label %20
    i32 128, label %28
  ]

8:                                                ; preds = %2
  br label %9

9:                                                ; preds = %2, %8
  %10 = load i32*, i32** %3, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 1
  %13 = load %struct.TYPE_6__*, %struct.TYPE_6__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %13, i32 0, i32 0
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %14, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @huge_encode_dev(i32 %17)
  %19 = call i32* @xdr_encode_hyper(i32* %10, i32 %18)
  store i32* %19, i32** %3, align 8
  br label %50

20:                                               ; preds = %2
  %21 = load i32*, i32** %3, align 8
  %22 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %23 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %22, i32 0, i32 0
  %24 = load %struct.TYPE_4__*, %struct.TYPE_4__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = call i32* @xdr_encode_hyper(i32* %21, i32 %26)
  store i32* %27, i32** %3, align 8
  br label %50

28:                                               ; preds = %2
  %29 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %30 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %29, i32 0, i32 0
  %31 = load %struct.TYPE_4__*, %struct.TYPE_4__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = inttoptr i64 %33 to i32*
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  %36 = load i32, i32* %35, align 4
  store i32 %36, i32* %5, align 4
  %37 = load %struct.svc_fh*, %struct.svc_fh** %4, align 8
  %38 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %37, i32 0, i32 0
  %39 = load %struct.TYPE_4__*, %struct.TYPE_4__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = inttoptr i64 %41 to i32*
  %43 = getelementptr inbounds i32, i32* %42, i64 1
  %44 = load i32, i32* %43, align 4
  %45 = load i32, i32* %5, align 4
  %46 = xor i32 %45, %44
  store i32 %46, i32* %5, align 4
  %47 = load i32*, i32** %3, align 8
  %48 = load i32, i32* %5, align 4
  %49 = call i32* @xdr_encode_hyper(i32* %47, i32 %48)
  store i32* %49, i32** %3, align 8
  br label %50

50:                                               ; preds = %28, %20, %9
  %51 = load i32*, i32** %3, align 8
  ret i32* %51
}

declare dso_local i32 @fsid_source(%struct.svc_fh*) #1

declare dso_local i32* @xdr_encode_hyper(i32*, i32) #1

declare dso_local i32 @huge_encode_dev(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
