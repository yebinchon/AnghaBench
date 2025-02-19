; ModuleID = '/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_nlm_xdr_enc_cancargs.c'
source_filename = "/home/carl/AnghaBench/linux/fs/lockd/extr_clntxdr.c_nlm_xdr_enc_cancargs.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nlm_args = type { i32, i32, %struct.nlm_lock }
%struct.nlm_lock = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }

@F_WRLCK = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nlm_xdr_enc_cancargs to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nlm_xdr_enc_cancargs(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nlm_args*, align 8
  %8 = alloca %struct.nlm_lock*, align 8
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %9 = load i8*, i8** %6, align 8
  %10 = bitcast i8* %9 to %struct.nlm_args*
  store %struct.nlm_args* %10, %struct.nlm_args** %7, align 8
  %11 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %12 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %11, i32 0, i32 2
  store %struct.nlm_lock* %12, %struct.nlm_lock** %8, align 8
  %13 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %14 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %15 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %14, i32 0, i32 1
  %16 = call i32 @encode_cookie(%struct.xdr_stream* %13, i32* %15)
  %17 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %18 = load %struct.nlm_args*, %struct.nlm_args** %7, align 8
  %19 = getelementptr inbounds %struct.nlm_args, %struct.nlm_args* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 8
  %21 = call i32 @encode_bool(%struct.xdr_stream* %17, i32 %20)
  %22 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %23 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %24 = getelementptr inbounds %struct.nlm_lock, %struct.nlm_lock* %23, i32 0, i32 0
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* @F_WRLCK, align 8
  %28 = icmp eq i64 %26, %27
  %29 = zext i1 %28 to i32
  %30 = call i32 @encode_bool(%struct.xdr_stream* %22, i32 %29)
  %31 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %32 = load %struct.nlm_lock*, %struct.nlm_lock** %8, align 8
  %33 = call i32 @encode_nlm_lock(%struct.xdr_stream* %31, %struct.nlm_lock* %32)
  ret void
}

declare dso_local i32 @encode_cookie(%struct.xdr_stream*, i32*) #1

declare dso_local i32 @encode_bool(%struct.xdr_stream*, i32) #1

declare dso_local i32 @encode_nlm_lock(%struct.xdr_stream*, %struct.nlm_lock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
