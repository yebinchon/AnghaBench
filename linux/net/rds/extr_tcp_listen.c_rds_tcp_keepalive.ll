; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_tcp_listen.c_rds_tcp_keepalive.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_tcp_listen.c_rds_tcp_keepalive.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.socket = type { i32 }

@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_KEEPALIVE = common dso_local global i32 0, align 4
@IPPROTO_TCP = common dso_local global i32 0, align 4
@TCP_KEEPCNT = common dso_local global i32 0, align 4
@TCP_KEEPIDLE = common dso_local global i32 0, align 4
@TCP_KEEPINTVL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rds_tcp_keepalive(%struct.socket* %0) #0 {
  %2 = alloca %struct.socket*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.socket* %0, %struct.socket** %2, align 8
  store i32 5, i32* %3, align 4
  store i32 5, i32* %4, align 4
  store i32 1, i32* %5, align 4
  store i32 0, i32* %6, align 4
  %7 = load %struct.socket*, %struct.socket** %2, align 8
  %8 = load i32, i32* @SOL_SOCKET, align 4
  %9 = load i32, i32* @SO_KEEPALIVE, align 4
  %10 = bitcast i32* %5 to i8*
  %11 = call i32 @kernel_setsockopt(%struct.socket* %7, i32 %8, i32 %9, i8* %10, i32 4)
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* %6, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %39

15:                                               ; preds = %1
  %16 = load %struct.socket*, %struct.socket** %2, align 8
  %17 = load i32, i32* @IPPROTO_TCP, align 4
  %18 = load i32, i32* @TCP_KEEPCNT, align 4
  %19 = bitcast i32* %4 to i8*
  %20 = call i32 @kernel_setsockopt(%struct.socket* %16, i32 %17, i32 %18, i8* %19, i32 4)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %6, align 4
  %22 = icmp slt i32 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %15
  br label %39

24:                                               ; preds = %15
  %25 = load %struct.socket*, %struct.socket** %2, align 8
  %26 = load i32, i32* @IPPROTO_TCP, align 4
  %27 = load i32, i32* @TCP_KEEPIDLE, align 4
  %28 = bitcast i32* %3 to i8*
  %29 = call i32 @kernel_setsockopt(%struct.socket* %25, i32 %26, i32 %27, i8* %28, i32 4)
  store i32 %29, i32* %6, align 4
  %30 = load i32, i32* %6, align 4
  %31 = icmp slt i32 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %24
  br label %39

33:                                               ; preds = %24
  %34 = load %struct.socket*, %struct.socket** %2, align 8
  %35 = load i32, i32* @IPPROTO_TCP, align 4
  %36 = load i32, i32* @TCP_KEEPINTVL, align 4
  %37 = bitcast i32* %3 to i8*
  %38 = call i32 @kernel_setsockopt(%struct.socket* %34, i32 %35, i32 %36, i8* %37, i32 4)
  store i32 %38, i32* %6, align 4
  br label %39

39:                                               ; preds = %33, %32, %23, %14
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local i32 @kernel_setsockopt(%struct.socket*, i32, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
