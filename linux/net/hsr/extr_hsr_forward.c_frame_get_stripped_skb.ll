; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_frame_get_stripped_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_frame_get_stripped_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hsr_frame_info = type { i64, i32 }
%struct.hsr_port = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hsr_frame_info*, %struct.hsr_port*)* @frame_get_stripped_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @frame_get_stripped_skb(%struct.hsr_frame_info* %0, %struct.hsr_port* %1) #0 {
  %3 = alloca %struct.hsr_frame_info*, align 8
  %4 = alloca %struct.hsr_port*, align 8
  store %struct.hsr_frame_info* %0, %struct.hsr_frame_info** %3, align 8
  store %struct.hsr_port* %1, %struct.hsr_port** %4, align 8
  %5 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %3, align 8
  %6 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = icmp ne i64 %7, 0
  br i1 %8, label %17, label %9

9:                                                ; preds = %2
  %10 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %3, align 8
  %11 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 8
  %13 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %3, align 8
  %14 = call i64 @create_stripped_skb(i32 %12, %struct.hsr_frame_info* %13)
  %15 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %3, align 8
  %16 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %15, i32 0, i32 0
  store i64 %14, i64* %16, align 8
  br label %17

17:                                               ; preds = %9, %2
  %18 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %3, align 8
  %19 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = load i32, i32* @GFP_ATOMIC, align 4
  %22 = call %struct.sk_buff* @skb_clone(i64 %20, i32 %21)
  ret %struct.sk_buff* %22
}

declare dso_local i64 @create_stripped_skb(i32, %struct.hsr_frame_info*) #1

declare dso_local %struct.sk_buff* @skb_clone(i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
