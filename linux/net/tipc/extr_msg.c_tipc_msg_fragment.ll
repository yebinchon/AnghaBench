; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_fragment.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_fragment.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tipc_msg = type { i32 }
%struct.sk_buff_head = type { i32 }

@ENOMEM = common dso_local global i32 0, align 4
@INT_H_SIZE = common dso_local global i32 0, align 4
@EINVAL = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_fragment(%struct.sk_buff* %0, %struct.tipc_msg* %1, i32 %2, %struct.sk_buff_head* %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca %struct.tipc_msg*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.sk_buff_head*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.tipc_msg*, align 8
  %16 = alloca %struct.sk_buff*, align 8
  %17 = alloca i32*, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %6, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.sk_buff_head* %3, %struct.sk_buff_head** %9, align 8
  %18 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %19 = call i64 @skb_linearize(%struct.sk_buff* %18)
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %4
  %22 = load i32, i32* @ENOMEM, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %5, align 4
  br label %115

24:                                               ; preds = %4
  %25 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %26 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = inttoptr i64 %27 to i32*
  store i32* %28, i32** %17, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %29)
  %31 = call i32 @msg_size(%struct.tipc_msg* %30)
  store i32 %31, i32* %12, align 4
  %32 = load i32, i32* %8, align 4
  %33 = load i32, i32* @INT_H_SIZE, align 4
  %34 = sub nsw i32 %32, %33
  store i32 %34, i32* %13, align 4
  %35 = load i32, i32* %12, align 4
  %36 = load i32, i32* %13, align 4
  %37 = icmp sle i32 %35, %36
  br i1 %37, label %41, label %38

38:                                               ; preds = %24
  %39 = load i32, i32* %13, align 4
  %40 = icmp ne i32 %39, 0
  br i1 %40, label %44, label %41

41:                                               ; preds = %38, %24
  %42 = load i32, i32* @EINVAL, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %5, align 4
  br label %115

44:                                               ; preds = %38
  %45 = load i32, i32* %12, align 4
  %46 = load i32, i32* %13, align 4
  %47 = sdiv i32 %45, %46
  %48 = add nsw i32 %47, 1
  store i32 %48, i32* %11, align 4
  store i32 1, i32* %10, align 4
  br label %49

49:                                               ; preds = %104, %44
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* %11, align 4
  %52 = icmp sle i32 %50, %51
  br i1 %52, label %53, label %107

53:                                               ; preds = %49
  %54 = load i32, i32* %10, align 4
  %55 = load i32, i32* %11, align 4
  %56 = icmp slt i32 %54, %55
  br i1 %56, label %57, label %59

57:                                               ; preds = %53
  %58 = load i32, i32* %13, align 4
  store i32 %58, i32* %14, align 4
  br label %63

59:                                               ; preds = %53
  %60 = load i32, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = srem i32 %60, %61
  store i32 %62, i32* %14, align 4
  br label %63

63:                                               ; preds = %59, %57
  %64 = load i32, i32* @INT_H_SIZE, align 4
  %65 = load i32, i32* %14, align 4
  %66 = add nsw i32 %64, %65
  %67 = load i32, i32* @GFP_ATOMIC, align 4
  %68 = call %struct.sk_buff* @tipc_buf_acquire(i32 %66, i32 %67)
  store %struct.sk_buff* %68, %struct.sk_buff** %16, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %70 = icmp ne %struct.sk_buff* %69, null
  br i1 %70, label %72, label %71

71:                                               ; preds = %63
  br label %108

72:                                               ; preds = %63
  %73 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %74 = call i32 @skb_orphan(%struct.sk_buff* %73)
  %75 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %77 = call i32 @__skb_queue_tail(%struct.sk_buff_head* %75, %struct.sk_buff* %76)
  %78 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %79 = load %struct.tipc_msg*, %struct.tipc_msg** %7, align 8
  %80 = load i32, i32* @INT_H_SIZE, align 4
  %81 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %78, %struct.tipc_msg* %79, i32 %80)
  %82 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %83 = load i32, i32* @INT_H_SIZE, align 4
  %84 = load i32*, i32** %17, align 8
  %85 = load i32, i32* %14, align 4
  %86 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %82, i32 %83, i32* %84, i32 %85)
  %87 = load i32, i32* %14, align 4
  %88 = load i32*, i32** %17, align 8
  %89 = sext i32 %87 to i64
  %90 = getelementptr inbounds i32, i32* %88, i64 %89
  store i32* %90, i32** %17, align 8
  %91 = load %struct.sk_buff*, %struct.sk_buff** %16, align 8
  %92 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %91)
  store %struct.tipc_msg* %92, %struct.tipc_msg** %15, align 8
  %93 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %94 = load i32, i32* %10, align 4
  %95 = call i32 @msg_set_fragm_no(%struct.tipc_msg* %93, i32 %94)
  %96 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %97 = load i32, i32* %11, align 4
  %98 = call i32 @msg_set_nof_fragms(%struct.tipc_msg* %96, i32 %97)
  %99 = load %struct.tipc_msg*, %struct.tipc_msg** %15, align 8
  %100 = load i32, i32* @INT_H_SIZE, align 4
  %101 = load i32, i32* %14, align 4
  %102 = add nsw i32 %100, %101
  %103 = call i32 @msg_set_size(%struct.tipc_msg* %99, i32 %102)
  br label %104

104:                                              ; preds = %72
  %105 = load i32, i32* %10, align 4
  %106 = add nsw i32 %105, 1
  store i32 %106, i32* %10, align 4
  br label %49

107:                                              ; preds = %49
  store i32 0, i32* %5, align 4
  br label %115

108:                                              ; preds = %71
  %109 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %110 = call i32 @__skb_queue_purge(%struct.sk_buff_head* %109)
  %111 = load %struct.sk_buff_head*, %struct.sk_buff_head** %9, align 8
  %112 = call i32 @__skb_queue_head_init(%struct.sk_buff_head* %111)
  %113 = load i32, i32* @ENOMEM, align 4
  %114 = sub nsw i32 0, %113
  store i32 %114, i32* %5, align 4
  br label %115

115:                                              ; preds = %108, %107, %41, %21
  %116 = load i32, i32* %5, align 4
  ret i32 %116
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @__skb_queue_tail(%struct.sk_buff_head*, %struct.sk_buff*) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i32, i32*, i32) #1

declare dso_local i32 @msg_set_fragm_no(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_nof_fragms(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @__skb_queue_purge(%struct.sk_buff_head*) #1

declare dso_local i32 @__skb_queue_head_init(%struct.sk_buff_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
