; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fattr_to_buf.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_fattr_to_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_fh = type { i32 }
%struct.svc_export = type { i32 }
%struct.dentry = type { i32 }
%struct.svc_rqst = type { i32 }
%struct.xdr_buf = type { i32 }
%struct.xdr_stream = type { i32* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @nfsd4_encode_fattr_to_buf(i32** %0, i32 %1, %struct.svc_fh* %2, %struct.svc_export* %3, %struct.dentry* %4, i32* %5, %struct.svc_rqst* %6, i32 %7) #0 {
  %9 = alloca i32**, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.svc_fh*, align 8
  %12 = alloca %struct.svc_export*, align 8
  %13 = alloca %struct.dentry*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca %struct.svc_rqst*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.xdr_buf, align 4
  %18 = alloca %struct.xdr_stream, align 8
  %19 = alloca i32, align 4
  store i32** %0, i32*** %9, align 8
  store i32 %1, i32* %10, align 4
  store %struct.svc_fh* %2, %struct.svc_fh** %11, align 8
  store %struct.svc_export* %3, %struct.svc_export** %12, align 8
  store %struct.dentry* %4, %struct.dentry** %13, align 8
  store i32* %5, i32** %14, align 8
  store %struct.svc_rqst* %6, %struct.svc_rqst** %15, align 8
  store i32 %7, i32* %16, align 4
  %20 = load i32**, i32*** %9, align 8
  %21 = load i32*, i32** %20, align 8
  %22 = load i32, i32* %10, align 4
  %23 = shl i32 %22, 2
  %24 = call i32 @svcxdr_init_encode_from_buffer(%struct.xdr_stream* %18, %struct.xdr_buf* %17, i32* %21, i32 %23)
  %25 = load %struct.svc_fh*, %struct.svc_fh** %11, align 8
  %26 = load %struct.svc_export*, %struct.svc_export** %12, align 8
  %27 = load %struct.dentry*, %struct.dentry** %13, align 8
  %28 = load i32*, i32** %14, align 8
  %29 = load %struct.svc_rqst*, %struct.svc_rqst** %15, align 8
  %30 = load i32, i32* %16, align 4
  %31 = call i32 @nfsd4_encode_fattr(%struct.xdr_stream* %18, %struct.svc_fh* %25, %struct.svc_export* %26, %struct.dentry* %27, i32* %28, %struct.svc_rqst* %29, i32 %30)
  store i32 %31, i32* %19, align 4
  %32 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %18, i32 0, i32 0
  %33 = load i32*, i32** %32, align 8
  %34 = load i32**, i32*** %9, align 8
  store i32* %33, i32** %34, align 8
  %35 = load i32, i32* %19, align 4
  ret i32 %35
}

declare dso_local i32 @svcxdr_init_encode_from_buffer(%struct.xdr_stream*, %struct.xdr_buf*, i32*, i32) #1

declare dso_local i32 @nfsd4_encode_fattr(%struct.xdr_stream*, %struct.svc_fh*, %struct.svc_export*, %struct.dentry*, i32*, %struct.svc_rqst*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
