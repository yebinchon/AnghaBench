; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_get_gssinfo.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth.c_rpcauth_get_gssinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpcsec_gss_info = type { i32 }
%struct.rpc_authops = type { i32 (i32, %struct.rpcsec_gss_info*)* }

@ENOENT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rpcauth_get_gssinfo(i32 %0, %struct.rpcsec_gss_info* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca %struct.rpcsec_gss_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rpc_authops*, align 8
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store %struct.rpcsec_gss_info* %1, %struct.rpcsec_gss_info** %5, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @pseudoflavor_to_flavor(i32 %9)
  store i32 %10, i32* %6, align 4
  %11 = load i32, i32* %6, align 4
  %12 = call %struct.rpc_authops* @rpcauth_get_authops(i32 %11)
  store %struct.rpc_authops* %12, %struct.rpc_authops** %7, align 8
  %13 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %14 = icmp eq %struct.rpc_authops* %13, null
  br i1 %14, label %15, label %18

15:                                               ; preds = %2
  %16 = load i32, i32* @ENOENT, align 4
  %17 = sub nsw i32 0, %16
  store i32 %17, i32* %3, align 4
  br label %36

18:                                               ; preds = %2
  %19 = load i32, i32* @ENOENT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %8, align 4
  %21 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %22 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %21, i32 0, i32 0
  %23 = load i32 (i32, %struct.rpcsec_gss_info*)*, i32 (i32, %struct.rpcsec_gss_info*)** %22, align 8
  %24 = icmp ne i32 (i32, %struct.rpcsec_gss_info*)* %23, null
  br i1 %24, label %25, label %32

25:                                               ; preds = %18
  %26 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %27 = getelementptr inbounds %struct.rpc_authops, %struct.rpc_authops* %26, i32 0, i32 0
  %28 = load i32 (i32, %struct.rpcsec_gss_info*)*, i32 (i32, %struct.rpcsec_gss_info*)** %27, align 8
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.rpcsec_gss_info*, %struct.rpcsec_gss_info** %5, align 8
  %31 = call i32 %28(i32 %29, %struct.rpcsec_gss_info* %30)
  store i32 %31, i32* %8, align 4
  br label %32

32:                                               ; preds = %25, %18
  %33 = load %struct.rpc_authops*, %struct.rpc_authops** %7, align 8
  %34 = call i32 @rpcauth_put_authops(%struct.rpc_authops* %33)
  %35 = load i32, i32* %8, align 4
  store i32 %35, i32* %3, align 4
  br label %36

36:                                               ; preds = %32, %15
  %37 = load i32, i32* %3, align 4
  ret i32 %37
}

declare dso_local i32 @pseudoflavor_to_flavor(i32) #1

declare dso_local %struct.rpc_authops* @rpcauth_get_authops(i32) #1

declare dso_local i32 @rpcauth_put_authops(%struct.rpc_authops*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
