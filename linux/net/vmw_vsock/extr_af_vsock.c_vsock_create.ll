; ModuleID = '/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/vmw_vsock/extr_af_vsock.c_vsock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i32, i32, i32* }

@EINVAL = common dso_local global i32 0, align 4
@PF_VSOCK = common dso_local global i32 0, align 4
@EPROTONOSUPPORT = common dso_local global i32 0, align 4
@vsock_dgram_ops = common dso_local global i32 0, align 4
@vsock_stream_ops = common dso_local global i32 0, align 4
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @vsock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @vsock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %10 = load %struct.socket*, %struct.socket** %7, align 8
  %11 = icmp ne %struct.socket* %10, null
  br i1 %11, label %15, label %12

12:                                               ; preds = %4
  %13 = load i32, i32* @EINVAL, align 4
  %14 = sub nsw i32 0, %13
  store i32 %14, i32* %5, align 4
  br label %54

15:                                               ; preds = %4
  %16 = load i32, i32* %8, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %25

18:                                               ; preds = %15
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* @PF_VSOCK, align 4
  %21 = icmp ne i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* @EPROTONOSUPPORT, align 4
  %24 = sub nsw i32 0, %23
  store i32 %24, i32* %5, align 4
  br label %54

25:                                               ; preds = %18, %15
  %26 = load %struct.socket*, %struct.socket** %7, align 8
  %27 = getelementptr inbounds %struct.socket, %struct.socket* %26, i32 0, i32 0
  %28 = load i32, i32* %27, align 8
  switch i32 %28, label %35 [
    i32 129, label %29
    i32 128, label %32
  ]

29:                                               ; preds = %25
  %30 = load %struct.socket*, %struct.socket** %7, align 8
  %31 = getelementptr inbounds %struct.socket, %struct.socket* %30, i32 0, i32 2
  store i32* @vsock_dgram_ops, i32** %31, align 8
  br label %38

32:                                               ; preds = %25
  %33 = load %struct.socket*, %struct.socket** %7, align 8
  %34 = getelementptr inbounds %struct.socket, %struct.socket* %33, i32 0, i32 2
  store i32* @vsock_stream_ops, i32** %34, align 8
  br label %38

35:                                               ; preds = %25
  %36 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %37 = sub nsw i32 0, %36
  store i32 %37, i32* %5, align 4
  br label %54

38:                                               ; preds = %32, %29
  %39 = load i32, i32* @SS_UNCONNECTED, align 4
  %40 = load %struct.socket*, %struct.socket** %7, align 8
  %41 = getelementptr inbounds %struct.socket, %struct.socket* %40, i32 0, i32 1
  store i32 %39, i32* %41, align 4
  %42 = load %struct.net*, %struct.net** %6, align 8
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = load i32, i32* @GFP_KERNEL, align 4
  %45 = load i32, i32* %9, align 4
  %46 = call i64 @__vsock_create(%struct.net* %42, %struct.socket* %43, i32* null, i32 %44, i32 0, i32 %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %38
  br label %52

49:                                               ; preds = %38
  %50 = load i32, i32* @ENOMEM, align 4
  %51 = sub nsw i32 0, %50
  br label %52

52:                                               ; preds = %49, %48
  %53 = phi i32 [ 0, %48 ], [ %51, %49 ]
  store i32 %53, i32* %5, align 4
  br label %54

54:                                               ; preds = %52, %35, %22, %12
  %55 = load i32, i32* %5, align 4
  ret i32 %55
}

declare dso_local i64 @__vsock_create(%struct.net*, %struct.socket*, i32*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
