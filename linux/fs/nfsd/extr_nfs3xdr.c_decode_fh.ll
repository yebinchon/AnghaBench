; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_decode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, i32 }

@NFS3_FHSIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.svc_fh*)* @decode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @decode_fh(i32* %0, %struct.svc_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_fh*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.svc_fh* %1, %struct.svc_fh** %5, align 8
  %7 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %8 = load i32, i32* @NFS3_FHSIZE, align 4
  %9 = call i32 @fh_init(%struct.svc_fh* %7, i32 %8)
  %10 = load i32*, i32** %4, align 8
  %11 = getelementptr inbounds i32, i32* %10, i32 1
  store i32* %11, i32** %4, align 8
  %12 = load i32, i32* %10, align 4
  %13 = call i32 @ntohl(i32 %12)
  store i32 %13, i32* %6, align 4
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFS3_FHSIZE, align 4
  %16 = icmp ugt i32 %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %2
  store i32* null, i32** %3, align 8
  br label %34

18:                                               ; preds = %2
  %19 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %20 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %19, i32 0, i32 0
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 1
  %22 = load i32*, i32** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call i32 @memcpy(i32* %21, i32* %22, i32 %23)
  %25 = load i32, i32* %6, align 4
  %26 = load %struct.svc_fh*, %struct.svc_fh** %5, align 8
  %27 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %26, i32 0, i32 0
  %28 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %27, i32 0, i32 0
  store i32 %25, i32* %28, align 4
  %29 = load i32*, i32** %4, align 8
  %30 = load i32, i32* %6, align 4
  %31 = call i32 @XDR_QUADLEN(i32 %30)
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %29, i64 %32
  store i32* %33, i32** %3, align 8
  br label %34

34:                                               ; preds = %18, %17
  %35 = load i32*, i32** %3, align 8
  ret i32* %35
}

declare dso_local i32 @fh_init(%struct.svc_fh*, i32) #1

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
