; ModuleID = '/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_handler_sma.c'
source_filename = "/home/carl/AnghaBench/linux/net/ncsi/extr_ncsi-cmd.c_ncsi_cmd_handler_sma.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ncsi_cmd_arg = type { i32* }
%struct.ncsi_cmd_sma_pkt = type { %struct.TYPE_2__, i32, i32, i32* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, %struct.ncsi_cmd_arg*)* @ncsi_cmd_handler_sma to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ncsi_cmd_handler_sma(%struct.sk_buff* %0, %struct.ncsi_cmd_arg* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ncsi_cmd_arg*, align 8
  %5 = alloca %struct.ncsi_cmd_sma_pkt*, align 8
  %6 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ncsi_cmd_arg* %1, %struct.ncsi_cmd_arg** %4, align 8
  %7 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %8 = call %struct.ncsi_cmd_sma_pkt* @skb_put_zero(%struct.sk_buff* %7, i32 24)
  store %struct.ncsi_cmd_sma_pkt* %8, %struct.ncsi_cmd_sma_pkt** %5, align 8
  store i32 0, i32* %6, align 4
  br label %9

9:                                                ; preds = %26, %2
  %10 = load i32, i32* %6, align 4
  %11 = icmp slt i32 %10, 6
  br i1 %11, label %12, label %29

12:                                               ; preds = %9
  %13 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %14 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %13, i32 0, i32 0
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %6, align 4
  %17 = sext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %5, align 8
  %21 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %20, i32 0, i32 3
  %22 = load i32*, i32** %21, align 8
  %23 = load i32, i32* %6, align 4
  %24 = sext i32 %23 to i64
  %25 = getelementptr inbounds i32, i32* %22, i64 %24
  store i32 %19, i32* %25, align 4
  br label %26

26:                                               ; preds = %12
  %27 = load i32, i32* %6, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* %6, align 4
  br label %9

29:                                               ; preds = %9
  %30 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %31 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %30, i32 0, i32 0
  %32 = load i32*, i32** %31, align 8
  %33 = getelementptr inbounds i32, i32* %32, i64 6
  %34 = load i32, i32* %33, align 4
  %35 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %5, align 8
  %36 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %35, i32 0, i32 2
  store i32 %34, i32* %36, align 8
  %37 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %38 = getelementptr inbounds %struct.ncsi_cmd_arg, %struct.ncsi_cmd_arg* %37, i32 0, i32 0
  %39 = load i32*, i32** %38, align 8
  %40 = getelementptr inbounds i32, i32* %39, i64 7
  %41 = load i32, i32* %40, align 4
  %42 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %5, align 8
  %43 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %42, i32 0, i32 1
  store i32 %41, i32* %43, align 4
  %44 = load %struct.ncsi_cmd_sma_pkt*, %struct.ncsi_cmd_sma_pkt** %5, align 8
  %45 = getelementptr inbounds %struct.ncsi_cmd_sma_pkt, %struct.ncsi_cmd_sma_pkt* %44, i32 0, i32 0
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load %struct.ncsi_cmd_arg*, %struct.ncsi_cmd_arg** %4, align 8
  %48 = call i32 @ncsi_cmd_build_header(i32* %46, %struct.ncsi_cmd_arg* %47)
  ret i32 0
}

declare dso_local %struct.ncsi_cmd_sma_pkt* @skb_put_zero(%struct.sk_buff*, i32) #1

declare dso_local i32 @ncsi_cmd_build_header(i32*, %struct.ncsi_cmd_arg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
