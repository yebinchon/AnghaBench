; ModuleID = '/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_ccid.c'
source_filename = "/home/carl/AnghaBench/linux/net/dccp/extr_feat.c_dccp_hdlr_ccid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.dccp_sock = type { %struct.ccid*, %struct.ccid* }
%struct.ccid = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, i32)* @dccp_hdlr_ccid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @dccp_hdlr_ccid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca %struct.dccp_sock*, align 8
  %9 = alloca %struct.ccid*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %10 = load %struct.sock*, %struct.sock** %5, align 8
  %11 = call %struct.dccp_sock* @dccp_sk(%struct.sock* %10)
  store %struct.dccp_sock* %11, %struct.dccp_sock** %8, align 8
  %12 = load i32, i32* %6, align 4
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = load i32, i32* %7, align 4
  %15 = call %struct.ccid* @ccid_new(i32 %12, %struct.sock* %13, i32 %14)
  store %struct.ccid* %15, %struct.ccid** %9, align 8
  %16 = load %struct.ccid*, %struct.ccid** %9, align 8
  %17 = icmp eq %struct.ccid* %16, null
  br i1 %17, label %18, label %21

18:                                               ; preds = %3
  %19 = load i32, i32* @ENOMEM, align 4
  %20 = sub nsw i32 0, %19
  store i32 %20, i32* %4, align 4
  br label %43

21:                                               ; preds = %3
  %22 = load i32, i32* %7, align 4
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %33

24:                                               ; preds = %21
  %25 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %26 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %25, i32 0, i32 1
  %27 = load %struct.ccid*, %struct.ccid** %26, align 8
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = call i32 @ccid_hc_rx_delete(%struct.ccid* %27, %struct.sock* %28)
  %30 = load %struct.ccid*, %struct.ccid** %9, align 8
  %31 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %32 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %31, i32 0, i32 1
  store %struct.ccid* %30, %struct.ccid** %32, align 8
  br label %42

33:                                               ; preds = %21
  %34 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %35 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %34, i32 0, i32 0
  %36 = load %struct.ccid*, %struct.ccid** %35, align 8
  %37 = load %struct.sock*, %struct.sock** %5, align 8
  %38 = call i32 @ccid_hc_tx_delete(%struct.ccid* %36, %struct.sock* %37)
  %39 = load %struct.ccid*, %struct.ccid** %9, align 8
  %40 = load %struct.dccp_sock*, %struct.dccp_sock** %8, align 8
  %41 = getelementptr inbounds %struct.dccp_sock, %struct.dccp_sock* %40, i32 0, i32 0
  store %struct.ccid* %39, %struct.ccid** %41, align 8
  br label %42

42:                                               ; preds = %33, %24
  store i32 0, i32* %4, align 4
  br label %43

43:                                               ; preds = %42, %18
  %44 = load i32, i32* %4, align 4
  ret i32 %44
}

declare dso_local %struct.dccp_sock* @dccp_sk(%struct.sock*) #1

declare dso_local %struct.ccid* @ccid_new(i32, %struct.sock*, i32) #1

declare dso_local i32 @ccid_hc_rx_delete(%struct.ccid*, %struct.sock*) #1

declare dso_local i32 @ccid_hc_tx_delete(%struct.ccid*, %struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
