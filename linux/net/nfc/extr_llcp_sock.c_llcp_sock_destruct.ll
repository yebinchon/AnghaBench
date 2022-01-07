; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_destruct.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_sock.c_llcp_sock_destruct.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.nfc_llcp_sock = type { i32 }

@.str = private unnamed_addr constant [4 x i8] c"%p\0A\00", align 1
@LLCP_CONNECTED = common dso_local global i64 0, align 8
@SOCK_DEAD = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [34 x i8] c"Freeing alive NFC LLCP socket %p\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @llcp_sock_destruct to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @llcp_sock_destruct(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.nfc_llcp_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.nfc_llcp_sock* @nfc_llcp_sock(%struct.sock* %4)
  store %struct.nfc_llcp_sock* %5, %struct.nfc_llcp_sock** %3, align 8
  %6 = load %struct.sock*, %struct.sock** %2, align 8
  %7 = call i32 @pr_debug(i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str, i64 0, i64 0), %struct.sock* %6)
  %8 = load %struct.sock*, %struct.sock** %2, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load i64, i64* @LLCP_CONNECTED, align 8
  %12 = icmp eq i64 %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %1
  %14 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %15 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @nfc_put_device(i32 %16)
  br label %18

18:                                               ; preds = %13, %1
  %19 = load %struct.sock*, %struct.sock** %2, align 8
  %20 = getelementptr inbounds %struct.sock, %struct.sock* %19, i32 0, i32 1
  %21 = call i32 @skb_queue_purge(i32* %20)
  %22 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %3, align 8
  %23 = call i32 @nfc_llcp_sock_free(%struct.nfc_llcp_sock* %22)
  %24 = load %struct.sock*, %struct.sock** %2, align 8
  %25 = load i32, i32* @SOCK_DEAD, align 4
  %26 = call i32 @sock_flag(%struct.sock* %24, i32 %25)
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %31, label %28

28:                                               ; preds = %18
  %29 = load %struct.sock*, %struct.sock** %2, align 8
  %30 = call i32 @pr_err(i8* getelementptr inbounds ([34 x i8], [34 x i8]* @.str.1, i64 0, i64 0), %struct.sock* %29)
  br label %31

31:                                               ; preds = %28, %18
  ret void
}

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_sock(%struct.sock*) #1

declare dso_local i32 @pr_debug(i8*, %struct.sock*) #1

declare dso_local i32 @nfc_put_device(i32) #1

declare dso_local i32 @skb_queue_purge(i32*) #1

declare dso_local i32 @nfc_llcp_sock_free(%struct.nfc_llcp_sock*) #1

declare dso_local i32 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @pr_err(i8*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
