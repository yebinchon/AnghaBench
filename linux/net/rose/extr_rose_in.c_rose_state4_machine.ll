; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_in.c_rose_state4_machine.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_in.c_rose_state4_machine.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sk_buff = type { i32* }
%struct.rose_sock = type { i32, %struct.TYPE_2__*, i32, i32, i32, i32, i32 }
%struct.TYPE_2__ = type { i32 }

@ROSE_STATE_3 = common dso_local global i32 0, align 4
@ROSE_CLEAR_CONFIRMATION = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sock*, %struct.sk_buff*, i32)* @rose_state4_machine to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rose_state4_machine(%struct.sock* %0, %struct.sk_buff* %1, i32 %2) #0 {
  %4 = alloca %struct.sock*, align 8
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rose_sock*, align 8
  store %struct.sock* %0, %struct.sock** %4, align 8
  store %struct.sk_buff* %1, %struct.sk_buff** %5, align 8
  store i32 %2, i32* %6, align 4
  %8 = load %struct.sock*, %struct.sock** %4, align 8
  %9 = call %struct.rose_sock* @rose_sk(%struct.sock* %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %7, align 8
  %10 = load i32, i32* %6, align 4
  switch i32 %10, label %56 [
    i32 128, label %11
    i32 129, label %14
    i32 130, label %34
  ]

11:                                               ; preds = %3
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @rose_write_internal(%struct.sock* %12, i32 129)
  br label %14

14:                                               ; preds = %3, %11
  %15 = load %struct.sock*, %struct.sock** %4, align 8
  %16 = call i32 @rose_stop_timer(%struct.sock* %15)
  %17 = load %struct.sock*, %struct.sock** %4, align 8
  %18 = call i32 @rose_start_idletimer(%struct.sock* %17)
  %19 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %20 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %19, i32 0, i32 0
  store i32 0, i32* %20, align 8
  %21 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 6
  store i32 0, i32* %22, align 8
  %23 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %24 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %23, i32 0, i32 5
  store i32 0, i32* %24, align 4
  %25 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %26 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %25, i32 0, i32 4
  store i32 0, i32* %26, align 8
  %27 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %28 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %27, i32 0, i32 3
  store i32 0, i32* %28, align 4
  %29 = load i32, i32* @ROSE_STATE_3, align 4
  %30 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %31 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %30, i32 0, i32 2
  store i32 %29, i32* %31, align 8
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = call i32 @rose_requeue_frames(%struct.sock* %32)
  br label %57

34:                                               ; preds = %3
  %35 = load %struct.sock*, %struct.sock** %4, align 8
  %36 = load i32, i32* @ROSE_CLEAR_CONFIRMATION, align 4
  %37 = call i32 @rose_write_internal(%struct.sock* %35, i32 %36)
  %38 = load %struct.sock*, %struct.sock** %4, align 8
  %39 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %40 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  %42 = getelementptr inbounds i32, i32* %41, i64 3
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %45 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  %47 = getelementptr inbounds i32, i32* %46, i64 4
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @rose_disconnect(%struct.sock* %38, i32 0, i32 %43, i32 %48)
  %50 = load %struct.rose_sock*, %struct.rose_sock** %7, align 8
  %51 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %50, i32 0, i32 1
  %52 = load %struct.TYPE_2__*, %struct.TYPE_2__** %51, align 8
  %53 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %52, i32 0, i32 0
  %54 = load i32, i32* %53, align 4
  %55 = add nsw i32 %54, -1
  store i32 %55, i32* %53, align 4
  br label %57

56:                                               ; preds = %3
  br label %57

57:                                               ; preds = %56, %34, %14
  ret i32 0
}

declare dso_local %struct.rose_sock* @rose_sk(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_stop_timer(%struct.sock*) #1

declare dso_local i32 @rose_start_idletimer(%struct.sock*) #1

declare dso_local i32 @rose_requeue_frames(%struct.sock*) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
