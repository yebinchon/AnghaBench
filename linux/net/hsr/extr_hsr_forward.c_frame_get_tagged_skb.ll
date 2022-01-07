; ModuleID = '/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_frame_get_tagged_skb.c'
source_filename = "/home/carl/AnghaBench/linux/net/hsr/extr_hsr_forward.c_frame_get_tagged_skb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.hsr_frame_info = type { i32, i64 }
%struct.hsr_port = type { i64 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@HSR_PT_SLAVE_A = common dso_local global i64 0, align 8
@HSR_PT_SLAVE_B = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [62 x i8] c"HSR: Bug: trying to create a tagged frame for a non-ring port\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.hsr_frame_info*, %struct.hsr_port*)* @frame_get_tagged_skb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @frame_get_tagged_skb(%struct.hsr_frame_info* %0, %struct.hsr_port* %1) #0 {
  %3 = alloca %struct.sk_buff*, align 8
  %4 = alloca %struct.hsr_frame_info*, align 8
  %5 = alloca %struct.hsr_port*, align 8
  store %struct.hsr_frame_info* %0, %struct.hsr_frame_info** %4, align 8
  store %struct.hsr_port* %1, %struct.hsr_port** %5, align 8
  %6 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %4, align 8
  %7 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %6, i32 0, i32 1
  %8 = load i64, i64* %7, align 8
  %9 = icmp ne i64 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %2
  %11 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %4, align 8
  %12 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %11, i32 0, i32 1
  %13 = load i64, i64* %12, align 8
  %14 = load i32, i32* @GFP_ATOMIC, align 4
  %15 = call %struct.sk_buff* @skb_clone(i64 %13, i32 %14)
  store %struct.sk_buff* %15, %struct.sk_buff** %3, align 8
  br label %37

16:                                               ; preds = %2
  %17 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %18 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @HSR_PT_SLAVE_A, align 8
  %21 = icmp ne i64 %19, %20
  br i1 %21, label %22, label %30

22:                                               ; preds = %16
  %23 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %24 = getelementptr inbounds %struct.hsr_port, %struct.hsr_port* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @HSR_PT_SLAVE_B, align 8
  %27 = icmp ne i64 %25, %26
  br i1 %27, label %28, label %30

28:                                               ; preds = %22
  %29 = call i32 @WARN_ONCE(i32 1, i8* getelementptr inbounds ([62 x i8], [62 x i8]* @.str, i64 0, i64 0))
  store %struct.sk_buff* null, %struct.sk_buff** %3, align 8
  br label %37

30:                                               ; preds = %22, %16
  %31 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %4, align 8
  %32 = getelementptr inbounds %struct.hsr_frame_info, %struct.hsr_frame_info* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 8
  %34 = load %struct.hsr_frame_info*, %struct.hsr_frame_info** %4, align 8
  %35 = load %struct.hsr_port*, %struct.hsr_port** %5, align 8
  %36 = call %struct.sk_buff* @create_tagged_skb(i32 %33, %struct.hsr_frame_info* %34, %struct.hsr_port* %35)
  store %struct.sk_buff* %36, %struct.sk_buff** %3, align 8
  br label %37

37:                                               ; preds = %30, %28, %10
  %38 = load %struct.sk_buff*, %struct.sk_buff** %3, align 8
  ret %struct.sk_buff* %38
}

declare dso_local %struct.sk_buff* @skb_clone(i64, i32) #1

declare dso_local i32 @WARN_ONCE(i32, i8*) #1

declare dso_local %struct.sk_buff* @create_tagged_skb(i32, %struct.hsr_frame_info*, %struct.hsr_port*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
