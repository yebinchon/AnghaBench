; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_restart_confirmation.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_restart_confirmation.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_neigh = type { i32 }
%struct.sk_buff = type { i32 }

@AX25_BPQ_HEADER_LEN = common dso_local global i32 0, align 4
@AX25_MAX_HEADER_LEN = common dso_local global i32 0, align 4
@ROSE_MIN_LEN = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@AX25_P_ROSE = common dso_local global i32 0, align 4
@ROSE_GFI = common dso_local global i32 0, align 4
@ROSE_RESTART_CONFIRMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.rose_neigh*)* @rose_transmit_restart_confirmation to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_transmit_restart_confirmation(%struct.rose_neigh* %0) #0 {
  %2 = alloca %struct.rose_neigh*, align 8
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  store %struct.rose_neigh* %0, %struct.rose_neigh** %2, align 8
  %6 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %7 = load i32, i32* @AX25_MAX_HEADER_LEN, align 4
  %8 = add nsw i32 %6, %7
  %9 = load i32, i32* @ROSE_MIN_LEN, align 4
  %10 = add nsw i32 %8, %9
  %11 = add nsw i32 %10, 1
  store i32 %11, i32* %5, align 4
  %12 = load i32, i32* %5, align 4
  %13 = load i32, i32* @GFP_ATOMIC, align 4
  %14 = call %struct.sk_buff* @alloc_skb(i32 %12, i32 %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %3, align 8
  %15 = icmp eq %struct.sk_buff* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %1
  br label %48

17:                                               ; preds = %1
  %18 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %19 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %20 = load i32, i32* @AX25_MAX_HEADER_LEN, align 4
  %21 = add nsw i32 %19, %20
  %22 = call i32 @skb_reserve(%struct.sk_buff* %18, i32 %21)
  %23 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %24 = load i32, i32* @ROSE_MIN_LEN, align 4
  %25 = add nsw i32 %24, 1
  %26 = call i8* @skb_put(%struct.sk_buff* %23, i32 %25)
  store i8* %26, i8** %4, align 8
  %27 = load i32, i32* @AX25_P_ROSE, align 4
  %28 = trunc i32 %27 to i8
  %29 = load i8*, i8** %4, align 8
  %30 = getelementptr inbounds i8, i8* %29, i32 1
  store i8* %30, i8** %4, align 8
  store i8 %28, i8* %29, align 1
  %31 = load i32, i32* @ROSE_GFI, align 4
  %32 = trunc i32 %31 to i8
  %33 = load i8*, i8** %4, align 8
  %34 = getelementptr inbounds i8, i8* %33, i32 1
  store i8* %34, i8** %4, align 8
  store i8 %32, i8* %33, align 1
  %35 = load i8*, i8** %4, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %4, align 8
  store i8 0, i8* %35, align 1
  %37 = load i32, i32* @ROSE_RESTART_CONFIRMATION, align 4
  %38 = trunc i32 %37 to i8
  %39 = load i8*, i8** %4, align 8
  %40 = getelementptr inbounds i8, i8* %39, i32 1
  store i8* %40, i8** %4, align 8
  store i8 %38, i8* %39, align 1
  %41 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %42 = load %struct.rose_neigh*, %struct.rose_neigh** %2, align 8
  %43 = call i32 @rose_send_frame(%struct.sk_buff* %41, %struct.rose_neigh* %42)
  %44 = icmp ne i32 %43, 0
  br i1 %44, label %48, label %45

45:                                               ; preds = %17
  %46 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  %47 = call i32 @kfree_skb(%struct.sk_buff* %46)
  br label %48

48:                                               ; preds = %16, %45, %17
  ret void
}

declare dso_local %struct.sk_buff* @alloc_skb(i32, i32) #1

declare dso_local i32 @skb_reserve(%struct.sk_buff*, i32) #1

declare dso_local i8* @skb_put(%struct.sk_buff*, i32) #1

declare dso_local i32 @rose_send_frame(%struct.sk_buff*, %struct.rose_neigh*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
