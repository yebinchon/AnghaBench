; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_link_res = type { i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_link(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_link_res*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs4_link_res*
  store %struct.nfs4_link_res* %11, %struct.nfs4_link_res** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %70

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %19, i32 0, i32 4
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %70

26:                                               ; preds = %17
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_putfh(%struct.xdr_stream* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %70

32:                                               ; preds = %26
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %34 = call i32 @decode_savefh(%struct.xdr_stream* %33)
  store i32 %34, i32* %9, align 4
  %35 = load i32, i32* %9, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %32
  br label %70

38:                                               ; preds = %32
  %39 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %40 = call i32 @decode_putfh(%struct.xdr_stream* %39)
  store i32 %40, i32* %9, align 4
  %41 = load i32, i32* %9, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %70

44:                                               ; preds = %38
  %45 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %46 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %7, align 8
  %47 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %46, i32 0, i32 3
  %48 = call i32 @decode_link(%struct.xdr_stream* %45, i32* %47)
  store i32 %48, i32* %9, align 4
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %44
  br label %70

52:                                               ; preds = %44
  %53 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %54 = call i32 @decode_restorefh(%struct.xdr_stream* %53)
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %58

57:                                               ; preds = %52
  br label %70

58:                                               ; preds = %52
  %59 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %60 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %7, align 8
  %61 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %60, i32 0, i32 2
  %62 = load i32, i32* %61, align 4
  %63 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %7, align 8
  %64 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %63, i32 0, i32 1
  %65 = load i32, i32* %64, align 4
  %66 = load %struct.nfs4_link_res*, %struct.nfs4_link_res** %7, align 8
  %67 = getelementptr inbounds %struct.nfs4_link_res, %struct.nfs4_link_res* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i32 @decode_getfattr_label(%struct.xdr_stream* %59, i32 %62, i32 %65, i32 %68)
  br label %70

70:                                               ; preds = %58, %57, %51, %43, %37, %31, %25, %16
  %71 = load i32, i32* %9, align 4
  ret i32 %71
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_savefh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_link(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @decode_restorefh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_getfattr_label(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
