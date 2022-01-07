; ModuleID = '/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_send_queue.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/extr_audit.c_kauditd_send_queue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff_head = type { i32 }
%struct.sk_buff = type opaque

@kauditd_send_queue.failed = internal global i32 0, align 4
@ECONNREFUSED = common dso_local global i32 0, align 4
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, i32, %struct.sk_buff_head*, i32, void (%struct.sk_buff*)*, void (%struct.sk_buff*)*)* @kauditd_send_queue to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kauditd_send_queue(%struct.sock* %0, i32 %1, %struct.sk_buff_head* %2, i32 %3, void (%struct.sk_buff*)* %4, void (%struct.sk_buff*)* %5) #0 {
  %7 = alloca %struct.sock*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca void (%struct.sk_buff*)*, align 8
  %12 = alloca void (%struct.sk_buff*)*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %7, align 8
  store i32 %1, i32* %8, align 4
  store %struct.sk_buff_head* %2, %struct.sk_buff_head** %9, align 8
  store i32 %3, i32* %10, align 4
  store void (%struct.sk_buff*)* %4, void (%struct.sk_buff*)** %11, align 8
  store void (%struct.sk_buff*)* %5, void (%struct.sk_buff*)** %12, align 8
  store i32 0, i32* %13, align 4
  br label %15

15:                                               ; preds = %78, %69, %34, %6
  %16 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %17 = call %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head* %16)
  store %struct.sk_buff* %17, %struct.sk_buff** %14, align 8
  %18 = icmp ne %struct.sk_buff* %17, null
  br i1 %18, label %19, label %79

19:                                               ; preds = %15
  %20 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %11, align 8
  %21 = icmp ne void (%struct.sk_buff*)* %20, null
  br i1 %21, label %22, label %25

22:                                               ; preds = %19
  %23 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %11, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  call void %23(%struct.sk_buff* %24)
  br label %25

25:                                               ; preds = %22, %19
  %26 = load %struct.sock*, %struct.sock** %7, align 8
  %27 = icmp ne %struct.sock* %26, null
  br i1 %27, label %35, label %28

28:                                               ; preds = %25
  %29 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %12, align 8
  %30 = icmp ne void (%struct.sk_buff*)* %29, null
  br i1 %30, label %31, label %34

31:                                               ; preds = %28
  %32 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %12, align 8
  %33 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  call void %32(%struct.sk_buff* %33)
  br label %34

34:                                               ; preds = %31, %28
  br label %15

35:                                               ; preds = %25
  %36 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %37 = call i32 @skb_get(%struct.sk_buff* %36)
  %38 = load %struct.sock*, %struct.sock** %7, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %40 = load i32, i32* %8, align 4
  %41 = call i32 @netlink_unicast(%struct.sock* %38, %struct.sk_buff* %39, i32 %40, i32 0)
  store i32 %41, i32* %13, align 4
  %42 = load i32, i32* %13, align 4
  %43 = icmp slt i32 %42, 0
  br i1 %43, label %44, label %75

44:                                               ; preds = %35
  %45 = load i32, i32* @kauditd_send_queue.failed, align 4
  %46 = add i32 %45, 1
  store i32 %46, i32* @kauditd_send_queue.failed, align 4
  %47 = load i32, i32* %10, align 4
  %48 = icmp uge i32 %46, %47
  br i1 %48, label %59, label %49

49:                                               ; preds = %44
  %50 = load i32, i32* %13, align 4
  %51 = load i32, i32* @ECONNREFUSED, align 4
  %52 = sub nsw i32 0, %51
  %53 = icmp eq i32 %50, %52
  br i1 %53, label %59, label %54

54:                                               ; preds = %49
  %55 = load i32, i32* %13, align 4
  %56 = load i32, i32* @EPERM, align 4
  %57 = sub nsw i32 0, %56
  %58 = icmp eq i32 %55, %57
  br i1 %58, label %59, label %70

59:                                               ; preds = %54, %49, %44
  store %struct.sock* null, %struct.sock** %7, align 8
  %60 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %12, align 8
  %61 = icmp ne void (%struct.sk_buff*)* %60, null
  br i1 %61, label %62, label %65

62:                                               ; preds = %59
  %63 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %12, align 8
  %64 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  call void %63(%struct.sk_buff* %64)
  br label %65

65:                                               ; preds = %62, %59
  %66 = load void (%struct.sk_buff*)*, void (%struct.sk_buff*)** %11, align 8
  %67 = icmp ne void (%struct.sk_buff*)* %66, null
  br i1 %67, label %69, label %68

68:                                               ; preds = %65
  br label %80

69:                                               ; preds = %65
  br label %15

70:                                               ; preds = %54
  %71 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %72 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %73 = call i32 @skb_queue_head(%struct.sk_buff_head* %71, %struct.sk_buff* %72)
  br label %74

74:                                               ; preds = %70
  br label %78

75:                                               ; preds = %35
  %76 = load %struct.sk_buff*, %struct.sk_buff** %14, align 8
  %77 = call i32 @consume_skb(%struct.sk_buff* %76)
  store i32 0, i32* @kauditd_send_queue.failed, align 4
  br label %78

78:                                               ; preds = %75, %74
  br label %15

79:                                               ; preds = %15
  br label %80

80:                                               ; preds = %79, %68
  %81 = load i32, i32* %13, align 4
  %82 = icmp sge i32 %81, 0
  br i1 %82, label %83, label %84

83:                                               ; preds = %80
  br label %86

84:                                               ; preds = %80
  %85 = load i32, i32* %13, align 4
  br label %86

86:                                               ; preds = %84, %83
  %87 = phi i32 [ 0, %83 ], [ %85, %84 ]
  ret i32 %87
}

declare dso_local %struct.sk_buff* @skb_dequeue(%struct.sk_buff_head*) #1

declare dso_local i32 @skb_get(%struct.sk_buff*) #1

declare dso_local i32 @netlink_unicast(%struct.sock*, %struct.sk_buff*, i32, i32) #1

declare dso_local i32 @skb_queue_head(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @consume_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
