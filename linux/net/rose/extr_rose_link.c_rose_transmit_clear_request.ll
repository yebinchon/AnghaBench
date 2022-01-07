; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_clear_request.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_link.c_rose_transmit_clear_request.c"
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
@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rose_transmit_clear_request(%struct.rose_neigh* %0, i32 %1, i8 zeroext %2, i8 zeroext %3) #0 {
  %5 = alloca %struct.rose_neigh*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i8, align 1
  %8 = alloca i8, align 1
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  store %struct.rose_neigh* %0, %struct.rose_neigh** %5, align 8
  store i32 %1, i32* %6, align 4
  store i8 %2, i8* %7, align 1
  store i8 %3, i8* %8, align 1
  %12 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %13 = load i32, i32* @AX25_MAX_HEADER_LEN, align 4
  %14 = add nsw i32 %12, %13
  %15 = load i32, i32* @ROSE_MIN_LEN, align 4
  %16 = add nsw i32 %14, %15
  %17 = add nsw i32 %16, 3
  store i32 %17, i32* %11, align 4
  %18 = load i32, i32* %11, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.sk_buff* @alloc_skb(i32 %18, i32 %19)
  store %struct.sk_buff* %20, %struct.sk_buff** %9, align 8
  %21 = icmp eq %struct.sk_buff* %20, null
  br i1 %21, label %22, label %23

22:                                               ; preds = %4
  br label %68

23:                                               ; preds = %4
  %24 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %25 = load i32, i32* @AX25_BPQ_HEADER_LEN, align 4
  %26 = load i32, i32* @AX25_MAX_HEADER_LEN, align 4
  %27 = add nsw i32 %25, %26
  %28 = call i32 @skb_reserve(%struct.sk_buff* %24, i32 %27)
  %29 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %30 = load i32, i32* @ROSE_MIN_LEN, align 4
  %31 = add nsw i32 %30, 3
  %32 = call i8* @skb_put(%struct.sk_buff* %29, i32 %31)
  store i8* %32, i8** %10, align 8
  %33 = load i32, i32* @AX25_P_ROSE, align 4
  %34 = trunc i32 %33 to i8
  %35 = load i8*, i8** %10, align 8
  %36 = getelementptr inbounds i8, i8* %35, i32 1
  store i8* %36, i8** %10, align 8
  store i8 %34, i8* %35, align 1
  %37 = load i32, i32* %6, align 4
  %38 = lshr i32 %37, 8
  %39 = and i32 %38, 15
  %40 = load i32, i32* @ROSE_GFI, align 4
  %41 = or i32 %39, %40
  %42 = trunc i32 %41 to i8
  %43 = load i8*, i8** %10, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %10, align 8
  store i8 %42, i8* %43, align 1
  %45 = load i32, i32* %6, align 4
  %46 = lshr i32 %45, 0
  %47 = and i32 %46, 255
  %48 = trunc i32 %47 to i8
  %49 = load i8*, i8** %10, align 8
  %50 = getelementptr inbounds i8, i8* %49, i32 1
  store i8* %50, i8** %10, align 8
  store i8 %48, i8* %49, align 1
  %51 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %52 = trunc i32 %51 to i8
  %53 = load i8*, i8** %10, align 8
  %54 = getelementptr inbounds i8, i8* %53, i32 1
  store i8* %54, i8** %10, align 8
  store i8 %52, i8* %53, align 1
  %55 = load i8, i8* %7, align 1
  %56 = load i8*, i8** %10, align 8
  %57 = getelementptr inbounds i8, i8* %56, i32 1
  store i8* %57, i8** %10, align 8
  store i8 %55, i8* %56, align 1
  %58 = load i8, i8* %8, align 1
  %59 = load i8*, i8** %10, align 8
  %60 = getelementptr inbounds i8, i8* %59, i32 1
  store i8* %60, i8** %10, align 8
  store i8 %58, i8* %59, align 1
  %61 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %62 = load %struct.rose_neigh*, %struct.rose_neigh** %5, align 8
  %63 = call i32 @rose_send_frame(%struct.sk_buff* %61, %struct.rose_neigh* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %68, label %65

65:                                               ; preds = %23
  %66 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %67 = call i32 @kfree_skb(%struct.sk_buff* %66)
  br label %68

68:                                               ; preds = %22, %65, %23
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
