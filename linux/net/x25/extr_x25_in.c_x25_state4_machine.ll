; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state4_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_in.c_x25_state4_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.x25_sock = type { i32, i32, i32, i32, i32, i32 }

@X25_STATE_3 = common dso_local global i32 0, align 4
@X25_STD_MIN_LEN = common dso_local global i32 0, align 4
@X25_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@X25_STATE_2 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @x25_state4_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @x25_state4_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sk_buff*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %5, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.sock*, %struct.sock** %5, align 8
  %10 = call %struct.x25_sock* @x25_sk(%struct.sock* %9)
  store %struct.x25_sock* %10, %struct.x25_sock** %8, align 8
  %11 = load i32, i32* %7, align 4
  switch i32 %11, label %56 [
    i32 128, label %12
    i32 129, label %15
    i32 130, label %33
  ]

12:                                               ; preds = %3
  %13 = load %struct.sock*, %struct.sock** %5, align 8
  %14 = call i32 @x25_write_internal(%struct.sock* %13, i32 129)
  br label %15

15:                                               ; preds = %3, %12
  %16 = load %struct.sock*, %struct.sock** %5, align 8
  %17 = call i32 @x25_stop_timer(%struct.sock* %16)
  %18 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %19 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %18, i32 0, i32 0
  store i32 0, i32* %19, align 4
  %20 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %21 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %20, i32 0, i32 5
  store i32 0, i32* %21, align 4
  %22 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %23 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %22, i32 0, i32 4
  store i32 0, i32* %23, align 4
  %24 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %25 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %24, i32 0, i32 3
  store i32 0, i32* %25, align 4
  %26 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %27 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %26, i32 0, i32 2
  store i32 0, i32* %27, align 4
  %28 = load i32, i32* @X25_STATE_3, align 4
  %29 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %30 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %29, i32 0, i32 1
  store i32 %28, i32* %30, align 4
  %31 = load %struct.sock*, %struct.sock** %5, align 8
  %32 = call i32 @x25_requeue_frames(%struct.sock* %31)
  br label %57

33:                                               ; preds = %3
  %34 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %35 = load i32, i32* @X25_STD_MIN_LEN, align 4
  %36 = add nsw i32 %35, 2
  %37 = call i32 @pskb_may_pull(%struct.sk_buff* %34, i32 %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %40, label %39

39:                                               ; preds = %33
  br label %58

40:                                               ; preds = %33
  %41 = load %struct.sock*, %struct.sock** %5, align 8
  %42 = load i32, i32* @X25_CLEAR_CONFIRMATION, align 4
  %43 = call i32 @x25_write_internal(%struct.sock* %41, i32 %42)
  %44 = load %struct.sock*, %struct.sock** %5, align 8
  %45 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %46 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %45, i32 0, i32 0
  %47 = load i32*, i32** %46, align 8
  %48 = getelementptr inbounds i32, i32* %47, i64 3
  %49 = load i32, i32* %48, align 4
  %50 = load %struct.sk_buff*, %struct.sk_buff** %6, align 8
  %51 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %50, i32 0, i32 0
  %52 = load i32*, i32** %51, align 8
  %53 = getelementptr inbounds i32, i32* %52, i64 4
  %54 = load i32, i32* %53, align 4
  %55 = call i32 @x25_disconnect(%struct.sock* %44, i32 0, i32 %49, i32 %54)
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %40, %15
  store i32 0, i32* %4, align 4
  br label %66

58:                                               ; preds = %39
  %59 = load %struct.sock*, %struct.sock** %5, align 8
  %60 = call i32 @x25_write_internal(%struct.sock* %59, i32 130)
  %61 = load i32, i32* @X25_STATE_2, align 4
  %62 = load %struct.x25_sock*, %struct.x25_sock** %8, align 8
  %63 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %62, i32 0, i32 1
  store i32 %61, i32* %63, align 4
  %64 = load %struct.sock*, %struct.sock** %5, align 8
  %65 = call i32 @x25_start_t23timer(%struct.sock* %64)
  store i32 0, i32* %4, align 4
  br label %66

66:                                               ; preds = %58, %57
  %67 = load i32, i32* %4, align 4
  ret i32 %67
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_stop_timer(%struct.sock*) #1

declare dso_local i32 @x25_requeue_frames(%struct.sock*) #1

declare dso_local i32 @pskb_may_pull(%struct.sk_buff*, i32) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
