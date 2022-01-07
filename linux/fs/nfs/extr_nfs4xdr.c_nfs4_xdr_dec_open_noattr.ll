; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_noattr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_noattr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_openres = type { i64, i32, i32, i32, i32, i64, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_open_noattr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_open_noattr(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_openres*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs_openres*
  store %struct.nfs_openres* %11, %struct.nfs_openres** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %72

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %19, i32 0, i32 6
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %72

26:                                               ; preds = %17
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_putfh(%struct.xdr_stream* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %72

32:                                               ; preds = %26
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %34 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %35 = call i32 @decode_open(%struct.xdr_stream* %33, %struct.nfs_openres* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %72

39:                                               ; preds = %32
  %40 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %41 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %40, i32 0, i32 5
  %42 = load i64, i64* %41, align 8
  %43 = icmp ne i64 %42, 0
  br i1 %43, label %44, label %51

44:                                               ; preds = %39
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %46 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %47 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %46, i32 0, i32 4
  %48 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %48, i32 0, i32 3
  %50 = call i32 @decode_access(%struct.xdr_stream* %45, i32* %47, i32* %49)
  br label %51

51:                                               ; preds = %44, %39
  %52 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %53 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %54 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %53, i32 0, i32 2
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 8
  %59 = call i32 @decode_getfattr(%struct.xdr_stream* %52, i32 %55, i32 %58)
  %60 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %61 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %60, i32 0, i32 0
  %62 = load i64, i64* %61, align 8
  %63 = icmp ne i64 %62, 0
  br i1 %63, label %64, label %71

64:                                               ; preds = %51
  %65 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %66 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %67 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %68 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = call i32 @decode_layoutget(%struct.xdr_stream* %65, %struct.rpc_rqst* %66, i64 %69)
  br label %71

71:                                               ; preds = %64, %51
  br label %72

72:                                               ; preds = %71, %38, %31, %25, %16
  %73 = load i32, i32* %9, align 4
  ret i32 %73
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_open(%struct.xdr_stream*, %struct.nfs_openres*) #1

declare dso_local i32 @decode_access(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_getfattr(%struct.xdr_stream*, i32, i32) #1

declare dso_local i32 @decode_layoutget(%struct.xdr_stream*, %struct.rpc_rqst*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
