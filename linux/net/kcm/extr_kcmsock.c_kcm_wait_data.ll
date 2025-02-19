; ModuleID = '/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_wait_data.c'
source_filename = "/home/carl/AnghaBench/linux/net/kcm/extr_kcmsock.c_kcm_wait_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.sock = type { i64, i32 }

@SOCK_DONE = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@EAGAIN = common dso_local global i32 0, align 4
@current = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sk_buff* (%struct.sock*, i32, i64, i32*)* @kcm_wait_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sk_buff* @kcm_wait_data(%struct.sock* %0, i32 %1, i64 %2, i32* %3) #0 {
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.sk_buff*, align 8
  store %struct.sock* %0, %struct.sock** %6, align 8
  store i32 %1, i32* %7, align 4
  store i64 %2, i64* %8, align 8
  store i32* %3, i32** %9, align 8
  br label %11

11:                                               ; preds = %54, %4
  %12 = load %struct.sock*, %struct.sock** %6, align 8
  %13 = getelementptr inbounds %struct.sock, %struct.sock* %12, i32 0, i32 1
  %14 = call %struct.sk_buff* @skb_peek(i32* %13)
  store %struct.sk_buff* %14, %struct.sk_buff** %10, align 8
  %15 = icmp ne %struct.sk_buff* %14, null
  %16 = xor i1 %15, true
  br i1 %16, label %17, label %55

17:                                               ; preds = %11
  %18 = load %struct.sock*, %struct.sock** %6, align 8
  %19 = getelementptr inbounds %struct.sock, %struct.sock* %18, i32 0, i32 0
  %20 = load i64, i64* %19, align 8
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %26

22:                                               ; preds = %17
  %23 = load %struct.sock*, %struct.sock** %6, align 8
  %24 = call i32 @sock_error(%struct.sock* %23)
  %25 = load i32*, i32** %9, align 8
  store i32 %24, i32* %25, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %57

26:                                               ; preds = %17
  %27 = load %struct.sock*, %struct.sock** %6, align 8
  %28 = load i32, i32* @SOCK_DONE, align 4
  %29 = call i64 @sock_flag(%struct.sock* %27, i32 %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %32

31:                                               ; preds = %26
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %57

32:                                               ; preds = %26
  %33 = load i32, i32* %7, align 4
  %34 = load i32, i32* @MSG_DONTWAIT, align 4
  %35 = and i32 %33, %34
  %36 = icmp ne i32 %35, 0
  br i1 %36, label %40, label %37

37:                                               ; preds = %32
  %38 = load i64, i64* %8, align 8
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %44, label %40

40:                                               ; preds = %37, %32
  %41 = load i32, i32* @EAGAIN, align 4
  %42 = sub nsw i32 0, %41
  %43 = load i32*, i32** %9, align 8
  store i32 %42, i32* %43, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %57

44:                                               ; preds = %37
  %45 = load %struct.sock*, %struct.sock** %6, align 8
  %46 = call i32 @sk_wait_data(%struct.sock* %45, i64* %8, i32* null)
  %47 = load i32, i32* @current, align 4
  %48 = call i64 @signal_pending(i32 %47)
  %49 = icmp ne i64 %48, 0
  br i1 %49, label %50, label %54

50:                                               ; preds = %44
  %51 = load i64, i64* %8, align 8
  %52 = call i32 @sock_intr_errno(i64 %51)
  %53 = load i32*, i32** %9, align 8
  store i32 %52, i32* %53, align 4
  store %struct.sk_buff* null, %struct.sk_buff** %5, align 8
  br label %57

54:                                               ; preds = %44
  br label %11

55:                                               ; preds = %11
  %56 = load %struct.sk_buff*, %struct.sk_buff** %10, align 8
  store %struct.sk_buff* %56, %struct.sk_buff** %5, align 8
  br label %57

57:                                               ; preds = %55, %50, %40, %31, %22
  %58 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  ret %struct.sk_buff* %58
}

declare dso_local %struct.sk_buff* @skb_peek(i32*) #1

declare dso_local i32 @sock_error(%struct.sock*) #1

declare dso_local i64 @sock_flag(%struct.sock*, i32) #1

declare dso_local i32 @sk_wait_data(%struct.sock*, i64*, i32*) #1

declare dso_local i64 @signal_pending(i32) #1

declare dso_local i32 @sock_intr_errno(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
