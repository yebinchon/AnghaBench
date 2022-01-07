; ModuleID = '/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_do_timer_expiry.c'
source_filename = "/home/carl/AnghaBench/linux/net/x25/extr_x25_timer.c_x25_do_timer_expiry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.x25_sock = type { i32, i32 }

@X25_COND_ACK_PENDING = common dso_local global i32 0, align 4
@X25_CLEAR_REQUEST = common dso_local global i32 0, align 4
@ETIMEDOUT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*)* @x25_do_timer_expiry to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @x25_do_timer_expiry(%struct.sock* %0) #0 {
  %2 = alloca %struct.sock*, align 8
  %3 = alloca %struct.x25_sock*, align 8
  store %struct.sock* %0, %struct.sock** %2, align 8
  %4 = load %struct.sock*, %struct.sock** %2, align 8
  %5 = call %struct.x25_sock* @x25_sk(%struct.sock* %4)
  store %struct.x25_sock* %5, %struct.x25_sock** %3, align 8
  %6 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %7 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %6, i32 0, i32 0
  %8 = load i32, i32* %7, align 4
  switch i32 %8, label %38 [
    i32 129, label %9
    i32 131, label %26
    i32 128, label %26
    i32 130, label %34
  ]

9:                                                ; preds = %1
  %10 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %11 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %10, i32 0, i32 1
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %14 = and i32 %12, %13
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %25

16:                                               ; preds = %9
  %17 = load i32, i32* @X25_COND_ACK_PENDING, align 4
  %18 = xor i32 %17, -1
  %19 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %20 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = and i32 %21, %18
  store i32 %22, i32* %20, align 4
  %23 = load %struct.sock*, %struct.sock** %2, align 8
  %24 = call i32 @x25_enquiry_response(%struct.sock* %23)
  br label %25

25:                                               ; preds = %16, %9
  br label %38

26:                                               ; preds = %1, %1
  %27 = load %struct.sock*, %struct.sock** %2, align 8
  %28 = load i32, i32* @X25_CLEAR_REQUEST, align 4
  %29 = call i32 @x25_write_internal(%struct.sock* %27, i32 %28)
  %30 = load %struct.x25_sock*, %struct.x25_sock** %3, align 8
  %31 = getelementptr inbounds %struct.x25_sock, %struct.x25_sock* %30, i32 0, i32 0
  store i32 130, i32* %31, align 4
  %32 = load %struct.sock*, %struct.sock** %2, align 8
  %33 = call i32 @x25_start_t23timer(%struct.sock* %32)
  br label %38

34:                                               ; preds = %1
  %35 = load %struct.sock*, %struct.sock** %2, align 8
  %36 = load i32, i32* @ETIMEDOUT, align 4
  %37 = call i32 @x25_disconnect(%struct.sock* %35, i32 %36, i32 0, i32 0)
  br label %38

38:                                               ; preds = %1, %34, %26, %25
  ret void
}

declare dso_local %struct.x25_sock* @x25_sk(%struct.sock*) #1

declare dso_local i32 @x25_enquiry_response(%struct.sock*) #1

declare dso_local i32 @x25_write_internal(%struct.sock*, i32) #1

declare dso_local i32 @x25_start_t23timer(%struct.sock*) #1

declare dso_local i32 @x25_disconnect(%struct.sock*, i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
