; ModuleID = '/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xdst_queue_output.c'
source_filename = "/home/carl/AnghaBench/linux/net/xfrm/extr_xfrm_policy.c_xdst_queue_output.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net = type { i32 }
%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.dst_entry = type { i32 }
%struct.xfrm_dst = type { %struct.xfrm_policy** }
%struct.xfrm_policy = type { %struct.xfrm_policy_queue }
%struct.xfrm_policy_queue = type { i64, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i64 }

@XFRM_MAX_QUEUE_LEN = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i32 0, align 4
@XFRM_QUEUE_TMO_MIN = common dso_local global i64 0, align 8
@jiffies = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net*, %struct.sock*, %struct.sk_buff*)* @xdst_queue_output to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @xdst_queue_output(%struct.net* %0, %struct.sock* %1, %struct.sk_buff* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sk_buff*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.dst_entry*, align 8
  %10 = alloca %struct.xfrm_dst*, align 8
  %11 = alloca %struct.xfrm_policy*, align 8
  %12 = alloca %struct.xfrm_policy_queue*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.sock* %1, %struct.sock** %6, align 8
  store %struct.sk_buff* %2, %struct.sk_buff** %7, align 8
  %13 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %14 = call %struct.dst_entry* @skb_dst(%struct.sk_buff* %13)
  store %struct.dst_entry* %14, %struct.dst_entry** %9, align 8
  %15 = load %struct.dst_entry*, %struct.dst_entry** %9, align 8
  %16 = bitcast %struct.dst_entry* %15 to %struct.xfrm_dst*
  store %struct.xfrm_dst* %16, %struct.xfrm_dst** %10, align 8
  %17 = load %struct.xfrm_dst*, %struct.xfrm_dst** %10, align 8
  %18 = getelementptr inbounds %struct.xfrm_dst, %struct.xfrm_dst* %17, i32 0, i32 0
  %19 = load %struct.xfrm_policy**, %struct.xfrm_policy*** %18, align 8
  %20 = getelementptr inbounds %struct.xfrm_policy*, %struct.xfrm_policy** %19, i64 0
  %21 = load %struct.xfrm_policy*, %struct.xfrm_policy** %20, align 8
  store %struct.xfrm_policy* %21, %struct.xfrm_policy** %11, align 8
  %22 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %23 = getelementptr inbounds %struct.xfrm_policy, %struct.xfrm_policy* %22, i32 0, i32 0
  store %struct.xfrm_policy_queue* %23, %struct.xfrm_policy_queue** %12, align 8
  %24 = load %struct.sock*, %struct.sock** %6, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %26 = call i32 @skb_fclone_busy(%struct.sock* %24, %struct.sk_buff* %25)
  %27 = call i64 @unlikely(i32 %26)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  store i32 0, i32* %4, align 4
  br label %103

32:                                               ; preds = %3
  %33 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %34 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %33, i32 0, i32 1
  %35 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %34, i32 0, i32 0
  %36 = load i64, i64* %35, align 8
  %37 = load i64, i64* @XFRM_MAX_QUEUE_LEN, align 8
  %38 = icmp sgt i64 %36, %37
  br i1 %38, label %39, label %44

39:                                               ; preds = %32
  %40 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %41 = call i32 @kfree_skb(%struct.sk_buff* %40)
  %42 = load i32, i32* @EAGAIN, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %4, align 4
  br label %103

44:                                               ; preds = %32
  %45 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %46 = call i32 @skb_dst_force(%struct.sk_buff* %45)
  %47 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %48 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %47, i32 0, i32 1
  %49 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %48, i32 0, i32 1
  %50 = call i32 @spin_lock_bh(i32* %49)
  %51 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %52 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %51, i32 0, i32 0
  %53 = load i64, i64* %52, align 8
  %54 = icmp ne i64 %53, 0
  br i1 %54, label %59, label %55

55:                                               ; preds = %44
  %56 = load i64, i64* @XFRM_QUEUE_TMO_MIN, align 8
  %57 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %58 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %57, i32 0, i32 0
  store i64 %56, i64* %58, align 8
  br label %59

59:                                               ; preds = %55, %44
  %60 = load i64, i64* @jiffies, align 8
  %61 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %62 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %61, i32 0, i32 0
  %63 = load i64, i64* %62, align 8
  %64 = add i64 %60, %63
  store i64 %64, i64* %8, align 8
  %65 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %66 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %65, i32 0, i32 2
  %67 = call i64 @del_timer(%struct.TYPE_4__* %66)
  %68 = icmp ne i64 %67, 0
  br i1 %68, label %69, label %85

69:                                               ; preds = %59
  %70 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %71 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %70, i32 0, i32 2
  %72 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %71, i32 0, i32 0
  %73 = load i64, i64* %72, align 8
  %74 = load i64, i64* %8, align 8
  %75 = call i64 @time_before(i64 %73, i64 %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %82

77:                                               ; preds = %69
  %78 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %79 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %78, i32 0, i32 2
  %80 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %79, i32 0, i32 0
  %81 = load i64, i64* %80, align 8
  store i64 %81, i64* %8, align 8
  br label %82

82:                                               ; preds = %77, %69
  %83 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %84 = call i32 @xfrm_pol_put(%struct.xfrm_policy* %83)
  br label %85

85:                                               ; preds = %82, %59
  %86 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %87 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %86, i32 0, i32 1
  %88 = load %struct.sk_buff*, %struct.sk_buff** %7, align 8
  %89 = call i32 @__skb_queue_tail(%struct.TYPE_5__* %87, %struct.sk_buff* %88)
  %90 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %91 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %90, i32 0, i32 2
  %92 = load i64, i64* %8, align 8
  %93 = call i32 @mod_timer(%struct.TYPE_4__* %91, i64 %92)
  %94 = icmp ne i32 %93, 0
  br i1 %94, label %98, label %95

95:                                               ; preds = %85
  %96 = load %struct.xfrm_policy*, %struct.xfrm_policy** %11, align 8
  %97 = call i32 @xfrm_pol_hold(%struct.xfrm_policy* %96)
  br label %98

98:                                               ; preds = %95, %85
  %99 = load %struct.xfrm_policy_queue*, %struct.xfrm_policy_queue** %12, align 8
  %100 = getelementptr inbounds %struct.xfrm_policy_queue, %struct.xfrm_policy_queue* %99, i32 0, i32 1
  %101 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %100, i32 0, i32 1
  %102 = call i32 @spin_unlock_bh(i32* %101)
  store i32 0, i32* %4, align 4
  br label %103

103:                                              ; preds = %98, %39, %29
  %104 = load i32, i32* %4, align 4
  ret i32 %104
}

declare dso_local %struct.dst_entry* @skb_dst(%struct.sk_buff*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_fclone_busy(%struct.sock*, %struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local i32 @skb_dst_force(%struct.sk_buff*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local i64 @del_timer(%struct.TYPE_4__*) #1

declare dso_local i64 @time_before(i64, i64) #1

declare dso_local i32 @xfrm_pol_put(%struct.xfrm_policy*) #1

declare dso_local i32 @__skb_queue_tail(%struct.TYPE_5__*, %struct.sk_buff*) #1

declare dso_local i32 @mod_timer(%struct.TYPE_4__*, i64) #1

declare dso_local i32 @xfrm_pol_hold(%struct.xfrm_policy*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
