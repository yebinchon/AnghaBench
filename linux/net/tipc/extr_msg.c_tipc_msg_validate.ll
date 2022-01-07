; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_validate.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_validate.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32, i32 }
%struct.tipc_msg = type { i32 }
%struct.TYPE_2__ = type { i32 }

@BUF_HEADROOM = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@MIN_H_SIZE = common dso_local global i32 0, align 4
@MAX_H_SIZE = common dso_local global i32 0, align 4
@TIPC_VERSION = common dso_local global i64 0, align 8
@TIPC_MAX_USER_MSG_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_validate(%struct.sk_buff** %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sk_buff**, align 8
  %4 = alloca %struct.sk_buff*, align 8
  %5 = alloca %struct.tipc_msg*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.sk_buff** %0, %struct.sk_buff*** %3, align 8
  %8 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %9 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  store %struct.sk_buff* %9, %struct.sk_buff** %4, align 8
  %10 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %11 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %14 = call i32 @buf_roundup_len(%struct.sk_buff* %13)
  %15 = sdiv i32 %12, %14
  %16 = icmp sge i32 %15, 4
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %34

20:                                               ; preds = %1
  %21 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %22 = load i32, i32* @BUF_HEADROOM, align 4
  %23 = load i32, i32* @GFP_ATOMIC, align 4
  %24 = call %struct.sk_buff* @skb_copy_expand(%struct.sk_buff* %21, i32 %22, i32 0, i32 %23)
  store %struct.sk_buff* %24, %struct.sk_buff** %4, align 8
  %25 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %26 = icmp ne %struct.sk_buff* %25, null
  br i1 %26, label %28, label %27

27:                                               ; preds = %20
  store i32 0, i32* %2, align 4
  br label %122

28:                                               ; preds = %20
  %29 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  %30 = load %struct.sk_buff*, %struct.sk_buff** %29, align 8
  %31 = call i32 @kfree_skb(%struct.sk_buff* %30)
  %32 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %33 = load %struct.sk_buff**, %struct.sk_buff*** %3, align 8
  store %struct.sk_buff* %32, %struct.sk_buff** %33, align 8
  br label %34

34:                                               ; preds = %28, %1
  %35 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %36 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %35)
  %37 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %36, i32 0, i32 0
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @unlikely(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %34
  store i32 1, i32* %2, align 4
  br label %122

42:                                               ; preds = %34
  %43 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %44 = load i32, i32* @MIN_H_SIZE, align 4
  %45 = call i32 @pskb_may_pull(%struct.sk_buff* %43, i32 %44)
  %46 = icmp ne i32 %45, 0
  %47 = xor i1 %46, true
  %48 = zext i1 %47 to i32
  %49 = call i64 @unlikely(i32 %48)
  %50 = icmp ne i64 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %42
  store i32 0, i32* %2, align 4
  br label %122

52:                                               ; preds = %42
  %53 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %54 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %53)
  %55 = call i32 @msg_hdr_sz(%struct.tipc_msg* %54)
  store i32 %55, i32* %7, align 4
  %56 = load i32, i32* %7, align 4
  %57 = load i32, i32* @MIN_H_SIZE, align 4
  %58 = icmp slt i32 %56, %57
  %59 = zext i1 %58 to i32
  %60 = call i64 @unlikely(i32 %59)
  %61 = icmp ne i64 %60, 0
  br i1 %61, label %66, label %62

62:                                               ; preds = %52
  %63 = load i32, i32* %7, align 4
  %64 = load i32, i32* @MAX_H_SIZE, align 4
  %65 = icmp sgt i32 %63, %64
  br i1 %65, label %66, label %67

66:                                               ; preds = %62, %52
  store i32 0, i32* %2, align 4
  br label %122

67:                                               ; preds = %62
  %68 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %69 = load i32, i32* %7, align 4
  %70 = call i32 @pskb_may_pull(%struct.sk_buff* %68, i32 %69)
  %71 = icmp ne i32 %70, 0
  %72 = xor i1 %71, true
  %73 = zext i1 %72 to i32
  %74 = call i64 @unlikely(i32 %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %67
  store i32 0, i32* %2, align 4
  br label %122

77:                                               ; preds = %67
  %78 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %79 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %78)
  store %struct.tipc_msg* %79, %struct.tipc_msg** %5, align 8
  %80 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %81 = call i64 @msg_version(%struct.tipc_msg* %80)
  %82 = load i64, i64* @TIPC_VERSION, align 8
  %83 = icmp ne i64 %81, %82
  %84 = zext i1 %83 to i32
  %85 = call i64 @unlikely(i32 %84)
  %86 = icmp ne i64 %85, 0
  br i1 %86, label %87, label %88

87:                                               ; preds = %77
  store i32 0, i32* %2, align 4
  br label %122

88:                                               ; preds = %77
  %89 = load %struct.tipc_msg*, %struct.tipc_msg** %5, align 8
  %90 = call i32 @msg_size(%struct.tipc_msg* %89)
  store i32 %90, i32* %6, align 4
  %91 = load i32, i32* %6, align 4
  %92 = load i32, i32* %7, align 4
  %93 = icmp slt i32 %91, %92
  %94 = zext i1 %93 to i32
  %95 = call i64 @unlikely(i32 %94)
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %88
  store i32 0, i32* %2, align 4
  br label %122

98:                                               ; preds = %88
  %99 = load i32, i32* %6, align 4
  %100 = load i32, i32* %7, align 4
  %101 = sub nsw i32 %99, %100
  %102 = load i32, i32* @TIPC_MAX_USER_MSG_SIZE, align 4
  %103 = icmp sgt i32 %101, %102
  %104 = zext i1 %103 to i32
  %105 = call i64 @unlikely(i32 %104)
  %106 = icmp ne i64 %105, 0
  br i1 %106, label %107, label %108

107:                                              ; preds = %98
  store i32 0, i32* %2, align 4
  br label %122

108:                                              ; preds = %98
  %109 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %110 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %109, i32 0, i32 1
  %111 = load i32, i32* %110, align 4
  %112 = load i32, i32* %6, align 4
  %113 = icmp slt i32 %111, %112
  %114 = zext i1 %113 to i32
  %115 = call i64 @unlikely(i32 %114)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %118

117:                                              ; preds = %108
  store i32 0, i32* %2, align 4
  br label %122

118:                                              ; preds = %108
  %119 = load %struct.sk_buff*, %struct.sk_buff** %4, align 8
  %120 = call %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff* %119)
  %121 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %120, i32 0, i32 0
  store i32 1, i32* %121, align 4
  store i32 1, i32* %2, align 4
  br label %122

122:                                              ; preds = %118, %117, %107, %97, %87, %76, %66, %51, %41, %27
  %123 = load i32, i32* %2, align 4
  ret i32 %123
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @buf_roundup_len(%struct.sk_buff*) #1

declare dso_local %struct.sk_buff* @skb_copy_expand(%struct.sk_buff*, i32, i32, i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

declare dso_local %struct.TYPE_2__* @TIPC_SKB_CB(%struct.sk_buff*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @msg_version(%struct.tipc_msg*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
