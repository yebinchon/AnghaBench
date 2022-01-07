; ModuleID = '/home/carl/AnghaBench/linux/net/core/extr_datagram.c_skb_copy_and_csum_datagram_msg.c'
source_filename = "/home/carl/AnghaBench/linux/net/core/extr_datagram.c_skb_copy_and_csum_datagram_msg.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i64, i32, i32, i32 }
%struct.msghdr = type { i32 }

@EINVAL = common dso_local global i32 0, align 4
@CHECKSUM_COMPLETE = common dso_local global i64 0, align 8
@EFAULT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @skb_copy_and_csum_datagram_msg(%struct.sk_buff* %0, i32 %1, %struct.msghdr* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.msghdr*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.msghdr* %2, %struct.msghdr** %7, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  %13 = load i32, i32* %6, align 4
  %14 = sub nsw i32 %12, %13
  store i32 %14, i32* %9, align 4
  %15 = load i32, i32* %9, align 4
  %16 = icmp ne i32 %15, 0
  br i1 %16, label %18, label %17

17:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %89

18:                                               ; preds = %3
  %19 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %20 = call i32 @msg_data_left(%struct.msghdr* %19)
  %21 = load i32, i32* %9, align 4
  %22 = icmp slt i32 %20, %21
  br i1 %22, label %23, label %39

23:                                               ; preds = %18
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = call i64 @__skb_checksum_complete(%struct.sk_buff* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %30

27:                                               ; preds = %23
  %28 = load i32, i32* @EINVAL, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %4, align 4
  br label %89

30:                                               ; preds = %23
  %31 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %32 = load i32, i32* %6, align 4
  %33 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %34 = load i32, i32* %9, align 4
  %35 = call i64 @skb_copy_datagram_msg(%struct.sk_buff* %31, i32 %32, %struct.msghdr* %33, i32 %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %30
  br label %86

38:                                               ; preds = %30
  br label %85

39:                                               ; preds = %18
  %40 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %41 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %40, i32 0, i32 4
  %42 = load i32, i32* %41, align 8
  %43 = load i32, i32* %6, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 3
  %46 = load i32, i32* %45, align 4
  %47 = call i32 @csum_partial(i32 %42, i32 %43, i32 %46)
  store i32 %47, i32* %8, align 4
  %48 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %49 = load i32, i32* %6, align 4
  %50 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %51 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %50, i32 0, i32 0
  %52 = load i32, i32* %9, align 4
  %53 = call i64 @skb_copy_and_csum_datagram(%struct.sk_buff* %48, i32 %49, i32* %51, i32 %52, i32* %8)
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %55, label %56

55:                                               ; preds = %39
  br label %86

56:                                               ; preds = %39
  %57 = load i32, i32* %8, align 4
  %58 = call i64 @csum_fold(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %67

60:                                               ; preds = %56
  %61 = load %struct.msghdr*, %struct.msghdr** %7, align 8
  %62 = getelementptr inbounds %struct.msghdr, %struct.msghdr* %61, i32 0, i32 0
  %63 = load i32, i32* %9, align 4
  %64 = call i32 @iov_iter_revert(i32* %62, i32 %63)
  %65 = load i32, i32* @EINVAL, align 4
  %66 = sub nsw i32 0, %65
  store i32 %66, i32* %4, align 4
  br label %89

67:                                               ; preds = %56
  %68 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %69 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %68, i32 0, i32 1
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @CHECKSUM_COMPLETE, align 8
  %72 = icmp eq i64 %70, %71
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %84

76:                                               ; preds = %67
  %77 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %78 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %77, i32 0, i32 2
  %79 = load i32, i32* %78, align 8
  %80 = icmp ne i32 %79, 0
  br i1 %80, label %84, label %81

81:                                               ; preds = %76
  %82 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %83 = call i32 @netdev_rx_csum_fault(i32* null, %struct.sk_buff* %82)
  br label %84

84:                                               ; preds = %81, %76, %67
  br label %85

85:                                               ; preds = %84, %38
  store i32 0, i32* %4, align 4
  br label %89

86:                                               ; preds = %55, %37
  %87 = load i32, i32* @EFAULT, align 4
  %88 = sub nsw i32 0, %87
  store i32 %88, i32* %4, align 4
  br label %89

89:                                               ; preds = %86, %85, %60, %27, %17
  %90 = load i32, i32* %4, align 4
  ret i32 %90
}

declare dso_local i32 @msg_data_left(%struct.msghdr*) #1

declare dso_local i64 @__skb_checksum_complete(%struct.sk_buff*) #1

declare dso_local i64 @skb_copy_datagram_msg(%struct.sk_buff*, i32, %struct.msghdr*, i32) #1

declare dso_local i32 @csum_partial(i32, i32, i32) #1

declare dso_local i64 @skb_copy_and_csum_datagram(%struct.sk_buff*, i32, i32*, i32, i32*) #1

declare dso_local i64 @csum_fold(i32) #1

declare dso_local i32 @iov_iter_revert(i32*, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @netdev_rx_csum_fault(i32*, %struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
