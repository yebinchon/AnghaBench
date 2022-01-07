; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_diag.c_dccp_get_info.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_diag.c_dccp_get_info.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_info = type { i32, i32, i32, i32, i32, i32 }
%struct.dccp_sock = type { i32*, i32*, i32* }
%struct.inet_connection_sock = type { i32, i32, i32, i32 }

@TCPI_OPT_SACK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.tcp_info*)* @dccp_get_info to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dccp_get_info(%struct.sock* %0, %struct.tcp_info* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.tcp_info*, align 8
  %5 = alloca %struct.dccp_sock*, align 8
  %6 = alloca %struct.inet_connection_sock*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.tcp_info* %1, %struct.tcp_info** %4, align 8
  %7 = load %struct.sock*, %struct.sock** %3, align 8
  %8 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %7)
  store %struct.dccp_sock* %8, %struct.dccp_sock** %5, align 8
  %9 = load %struct.sock*, %struct.sock** %3, align 8
  %10 = call %struct.inet_connection_sock* @inet_csk(%struct.sock* %9)
  store %struct.inet_connection_sock* %10, %struct.inet_connection_sock** %6, align 8
  %11 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %12 = call i32 @memset(%struct.tcp_info* %11, i32 0, i32 24)
  %13 = load %struct.sock*, %struct.sock** %3, align 8
  %14 = getelementptr inbounds %struct.sock, %struct.sock* %13, i32 0, i32 0
  %15 = load i32, i32* %14, align 4
  %16 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %17 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %16, i32 0, i32 5
  store i32 %15, i32* %17, align 4
  %18 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %19 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %18, i32 0, i32 3
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %22 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %21, i32 0, i32 4
  store i32 %20, i32* %22, align 4
  %23 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %24 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %23, i32 0, i32 2
  %25 = load i32, i32* %24, align 4
  %26 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %27 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %26, i32 0, i32 3
  store i32 %25, i32* %27, align 4
  %28 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %29 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %32 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %31, i32 0, i32 2
  store i32 %30, i32* %32, align 4
  %33 = load %struct.inet_connection_sock*, %struct.inet_connection_sock** %6, align 8
  %34 = getelementptr inbounds %struct.inet_connection_sock, %struct.inet_connection_sock* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %37 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %36, i32 0, i32 1
  store i32 %35, i32* %37, align 4
  %38 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %39 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %38, i32 0, i32 2
  %40 = load i32*, i32** %39, align 8
  %41 = icmp ne i32* %40, null
  br i1 %41, label %42, label %48

42:                                               ; preds = %2
  %43 = load i32, i32* @TCPI_OPT_SACK, align 4
  %44 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %45 = getelementptr inbounds %struct.tcp_info, %struct.tcp_info* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 4
  %47 = or i32 %46, %43
  store i32 %47, i32* %45, align 4
  br label %48

48:                                               ; preds = %42, %2
  %49 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %50 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %49, i32 0, i32 1
  %51 = load i32*, i32** %50, align 8
  %52 = icmp ne i32* %51, null
  br i1 %52, label %53, label %60

53:                                               ; preds = %48
  %54 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %55 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %54, i32 0, i32 1
  %56 = load i32*, i32** %55, align 8
  %57 = load %struct.sock*, %struct.sock** %3, align 8
  %58 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %59 = call i32 @ccid_hc_rx_get_info(i32* %56, %struct.sock* %57, %struct.tcp_info* %58)
  br label %60

60:                                               ; preds = %53, %48
  %61 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %62 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %61, i32 0, i32 0
  %63 = load i32*, i32** %62, align 8
  %64 = icmp ne i32* %63, null
  br i1 %64, label %65, label %72

65:                                               ; preds = %60
  %66 = load %struct.dccp_sock*, %struct.dccp_sock** %5, align 8
  %67 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %66, i32 0, i32 0
  %68 = load i32*, i32** %67, align 8
  %69 = load %struct.sock*, %struct.sock** %3, align 8
  %70 = load %struct.tcp_info*, %struct.tcp_info** %4, align 8
  %71 = call i32 @ccid_hc_tx_get_info(i32* %68, %struct.sock* %69, %struct.tcp_info* %70)
  br label %72

72:                                               ; preds = %65, %60
  ret void
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.inet_connection_sock* @inet_csk(%struct.sock*) #1

declare dso_local i32 @memset(%struct.tcp_info*, i32, i32) #1

declare dso_local i32 @ccid_hc_rx_get_info(i32*, %struct.sock*, %struct.tcp_info*) #1

declare dso_local i32 @ccid_hc_tx_get_info(i32*, %struct.sock*, %struct.tcp_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
