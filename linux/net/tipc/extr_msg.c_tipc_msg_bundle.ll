; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_bundle.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_bundle.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i64 0, align 8
@MSG_FRAGMENTER = common dso_local global i64 0, align 8
@TUNNEL_PROTOCOL = common dso_local global i64 0, align 8
@BCAST_PROTOCOL = common dso_local global i64 0, align 8
@MSG_BUNDLER = common dso_local global i64 0, align 8
@TIPC_SYSTEM_IMPORTANCE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_bundle(%struct.sk_buff* %0, %struct.tipc_msg* %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.tipc_msg*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.tipc_msg*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store %struct.tipc_msg* %1, %struct.tipc_msg** %6, align 8
  store i64 %2, i64* %7, align 8
  %14 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %15 = call i32 @msg_size(%struct.tipc_msg* %14)
  store i32 %15, i32* %10, align 4
  %16 = load i64, i64* %7, align 8
  %17 = load i64, i64* @INT_H_SIZE, align 8
  %18 = sub nsw i64 %16, %17
  store i64 %18, i64* %13, align 8
  %19 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %20 = call i64 @msg_user(%struct.tipc_msg* %19)
  %21 = load i64, i64* @MSG_FRAGMENTER, align 8
  %22 = icmp eq i64 %20, %21
  %23 = zext i1 %22 to i32
  %24 = call i64 @likely(i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %125

27:                                               ; preds = %3
  %28 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %29 = icmp ne %struct.sk_buff* %28, null
  br i1 %29, label %31, label %30

30:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %125

31:                                               ; preds = %27
  %32 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %33 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %32)
  store %struct.tipc_msg* %33, %struct.tipc_msg** %8, align 8
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %35 = call i32 @msg_size(%struct.tipc_msg* %34)
  store i32 %35, i32* %9, align 4
  %36 = load i32, i32* %9, align 4
  %37 = call i64 @align(i32 %36)
  store i64 %37, i64* %11, align 8
  %38 = load i64, i64* %11, align 8
  %39 = load i32, i32* %9, align 4
  %40 = zext i32 %39 to i64
  %41 = sub nsw i64 %38, %40
  store i64 %41, i64* %12, align 8
  %42 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %43 = call i64 @msg_user(%struct.tipc_msg* %42)
  %44 = load i64, i64* @TUNNEL_PROTOCOL, align 8
  %45 = icmp eq i64 %43, %44
  %46 = zext i1 %45 to i32
  %47 = call i64 @unlikely(i32 %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %31
  store i32 0, i32* %4, align 4
  br label %125

50:                                               ; preds = %31
  %51 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %52 = call i64 @msg_user(%struct.tipc_msg* %51)
  %53 = load i64, i64* @BCAST_PROTOCOL, align 8
  %54 = icmp eq i64 %52, %53
  %55 = zext i1 %54 to i32
  %56 = call i64 @unlikely(i32 %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %50
  store i32 0, i32* %4, align 4
  br label %125

59:                                               ; preds = %50
  %60 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %61 = call i64 @msg_user(%struct.tipc_msg* %60)
  %62 = load i64, i64* @MSG_BUNDLER, align 8
  %63 = icmp ne i64 %61, %62
  %64 = zext i1 %63 to i32
  %65 = call i64 @unlikely(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %59
  store i32 0, i32* %4, align 4
  br label %125

68:                                               ; preds = %59
  %69 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %70 = call i64 @skb_tailroom(%struct.sk_buff* %69)
  %71 = load i64, i64* %12, align 8
  %72 = load i32, i32* %10, align 4
  %73 = zext i32 %72 to i64
  %74 = add nsw i64 %71, %73
  %75 = icmp slt i64 %70, %74
  %76 = zext i1 %75 to i32
  %77 = call i64 @unlikely(i32 %76)
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %80

79:                                               ; preds = %68
  store i32 0, i32* %4, align 4
  br label %125

80:                                               ; preds = %68
  %81 = load i64, i64* %13, align 8
  %82 = load i64, i64* %11, align 8
  %83 = load i32, i32* %10, align 4
  %84 = zext i32 %83 to i64
  %85 = add nsw i64 %82, %84
  %86 = icmp slt i64 %81, %85
  %87 = zext i1 %86 to i32
  %88 = call i64 @unlikely(i32 %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %91

90:                                               ; preds = %80
  store i32 0, i32* %4, align 4
  br label %125

91:                                               ; preds = %80
  %92 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %93 = call i64 @msg_importance(%struct.tipc_msg* %92)
  %94 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %95 = icmp slt i64 %93, %94
  br i1 %95, label %96, label %102

96:                                               ; preds = %91
  %97 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %98 = call i64 @msg_importance(%struct.tipc_msg* %97)
  %99 = load i64, i64* @TIPC_SYSTEM_IMPORTANCE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %101, label %102

101:                                              ; preds = %96
  store i32 0, i32* %4, align 4
  br label %125

102:                                              ; preds = %96, %91
  %103 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %104 = load i64, i64* %12, align 8
  %105 = load i32, i32* %10, align 4
  %106 = zext i32 %105 to i64
  %107 = add nsw i64 %104, %106
  %108 = call i32 @skb_put(%struct.sk_buff* %103, i64 %107)
  %109 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %110 = load i64, i64* %11, align 8
  %111 = load %struct.tipc_msg*, %struct.tipc_msg** %6, align 8
  %112 = load i32, i32* %10, align 4
  %113 = call i32 @skb_copy_to_linear_data_offset(%struct.sk_buff* %109, i64 %110, %struct.tipc_msg* %111, i32 %112)
  %114 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %115 = load i64, i64* %11, align 8
  %116 = load i32, i32* %10, align 4
  %117 = zext i32 %116 to i64
  %118 = add nsw i64 %115, %117
  %119 = call i32 @msg_set_size(%struct.tipc_msg* %114, i64 %118)
  %120 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %121 = load %struct.tipc_msg*, %struct.tipc_msg** %8, align 8
  %122 = call i64 @msg_msgcnt(%struct.tipc_msg* %121)
  %123 = add nsw i64 %122, 1
  %124 = call i32 @msg_set_msgcnt(%struct.tipc_msg* %120, i64 %123)
  store i32 1, i32* %4, align 4
  br label %125

125:                                              ; preds = %102, %101, %90, %79, %67, %58, %49, %30, %26
  %126 = load i32, i32* %4, align 4
  ret i32 %126
}

declare dso_local i32 @msg_size(%struct.tipc_msg*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local i64 @msg_user(%struct.tipc_msg*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i64 @align(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @skb_tailroom(%struct.sk_buff*) #1

declare dso_local i64 @msg_importance(%struct.tipc_msg*) #1

declare dso_local i32 @skb_put(%struct.sk_buff*, i64) #1

declare dso_local i32 @skb_copy_to_linear_data_offset(%struct.sk_buff*, i64, %struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_msgcnt(%struct.tipc_msg*, i64) #1

declare dso_local i64 @msg_msgcnt(%struct.tipc_msg*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
