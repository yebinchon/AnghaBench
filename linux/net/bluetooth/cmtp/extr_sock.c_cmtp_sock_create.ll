; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_sock.c_cmtp_sock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/cmtp/extr_sock.c_cmtp_sock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.sock = type { i32, i32 }

@.str = private unnamed_addr constant [8 x i8] c"sock %p\00", align 1
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@PF_BLUETOOTH = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@cmtp_proto = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@cmtp_sock_ops = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@SOCK_ZAPPED = common dso_local global i32 0, align 4
@BT_OPEN = common dso_local global i32 0, align 4
@cmtp_sk_list = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, i32, i32)* @cmtp_sock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmtp_sock_create(%struct.net* %0, %struct.socket* %1, i32 %2, i32 %3) #0 {
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
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_RAW, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %21

18:                                               ; preds = %4
  %19 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %5, align 4
  br label %52

21:                                               ; preds = %4
  %22 = load %struct.net*, %struct.net** %6, align 8
  %23 = load i32, i32* @PF_BLUETOOTH, align 4
  %24 = load i32, i32* @GFP_ATOMIC, align 4
  %25 = load i32, i32* %9, align 4
  %26 = call %struct.sock* @sk_alloc(%struct.net* %22, i32 %23, i32 %24, i32* @cmtp_proto, i32 %25)
  store %struct.sock* %26, %struct.sock** %10, align 8
  %27 = load %struct.sock*, %struct.sock** %10, align 8
  %28 = icmp ne %struct.sock* %27, null
  br i1 %28, label %32, label %29

29:                                               ; preds = %21
  %30 = load i32, i32* @ENOMEM, align 4
  %31 = sub nsw i32 0, %30
  store i32 %31, i32* %5, align 4
  br label %52

32:                                               ; preds = %21
  %33 = load %struct.socket*, %struct.socket** %7, align 8
  %34 = load %struct.sock*, %struct.sock** %10, align 8
  %35 = call i32 @sock_init_data(%struct.socket* %33, %struct.sock* %34)
  %36 = load %struct.socket*, %struct.socket** %7, align 8
  %37 = getelementptr inbounds %struct.socket, %struct.socket* %36, i32 0, i32 2
  store i32* @cmtp_sock_ops, i32** %37, align 8
  %38 = load i32, i32* @SS_UNCONNECTED, align 4
  %39 = load %struct.socket*, %struct.socket** %7, align 8
  %40 = getelementptr inbounds %struct.socket, %struct.socket* %39, i32 0, i32 1
  store i32 %38, i32* %40, align 8
  %41 = load %struct.sock*, %struct.sock** %10, align 8
  %42 = load i32, i32* @SOCK_ZAPPED, align 4
  %43 = call i32 @sock_reset_flag(%struct.sock* %41, i32 %42)
  %44 = load i32, i32* %8, align 4
  %45 = load %struct.sock*, %struct.sock** %10, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 0
  store i32 %44, i32* %46, align 4
  %47 = load i32, i32* @BT_OPEN, align 4
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = getelementptr inbounds %struct.sock, %struct.sock* %48, i32 0, i32 1
  store i32 %47, i32* %49, align 4
  %50 = load %struct.sock*, %struct.sock** %10, align 8
  %51 = call i32 @bt_sock_link(i32* @cmtp_sk_list, %struct.sock* %50)
  store i32 0, i32* %5, align 4
  br label %52

52:                                               ; preds = %32, %29, %18
  %53 = load i32, i32* %5, align 4
  ret i32 %53
}

declare dso_local i32 @BT_DBG(i8*, %struct.socket*) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32*, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @sock_reset_flag(%struct.sock*, i32) #1

declare dso_local i32 @bt_sock_link(i32*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
