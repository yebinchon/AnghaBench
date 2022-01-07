; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_reverse.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_reverse.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i64 }
%struct.tipc_msg = type { i32 }

@uint = common dso_local global i32 0, align 4
@MAX_FORWARD_SIZE = common dso_local global i32 0, align 4
@SHORT_H_SIZE = common dso_local global i32 0, align 4
@BASIC_H_SIZE = common dso_local global i32 0, align 4
@TIPC_ERR_OVERLOAD = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_msg_reverse(i32 %0, %struct.sk_buff** %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca %struct.sk_buff**, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca %struct.tipc_msg*, align 8
  %10 = alloca %struct.tipc_msg*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store i32 %0, i32* %5, align 4
  store %struct.sk_buff** %1, %struct.sk_buff*** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %14 = load %struct.sk_buff*, %struct.sk_buff** %13, align 8
  store %struct.sk_buff* %14, %struct.sk_buff** %8, align 8
  %15 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %16 = call i64 @skb_linearize(%struct.sk_buff* %15)
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %19

18:                                               ; preds = %3
  br label %124

19:                                               ; preds = %3
  %20 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %21 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %20)
  store %struct.tipc_msg* %21, %struct.tipc_msg** %9, align 8
  %22 = load i32, i32* @uint, align 4
  %23 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %24 = call i32 @msg_data_sz(%struct.tipc_msg* %23)
  %25 = load i32, i32* @MAX_FORWARD_SIZE, align 4
  %26 = call i32 @min_t(i32 %22, i32 %24, i32 %25)
  store i32 %26, i32* %12, align 4
  %27 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %28 = call i32 @msg_hdr_sz(%struct.tipc_msg* %27)
  store i32 %28, i32* %11, align 4
  %29 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %30 = call i64 @msg_dest_droppable(%struct.tipc_msg* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %33

32:                                               ; preds = %19
  br label %124

33:                                               ; preds = %19
  %34 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %35 = call i64 @msg_errcode(%struct.tipc_msg* %34)
  %36 = icmp ne i64 %35, 0
  br i1 %36, label %37, label %38

37:                                               ; preds = %33
  br label %124

38:                                               ; preds = %33
  %39 = load i32, i32* %11, align 4
  %40 = load i32, i32* @SHORT_H_SIZE, align 4
  %41 = icmp eq i32 %39, %40
  br i1 %41, label %42, label %44

42:                                               ; preds = %38
  %43 = load i32, i32* @BASIC_H_SIZE, align 4
  store i32 %43, i32* %11, align 4
  br label %44

44:                                               ; preds = %42, %38
  %45 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %46 = call i64 @msg_is_syn(%struct.tipc_msg* %45)
  %47 = icmp ne i64 %46, 0
  br i1 %47, label %48, label %53

48:                                               ; preds = %44
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* @TIPC_ERR_OVERLOAD, align 4
  %51 = icmp eq i32 %49, %50
  br i1 %51, label %52, label %53

52:                                               ; preds = %48
  store i32 0, i32* %12, align 4
  br label %53

53:                                               ; preds = %52, %48, %44
  %54 = load i32, i32* %11, align 4
  %55 = load i32, i32* %12, align 4
  %56 = add nsw i32 %54, %55
  %57 = load i32, i32* @GFP_ATOMIC, align 4
  %58 = call %struct.sk_buff* @tipc_buf_acquire(i32 %56, i32 %57)
  %59 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* %58, %struct.sk_buff** %59, align 8
  %60 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %61 = load %struct.sk_buff*, %struct.sk_buff** %60, align 8
  %62 = icmp ne %struct.sk_buff* %61, null
  br i1 %62, label %64, label %63

63:                                               ; preds = %53
  br label %124

64:                                               ; preds = %53
  %65 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %66 = load %struct.sk_buff*, %struct.sk_buff** %65, align 8
  %67 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %66, i32 0, i32 0
  %68 = load i64, i64* %67, align 8
  %69 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %70 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %69, i32 0, i32 0
  %71 = load i64, i64* %70, align 8
  %72 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %73 = call i32 @msg_hdr_sz(%struct.tipc_msg* %72)
  %74 = call i32 @memcpy(i64 %68, i64 %71, i32 %73)
  %75 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %76 = load %struct.sk_buff*, %struct.sk_buff** %75, align 8
  %77 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load i32, i32* %11, align 4
  %80 = sext i32 %79 to i64
  %81 = add nsw i64 %78, %80
  %82 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %83 = call i64 @msg_data(%struct.tipc_msg* %82)
  %84 = load i32, i32* %12, align 4
  %85 = call i32 @memcpy(i64 %81, i64 %83, i32 %84)
  %86 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  %87 = load %struct.sk_buff*, %struct.sk_buff** %86, align 8
  %88 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %87)
  store %struct.tipc_msg* %88, %struct.tipc_msg** %10, align 8
  %89 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %90 = load i32, i32* %11, align 4
  %91 = call i32 @msg_set_hdr_sz(%struct.tipc_msg* %89, i32 %90)
  %92 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %93 = load i32, i32* %7, align 4
  %94 = call i32 @msg_set_errcode(%struct.tipc_msg* %92, i32 %93)
  %95 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %96 = call i32 @msg_set_non_seq(%struct.tipc_msg* %95, i32 0)
  %97 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %98 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %99 = call i32 @msg_destport(%struct.tipc_msg* %98)
  %100 = call i32 @msg_set_origport(%struct.tipc_msg* %97, i32 %99)
  %101 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %102 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %103 = call i32 @msg_origport(%struct.tipc_msg* %102)
  %104 = call i32 @msg_set_destport(%struct.tipc_msg* %101, i32 %103)
  %105 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %106 = load %struct.tipc_msg*, %struct.tipc_msg** %9, align 8
  %107 = call i32 @msg_prevnode(%struct.tipc_msg* %106)
  %108 = call i32 @msg_set_destnode(%struct.tipc_msg* %105, i32 %107)
  %109 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %110 = load i32, i32* %5, align 4
  %111 = call i32 @msg_set_prevnode(%struct.tipc_msg* %109, i32 %110)
  %112 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %113 = load i32, i32* %5, align 4
  %114 = call i32 @msg_set_orignode(%struct.tipc_msg* %112, i32 %113)
  %115 = load %struct.tipc_msg*, %struct.tipc_msg** %10, align 8
  %116 = load i32, i32* %11, align 4
  %117 = load i32, i32* %12, align 4
  %118 = add nsw i32 %116, %117
  %119 = call i32 @msg_set_size(%struct.tipc_msg* %115, i32 %118)
  %120 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %121 = call i32 @skb_orphan(%struct.sk_buff* %120)
  %122 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %123 = call i32 @kfree_skb(%struct.sk_buff* %122)
  store i32 1, i32* %4, align 4
  br label %128

