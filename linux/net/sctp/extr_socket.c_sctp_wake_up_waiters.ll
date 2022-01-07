; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wake_up_waiters.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_wake_up_waiters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sock = type { i32 }
%struct.sctp_association = type { i32, %struct.TYPE_6__, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i64 }
%struct.TYPE_5__ = type { i64 }
%struct.TYPE_8__ = type { %struct.TYPE_7__* }
%struct.TYPE_7__ = type { i32 }

@asocs = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.sock*, %struct.sctp_association*)* @sctp_wake_up_waiters to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @sctp_wake_up_waiters(%struct.sock* %0, %struct.sctp_association* %1) #0 {
  %3 = alloca %struct.sock*, align 8
  %4 = alloca %struct.sctp_association*, align 8
  %5 = alloca %struct.sctp_association*, align 8
  store %struct.sock* %0, %struct.sock** %3, align 8
  store %struct.sctp_association* %1, %struct.sctp_association** %4, align 8
  %6 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  store %struct.sctp_association* %6, %struct.sctp_association** %5, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 2
  %9 = load %struct.TYPE_5__*, %struct.TYPE_5__** %8, align 8
  %10 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp ne i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  call void @__sctp_write_space(%struct.sctp_association* %14)
  br label %49

15:                                               ; preds = %2
  %16 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %16, i32 0, i32 1
  %18 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp ne i64 %19, 0
  br i1 %20, label %21, label %23

21:                                               ; preds = %15
  %22 = load %struct.sock*, %struct.sock** %3, align 8
  call void @sctp_write_space(%struct.sock* %22)
  br label %49

23:                                               ; preds = %15
  %24 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %25 = load i32, i32* @asocs, align 4
  %26 = call %struct.sctp_association* @list_next_entry(%struct.sctp_association* %24, i32 %25)
  store %struct.sctp_association* %26, %struct.sctp_association** %5, align 8
  br label %27

27:                                               ; preds = %45, %23
  br i1 true, label %28, label %49

28:                                               ; preds = %27
  %29 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %30 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %29, i32 0, i32 0
  %31 = load %struct.sock*, %struct.sock** %3, align 8
  %32 = call %struct.TYPE_8__* @sctp_sk(%struct.sock* %31)
  %33 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %32, i32 0, i32 0
  %34 = load %struct.TYPE_7__*, %struct.TYPE_7__** %33, align 8
  %35 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %34, i32 0, i32 0
  %36 = icmp eq i32* %30, %35
  br i1 %36, label %37, label %38

37:                                               ; preds = %28
  br label %45

38:                                               ; preds = %28
  %39 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  call void @__sctp_write_space(%struct.sctp_association* %39)
  %40 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %41 = load %struct.sctp_association*, %struct.sctp_association** %4, align 8
  %42 = icmp eq %struct.sctp_association* %40, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %49

44:                                               ; preds = %38
  br label %45

45:                                               ; preds = %44, %37
  %46 = load %struct.sctp_association*, %struct.sctp_association** %5, align 8
  %47 = load i32, i32* @asocs, align 4
  %48 = call %struct.sctp_association* @list_next_entry(%struct.sctp_association* %46, i32 %47)
  store %struct.sctp_association* %48, %struct.sctp_association** %5, align 8
  br label %27

49:                                               ; preds = %13, %21, %43, %27
  ret void
}

declare dso_local void @__sctp_write_space(%struct.sctp_association*) #1

declare dso_local void @sctp_write_space(%struct.sock*) #1

declare dso_local %struct.sctp_association* @list_next_entry(%struct.sctp_association*, i32) #1

declare dso_local %struct.TYPE_8__* @sctp_sk(%struct.sock*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
