; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mss_split_point.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_output.c_tcp_mss_split_point.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32 }
%struct.tcp_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32, i32, i32)* @tcp_mss_split_point to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @tcp_mss_split_point(%struct.sock* %0, %struct.sk_buff* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.sk_buff*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.tcp_sock*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %7, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %17 = load %struct.sock*, %struct.sock** %7, align 8
  %18 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %17)
  store %struct.tcp_sock* %18, %struct.tcp_sock** %12, align 8
  %19 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %20 = call i32 @tcp_wnd_end(%struct.tcp_sock* %19)
  %21 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %22 = call %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff* %21)
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 4
  %25 = sub i32 %20, %24
  store i32 %25, i32* %15, align 4
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %10, align 4
  %28 = mul i32 %26, %27
  store i32 %28, i32* %16, align 4
  %29 = load i32, i32* %16, align 4
  %30 = load i32, i32* %15, align 4
  %31 = icmp ule i32 %29, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %5
  %33 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %34 = load %struct.sock*, %struct.sock** %7, align 8
  %35 = call %struct.sk_buff* @tcp_write_queue_tail(%struct.sock* %34)
  %36 = icmp ne %struct.sk_buff* %33, %35
  br label %37

37:                                               ; preds = %32, %5
  %38 = phi i1 [ false, %5 ], [ %36, %32 ]
  %39 = zext i1 %38 to i32
  %40 = call i64 @likely(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %37
  %43 = load i32, i32* %16, align 4
  store i32 %43, i32* %6, align 4
  br label %72

44:                                               ; preds = %37
  %45 = load %struct.sk_buff*, %struct.sk_buff** %8, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* %15, align 4
  %49 = call i32 @min(i32 %47, i32 %48)
  store i32 %49, i32* %14, align 4
  %50 = load i32, i32* %16, align 4
  %51 = load i32, i32* %14, align 4
  %52 = icmp ule i32 %50, %51
  br i1 %52, label %53, label %55

53:                                               ; preds = %44
  %54 = load i32, i32* %16, align 4
  store i32 %54, i32* %6, align 4
  br label %72

55:                                               ; preds = %44
  %56 = load i32, i32* %14, align 4
  %57 = load i32, i32* %9, align 4
  %58 = urem i32 %56, %57
  store i32 %58, i32* %13, align 4
  %59 = load i32, i32* %13, align 4
  %60 = icmp ne i32 %59, 0
  %61 = zext i1 %60 to i32
  %62 = load %struct.tcp_sock*, %struct.tcp_sock** %12, align 8
  %63 = load i32, i32* %11, align 4
  %64 = call i64 @tcp_nagle_check(i32 %61, %struct.tcp_sock* %62, i32 %63)
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %70

66:                                               ; preds = %55
  %67 = load i32, i32* %14, align 4
  %68 = load i32, i32* %13, align 4
  %69 = sub i32 %67, %68
  store i32 %69, i32* %6, align 4
  br label %72

70:                                               ; preds = %55
  %71 = load i32, i32* %14, align 4
  store i32 %71, i32* %6, align 4
  br label %72

72:                                               ; preds = %70, %66, %53, %42
  %73 = load i32, i32* %6, align 4
  ret i32 %73
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local i32 @tcp_wnd_end(%struct.tcp_sock*) #1

declare dso_local %struct.TYPE_2__* @TCP_SKB_CB(%struct.sk_buff*) #1

declare dso_local i64 @likely(i32) #1

declare dso_local %struct.sk_buff* @tcp_write_queue_tail(%struct.sock*) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i64 @tcp_nagle_check(i32, %struct.tcp_sock*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
