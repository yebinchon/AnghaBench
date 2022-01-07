; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_openres = type { i64, i32, i32, i32, i32, i32, i64, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_open(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
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
  br label %83

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %20 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %19, i32 0, i32 8
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %83

26:                                               ; preds = %17
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_putfh(%struct.xdr_stream* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %83

32:                                               ; preds = %26
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %34 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %35 = call i32 @decode_open(%struct.xdr_stream* %33, %struct.nfs_openres* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %38, label %39

38:                                               ; preds = %32
  br label %83

39:                                               ; preds = %32
  %40 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %41 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %42 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %41, i32 0, i32 7
  %43 = call i32 @decode_getfh(%struct.xdr_stream* %40, i32* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %39
  br label %83

47:                                               ; preds = %39
  %48 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %49 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %48, i32 0, i32 6
  %50 = load i64, i64* %49, align 8
  %51 = icmp ne i64 %50, 0
  br i1 %51, label %52, label %59

52:                                               ; preds = %47
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %54 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %55 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %54, i32 0, i32 5
  %56 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %57 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %56, i32 0, i32 4
  %58 = call i32 @decode_access(%struct.xdr_stream* %53, i32* %55, i32* %57)
  br label %59

59:                                               ; preds = %52, %47
  %60 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %61 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %62 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %61, i32 0, i32 3
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %65 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %64, i32 0, i32 2
  %66 = load i32, i32* %65, align 4
  %67 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %68 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 8
  %70 = call i32 @decode_getfattr_label(%struct.xdr_stream* %60, i32 %63, i32 %66, i32 %69)
  %71 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %72 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %82

75:                                               ; preds = %59
  %76 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %77 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %78 = load %struct.nfs_openres*, %struct.nfs_openres** %7, align 8
  %79 = getelementptr inbounds %struct.nfs_openres, %struct.nfs_openres* %78, i32 0, i32 0
  %80 = load i64, i64* %79, align 8
  %81 = call i32 @decode_layoutget(%struct.xdr_stream* %76, %struct.rpc_rqst* %77, i64 %80)
  br label %82

82:                                               ; preds = %75, %59
  br label %83

83:                                               ; preds = %82, %46, %38, %31, %25, %16
  %84 = load i32, i32* %9, align 4
  ret i32 %84
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_open(%struct.xdr_stream*, %struct.nfs_openres*) #1

declare dso_local i32 @decode_getfh(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @decode_access(%struct.xdr_stream*, i32*, i32*) #1

declare dso_local i32 @decode_getfattr_label(%struct.xdr_stream*, i32, i32, i32) #1

declare dso_local i32 @decode_layoutget(%struct.xdr_stream*, %struct.rpc_rqst*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
