; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_named_prepare_buf.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_name_distr.c_named_prepare_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.net = type { i32 }
%struct.tipc_msg = type { i32 }

@INT_H_SIZE = common dso_local global i64 0, align 8
@GFP_ATOMIC = common dso_local global i32 0, align 4
@NAME_DISTRIBUTOR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.net*, i64, i64, i64)* @named_prepare_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @named_prepare_buf(%struct.net* %0, i64 %1, i64 %2, i64 %3) #0 {
  %5 = alloca %struct.net*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.sk_buff*, align 8
  %10 = alloca i64, align 8
  %11 = alloca %struct.tipc_msg*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  store i64 %3, i64* %8, align 8
  %12 = load i64, i64* @INT_H_SIZE, align 8
  %13 = load i64, i64* %7, align 8
  %14 = add nsw i64 %12, %13
  %15 = load i32, i32* @GFP_ATOMIC, align 4
  %16 = call %struct.sk_buff* @tipc_buf_acquire(i64 %14, i32 %15)
  store %struct.sk_buff* %16, %struct.sk_buff** %9, align 8
  %17 = load %struct.net*, %struct.net** %5, align 8
  %18 = call i64 @tipc_own_addr(%struct.net* %17)
  store i64 %18, i64* %10, align 8
  %19 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %20 = icmp ne %struct.sk_buff* %19, null
  br i1 %20, label %21, label %36

21:                                               ; preds = %4
  %22 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  %23 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %22)
  store %struct.tipc_msg* %23, %struct.tipc_msg** %11, align 8
  %24 = load i64, i64* %10, align 8
  %25 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %26 = load i32, i32* @NAME_DISTRIBUTOR, align 4
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* @INT_H_SIZE, align 8
  %29 = load i64, i64* %8, align 8
  %30 = call i32 @tipc_msg_init(i64 %24, %struct.tipc_msg* %25, i32 %26, i64 %27, i64 %28, i64 %29)
  %31 = load %struct.tipc_msg*, %struct.tipc_msg** %11, align 8
  %32 = load i64, i64* @INT_H_SIZE, align 8
  %33 = load i64, i64* %7, align 8
  %34 = add nsw i64 %32, %33
  %35 = call i32 @msg_set_size(%struct.tipc_msg* %31, i64 %34)
  br label %36

36:                                               ; preds = %21, %4
  %37 = load %struct.sk_buff*, %struct.sk_buff** %9, align 8
  ret %struct.sk_buff* %37
}

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i64, i32) #1

declare dso_local i64 @tipc_own_addr(%struct.net*) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_msg_init(i64, %struct.tipc_msg*, i32, i64, i64, i64) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
