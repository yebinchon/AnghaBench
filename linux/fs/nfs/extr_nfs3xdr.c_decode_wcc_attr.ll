; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_wcc_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs3xdr.c_decode_wcc_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xdr_stream = type { i32 }
%struct.nfs_fattr = type { i32, i32, i32, i32, i32 }

@NFS3_wcc_attr_sz = common dso_local global i32 0, align 4
@EIO = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRESIZE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECHANGE = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PREMTIME = common dso_local global i32 0, align 4
@NFS_ATTR_FATTR_PRECTIME = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.xdr_stream*, %struct.nfs_fattr*)* @decode_wcc_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @decode_wcc_attr(%struct.xdr_stream* %0, %struct.nfs_fattr* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xdr_stream*, align 8
  %5 = alloca %struct.nfs_fattr*, align 8
  %6 = alloca i32*, align 8
  store %struct.xdr_stream* %0, %struct.xdr_stream** %4, align 8
  store %struct.nfs_fattr* %1, %struct.nfs_fattr** %5, align 8
  %7 = load %struct.xdr_stream*, %struct.xdr_stream** %4, align 8
  %8 = load i32, i32* @NFS3_wcc_attr_sz, align 4
  %9 = shl i32 %8, 2
  %10 = call i32* @xdr_inline_decode(%struct.xdr_stream* %7, i32 %9)
  store i32* %10, i32** %6, align 8
  %11 = load i32*, i32** %6, align 8
  %12 = icmp ne i32* %11, null
  %13 = xor i1 %12, true
  %14 = zext i1 %13 to i32
  %15 = call i64 @unlikely(i32 %14)
  %16 = icmp ne i64 %15, 0
  br i1 %16, label %17, label %20

17:                                               ; preds = %2
  %18 = load i32, i32* @EIO, align 4
  %19 = sub nsw i32 0, %18
  store i32 %19, i32* %3, align 4
  br label %49

20:                                               ; preds = %2
  %21 = load i32, i32* @NFS_ATTR_FATTR_PRESIZE, align 4
  %22 = load i32, i32* @NFS_ATTR_FATTR_PRECHANGE, align 4
  %23 = or i32 %21, %22
  %24 = load i32, i32* @NFS_ATTR_FATTR_PREMTIME, align 4
  %25 = or i32 %23, %24
  %26 = load i32, i32* @NFS_ATTR_FATTR_PRECTIME, align 4
  %27 = or i32 %25, %26
  %28 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %29 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = or i32 %30, %27
  store i32 %31, i32* %29, align 4
  %32 = load i32*, i32** %6, align 8
  %33 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %34 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %33, i32 0, i32 4
  %35 = call i32* @xdr_decode_size3(i32* %32, i32* %34)
  store i32* %35, i32** %6, align 8
  %36 = load i32*, i32** %6, align 8
  %37 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %38 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %37, i32 0, i32 3
  %39 = call i32* @xdr_decode_nfstime3(i32* %36, i32* %38)
  store i32* %39, i32** %6, align 8
  %40 = load i32*, i32** %6, align 8
  %41 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %42 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %41, i32 0, i32 1
  %43 = call i32* @xdr_decode_nfstime3(i32* %40, i32* %42)
  %44 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %45 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %44, i32 0, i32 1
  %46 = call i32 @nfs_timespec_to_change_attr(i32* %45)
  %47 = load %struct.nfs_fattr*, %struct.nfs_fattr** %5, align 8
  %48 = getelementptr inbounds %struct.nfs_fattr, %struct.nfs_fattr* %47, i32 0, i32 2
  store i32 %46, i32* %48, align 4
  store i32 0, i32* %3, align 4
  br label %49

49:                                               ; preds = %20, %17
  %50 = load i32, i32* %3, align 4
  ret i32 %50
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32* @xdr_decode_size3(i32*, i32*) #1

declare dso_local i32* @xdr_decode_nfstime3(i32*, i32*) #1

declare dso_local i32 @nfs_timespec_to_change_attr(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
