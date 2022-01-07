; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_nlm_xdr_enc_testres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_nlm_xdr_enc_testres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nlm_res = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nlm_xdr_enc_testres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xdr_enc_testres(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
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
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @encode_nlm_stat(%struct.xdr_stream* %14, i32 %17)
  %19 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %20 = load %struct.nlm_res*, %struct.nlm_res** %7, align 8
  %21 = call i32 @encode_nlm_testrply(%struct.xdr_stream* %19, %struct.nlm_res* %20)
  ret void
}

declare dso_local i32 @encode_cookie(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_nlm_stat(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_nlm_testrply(%struct.xdr_stream*, %struct.nlm_res*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
