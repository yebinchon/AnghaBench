; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_auth_unix.c_unx_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rpc_task = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { %struct.rpc_auth* }
%struct.rpc_auth = type { i8*, i8*, i8* }
%struct.xdr_stream = type { i32 }

@EIO = common dso_local global i32 0, align 4
@RPC_MAX_AUTH_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rpc_task*, %struct.xdr_stream*)* @unx_validate to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @unx_validate(%struct.rpc_task* %0, %struct.xdr_stream* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rpc_task*, align 8
  %5 = alloca %struct.xdr_stream*, align 8
  %6 = alloca %struct.rpc_auth*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  store %struct.rpc_task* %0, %struct.rpc_task** %4, align 8
  store %struct.xdr_stream* %1, %struct.xdr_stream** %5, align 8
  %9 = load %struct.rpc_task*, %struct.rpc_task** %4, align 8
  %10 = getelementptr inbounds %struct.rpc_task, %struct.rpc_task* %9, i32 0, i32 0
  %11 = load %struct.TYPE_4__*, %struct.TYPE_4__** %10, align 8
  %12 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %11, i32 0, i32 0
  %13 = load %struct.TYPE_3__*, %struct.TYPE_3__** %12, align 8
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  %15 = load %struct.rpc_auth*, %struct.rpc_auth** %14, align 8
  store %struct.rpc_auth* %15, %struct.rpc_auth** %6, align 8
  %16 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %17 = call i32* @xdr_inline_decode(%struct.xdr_stream* %16, i32 8)
  store i32* %17, i32** %7, align 8
  %18 = load i32*, i32** %7, align 8
  %19 = icmp ne i32* %18, null
  br i1 %19, label %23, label %20

20:                                               ; preds = %2
  %21 = load i32, i32* @EIO, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %3, align 4
  br label %65

23:                                               ; preds = %2
  %24 = load i32*, i32** %7, align 8
  %25 = getelementptr inbounds i32, i32* %24, i32 1
  store i32* %25, i32** %7, align 8
  %26 = load i32, i32* %24, align 4
  switch i32 %26, label %28 [
    i32 130, label %27
    i32 128, label %27
    i32 129, label %27
  ]

27:                                               ; preds = %23, %23, %23
  br label %31

28:                                               ; preds = %23
  %29 = load i32, i32* @EIO, align 4
  %30 = sub nsw i32 0, %29
  store i32 %30, i32* %3, align 4
  br label %65

31:                                               ; preds = %27
  %32 = load i32*, i32** %7, align 8
  %33 = call i32 @be32_to_cpup(i32* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = load i32, i32* @RPC_MAX_AUTH_SIZE, align 4
  %36 = icmp sgt i32 %34, %35
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load i32, i32* @EIO, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %3, align 4
  br label %65

40:                                               ; preds = %31
  %41 = load %struct.xdr_stream*, %struct.xdr_stream** %5, align 8
  %42 = load i32, i32* %8, align 4
  %43 = call i32* @xdr_inline_decode(%struct.xdr_stream* %41, i32 %42)
  store i32* %43, i32** %7, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = icmp ne i32* %44, null
  br i1 %45, label %49, label %46

46:                                               ; preds = %40
  %47 = load i32, i32* @EIO, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %3, align 4
  br label %65

49:                                               ; preds = %40
  %50 = load i32, i32* %8, align 4
  %51 = call i8* @XDR_QUADLEN(i32 %50)
  %52 = getelementptr i8, i8* %51, i64 2
  %53 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %54 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %53, i32 0, i32 2
  store i8* %52, i8** %54, align 8
  %55 = load i32, i32* %8, align 4
  %56 = call i8* @XDR_QUADLEN(i32 %55)
  %57 = getelementptr i8, i8* %56, i64 2
  %58 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %59 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %58, i32 0, i32 1
  store i8* %57, i8** %59, align 8
  %60 = load i32, i32* %8, align 4
  %61 = call i8* @XDR_QUADLEN(i32 %60)
  %62 = getelementptr i8, i8* %61, i64 2
  %63 = load %struct.rpc_auth*, %struct.rpc_auth** %6, align 8
  %64 = getelementptr inbounds %struct.rpc_auth, %struct.rpc_auth* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  store i32 0, i32* %3, align 4
  br label %65

65:                                               ; preds = %49, %46, %37, %28, %20
  %66 = load i32, i32* %3, align 4
  ret i32 %66
}

declare dso_local i32* @xdr_inline_decode(%struct.xdr_stream*, i32) #1

declare dso_local i32 @be32_to_cpup(i32*) #1

declare dso_local i8* @XDR_QUADLEN(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
