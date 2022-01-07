; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_fraglist_ipcb_prepare.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_ip_output.c_ip_fraglist_ipcb_prepare.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.ip_fraglist_iter = type { i64, %struct.sk_buff* }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sk_buff*, %struct.ip_fraglist_iter*)* @ip_fraglist_ipcb_prepare to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ip_fraglist_ipcb_prepare(%struct.sk_buff* %0, %struct.ip_fraglist_iter* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.ip_fraglist_iter*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %3, align 8
  store %struct.ip_fraglist_iter* %1, %struct.ip_fraglist_iter** %4, align 8
  %6 = load %struct.ip_fraglist_iter*, %struct.ip_fraglist_iter** %4, align 8
  %7 = getelementptr inbounds %struct.ip_fraglist_iter, %struct.ip_fraglist_iter* %6, i32 0, i32 1
  %8 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  store %struct.sk_buff* %8, %struct.sk_buff** %5, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %10 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %9)
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %14 = call %struct.TYPE_2__* @IPCB(%struct.sk_buff* %13)
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  store i32 %12, i32* %15, align 4
  %16 = load %struct.ip_fraglist_iter*, %struct.ip_fraglist_iter** %4, align 8
  %17 = getelementptr inbounds %struct.ip_fraglist_iter, %struct.ip_fraglist_iter* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp eq i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %22 = call i32 @ip_options_fragment(%struct.sk_buff* %21)
  br label %23

23:                                               ; preds = %20, %2
  ret void
}

declare dso_local %struct.TYPE_2__* @IPCB(%struct.sk_buff*) #1

declare dso_local i32 @ip_options_fragment(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
