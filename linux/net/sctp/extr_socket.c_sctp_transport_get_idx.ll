; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_get_idx.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_get_idx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32 }
%struct.net = type { i32 }
%struct.rhashtable_iter = type { i32 }

@SEQ_START_TOKEN = common dso_local global %struct.sctp_transport* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_transport* @sctp_transport_get_idx(%struct.net* %0, %struct.rhashtable_iter* %1, i32 %2) #0 {
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca %struct.rhashtable_iter*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.sctp_transport*, align 8
  store %struct.net* %0, %struct.net** %5, align 8
  store %struct.rhashtable_iter* %1, %struct.rhashtable_iter** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i32, i32* %7, align 4
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %13, label %11

11:                                               ; preds = %3
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** @SEQ_START_TOKEN, align 8
  store %struct.sctp_transport* %12, %struct.sctp_transport** %4, align 8
  br label %36

13:                                               ; preds = %3
  br label %14

14:                                               ; preds = %31, %13
  %15 = load %struct.net*, %struct.net** %5, align 8
  %16 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %6, align 8
  %17 = call %struct.sctp_transport* @sctp_transport_get_next(%struct.net* %15, %struct.rhashtable_iter* %16)
  store %struct.sctp_transport* %17, %struct.sctp_transport** %8, align 8
  %18 = icmp ne %struct.sctp_transport* %17, null
  br i1 %18, label %19, label %24

19:                                               ; preds = %14
  %20 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %21 = call i32 @IS_ERR(%struct.sctp_transport* %20)
  %22 = icmp ne i32 %21, 0
  %23 = xor i1 %22, true
  br label %24

24:                                               ; preds = %19, %14
  %25 = phi i1 [ false, %14 ], [ %23, %19 ]
  br i1 %25, label %26, label %34

26:                                               ; preds = %24
  %27 = load i32, i32* %7, align 4
  %28 = add nsw i32 %27, -1
  store i32 %28, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %31, label %30

30:                                               ; preds = %26
  br label %34

31:                                               ; preds = %26
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  %33 = call i32 @sctp_transport_put(%struct.sctp_transport* %32)
  br label %14

34:                                               ; preds = %30, %24
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %8, align 8
  store %struct.sctp_transport* %35, %struct.sctp_transport** %4, align 8
  br label %36

36:                                               ; preds = %34, %11
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  ret %struct.sctp_transport* %37
}

declare dso_local %struct.sctp_transport* @sctp_transport_get_next(%struct.net*, %struct.rhashtable_iter*) #1

declare dso_local i32 @IS_ERR(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
