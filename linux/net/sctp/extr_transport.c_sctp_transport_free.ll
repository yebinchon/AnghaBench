; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_free.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_transport.c_sctp_transport_free.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32, i32, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sctp_transport_free(%struct.sctp_transport* %0) #0 {
  %2 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %2, align 8
  %3 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %4 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %3, i32 0, i32 4
  %5 = call i64 @del_timer(i32* %4)
  %6 = icmp ne i64 %5, 0
  br i1 %6, label %7, label %10

7:                                                ; preds = %1
  %8 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %9 = call i32 @sctp_transport_put(%struct.sctp_transport* %8)
  br label %10

10:                                               ; preds = %7, %1
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %12 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %11, i32 0, i32 3
  %13 = call i64 @del_timer(i32* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %18

15:                                               ; preds = %10
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %17 = call i32 @sctp_transport_put(%struct.sctp_transport* %16)
  br label %18

18:                                               ; preds = %15, %10
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 2
  %21 = call i64 @del_timer(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %26

23:                                               ; preds = %18
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %25 = call i32 @sctp_transport_put(%struct.sctp_transport* %24)
  br label %26

26:                                               ; preds = %23, %18
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 1
  %29 = call i64 @del_timer(i32* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %36

31:                                               ; preds = %26
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %33 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = call i32 @sctp_association_put(i32 %34)
  br label %36

36:                                               ; preds = %31, %26
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %2, align 8
  %38 = call i32 @sctp_transport_put(%struct.sctp_transport* %37)
  ret void
}

declare dso_local i64 @del_timer(i32*) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_association_put(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
