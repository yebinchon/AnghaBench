; ModuleID = '/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfsd/extr_nfs4xdr.c_nfsd4_encode_readlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfsd4_compoundres = type { %struct.xdr_stream }
%struct.xdr_stream = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }
%struct.nfsd4_readlink = type { i32, i32 }

@nfserr_resource = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@nfserr_isdir = common dso_local global i32 0, align 4
@nfserr_inval = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.nfsd4_compoundres*, i32, %struct.nfsd4_readlink*)* @nfsd4_encode_readlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfsd4_encode_readlink(%struct.nfsd4_compoundres* %0, i32 %1, %struct.nfsd4_readlink* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.nfsd4_compoundres*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.nfsd4_readlink*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca %struct.xdr_stream*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32*, align 8
  store %struct.nfsd4_compoundres* %0, %struct.nfsd4_compoundres** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.nfsd4_readlink* %2, %struct.nfsd4_readlink** %7, align 8
  store i32 0, i32* %10, align 4
  %14 = load %struct.nfsd4_compoundres*, %struct.nfsd4_compoundres** %5, align 8
  %15 = getelementptr inbounds %struct.nfsd4_compoundres, %struct.nfsd4_compoundres* %14, i32 0, i32 0
  store %struct.xdr_stream* %15, %struct.xdr_stream** %11, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %17 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %16, i32 0, i32 0
  %18 = load %struct.TYPE_2__*, %struct.TYPE_2__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  store i32 %20, i32* %12, align 4
  %21 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %22 = call i32* @xdr_reserve_space(%struct.xdr_stream* %21, i32 4)
  store i32* %22, i32** %13, align 8
  %23 = load i32*, i32** %13, align 8
  %24 = icmp ne i32* %23, null
  br i1 %24, label %27, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @nfserr_resource, align 4
  store i32 %26, i32* %4, align 4
  br label %90

27:                                               ; preds = %3
  %28 = load i32, i32* @PAGE_SIZE, align 4
  store i32 %28, i32* %8, align 4
  %29 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %30 = load i32, i32* %8, align 4
  %31 = call i32* @xdr_reserve_space(%struct.xdr_stream* %29, i32 %30)
  store i32* %31, i32** %13, align 8
  %32 = load i32*, i32** %13, align 8
  %33 = icmp ne i32* %32, null
  br i1 %33, label %36, label %34

34:                                               ; preds = %27
  %35 = load i32, i32* @nfserr_resource, align 4
  store i32 %35, i32* %4, align 4
  br label %90

36:                                               ; preds = %27
  %37 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %7, align 8
  %38 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.nfsd4_readlink*, %struct.nfsd4_readlink** %7, align 8
  %41 = getelementptr inbounds %struct.nfsd4_readlink, %struct.nfsd4_readlink* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32*, i32** %13, align 8
  %44 = bitcast i32* %43 to i8*
  %45 = call i32 @nfsd_readlink(i32 %39, i32 %42, i8* %44, i32* %8)
  store i32 %45, i32* %6, align 4
  %46 = load i32, i32* %6, align 4
  %47 = load i32, i32* @nfserr_isdir, align 4
  %48 = icmp eq i32 %46, %47
  br i1 %48, label %49, label %51

49:                                               ; preds = %36
  %50 = load i32, i32* @nfserr_inval, align 4
  store i32 %50, i32* %6, align 4
  br label %51

51:                                               ; preds = %49, %36
  %52 = load i32, i32* %6, align 4
  %53 = icmp ne i32 %52, 0
  br i1 %53, label %54, label %59

54:                                               ; preds = %51
  %55 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %56 = load i32, i32* %12, align 4
  %57 = call i32 @xdr_truncate_encode(%struct.xdr_stream* %55, i32 %56)
  %58 = load i32, i32* %6, align 4
  store i32 %58, i32* %4, align 4
  br label %90

59:                                               ; preds = %51
  %60 = load i32, i32* %8, align 4
  %61 = call i32 @htonl(i32 %60)
  store i32 %61, i32* %9, align 4
  %62 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %63 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %62, i32 0, i32 0
  %64 = load %struct.TYPE_2__*, %struct.TYPE_2__** %63, align 8
  %65 = load i32, i32* %12, align 4
  %66 = call i32 @write_bytes_to_xdr_buf(%struct.TYPE_2__* %64, i32 %65, i32* %9, i32 4)
  %67 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %68 = load i32, i32* %12, align 4
  %69 = add nsw i32 %68, 4
  %70 = load i32, i32* %8, align 4
  %71 = call i32 @ALIGN(i32 %70, i32 4)
  %72 = add nsw i32 %69, %71
  %73 = call i32 @xdr_truncate_encode(%struct.xdr_stream* %67, i32 %72)
  %74 = load i32, i32* %8, align 4
  %75 = and i32 %74, 3
  %76 = icmp ne i32 %75, 0
  br i1 %76, label %77, label %89

77:                                               ; preds = %59
  %78 = load %struct.xdr_stream*, %struct.xdr_stream** %11, align 8
  %79 = getelementptr inbounds %struct.xdr_stream, %struct.xdr_stream* %78, i32 0, i32 0
  %80 = load %struct.TYPE_2__*, %struct.TYPE_2__** %79, align 8
  %81 = load i32, i32* %12, align 4
  %82 = add nsw i32 %81, 4
  %83 = load i32, i32* %8, align 4
  %84 = add nsw i32 %82, %83
  %85 = load i32, i32* %8, align 4
  %86 = and i32 %85, 3
  %87 = sub nsw i32 4, %86
  %88 = call i32 @write_bytes_to_xdr_buf(%struct.TYPE_2__* %80, i32 %84, i32* %10, i32 %87)
  br label %89

89:                                               ; preds = %77, %59
  store i32 0, i32* %4, align 4
  br label %90

90:                                               ; preds = %89, %54, %34, %25
  %91 = load i32, i32* %4, align 4
  ret i32 %91
}

declare dso_local i32* @xdr_reserve_space(%struct.xdr_stream*, i32) #1

declare dso_local i32 @nfsd_readlink(i32, i32, i8*, i32*) #1

declare dso_local i32 @xdr_truncate_encode(%struct.xdr_stream*, i32) #1

declare dso_local i32 @htonl(i32) #1

declare dso_local i32 @write_bytes_to_xdr_buf(%struct.TYPE_2__*, i32, i32*, i32) #1

declare dso_local i32 @ALIGN(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
