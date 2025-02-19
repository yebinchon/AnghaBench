; ModuleID = '/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_mnt_xdr_dec_mountres.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nfs/extr_mount_clnt.c_mnt_xdr_dec_mountres.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_rqst = type { i32 }
%struct.xdr_stream = type { i32 }
%struct.mountres = type { i64 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_rqst*, %struct.xdr_stream*, i8*)* @mnt_xdr_dec_mountres to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @mnt_xdr_dec_mountres(%struct.rpc_rqst* %0, %struct.xdr_stream* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpc_rqst*, align 8
  %6 = alloca %struct.xdr_stream*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.mountres*, align 8
  %9 = alloca i32, align 4
  store %struct.rpc_rqst* %0, %struct.rpc_rqst** %5, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %6, align 8
  store i8* %2, i8** %7, align 8
  %10 = load i8*, i8** %7, align 8
  %11 = bitcast i8* %10 to %struct.mountres*
  store %struct.mountres* %11, %struct.mountres** %8, align 8
  %12 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %13 = load %struct.mountres*, %struct.mountres** %8, align 8
  %14 = call i32 @decode_status(%struct.xdr_stream* %12, %struct.mountres* %13)
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %22, label %17

17:                                               ; preds = %3
  %18 = load %struct.mountres*, %struct.mountres** %8, align 8
  %19 = getelementptr inbounds %struct.mountres, %struct.mountres* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br label %22

22:                                               ; preds = %17, %3
  %23 = phi i1 [ true, %3 ], [ %21, %17 ]
  %24 = zext i1 %23 to i32
  %25 = call i64 @unlikely(i32 %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %29

27:                                               ; preds = %22
  %28 = load i32, i32* %9, align 4
  store i32 %28, i32* %4, align 4
  br label %33

29:                                               ; preds = %22
  %30 = load %struct.xdr_stream*, %struct.xdr_stream** %6, align 8
  %31 = load %struct.mountres*, %struct.mountres** %8, align 8
  %32 = call i32 @decode_fhandle(%struct.xdr_stream* %30, %struct.mountres* %31)
  store i32 %32, i32* %4, align 4
  br label %33

33:                                               ; preds = %29, %27
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

declare dso_local i32 @decode_status(%struct.xdr_stream*, %struct.mountres*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @decode_fhandle(%struct.xdr_stream*, %struct.mountres*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
