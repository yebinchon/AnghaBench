; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_create_sock.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_create_sock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }
%struct.rpc_xprt = type { i32 }
%struct.sock_xprt = type { %struct.file* }
%struct.file = type { i32 }

@.str = private unnamed_addr constant [51 x i8] c"RPC:       can't create %d transport socket (%d).\0A\00", align 1
@O_NONBLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.socket* (%struct.rpc_xprt*, %struct.sock_xprt*, i32, i32, i32, i32)* @xs_create_sock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.socket* @xs_create_sock(%struct.rpc_xprt* %0, %struct.sock_xprt* %1, i32 %2, i32 %3, i32 %4, i32 %5) #0 {
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.rpc_xprt*, align 8
  %9 = alloca %struct.sock_xprt*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.file*, align 8
  %15 = alloca %struct.socket*, align 8
  %16 = alloca i32, align 4
  store %struct.rpc_xprt* %0, %struct.rpc_xprt** %8, align 8
  store %struct.sock_xprt* %1, %struct.sock_xprt** %9, align 8
  store i32 %2, i32* %10, align 4
  store i32 %3, i32* %11, align 4
  store i32 %4, i32* %12, align 4
  store i32 %5, i32* %13, align 4
  %17 = load %struct.rpc_xprt*, %struct.rpc_xprt** %8, align 8
  %18 = getelementptr inbounds %struct.rpc_xprt, %struct.rpc_xprt* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load i32, i32* %11, align 4
  %22 = load i32, i32* %12, align 4
  %23 = call i32 @__sock_create(i32 %19, i32 %20, i32 %21, i32 %22, %struct.socket** %15, i32 1)
  store i32 %23, i32* %16, align 4
  %24 = load i32, i32* %16, align 4
  %25 = icmp slt i32 %24, 0
  br i1 %25, label %26, label %31

26:                                               ; preds = %6
  %27 = load i32, i32* %12, align 4
  %28 = load i32, i32* %16, align 4
  %29 = sub nsw i32 0, %28
  %30 = call i32 @dprintk(i8* getelementptr inbounds ([51 x i8], [51 x i8]* @.str, i64 0, i64 0), i32 %27, i32 %29)
  br label %64

31:                                               ; preds = %6
  %32 = load i32, i32* %10, align 4
  %33 = load %struct.socket*, %struct.socket** %15, align 8
  %34 = call i32 @xs_reclassify_socket(i32 %32, %struct.socket* %33)
  %35 = load i32, i32* %13, align 4
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %37, label %40

37:                                               ; preds = %31
  %38 = load %struct.socket*, %struct.socket** %15, align 8
  %39 = call i32 @xs_sock_set_reuseport(%struct.socket* %38)
  br label %40

40:                                               ; preds = %37, %31
  %41 = load %struct.sock_xprt*, %struct.sock_xprt** %9, align 8
  %42 = load %struct.socket*, %struct.socket** %15, align 8
  %43 = call i32 @xs_bind(%struct.sock_xprt* %41, %struct.socket* %42)
  store i32 %43, i32* %16, align 4
  %44 = load i32, i32* %16, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %40
  %47 = load %struct.socket*, %struct.socket** %15, align 8
  %48 = call i32 @sock_release(%struct.socket* %47)
  br label %64

49:                                               ; preds = %40
  %50 = load %struct.socket*, %struct.socket** %15, align 8
  %51 = load i32, i32* @O_NONBLOCK, align 4
  %52 = call %struct.file* @sock_alloc_file(%struct.socket* %50, i32 %51, i32* null)
  store %struct.file* %52, %struct.file** %14, align 8
  %53 = load %struct.file*, %struct.file** %14, align 8
  %54 = call i64 @IS_ERR(%struct.file* %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %59

56:                                               ; preds = %49
  %57 = load %struct.file*, %struct.file** %14, align 8
  %58 = call %struct.socket* @ERR_CAST(%struct.file* %57)
  store %struct.socket* %58, %struct.socket** %7, align 8
  br label %67

59:                                               ; preds = %49
  %60 = load %struct.file*, %struct.file** %14, align 8
  %61 = load %struct.sock_xprt*, %struct.sock_xprt** %9, align 8
  %62 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %61, i32 0, i32 0
  store %struct.file* %60, %struct.file** %62, align 8
  %63 = load %struct.socket*, %struct.socket** %15, align 8
  store %struct.socket* %63, %struct.socket** %7, align 8
  br label %67

64:                                               ; preds = %46, %26
  %65 = load i32, i32* %16, align 4
  %66 = call %struct.socket* @ERR_PTR(i32 %65)
  store %struct.socket* %66, %struct.socket** %7, align 8
  br label %67

67:                                               ; preds = %64, %59, %56
  %68 = load %struct.socket*, %struct.socket** %7, align 8
  ret %struct.socket* %68
}

declare dso_local i32 @__sock_create(i32, i32, i32, i32, %struct.socket**, i32) #1

declare dso_local i32 @dprintk(i8*, i32, i32) #1

declare dso_local i32 @xs_reclassify_socket(i32, %struct.socket*) #1

declare dso_local i32 @xs_sock_set_reuseport(%struct.socket*) #1

declare dso_local i32 @xs_bind(%struct.sock_xprt*, %struct.socket*) #1

declare dso_local i32 @sock_release(%struct.socket*) #1

declare dso_local %struct.file* @sock_alloc_file(%struct.socket*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.file*) #1

declare dso_local %struct.socket* @ERR_CAST(%struct.file*) #1

declare dso_local %struct.socket* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
