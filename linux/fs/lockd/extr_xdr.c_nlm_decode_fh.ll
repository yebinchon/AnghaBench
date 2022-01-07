; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_decode_fh.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_xdr.c_nlm_decode_fh.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfs_fh = type { i32, i32 }

@NFS2_FHSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [43 x i8] c"lockd: bad fhandle size %d (should be %d)\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (i32*, %struct.nfs_fh*)* @nlm_decode_fh to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @nlm_decode_fh(i32* %0, %struct.nfs_fh* %1) #0 {
  %3 = alloca i32*, align 8
  %4 = alloca i32*, align 8
  %5 = alloca %struct.nfs_fh*, align 8
  %6 = alloca i32, align 4
  store i32* %0, i32** %4, align 8
  store %struct.nfs_fh* %1, %struct.nfs_fh** %5, align 8
  %7 = load i32*, i32** %4, align 8
  %8 = getelementptr inbounds i32, i32* %7, i32 1
  store i32* %8, i32** %4, align 8
  %9 = load i32, i32* %7, align 4
  %10 = call i32 @ntohl(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* @NFS2_FHSIZE, align 4
  %12 = icmp ne i32 %10, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %2
  %14 = load i32, i32* %6, align 4
  %15 = load i32, i32* @NFS2_FHSIZE, align 4
  %16 = call i32 @dprintk(i8* getelementptr inbounds ([43 x i8], [43 x i8]* @.str, i64 0, i64 0), i32 %14, i32 %15)
  store i32* null, i32** %3, align 8
  br label %36

17:                                               ; preds = %2
  %18 = load i32, i32* @NFS2_FHSIZE, align 4
  %19 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %20 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %22 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %21, i32 0, i32 1
  %23 = load i32, i32* %22, align 4
  %24 = call i32 @memset(i32 %23, i32 0, i32 4)
  %25 = load %struct.nfs_fh*, %struct.nfs_fh** %5, align 8
  %26 = getelementptr inbounds %struct.nfs_fh, %struct.nfs_fh* %25, i32 0, i32 1
  %27 = load i32, i32* %26, align 4
  %28 = load i32*, i32** %4, align 8
  %29 = load i32, i32* @NFS2_FHSIZE, align 4
  %30 = call i32 @memcpy(i32 %27, i32* %28, i32 %29)
  %31 = load i32*, i32** %4, align 8
  %32 = load i32, i32* @NFS2_FHSIZE, align 4
  %33 = call i32 @XDR_QUADLEN(i32 %32)
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds i32, i32* %31, i64 %34
  store i32* %35, i32** %3, align 8
  br label %36

36:                                               ; preds = %17, %13
  %37 = load i32*, i32** %3, align 8
  ret i32* %37
}

declare dso_local i32 @ntohl(i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @memcpy(i32, i32*, i32) #1

declare dso_local i32 @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
