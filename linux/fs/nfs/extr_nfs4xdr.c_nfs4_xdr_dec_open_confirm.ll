; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_confirm.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_nfs4xdr.c_nfs4_xdr_dec_open_confirm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.nfs_open_confirmres = type { i32 }
%struct.compound_hdr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @nfs4_xdr_dec_open_confirm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @nfs4_xdr_dec_open_confirm(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca %struct.rpc_rqst*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca %struct.nfs_open_confirmres*, align 8
  %8 = alloca %struct.compound_hdr, align 4
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  store i8* %2, i8** %6, align 8
  %10 = load i8*, i8** %6, align 8
  %11 = bitcast i8* %10 to %struct.nfs_open_confirmres*
  store %struct.nfs_open_confirmres* %11, %struct.nfs_open_confirmres** %7, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %13 = call i32 @decode_compound_hdr(%struct.xdr_stream* %12, %struct.compound_hdr* %8)
  store i32 %13, i32* %9, align 4
  %14 = load i32, i32* %9, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %27

17:                                               ; preds = %3
  %18 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %19 = call i32 @decode_putfh(%struct.xdr_stream* %18)
  store i32 %19, i32* %9, align 4
  %20 = load i32, i32* %9, align 4
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %17
  br label %27

23:                                               ; preds = %17
  %24 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %25 = load %struct.nfs_open_confirmres*, %struct.nfs_open_confirmres** %7, align 8
  %26 = call i32 @decode_open_confirm(%struct.xdr_stream* %24, %struct.nfs_open_confirmres* %25)
  store i32 %26, i32* %9, align 4
  br label %27

27:                                               ; preds = %23, %22, %16
  %28 = load i32, i32* %9, align 4
  ret i32 %28
}

declare dso_local i32 @decode_compound_hdr(%struct.xdr_stream*, %struct.compound_hdr*) #1

declare dso_local i32 @decode_putfh(%struct.xdr_stream*) #1

declare dso_local i32 @decode_open_confirm(%struct.xdr_stream*, %struct.nfs_open_confirmres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
