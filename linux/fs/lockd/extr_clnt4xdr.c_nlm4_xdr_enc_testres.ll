; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_nlm4_xdr_enc_testres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clnt4xdr.c_nlm4_xdr_enc_testres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nlm_res = type { i64, i32 }

@nlm_lck_denied = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nlm4_xdr_enc_testres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm4_xdr_enc_testres(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlm_res*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %8 = load i8*, i8** %6, align 8
  %9 = bitcast i8* %8 to %struct.nlm_res*
  store %struct.nlm_res* %9, %struct.nlm_res** %7, align 8
  %10 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %11 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %11, i32 0, i32 1
  %13 = call i32 @encode_cookie(%struct.xdr_stream* %10, i32* %12)
  %14 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %15 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %16 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %15, i32 0, i32 0
  %17 = load i64, i64* %16, align 8
  %18 = call i32 @encode_nlm4_stat(%struct.xdr_stream* %14, i64 %17)
  %19 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %20 = getelementptr inbounds %struct.nlm_res, %struct.nlm_res* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @nlm_lck_denied, align 8
  %23 = icmp eq i64 %21, %22
  br i1 %23, label %24, label %28

24:                                               ; preds = %3
  %25 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %26 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %27 = call i32 @encode_nlm4_holder(%struct.xdr_stream* %25, %struct.nlm_res* %26)
  br label %28

28:                                               ; preds = %24, %3
  ret void
}

declare dso_local i32 @encode_cookie(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_nlm4_stat(%struct.xdr_stream*, i64) #1

declare dso_local i32 @encode_nlm4_holder(%struct.xdr_stream*, %struct.nlm_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
