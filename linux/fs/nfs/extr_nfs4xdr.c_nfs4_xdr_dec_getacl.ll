; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_getacl.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_getacl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_getaclres = type { i32, i32* }
%struct.compound_hdr = type { i32 }

@PAGE_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_getacl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_getacl(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_getaclres*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  %10 = alloca i8*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = bitcast i8* %11 to %struct.nfs_getaclres*
  store %struct.nfs_getaclres* %12, %struct.nfs_getaclres** %7, align 8
  %13 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %14 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = icmp ne i32* %15, null
  br i1 %16, label %17, label %26

17:                                               ; preds = %3
  %18 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %19 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %18, i32 0, i32 1
  %20 = load i32*, i32** %19, align 8
  %21 = call i8* @page_address(i32* %20)
  store i8* %21, i8** %10, align 8
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load i8*, i8** %10, align 8
  %24 = load i32, i32* @PAGE_SIZE, align 4
  %25 = call i32 @xdr_set_scratch_buffer(%struct.xdr_stream* %22, i8* %23, i32 %24)
  br label %26

26:                                               ; preds = %17, %3
  %27 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %28 = call i32 @decode_compound_hdr(%struct.xdr_stream* %27, %struct.compound_hdr* %8)
  store i32 %28, i32* %9, align 4
  %29 = load i32, i32* %9, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  br label %52

32:                                               ; preds = %26
  %33 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %34 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %35 = getelementptr inbounds %struct.nfs_getaclres, %struct.nfs_getaclres* %34, i32 0, i32 0
  %36 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %37 = call i32 @decode_sequence(%struct.xdr_stream* %33, i32* %35, %struct.rpc_rqst* %36)
  store i32 %37, i32* %9, align 4
  %38 = load i32, i32* %9, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %32
  br label %52

41:                                               ; preds = %32
  %42 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %43 = call i32 @decode_putfh(%struct.xdr_stream* %42)
  store i32 %43, i32* %9, align 4
  %44 = load i32, i32* %9, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %47

46:                                               ; preds = %41
  br label %52

47:                                               ; preds = %41
  %48 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %49 = load %struct.rpc_rqst*, %struct.rpc_rqst** %4, align 8
  %50 = load %struct.nfs_getaclres*, %struct.nfs_getaclres** %7, align 8
  %51 = call i32 @decode_getacl(%struct.xdr_stream* %48, %struct.rpc_rqst* %49, %struct.nfs_getaclres* %50)
  store i32 %51, i32* %9, align 4
  br label %52

52:                                               ; preds = %47, %46, %40, %31
  %53 = load i32, i32* %9, align 4
  ret i32 %53
}

declare dso_local i8* @page_address(i32*) #1

declare dso_local i32 @xdr_set_scratch_buffer(%struct.xdr_stream*, i8*, i32) #1

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_sequence(%struct.xdr_stream*, i32*, %struct.rpc_rqst*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_getacl(%struct.xdr_stream*, %struct.rpc_rqst*, %struct.nfs_getaclres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
