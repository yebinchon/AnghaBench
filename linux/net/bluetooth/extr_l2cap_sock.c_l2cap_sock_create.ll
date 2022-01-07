; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_sock.c_l2cap_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32*, i32 }
%struct.sock = type { i32 }

@.str = private unnamed_addr constant [8 x i8] c"sock %p\00", align 1
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i64 0, align 8
@SOCK_DGRAM = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@CAP_NET_RAW = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@l2cap_sock_ops = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@l2cap_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @l2cap_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @l2cap_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = call i32 @BT_DBG(i8* getelementptr inbounds ([8 x i8], [8 x i8]* @.str, i64 0, i64 0), %struct.socket* %11)
  %13 = load i32, i32* @SS_UNCONNECTED, align 4
  %14 = load %struct.socket*, %struct.socket** %7, align 8
  %15 = getelementptr inbounds %struct.socket, %struct.socket* %14, i32 0, i32 2
  store i32 %13, i32* %15, align 8
  %16 = load %struct.socket*, %struct.socket** %7, align 8
  %17 = getelementptr inbounds %struct.socket, %struct.socket* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @SOCK_SEQPACKET, align 8
  %20 = icmp ne i64 %18, %19
  br i1 %20, label %21, label %42

21:                                               ; preds = %4
  %22 = load %struct.socket*, %struct.socket** %7, align 8
  %23 = getelementptr inbounds %struct.socket, %struct.socket* %22, i32 0, i32 0
  %24 = load i64, i64* %23, align 8
  %25 = load i64, i64* @SOCK_STREAM, align 8
  %26 = icmp ne i64 %24, %25
  br i1 %26, label %27, label %42

27:                                               ; preds = %21
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_DGRAM, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %42

33:                                               ; preds = %27
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @SOCK_RAW, align 8
  %38 = icmp ne i64 %36, %37
  br i1 %38, label %39, label %42

39:                                               ; preds = %33
  %40 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %41 = sub nsw i32 0, %40
  store i32 %41, i32* %5, align 4
  br label %77

42:                                               ; preds = %33, %27, %21, %4
  %43 = load %struct.socket*, %struct.socket** %7, align 8
  %44 = getelementptr inbounds %struct.socket, %struct.socket* %43, i32 0, i32 0
  %45 = load i64, i64* %44, align 8
  %46 = load i64, i64* @SOCK_RAW, align 8
  %47 = icmp eq i64 %45, %46
  br i1 %47, label %48, label %58

48:                                               ; preds = %42
  %49 = load i32, i32* %9, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %58, label %51

51:                                               ; preds = %48
  %52 = load i32, i32* @CAP_NET_RAW, align 4
  %53 = call i32 @capable(i32 %52)
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %58, label %55

55:                                               ; preds = %51
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %5, align 4
  br label %77

58:                                               ; preds = %51, %48, %42
  %59 = load %struct.socket*, %struct.socket** %7, align 8
  %60 = getelementptr inbounds %struct.socket, %struct.socket* %59, i32 0, i32 1
  store i32* @l2cap_sock_ops, i32** %60, align 8
  %61 = load %struct.net*, %struct.net** %6, align 8
  %62 = load %struct.socket*, %struct.socket** %7, align 8
  %63 = load i32, i32* %8, align 4
  %64 = load i32, i32* @GFP_ATOMIC, align 4
  %65 = load i32, i32* %9, align 4
  %66 = call %struct.sock* @l2cap_sock_alloc(%struct.net* %61, %struct.socket* %62, i32 %63, i32 %64, i32 %65)
  store %struct.sock* %66, %struct.sock** %10, align 8
  %67 = load %struct.sock*, %struct.sock** %10, align 8
  %68 = icmp ne %struct.sock* %67, null
  br i1 %68, label %72, label %69

69:                                               ; preds = %58
  %70 = load i32, i32* @ENOMEM, align 4
  %71 = sub nsw i32 0, %70
  store i32 %71, i32* %5, align 4
  br label %77

72:                                               ; preds = %58
  %73 = load %struct.sock*, %struct.sock** %10, align 8
  %74 = call i32 @l2cap_sock_init(%struct.sock* %73, i32* null)
  %75 = load %struct.sock*, %struct.sock** %10, align 8
  %76 = call i32 @bt_sock_link(i32* @l2cap_sk_list, %struct.sock* %75)
  store i32 0, i32* %5, align 4
  br label %77

77:                                               ; preds = %72, %69, %55, %39
  %78 = load i32, i32* %5, align 4
  ret i32 %78
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*) #1

declare dso_local i32 @capable(i32) #1

declare dso_local %struct.sock* @l2cap_sock_alloc(%struct.net*, %struct.socket*, i32, i32, i32) #1

declare dso_local i32 @l2cap_sock_init(%struct.sock*, i32*) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
