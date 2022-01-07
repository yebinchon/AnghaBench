; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_recall_args.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_callback_xdr.c_decode_recall_args.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.svc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.cb_recallargs = type { i32, i32, i32 }

@NFS4ERR_RESOURCE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.svc_rqst*, %struct.xdr_stream*, i8*)* @decode_recall_args to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @decode_recall_args(%struct.svc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.svc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.cb_recallargs*, align 8
  %9 = alloca i64*, align 8
  %10 = alloca i64, align 8
  store %struct.svc_rqst* %0, %struct.svc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %11 = load i8*, i8** %7, align 8
  %12 = bitcast i8* %11 to %struct.cb_recallargs*
  store %struct.cb_recallargs* %12, %struct.cb_recallargs** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %14 = load %struct.cb_recallargs*, %struct.cb_recallargs** %8, align 8
  %15 = getelementptr inbounds %struct.cb_recallargs, %struct.cb_recallargs* %14, i32 0, i32 2
  %16 = call i64 @decode_delegation_stateid(%struct.xdr_stream* %13, i32* %15)
  store i64 %16, i64* %10, align 8
  %17 = load i64, i64* %10, align 8
  %18 = icmp ne i64 %17, 0
  %19 = zext i1 %18 to i32
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %24

22:                                               ; preds = %3
  %23 = load i64, i64* %10, align 8
  store i64 %23, i64* %4, align 8
  br label %45

24:                                               ; preds = %3
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %26 = call i64* @xdr_inline_decode(%struct.xdr_stream* %25, i32 4)
  store i64* %26, i64** %9, align 8
  %27 = load i64*, i64** %9, align 8
  %28 = icmp eq i64* %27, null
  %29 = zext i1 %28 to i32
  %30 = call i64 @unlikely(i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %35

32:                                               ; preds = %24
  %33 = load i32, i32* @NFS4ERR_RESOURCE, align 4
  %34 = call i64 @htonl(i32 %33)
  store i64 %34, i64* %4, align 8
  br label %45

35:                                               ; preds = %24
  %36 = load i64*, i64** %9, align 8
  %37 = load i64, i64* %36, align 8
  %38 = call i32 @ntohl(i64 %37)
  %39 = load %struct.cb_recallargs*, %struct.cb_recallargs** %8, align 8
  %40 = getelementptr inbounds %struct.cb_recallargs, %struct.cb_recallargs* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %42 = load %struct.cb_recallargs*, %struct.cb_recallargs** %8, align 8
  %43 = getelementptr inbounds %struct.cb_recallargs, %struct.cb_recallargs* %42, i32 0, i32 0
  %44 = call i64 @decode_fh(%struct.xdr_stream* %41, i32* %43)
  store i64 %44, i64* %4, align 8
  br label %45

45:                                               ; preds = %35, %32, %22
  %46 = load i64, i64* %4, align 8
  ret i64 %46
}

declare dso_local i64 @decode_delegation_stateid(%struct.xdr_stream*, i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i64 @htonl(i32) #1

declare dso_local i32 @ntohl(i64) #1

declare dso_local i64 @decode_fh(%struct.xdr_stream*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
