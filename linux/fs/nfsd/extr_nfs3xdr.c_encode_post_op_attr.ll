; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_post_op_attr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs3xdr.c_encode_post_op_attr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.svc_fh = type { %struct.dentry* }
%struct.dentry = type { i32 }
%struct.kstat = type { i32 }

@xdr_one = common dso_local global i32 0, align 4
@xdr_zero = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32* (%struct.svc_rqst*, i32*, %struct.svc_fh*)* @encode_post_op_attr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32* @encode_post_op_attr(%struct.svc_rqst* %0, i32* %1, %struct.svc_fh* %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca %struct.svc_fh*, align 8
  %8 = alloca %struct.dentry*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.kstat, align 4
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store i32* %1, i32** %6, align 8
  store %struct.svc_fh* %2, %struct.svc_fh** %7, align 8
  %11 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %12 = getelementptr inbounds %struct.svc_fh, %struct.svc_fh* %11, i32 0, i32 0
  %13 = load %struct.dentry*, %struct.dentry** %12, align 8
  store %struct.dentry* %13, %struct.dentry** %8, align 8
  %14 = load %struct.dentry*, %struct.dentry** %8, align 8
  %15 = icmp ne %struct.dentry* %14, null
  br i1 %15, label %16, label %38

16:                                               ; preds = %3
  %17 = load %struct.dentry*, %struct.dentry** %8, align 8
  %18 = call i64 @d_really_is_positive(%struct.dentry* %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %38

20:                                               ; preds = %16
  %21 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %22 = call i32 @fh_getattr(%struct.svc_fh* %21, %struct.kstat* %10)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %37, label %25

25:                                               ; preds = %20
  %26 = load i32, i32* @xdr_one, align 4
  %27 = load i32*, i32** %6, align 8
  %28 = getelementptr inbounds i32, i32* %27, i32 1
  store i32* %28, i32** %6, align 8
  store i32 %26, i32* %27, align 4
  %29 = load %struct.dentry*, %struct.dentry** %8, align 8
  %30 = call i32 @d_inode(%struct.dentry* %29)
  %31 = getelementptr inbounds %struct.kstat, %struct.kstat* %10, i32 0, i32 0
  %32 = call i32 @lease_get_mtime(i32 %30, i32* %31)
  %33 = load %struct.svc_rqst*, %struct.svc_rqst** %5, align 8
  %34 = load i32*, i32** %6, align 8
  %35 = load %struct.svc_fh*, %struct.svc_fh** %7, align 8
  %36 = call i32* @encode_fattr3(%struct.svc_rqst* %33, i32* %34, %struct.svc_fh* %35, %struct.kstat* %10)
  store i32* %36, i32** %4, align 8
  br label %43

37:                                               ; preds = %20
  br label %38

38:                                               ; preds = %37, %16, %3
  %39 = load i32, i32* @xdr_zero, align 4
  %40 = load i32*, i32** %6, align 8
  %41 = getelementptr inbounds i32, i32* %40, i32 1
  store i32* %41, i32** %6, align 8
  store i32 %39, i32* %40, align 4
  %42 = load i32*, i32** %6, align 8
  store i32* %42, i32** %4, align 8
  br label %43

43:                                               ; preds = %38, %25
  %44 = load i32*, i32** %4, align 8
  ret i32* %44
}

declare dso_local i64 @d_really_is_positive(%struct.dentry*) #1

declare dso_local i32 @fh_getattr(%struct.svc_fh*, %struct.kstat*) #1

declare dso_local i32 @lease_get_mtime(i32, i32*) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32* @encode_fattr3(%struct.svc_rqst*, i32*, %struct.svc_fh*, %struct.kstat*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
