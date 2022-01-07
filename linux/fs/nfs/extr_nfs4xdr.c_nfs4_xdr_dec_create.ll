; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs4_create_res = type { i32, i32, i32, i32, i32, i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_create(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs4_create_res*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs4_create_res*
  store %struct.nfs4_create_res* %11, %struct.nfs4_create_res** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %61

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %20 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %19, i32 0, i32 5
  %21 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %22 = call i32 @decode_sequence(%struct.xdr_stream* %18, i32* %20, %struct.rpc_rqst* %21)
  store i32 %22, i32* %9, align 4
  %23 = load i32, i32* %9, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %17
  br label %61

26:                                               ; preds = %17
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_putfh(%struct.xdr_stream* %27)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %61

32:                                               ; preds = %26
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %34 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %35 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %34, i32 0, i32 4
  %36 = call i32 @decode_create(%struct.xdr_stream* %33, i32* %35)
  store i32 %36, i32* %9, align 4
  %37 = load i32, i32* %9, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %40

39:                                               ; preds = %32
  br label %61

40:                                               ; preds = %32
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %42 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %43 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %42, i32 0, i32 3
  %44 = load i32, i32* %43, align 4
  %45 = call i32 @decode_getfh(%struct.xdr_stream* %41, i32 %44)
  store i32 %45, i32* %9, align 4
  %46 = load i32, i32* %9, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %40
  br label %61

49:                                               ; preds = %40
  %50 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %51 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %52 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %51, i32 0, i32 2
  %53 = load i32, i32* %52, align 4
  %54 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %55 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %54, i32 0, i32 1
  %56 = load i32, i32* %55, align 4
  %57 = load %struct.nfs4_create_res*, %struct.nfs4_create_res** %7, align 8
  %58 = getelementptr inbounds %struct.nfs4_create_res, %struct.nfs4_create_res* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = call i32 @decode_getfattr_label(%struct.xdr_stream* %50, i32 %53, i32 %56, i32 %59)
  br label %61

61:                                               ; preds = %49, %48, %39, %31, %25, %16
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_create(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @decode_getfh(%struct.xdr_stream*, i32) #1

declare dso_local i32 @decode_getfattr_label(%struct.xdr_stream*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
