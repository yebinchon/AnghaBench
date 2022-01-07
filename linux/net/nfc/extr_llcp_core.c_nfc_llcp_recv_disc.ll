; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_disc.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_disc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32 }
%struct.nfc_llcp_sock = type { %struct.sock }
%struct.sock = type { i64, i32 (%struct.sock*)* }

@.str = private unnamed_addr constant [23 x i8] c"Connection termination\00", align 1
@LLCP_DM_NOCONN = common dso_local global i32 0, align 4
@LLCP_CLOSED = common dso_local global i64 0, align 8
@LLCP_CONNECTED = common dso_local global i64 0, align 8
@LLCP_DM_DISC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_recv_disc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_recv_disc(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %10 = call i64 @nfc_llcp_dsap(%struct.sk_buff* %9)
  store i64 %10, i64* %7, align 8
  %11 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %12 = call i64 @nfc_llcp_ssap(%struct.sk_buff* %11)
  store i64 %12, i64* %8, align 8
  %13 = load i64, i64* %7, align 8
  %14 = icmp eq i64 %13, 0
  br i1 %14, label %15, label %24

15:                                               ; preds = %2
  %16 = load i64, i64* %8, align 8
  %17 = icmp eq i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %15
  %19 = call i32 @pr_debug(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str, i64 0, i64 0))
  %20 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %21 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @nfc_dep_link_down(i32 %22)
  br label %83

24:                                               ; preds = %15, %2
  %25 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %26 = load i64, i64* %7, align 8
  %27 = load i64, i64* %8, align 8
  %28 = call %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local* %25, i64 %26, i64 %27)
  store %struct.nfc_llcp_sock* %28, %struct.nfc_llcp_sock** %5, align 8
  %29 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %30 = icmp eq %struct.nfc_llcp_sock* %29, null
  br i1 %30, label %31, label %37

31:                                               ; preds = %24
  %32 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %33 = load i64, i64* %7, align 8
  %34 = load i64, i64* %8, align 8
  %35 = load i32, i32* @LLCP_DM_NOCONN, align 4
  %36 = call i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local* %32, i64 %33, i64 %34, i32 %35)
  br label %83

37:                                               ; preds = %24
  %38 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %38, i32 0, i32 0
  store %struct.sock* %39, %struct.sock** %6, align 8
  %40 = load %struct.sock*, %struct.sock** %6, align 8
  %41 = call i32 @lock_sock(%struct.sock* %40)
  %42 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %43 = call i32 @nfc_llcp_socket_purge(%struct.nfc_llcp_sock* %42)
  %44 = load %struct.sock*, %struct.sock** %6, align 8
  %45 = getelementptr inbounds %struct.sock, %struct.sock* %44, i32 0, i32 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @LLCP_CLOSED, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %54

49:                                               ; preds = %37
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 @release_sock(%struct.sock* %50)
  %52 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %53 = call i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock* %52)
  br label %54

54:                                               ; preds = %49, %37
  %55 = load %struct.sock*, %struct.sock** %6, align 8
  %56 = getelementptr inbounds %struct.sock, %struct.sock* %55, i32 0, i32 0
  %57 = load i64, i64* %56, align 8
  %58 = load i64, i64* @LLCP_CONNECTED, align 8
  %59 = icmp eq i64 %57, %58
  br i1 %59, label %60, label %73

60:                                               ; preds = %54
  %61 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %62 = getelementptr inbounds %struct.nfc_llcp_local, %struct.nfc_llcp_local* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @nfc_put_device(i32 %63)
  %65 = load i64, i64* @LLCP_CLOSED, align 8
  %66 = load %struct.sock*, %struct.sock** %6, align 8
  %67 = getelementptr inbounds %struct.sock, %struct.sock* %66, i32 0, i32 0
  store i64 %65, i64* %67, align 8
  %68 = load %struct.sock*, %struct.sock** %6, align 8
  %69 = getelementptr inbounds %struct.sock, %struct.sock* %68, i32 0, i32 1
  %70 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %69, align 8
  %71 = load %struct.sock*, %struct.sock** %6, align 8
  %72 = call i32 %70(%struct.sock* %71)
  br label %73

73:                                               ; preds = %60, %54
  %74 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %75 = load i64, i64* %7, align 8
  %76 = load i64, i64* %8, align 8
  %77 = load i32, i32* @LLCP_DM_DISC, align 4
  %78 = call i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local* %74, i64 %75, i64 %76, i32 %77)
  %79 = load %struct.sock*, %struct.sock** %6, align 8
  %80 = call i32 @release_sock(%struct.sock* %79)
  %81 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %82 = call i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock* %81)
  br label %83

83:                                               ; preds = %73, %31, %18
  ret void
}

declare dso_local i64 @nfc_llcp_dsap(%struct.sk_buff*) #1

declare dso_local i64 @nfc_llcp_ssap(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*) #1

declare dso_local i32 @nfc_dep_link_down(i32) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local*, i64, i64) #1

declare dso_local i32 @nfc_llcp_send_dm(%struct.nfc_llcp_local*, i64, i64, i32) #1

declare dso_local i32 @lock_sock(%struct.sock*) #1

declare dso_local i32 @nfc_llcp_socket_purge(%struct.nfc_llcp_sock*) #1

declare dso_local i32 @release_sock(%struct.sock*) #1

declare dso_local i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock*) #1

declare dso_local i32 @nfc_put_device(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
