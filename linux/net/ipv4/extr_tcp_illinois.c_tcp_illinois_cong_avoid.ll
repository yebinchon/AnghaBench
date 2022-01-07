; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_cong_avoid.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_tcp_illinois.c_tcp_illinois_cong_avoid.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.tcp_sock = type { i32, i32, i64 }
%struct.illinois = type { i32, i32, i32 }

@ALPHA_SHIFT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, i32, i32)* @tcp_illinois_cong_avoid to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tcp_illinois_cong_avoid(%struct.sock* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.tcp_sock*, align 8
  %8 = alloca %struct.illinois*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %10 = load %struct.sock*, %struct.sock** %4, align 8
  %11 = call %struct.tcp_sock* @tcp_sk(%struct.sock* %10)
  store %struct.tcp_sock* %11, %struct.tcp_sock** %7, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call %struct.illinois* @inet_csk_ca(%struct.sock* %12)
  store %struct.illinois* %13, %struct.illinois** %8, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load %struct.illinois*, %struct.illinois** %8, align 8
  %16 = getelementptr inbounds %struct.illinois, %struct.illinois* %15, i32 0, i32 2
  %17 = load i32, i32* %16, align 4
  %18 = call i64 @after(i32 %14, i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %3
  %21 = load %struct.sock*, %struct.sock** %4, align 8
  %22 = call i32 @update_params(%struct.sock* %21)
  br label %23

23:                                               ; preds = %20, %3
  %24 = load %struct.sock*, %struct.sock** %4, align 8
  %25 = call i32 @tcp_is_cwnd_limited(%struct.sock* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %80

28:                                               ; preds = %23
  %29 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %30 = call i64 @tcp_in_slow_start(%struct.tcp_sock* %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %28
  %33 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @tcp_slow_start(%struct.tcp_sock* %33, i32 %34)
  br label %80

36:                                               ; preds = %28
  %37 = load %struct.illinois*, %struct.illinois** %8, align 8
  %38 = getelementptr inbounds %struct.illinois, %struct.illinois* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %41 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = add nsw i32 %42, %39
  store i32 %43, i32* %41, align 8
  %44 = load %struct.illinois*, %struct.illinois** %8, align 8
  %45 = getelementptr inbounds %struct.illinois, %struct.illinois* %44, i32 0, i32 0
  store i32 1, i32* %45, align 4
  %46 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %47 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = load %struct.illinois*, %struct.illinois** %8, align 8
  %50 = getelementptr inbounds %struct.illinois, %struct.illinois* %49, i32 0, i32 1
  %51 = load i32, i32* %50, align 4
  %52 = mul nsw i32 %48, %51
  %53 = load i32, i32* @ALPHA_SHIFT, align 4
  %54 = ashr i32 %52, %53
  store i32 %54, i32* %9, align 4
  %55 = load i32, i32* %9, align 4
  %56 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %57 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = icmp sge i32 %55, %58
  br i1 %59, label %60, label %79

60:                                               ; preds = %36
  %61 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %62 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %61, i32 0, i32 1
  %63 = load i32, i32* %62, align 4
  %64 = load i32, i32* %9, align 4
  %65 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %66 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 4
  %68 = sdiv i32 %64, %67
  %69 = add nsw i32 %63, %68
  %70 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %71 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %70, i32 0, i32 2
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = call i32 @min(i32 %69, i32 %73)
  %75 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %76 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %75, i32 0, i32 1
  store i32 %74, i32* %76, align 4
  %77 = load %struct.tcp_sock*, %struct.tcp_sock** %7, align 8
  %78 = getelementptr inbounds %struct.tcp_sock, %struct.tcp_sock* %77, i32 0, i32 0
  store i32 0, i32* %78, align 8
  br label %79

79:                                               ; preds = %60, %36
  br label %80

80:                                               ; preds = %27, %79, %32
  ret void
}

declare dso_local %struct.tcp_sock* @tcp_sk(%struct.sock*) #1

declare dso_local %struct.illinois* @inet_csk_ca(%struct.sock*) #1

declare dso_local i64 @after(i32, i32) #1

declare dso_local i32 @update_params(%struct.sock*) #1

declare dso_local i32 @tcp_is_cwnd_limited(%struct.sock*) #1

declare dso_local i64 @tcp_in_slow_start(%struct.tcp_sock*) #1

declare dso_local i32 @tcp_slow_start(%struct.tcp_sock*, i32) #1

declare dso_local i32 @min(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
