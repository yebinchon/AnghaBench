; ModuleID = '/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_complete_hashdance.c'
source_filename = "/home/carl/AnghaBench/linux/net/ipv4/extr_inet_connection_sock.c_inet_csk_complete_hashdance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.request_sock = type { i32 }
%struct.TYPE_2__ = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sock* @inet_csk_complete_hashdance(%struct.sock* %0, %struct.sock* %1, %struct.request_sock* %2, i32 %3) #0 {
  %5 = alloca %struct.sock*, align 8
  %6 = alloca %struct.sock*, align 8
  %7 = alloca %struct.sock*, align 8
  %8 = alloca %struct.request_sock*, align 8
  %9 = alloca i32, align 4
  store %struct.sock* %0, %struct.sock** %6, align 8
  store %struct.sock* %1, %struct.sock** %7, align 8
  store %struct.request_sock* %2, %struct.request_sock** %8, align 8
  store i32 %3, i32* %9, align 4
  %10 = load i32, i32* %9, align 4
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %12, label %29

12:                                               ; preds = %4
  %13 = load %struct.sock*, %struct.sock** %6, align 8
  %14 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %15 = call i32 @inet_csk_reqsk_queue_drop(%struct.sock* %13, %struct.request_sock* %14)
  %16 = load %struct.sock*, %struct.sock** %6, align 8
  %17 = call %struct.TYPE_2__* @inet_csk(%struct.sock* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %20 = call i32 @reqsk_queue_removed(i32* %18, %struct.request_sock* %19)
  %21 = load %struct.sock*, %struct.sock** %6, align 8
  %22 = load %struct.request_sock*, %struct.request_sock** %8, align 8
  %23 = load %struct.sock*, %struct.sock** %7, align 8
  %24 = call i64 @inet_csk_reqsk_queue_add(%struct.sock* %21, %struct.request_sock* %22, %struct.sock* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %28

26:                                               ; preds = %12
  %27 = load %struct.sock*, %struct.sock** %7, align 8
  store %struct.sock* %27, %struct.sock** %5, align 8
  br label %34

28:                                               ; preds = %12
  br label %29

29:                                               ; preds = %28, %4
  %30 = load %struct.sock*, %struct.sock** %7, align 8
  %31 = call i32 @bh_unlock_sock(%struct.sock* %30)
  %32 = load %struct.sock*, %struct.sock** %7, align 8
  %33 = call i32 @sock_put(%struct.sock* %32)
  store %struct.sock* null, %struct.sock** %5, align 8
  br label %34

34:                                               ; preds = %29, %26
  %35 = load %struct.sock*, %struct.sock** %5, align 8
  ret %struct.sock* %35
}

declare dso_local i32 @inet_csk_reqsk_queue_drop(%struct.sock*, %struct.request_sock*) #1

declare dso_local i32 @reqsk_queue_removed(i32*, %struct.request_sock*) #1

declare dso_local %struct.TYPE_2__* @inet_csk(%struct.sock*) #1

declare dso_local i64 @inet_csk_reqsk_queue_add(%struct.sock*, %struct.request_sock*, %struct.sock*) #1

declare dso_local i32 @bh_unlock_sock(%struct.sock*) #1

declare dso_local i32 @sock_put(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
