; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_rawsock.c_rawsock_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.socket = type { i64, i32, i32* }
%struct.nfc_protocol = type { i32, i32 }
%struct.sock = type { i32, i32 }
%struct.TYPE_2__ = type { i32, i32 }

@.str = private unnamed_addr constant [9 x i8] c"sock=%p\0A\00", align 1
@SOCK_SEQPACKET = common dso_local global i64 0, align 8
@SOCK_RAW = common dso_local global i64 0, align 8
@ESOCKTNOSUPPORT = common dso_local global i32 0, align 4
@rawsock_raw_ops = common dso_local global i32 0, align 4
@rawsock_ops = common dso_local global i32 0, align 4
@PF_NFC = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@rawsock_destruct = common dso_local global i32 0, align 4
@SS_UNCONNECTED = common dso_local global i32 0, align 4
@raw_sk_list = common dso_local global i32 0, align 4
@rawsock_tx_work = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.socket*, %struct.nfc_protocol*, i32)* @rawsock_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rawsock_create(%struct.net* %0, %struct.socket* %1, %struct.nfc_protocol* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net*, align 8
  %7 = alloca %struct.socket*, align 8
  %8 = alloca %struct.nfc_protocol*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.sock*, align 8
  store %struct.net* %0, %struct.net** %6, align 8
  store %struct.socket* %1, %struct.socket** %7, align 8
  store %struct.nfc_protocol* %2, %struct.nfc_protocol** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load %struct.socket*, %struct.socket** %7, align 8
  %12 = call i32 @pr_debug(i8* getelementptr inbounds ([9 x i8], [9 x i8]* @.str, i64 0, i64 0), %struct.socket* %11)
  %13 = load %struct.socket*, %struct.socket** %7, align 8
  %14 = getelementptr inbounds %struct.socket, %struct.socket* %13, i32 0, i32 0
  %15 = load i64, i64* %14, align 8
  %16 = load i64, i64* @SOCK_SEQPACKET, align 8
  %17 = icmp ne i64 %15, %16
  br i1 %17, label %18, label %27

18:                                               ; preds = %4
  %19 = load %struct.socket*, %struct.socket** %7, align 8
  %20 = getelementptr inbounds %struct.socket, %struct.socket* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = load i64, i64* @SOCK_RAW, align 8
  %23 = icmp ne i64 %21, %22
  br i1 %23, label %24, label %27

24:                                               ; preds = %18
  %25 = load i32, i32* @ESOCKTNOSUPPORT, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %5, align 4
  br label %86

27:                                               ; preds = %18, %4
  %28 = load %struct.socket*, %struct.socket** %7, align 8
  %29 = getelementptr inbounds %struct.socket, %struct.socket* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* @SOCK_RAW, align 8
  %32 = icmp eq i64 %30, %31
  br i1 %32, label %33, label %36

33:                                               ; preds = %27
  %34 = load %struct.socket*, %struct.socket** %7, align 8
  %35 = getelementptr inbounds %struct.socket, %struct.socket* %34, i32 0, i32 2
  store i32* @rawsock_raw_ops, i32** %35, align 8
  br label %39

36:                                               ; preds = %27
  %37 = load %struct.socket*, %struct.socket** %7, align 8
  %38 = getelementptr inbounds %struct.socket, %struct.socket* %37, i32 0, i32 2
  store i32* @rawsock_ops, i32** %38, align 8
  br label %39

39:                                               ; preds = %36, %33
  %40 = load %struct.net*, %struct.net** %6, align 8
  %41 = load i32, i32* @PF_NFC, align 4
  %42 = load i32, i32* @GFP_ATOMIC, align 4
  %43 = load %struct.nfc_protocol*, %struct.nfc_protocol** %8, align 8
  %44 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %43, i32 0, i32 1
  %45 = load i32, i32* %44, align 4
  %46 = load i32, i32* %9, align 4
  %47 = call %struct.sock* @sk_alloc(%struct.net* %40, i32 %41, i32 %42, i32 %45, i32 %46)
  store %struct.sock* %47, %struct.sock** %10, align 8
  %48 = load %struct.sock*, %struct.sock** %10, align 8
  %49 = icmp ne %struct.sock* %48, null
  br i1 %49, label %53, label %50

50:                                               ; preds = %39
  %51 = load i32, i32* @ENOMEM, align 4
  %52 = sub nsw i32 0, %51
  store i32 %52, i32* %5, align 4
  br label %86

53:                                               ; preds = %39
  %54 = load %struct.socket*, %struct.socket** %7, align 8
  %55 = load %struct.sock*, %struct.sock** %10, align 8
  %56 = call i32 @sock_init_data(%struct.socket* %54, %struct.sock* %55)
  %57 = load %struct.nfc_protocol*, %struct.nfc_protocol** %8, align 8
  %58 = getelementptr inbounds %struct.nfc_protocol, %struct.nfc_protocol* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = load %struct.sock*, %struct.sock** %10, align 8
  %61 = getelementptr inbounds %struct.sock, %struct.sock* %60, i32 0, i32 1
  store i32 %59, i32* %61, align 4
  %62 = load i32, i32* @rawsock_destruct, align 4
  %63 = load %struct.sock*, %struct.sock** %10, align 8
  %64 = getelementptr inbounds %struct.sock, %struct.sock* %63, i32 0, i32 0
  store i32 %62, i32* %64, align 4
  %65 = load i32, i32* @SS_UNCONNECTED, align 4
  %66 = load %struct.socket*, %struct.socket** %7, align 8
  %67 = getelementptr inbounds %struct.socket, %struct.socket* %66, i32 0, i32 1
  store i32 %65, i32* %67, align 8
  %68 = load %struct.socket*, %struct.socket** %7, align 8
  %69 = getelementptr inbounds %struct.socket, %struct.socket* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @SOCK_RAW, align 8
  %72 = icmp eq i64 %70, %71
  br i1 %72, label %73, label %76

73:                                               ; preds = %53
  %74 = load %struct.sock*, %struct.sock** %10, align 8
  %75 = call i32 @nfc_sock_link(i32* @raw_sk_list, %struct.sock* %74)
  br label %85

76:                                               ; preds = %53
  %77 = load %struct.sock*, %struct.sock** %10, align 8
  %78 = call %struct.TYPE_2__* @nfc_rawsock(%struct.sock* %77)
  %79 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %78, i32 0, i32 1
  %80 = load i32, i32* @rawsock_tx_work, align 4
  %81 = call i32 @INIT_WORK(i32* %79, i32 %80)
  %82 = load %struct.sock*, %struct.sock** %10, align 8
  %83 = call %struct.TYPE_2__* @nfc_rawsock(%struct.sock* %82)
  %84 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %83, i32 0, i32 0
  store i32 0, i32* %84, align 4
  br label %85

85:                                               ; preds = %76, %73
  store i32 0, i32* %5, align 4
  br label %86

86:                                               ; preds = %85, %50, %24
  %87 = load i32, i32* %5, align 4
  ret i32 %87
}

declare dso_local i32 @pr_debug(i8*, %struct.socket*) #1

declare dso_local %struct.sock* @sk_alloc(%struct.net*, i32, i32, i32, i32) #1

declare dso_local i32 @sock_init_data(%struct.socket*, %struct.sock*) #1

declare dso_local i32 @nfc_sock_link(i32*, %struct.sock*) #1

declare dso_local i32 @INIT_WORK(i32*, i32) #1

declare dso_local %struct.TYPE_2__* @nfc_rawsock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
