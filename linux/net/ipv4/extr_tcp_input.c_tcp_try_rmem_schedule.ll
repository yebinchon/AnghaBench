; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_rmem_schedule.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_input.c_tcp_try_rmem_schedule.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i64, i32 }
%struct.sk_buff = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @tcp_try_rmem_schedule to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_try_rmem_schedule(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %8 = load %struct.sock*, %struct.sock** %5, align 8
  %9 = getelementptr inbounds %struct.sock, %struct.sock* %8, i32 0, i32 1
  %10 = call i64 @atomic_read(i32* %9)
  %11 = load %struct.sock*, %struct.sock** %5, align 8
  %12 = getelementptr inbounds %struct.sock, %struct.sock* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp sgt i64 %10, %13
  br i1 %14, label %21, label %15

15:                                               ; preds = %3
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %18 = load i32, i32* %7, align 4
  %19 = call i32 @sk_rmem_schedule(%struct.sock* %16, %struct.sk_buff* %17, i32 %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %41, label %21

21:                                               ; preds = %15, %3
  %22 = load %struct.sock*, %struct.sock** %5, align 8
  %23 = call i64 @tcp_prune_queue(%struct.sock* %22)
  %24 = icmp slt i64 %23, 0
  br i1 %24, label %25, label %26

25:                                               ; preds = %21
  store i32 -1, i32* %4, align 4
  br label %42

26:                                               ; preds = %21
  br label %27

27:                                               ; preds = %39, %26
  %28 = load %struct.sock*, %struct.sock** %5, align 8
  %29 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %30 = load i32, i32* %7, align 4
  %31 = call i32 @sk_rmem_schedule(%struct.sock* %28, %struct.sk_buff* %29, i32 %30)
  %32 = icmp ne i32 %31, 0
  %33 = xor i1 %32, true
  br i1 %33, label %34, label %40

34:                                               ; preds = %27
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  %36 = call i32 @tcp_prune_ofo_queue(%struct.sock* %35)
  %37 = icmp ne i32 %36, 0
  br i1 %37, label %39, label %38

38:                                               ; preds = %34
  store i32 -1, i32* %4, align 4
  br label %42

39:                                               ; preds = %34
  br label %27

40:                                               ; preds = %27
  br label %41

41:                                               ; preds = %40, %15
  store i32 0, i32* %4, align 4
  br label %42

42:                                               ; preds = %41, %38, %25
  %43 = load i32, i32* %4, align 4
  ret i32 %43
}

declare dso_local i64 @atomic_read(i32*) #1

declare dso_local i32 @sk_rmem_schedule(%struct.sock*, %struct.sk_buff*, i32) #1

declare dso_local i64 @tcp_prune_queue(%struct.sock*) #1

declare dso_local i32 @tcp_prune_ofo_queue(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
