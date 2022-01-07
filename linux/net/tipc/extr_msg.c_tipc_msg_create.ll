; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_create.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_msg.c_tipc_msg_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.tipc_msg = type { i32 }

@GFP_ATOMIC = common dso_local global i32 0, align 4
@SHORT_H_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sk_buff* @tipc_msg_create(i64 %0, i64 %1, i64 %2, i64 %3, i32 %4, i32 %5, i32 %6, i32 %7, i32 %8) #0 {
  %10 = alloca %struct.sk_buff*, align 8
  %11 = alloca i64, align 8
  %12 = alloca i64, align 8
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca %struct.tipc_msg*, align 8
  %21 = alloca %struct.sk_buff*, align 8
  store i64 %0, i64* %11, align 8
  store i64 %1, i64* %12, align 8
  store i64 %2, i64* %13, align 8
  store i64 %3, i64* %14, align 8
  store i32 %4, i32* %15, align 4
  store i32 %5, i32* %16, align 4
  store i32 %6, i32* %17, align 4
  store i32 %7, i32* %18, align 4
  store i32 %8, i32* %19, align 4
  %22 = load i64, i64* %13, align 8
  %23 = load i64, i64* %14, align 8
  %24 = add nsw i64 %22, %23
  %25 = load i32, i32* @GFP_ATOMIC, align 4
  %26 = call %struct.sk_buff* @tipc_buf_acquire(i64 %24, i32 %25)
  store %struct.sk_buff* %26, %struct.sk_buff** %21, align 8
  %27 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %28 = icmp ne %struct.sk_buff* %27, null
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i64 @unlikely(i32 %30)
  %32 = icmp ne i64 %31, 0
  br i1 %32, label %33, label %34

33:                                               ; preds = %9
  store %struct.sk_buff* null, %struct.sk_buff** %10, align 8
  br label %70

34:                                               ; preds = %9
  %35 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  %36 = call %struct.tipc_msg* @buf_msg(%struct.sk_buff* %35)
  store %struct.tipc_msg* %36, %struct.tipc_msg** %20, align 8
  %37 = load i32, i32* %16, align 4
  %38 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %39 = load i64, i64* %11, align 8
  %40 = load i64, i64* %12, align 8
  %41 = load i64, i64* %13, align 8
  %42 = load i32, i32* %15, align 4
  %43 = call i32 @tipc_msg_init(i32 %37, %struct.tipc_msg* %38, i64 %39, i64 %40, i64 %41, i32 %42)
  %44 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %45 = load i64, i64* %13, align 8
  %46 = load i64, i64* %14, align 8
  %47 = add nsw i64 %45, %46
  %48 = call i32 @msg_set_size(%struct.tipc_msg* %44, i64 %47)
  %49 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %50 = load i32, i32* %18, align 4
  %51 = call i32 @msg_set_origport(%struct.tipc_msg* %49, i32 %50)
  %52 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @msg_set_destport(%struct.tipc_msg* %52, i32 %53)
  %55 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %56 = load i32, i32* %19, align 4
  %57 = call i32 @msg_set_errcode(%struct.tipc_msg* %55, i32 %56)
  %58 = load i64, i64* %13, align 8
  %59 = load i64, i64* @SHORT_H_SIZE, align 8
  %60 = icmp sgt i64 %58, %59
  br i1 %60, label %61, label %68

61:                                               ; preds = %34
  %62 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %63 = load i32, i32* %16, align 4
  %64 = call i32 @msg_set_orignode(%struct.tipc_msg* %62, i32 %63)
  %65 = load %struct.tipc_msg*, %struct.tipc_msg** %20, align 8
  %66 = load i32, i32* %15, align 4
  %67 = call i32 @msg_set_destnode(%struct.tipc_msg* %65, i32 %66)
  br label %68

68:                                               ; preds = %61, %34
  %69 = load %struct.sk_buff*, %struct.sk_buff** %21, align 8
  store %struct.sk_buff* %69, %struct.sk_buff** %10, align 8
  br label %70

70:                                               ; preds = %68, %33
  %71 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  ret %struct.sk_buff* %71
}

declare dso_local %struct.sk_buff* @tipc_buf_acquire(i64, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.tipc_msg* @buf_msg(%struct.sk_buff*) #1

declare dso_local i32 @tipc_msg_init(i32, %struct.tipc_msg*, i64, i64, i64, i32) #1

declare dso_local i32 @msg_set_size(%struct.tipc_msg*, i64) #1

declare dso_local i32 @msg_set_origport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destport(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_errcode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_orignode(%struct.tipc_msg*, i32) #1

declare dso_local i32 @msg_set_destnode(%struct.tipc_msg*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
