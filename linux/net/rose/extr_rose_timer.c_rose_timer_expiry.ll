; ModuleID = '/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/rose/extr_rose_timer.c_rose_timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rose_sock = type { i32, i32, %struct.TYPE_2__*, %struct.sock }
%struct.TYPE_2__ = type { i32 }
%struct.sock = type { i32 }
%struct.timer_list = type { i32 }

@timer = common dso_local global i32 0, align 4
@ROSE_CLEAR_REQUEST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@ROSE_COND_ACK_PENDING = common dso_local global i32 0, align 4
@rose = common dso_local global %struct.rose_sock* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.timer_list*)* @rose_timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @rose_timer_expiry(%struct.timer_list* %0) #0 {
  %2 = alloca %struct.timer_list*, align 8
  %3 = alloca %struct.rose_sock*, align 8
  %4 = alloca %struct.sock*, align 8
  store %struct.timer_list* %0, %struct.timer_list** %2, align 8
  %5 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %6 = ptrtoint %struct.rose_sock* %5 to i32
  %7 = load %struct.timer_list*, %struct.timer_list** %2, align 8
  %8 = load i32, i32* @timer, align 4
  %9 = call %struct.rose_sock* @from_timer(i32 %6, %struct.timer_list* %7, i32 %8)
  store %struct.rose_sock* %9, %struct.rose_sock** %3, align 8
  %10 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %11 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %10, i32 0, i32 3
  store %struct.sock* %11, %struct.sock** %4, align 8
  %12 = load %struct.sock*, %struct.sock** %4, align 8
  %13 = call i32 @bh_lock_sock(%struct.sock* %12)
  %14 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %15 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  switch i32 %16, label %52 [
    i32 131, label %17
    i32 128, label %17
    i32 130, label %25
    i32 129, label %35
  ]

17:                                               ; preds = %1, %1
  %18 = load %struct.sock*, %struct.sock** %4, align 8
  %19 = load i32, i32* @ROSE_CLEAR_REQUEST, align 4
  %20 = call i32 @rose_write_internal(%struct.sock* %18, i32 %19)
  %21 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %22 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %21, i32 0, i32 0
  store i32 130, i32* %22, align 8
  %23 = load %struct.sock*, %struct.sock** %4, align 8
  %24 = call i32 @rose_start_t3timer(%struct.sock* %23)
  br label %52

25:                                               ; preds = %1
  %26 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %27 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %26, i32 0, i32 2
  %28 = load %struct.TYPE_2__*, %struct.TYPE_2__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 4
  %31 = add nsw i32 %30, -1
  store i32 %31, i32* %29, align 4
  %32 = load %struct.sock*, %struct.sock** %4, align 8
  %33 = load i32, i32* @ETIMEDOUT, align 4
  %34 = call i32 @rose_disconnect(%struct.sock* %32, i32 %33, i32 -1, i32 -1)
  br label %52

35:                                               ; preds = %1
  %36 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %37 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %36, i32 0, i32 1
  %38 = load i32, i32* %37, align 4
  %39 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %40 = and i32 %38, %39
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %51

42:                                               ; preds = %35
  %43 = load i32, i32* @ROSE_COND_ACK_PENDING, align 4
  %44 = xor i32 %43, -1
  %45 = load %struct.rose_sock*, %struct.rose_sock** %3, align 8
  %46 = getelementptr inbounds %struct.rose_sock, %struct.rose_sock* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 4
  %48 = and i32 %47, %44
  store i32 %48, i32* %46, align 4
  %49 = load %struct.sock*, %struct.sock** %4, align 8
  %50 = call i32 @rose_enquiry_response(%struct.sock* %49)
  br label %51

51:                                               ; preds = %42, %35
  br label %52

52:                                               ; preds = %1, %51, %25, %17
  %53 = load %struct.sock*, %struct.sock** %4, align 8
  %54 = call i32 @bh_unlock_sock(%struct.sock* %53)
  ret void
}

declare dso_local %struct.rose_sock* @from_timer(i32, %struct.timer_list*, i32) #1

declare dso_local i32 @bh_lock_sock(%struct.sock*) #1

declare dso_local i32 @rose_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @rose_start_t3timer(%struct.sock*) #1

declare dso_local i32 @rose_disconnect(%struct.sock*, i32, i32, i32) #1

declare dso_local i32 @rose_enquiry_response(%struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