124:                                              ; preds = %63, %37, %32, %18
  %125 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %126 = call i32 @kfree_skb(%struct.sk_buff* %125)
  %127 = load %struct.sk_buff**, %struct.sk_buff*** %6, align 8
  store %struct.sk_buff* null, %struct.sk_buff** %127, align 8
  store i32 0, i32* %4, align 4
  br label %128

128:                                              ; preds = %124, %64
  %129 = load i32, i32* %4, align 4
  ret i32 %129
}

declare dso_local i64 @skb_linearize(%struct.sk_buff*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @min_t(i32, i32, i32) #1

declare dso_local i32 @msg_data_sz(%struct.tipc_msg*) #1

declare dso_local i32 @msg_hdr_sz(%struct.tipc_msg*) #1

declare dso_local i64 @msg_dest_droppable(%struct.tipc_msg*) #1

declare dso_local i64 @msg_errcode(%struct.tipc_msg*) #1

declare dso_local i64 @msg_is_syn(%struct.tipc_msg*) #1

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i32, i32) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i64 @msg_data(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_hdr_sz(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_errcode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_non_seq(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_destport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_origport(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_prevnode(%struct.tipc_msg*) #1

declare dso_local i32 @msg_set_prevnode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i32) #1

declare dso_local i32 @skb_orphan(%struct.sk_buff*) #1

declare dso_local i32 @kfree_skb(%struct.sk_buff*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
