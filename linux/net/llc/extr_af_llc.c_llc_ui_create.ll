; ModuleID = '/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/llc/extr_af_llc.c_llc_ui_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64 }
%struct.sock = type { i32 }

@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@init_net = common dso_local global i32 0, align 4
@EAFNOSUPPORT = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@ENOMEM = common dso_local global i32 0, align 4
@PF_LLC = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@llc_proto = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @llc_ui_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @llc_ui_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  %11 = alloca i32, align 4
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %12 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %13 = sub nsw i32 0, %12
  store i32 %13, i32* %11, align 4
  %14 = load %struct.net*, %struct.net** %6, align 8
  %15 = getelementptr inbounds %struct.net, %struct.net* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = load i32, i32* @CAP_NET_RAW, align 4
  %18 = call i32 @ns_capable(i32 %16, i32 %17)
  %19 = icmp ne i32 %18, 0
  br i1 %19, label %23, label %20

20:                                               ; preds = %4
  %21 = load i32, i32* @EPERM, align 4
  %22 = sub nsw i32 0, %21
  store i32 %22, i32* %5, align 4
  br label %64

23:                                               ; preds = %4
  %24 = load %struct.net*, %struct.net** %6, align 8
  %25 = call i32 @net_eq(%struct.net* %24, i32* @init_net)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %30, label %27

27:                                               ; preds = %23
  %28 = load i32, i32* @EAFNOSUPPORT, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %64

30:                                               ; preds = %23
  %31 = load %struct.socket*, %struct.socket** %7, align 8
  %32 = getelementptr inbounds %struct.socket, %struct.socket* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = load i64, i64* @SOCK_DGRAM, align 8
  %35 = icmp eq i64 %33, %34
  br i1 %35, label %42, label %36

36:                                               ; preds = %30
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 0
  %39 = load i64, i64* %38, align 8
  %40 = load i64, i64* @SOCK_STREAM, align 8
  %41 = icmp eq i64 %39, %40
  br label %42

42:                                               ; preds = %36, %30
  %43 = phi i1 [ true, %30 ], [ %41, %36 ]
  %44 = zext i1 %43 to i32
  %45 = call i64 @likely(i32 %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %62

47:                                               ; preds = %42
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %11, align 4
  %50 = load %struct.net*, %struct.net** %6, align 8
  %51 = load i32, i32* @PF_LLC, align 4
  %52 = load i32, i32* @GFP_KERNEL, align 4
  %53 = load i32, i32* %9, align 4
  %54 = call %struct.sock* @llc_sk_alloc(%struct.net* %50, i32 %51, i32 %52, i32* @llc_proto, i32 %53)
  store %struct.sock* %54, %struct.sock** %10, align 8
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = icmp ne %struct.sock* %55, null
  br i1 %56, label %57, label %61

57:                                               ; preds = %47
  store i32 0, i32* %11, align 4
  %58 = load %struct.socket*, %struct.socket** %7, align 8
  %59 = load %struct.sock*, %struct.sock** %10, align 8
  %60 = call i32 @llc_ui_sk_init(%struct.socket* %58, %struct.sock* %59)
  br label %61

61:                                               ; preds = %57, %47
  br label %62

62:                                               ; preds = %61, %42
  %63 = load i32, i32* %11, align 4
  store i32 %63, i32* %5, align 4
  br label %64

64:                                               ; preds = %62, %27, %20
  %65 = load i32, i32* %5, align 4
  ret i32 %65
}

declare dso_local i32 @ns_capable(i32, i32) #1

declare dso_local i32 @net_eq(%struct.net*, i32*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sock* @llc_sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @llc_ui_sk_init(%struct.socket*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
