; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_extract.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_extract.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@MIN_H_SIZE = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_extract(%struct.sk_buff* %0, %struct.sk_buff** %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca i32, align 4
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store i32* %2, i32** %7, align 8
  %11 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %11, align 8
  %12 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %13 = call i32 @skb_linearize(%struct.sk_buff* %12)
  %14 = call i64 @unlikely(i32 %13)
  %15 = icmp ne i64 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %80

17:                                               ; preds = %3
  %18 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %19 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %18)
  store %struct.tipc_msg* %19, %struct.tipc_msg** %8, align 8
  %20 = load i32*, i32** %7, align 8
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %23 = call i32 @msg_data_sz(%struct.tipc_msg* %22)
  %24 = load i32, i32* @MIN_H_SIZE, align 4
  %25 = sub nsw i32 %23, %24
  %26 = icmp sgt i32 %21, %25
  %27 = zext i1 %26 to i32
  %28 = call i64 @unlikely(i32 %27)
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %17
  br label %80

31:                                               ; preds = %17
  %32 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %33 = call i64 @msg_data(%struct.tipc_msg* %32)
  %34 = load i32*, i32** %7, align 8
  %35 = load i32, i32* %34, align 4
  %36 = sext i32 %35 to i64
  %37 = add nsw i64 %33, %36
  %38 = inttoptr i64 %37 to %struct.tipc_msg*
  store %struct.tipc_msg* %38, %struct.tipc_msg** %9, align 8
  %39 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %40 = call i32 @msg_size(%struct.tipc_msg* %39)
  store i32 %40, i32* %10, align 4
  %41 = load i32*, i32** %7, align 8
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* %10, align 4
  %44 = add nsw i32 %42, %43
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %46 = call i32 @msg_data_sz(%struct.tipc_msg* %45)
  %47 = icmp sgt i32 %44, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %31
  br label %80

49:                                               ; preds = %31
  %50 = load i32, i32* %10, align 4
  %51 = load i32, i32* @GFP_ATOMIC, align 4
  %52 = call %struct.sk_buff* @tipc_buf_acquire(i32 %50, i32 %51)
  %53 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %52, %struct.sk_buff** %53, align 8
  %54 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %55 = load %struct.sk_buff*, %struct.sk_buff** %54, align 8
  %56 = icmp ne %struct.sk_buff* %55, null
  br i1 %56, label %58, label %57

57:                                               ; preds = %49
  br label %80

58:                                               ; preds = %49
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %60 = load %struct.sk_buff*, %struct.sk_buff** %59, align 8
  %61 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %62 = load i32, i32* %10, align 4
  %63 = call i32 @skb_copy_to_linear_data(%struct.sk_buff* %60, %struct.tipc_msg* %61, i32 %62)
  %64 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %65 = call i32 @tipc_msg_validate(%struct.sk_buff** %64)
  %66 = icmp ne i32 %65, 0
  %67 = xor i1 %66, true
  %68 = zext i1 %67 to i32
  %69 = call i64 @unlikely(i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %71, label %72

71:                                               ; preds = %58
  br label %80

72:                                               ; preds = %58
  %73 = load i32, i32* %10, align 4
  %74 = call i64 @align(i32 %73)
  %75 = load i32*, i32** %7, align 8
  %76 = load i32, i32* %75, align 4
  %77 = sext i32 %76 to i64
  %78 = add nsw i64 %77, %74
  %79 = trunc i64 %78 to i32
  store i32 %79, i32* %75, align 4
  store i32 1, i32* %4, align 4
  br label %87

80:                                               ; preds = %71, %57, %48, %30, %16
  %81 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %82 = call i32 @kfree_skb(%struct.sk_buff* %81)
  %83 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %84 = load %struct.sk_buff*, %struct.sk_buff** %83, align 8
  %85 = call i32 @kfree_skb(%struct.sk_buff* %84)
  %86 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %86, align 8
  store i32 0, i32* %4, align 4
  br label %87

87:                                               ; preds = %80, %72
  %88 = load i32, i32* %4, align 4
  ret i32 %88
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i32 @skb_copy_to_linear_data(%struct.sk_buff*, %struct.tipc_msg*, i32) #1

declare dso_local i32 @tipc_msg_validate(%struct.sk_buff**) #1

declare dso_local i64 @align(i32) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
