; ModuleID = '/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_next_srcport.c'
source_filename = "/home/carl/AnghaBench/linux/net/sunrpc/extr_xprtsock.c_xs_next_srcport.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock_xprt = type { i64, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }

@xprt_min_resvport = common dso_local global i16 0, align 2
@xprt_max_resvport = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i16 (%struct.sock_xprt*, i16)* @xs_next_srcport to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal zeroext i16 @xs_next_srcport(%struct.sock_xprt* %0, i16 zeroext %1) #0 {
  %3 = alloca i16, align 2
  %4 = alloca %struct.sock_xprt*, align 8
  %5 = alloca i16, align 2
  store %struct.sock_xprt* %0, %struct.sock_xprt** %4, align 8
  store i16 %1, i16* %5, align 2
  %6 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %7 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %12 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %11, i32 0, i32 0
  store i64 0, i64* %12, align 8
  br label %13

13:                                               ; preds = %10, %2
  %14 = load %struct.sock_xprt*, %struct.sock_xprt** %4, align 8
  %15 = getelementptr inbounds %struct.sock_xprt, %struct.sock_xprt* %14, i32 0, i32 1
  %16 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %20, label %19

19:                                               ; preds = %13
  store i16 0, i16* %3, align 2
  br label %37

20:                                               ; preds = %13
  %21 = load i16, i16* %5, align 2
  %22 = zext i16 %21 to i32
  %23 = load i16, i16* @xprt_min_resvport, align 2
  %24 = zext i16 %23 to i32
  %25 = icmp sle i32 %22, %24
  br i1 %25, label %32, label %26

26:                                               ; preds = %20
  %27 = load i16, i16* %5, align 2
  %28 = zext i16 %27 to i32
  %29 = load i16, i16* @xprt_max_resvport, align 2
  %30 = zext i16 %29 to i32
  %31 = icmp sgt i32 %28, %30
  br i1 %31, label %32, label %34

32:                                               ; preds = %26, %20
  %33 = load i16, i16* @xprt_max_resvport, align 2
  store i16 %33, i16* %3, align 2
  br label %37

34:                                               ; preds = %26
  %35 = load i16, i16* %5, align 2
  %36 = add i16 %35, -1
  store i16 %36, i16* %5, align 2
  store i16 %36, i16* %3, align 2
  br label %37

37:                                               ; preds = %34, %32, %19
  %38 = load i16, i16* %3, align 2
  ret i16 %38
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
