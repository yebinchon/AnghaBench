; ModuleID = '/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_dm.c'
source_filename = "/home/carl/AnghaBench/linux/net/nfc/extr_llcp_core.c_nfc_llcp_recv_dm.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nfc_llcp_local = type { i32 }
%struct.sk_buff = type { i32* }
%struct.nfc_llcp_sock = type { %struct.sock }
%struct.sock = type { i32 (%struct.sock*)*, i32, i32 }

@.str = private unnamed_addr constant [17 x i8] c"%d %d reason %d\0A\00", align 1
@.str.1 = private unnamed_addr constant [16 x i8] c"Already closed\0A\00", align 1
@ENXIO = common dso_local global i32 0, align 4
@LLCP_CLOSED = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nfc_llcp_local*, %struct.sk_buff*)* @nfc_llcp_recv_dm to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nfc_llcp_recv_dm(%struct.nfc_llcp_local* %0, %struct.sk_buff* %1) #0 {
  %3 = alloca %struct.nfc_llcp_local*, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.nfc_llcp_sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.nfc_llcp_local* %0, %struct.nfc_llcp_local** %3, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = call i32 @nfc_llcp_dsap(%struct.sk_buff* %10)
  store i32 %11, i32* %7, align 4
  %12 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %13 = call i32 @nfc_llcp_ssap(%struct.sk_buff* %12)
  store i32 %13, i32* %8, align 4
  %14 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %15 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %14, i32 0, i32 0
  %16 = load i32*, i32** %15, align 8
  %17 = getelementptr inbounds i32, i32* %16, i64 2
  %18 = load i32, i32* %17, align 4
  store i32 %18, i32* %9, align 4
  %19 = load i32, i32* %8, align 4
  %20 = load i32, i32* %7, align 4
  %21 = load i32, i32* %9, align 4
  %22 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0), i32 %19, i32 %20, i32 %21)
  %23 = load i32, i32* %9, align 4
  switch i32 %23, label %28 [
    i32 129, label %24
    i32 128, label %24
  ]

24:                                               ; preds = %2, %2
  %25 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.nfc_llcp_sock* @nfc_llcp_connecting_sock_get(%struct.nfc_llcp_local* %25, i32 %26)
  store %struct.nfc_llcp_sock* %27, %struct.nfc_llcp_sock** %5, align 8
  br label %33

28:                                               ; preds = %2
  %29 = load %struct.nfc_llcp_local*, %struct.nfc_llcp_local** %3, align 8
  %30 = load i32, i32* %7, align 4
  %31 = load i32, i32* %8, align 4
  %32 = call %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local* %29, i32 %30, i32 %31)
  store %struct.nfc_llcp_sock* %32, %struct.nfc_llcp_sock** %5, align 8
  br label %33

33:                                               ; preds = %28, %24
  %34 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %35 = icmp eq %struct.nfc_llcp_sock* %34, null
  br i1 %35, label %36, label %38

36:                                               ; preds = %33
  %37 = call i32 (i8*, ...) @pr_debug(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  br label %54

38:                                               ; preds = %33
  %39 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %40 = getelementptr inbounds %struct.nfc_llcp_sock, %struct.nfc_llcp_sock* %39, i32 0, i32 0
  store %struct.sock* %40, %struct.sock** %6, align 8
  %41 = load i32, i32* @ENXIO, align 4
  %42 = load %struct.sock*, %struct.sock** %6, align 8
  %43 = getelementptr inbounds %struct.sock, %struct.sock* %42, i32 0, i32 2
  store i32 %41, i32* %43, align 4
  %44 = load i32, i32* @LLCP_CLOSED, align 4
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = getelementptr inbounds %struct.sock, %struct.sock* %45, i32 0, i32 1
  store i32 %44, i32* %46, align 8
  %47 = load %struct.sock*, %struct.sock** %6, align 8
  %48 = getelementptr inbounds %struct.sock, %struct.sock* %47, i32 0, i32 0
  %49 = load i32 (%struct.sock*)*, i32 (%struct.sock*)** %48, align 8
  %50 = load %struct.sock*, %struct.sock** %6, align 8
  %51 = call i32 %49(%struct.sock* %50)
  %52 = load %struct.nfc_llcp_sock*, %struct.nfc_llcp_sock** %5, align 8
  %53 = call i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock* %52)
  br label %54

54:                                               ; preds = %38, %36
  ret void
}

declare dso_local i32 @nfc_llcp_dsap(%struct.sk_buff*) #1

declare dso_local i32 @nfc_llcp_ssap(%struct.sk_buff*) #1

declare dso_local i32 @pr_debug(i8*, ...) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_connecting_sock_get(%struct.nfc_llcp_local*, i32) #1

declare dso_local %struct.nfc_llcp_sock* @nfc_llcp_sock_get(%struct.nfc_llcp_local*, i32, i32) #1

declare dso_local i32 @nfc_llcp_sock_put(%struct.nfc_llcp_sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
