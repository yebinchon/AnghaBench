; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_get_next.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_transport_get_next.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_5__ = type { %struct.sctp_transport* }
%struct.TYPE_4__ = type { i32 }
%struct.net = type { i32 }
%struct.rhashtable_iter = type { i32 }

@EAGAIN = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.sctp_transport* @sctp_transport_get_next(%struct.net* %0, %struct.rhashtable_iter* %1) #0 {
  %3 = alloca %struct.net*, align 8
  %4 = alloca %struct.rhashtable_iter*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  store %struct.net* %0, %struct.net** %3, align 8
  store %struct.rhashtable_iter* %1, %struct.rhashtable_iter** %4, align 8
  %6 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %7 = call %struct.sctp_transport* @rhashtable_walk_next(%struct.rhashtable_iter* %6)
  store %struct.sctp_transport* %7, %struct.sctp_transport** %5, align 8
  br label %8

8:                                                ; preds = %52, %2
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %10 = icmp ne %struct.sctp_transport* %9, null
  br i1 %10, label %11, label %55

11:                                               ; preds = %8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %13 = call i64 @IS_ERR(%struct.sctp_transport* %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %23

15:                                               ; preds = %11
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %17 = call i32 @PTR_ERR(%struct.sctp_transport* %16)
  %18 = load i32, i32* @EAGAIN, align 4
  %19 = sub nsw i32 0, %18
  %20 = icmp eq i32 %17, %19
  br i1 %20, label %21, label %22

21:                                               ; preds = %15
  br label %52

22:                                               ; preds = %15
  br label %55

23:                                               ; preds = %11
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %25 = call i32 @sctp_transport_hold(%struct.sctp_transport* %24)
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %28, label %27

27:                                               ; preds = %23
  br label %52

28:                                               ; preds = %23
  %29 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %29, i32 0, i32 0
  %31 = load %struct.TYPE_6__*, %struct.TYPE_6__** %30, align 8
  %32 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %31, i32 0, i32 1
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = call i32 @sock_net(i32 %34)
  %36 = load %struct.net*, %struct.net** %3, align 8
  %37 = call i64 @net_eq(i32 %35, %struct.net* %36)
  %38 = icmp ne i64 %37, 0
  br i1 %38, label %39, label %49

39:                                               ; preds = %28
  %40 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %41 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %40, i32 0, i32 0
  %42 = load %struct.TYPE_6__*, %struct.TYPE_6__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.sctp_transport*, %struct.sctp_transport** %44, align 8
  %46 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %47 = icmp eq %struct.sctp_transport* %45, %46
  br i1 %47, label %48, label %49

48:                                               ; preds = %39
  br label %55

49:                                               ; preds = %39, %28
  %50 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %51 = call i32 @sctp_transport_put(%struct.sctp_transport* %50)
  br label %52

52:                                               ; preds = %49, %27, %21
  %53 = load %struct.rhashtable_iter*, %struct.rhashtable_iter** %4, align 8
  %54 = call %struct.sctp_transport* @rhashtable_walk_next(%struct.rhashtable_iter* %53)
  store %struct.sctp_transport* %54, %struct.sctp_transport** %5, align 8
  br label %8

55:                                               ; preds = %48, %22, %8
  %56 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  ret %struct.sctp_transport* %56
}

declare dso_local %struct.sctp_transport* @rhashtable_walk_next(%struct.rhashtable_iter*) #1

declare dso_local i64 @IS_ERR(%struct.sctp_transport*) #1

declare dso_local i32 @PTR_ERR(%struct.sctp_transport*) #1

declare dso_local i32 @sctp_transport_hold(%struct.sctp_transport*) #1

declare dso_local i64 @net_eq(i32, %struct.net*) #1

declare dso_local i32 @sock_net(i32) #1

declare dso_local i32 @sctp_transport_put(%struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
