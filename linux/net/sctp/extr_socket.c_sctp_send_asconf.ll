; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_send_asconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_socket.c_sctp_send_asconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.sctp_chunk*, i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.sctp_chunk*)* @sctp_send_asconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_send_asconf(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 2
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %13 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %12, i32 0, i32 0
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %13, align 8
  %15 = icmp ne %struct.sctp_chunk* %14, null
  br i1 %15, label %16, label %22

16:                                               ; preds = %2
  %17 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %18 = getelementptr inbounds %struct.sctp_chunk, %struct.sctp_chunk* %17, i32 0, i32 0
  %19 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %20 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %19, i32 0, i32 1
  %21 = call i32 @list_add_tail(i32* %18, i32* %20)
  br label %39

22:                                               ; preds = %2
  %23 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %24 = call i32 @sctp_chunk_hold(%struct.sctp_chunk* %23)
  %25 = load %struct.net*, %struct.net** %5, align 8
  %26 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %27 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %28 = call i32 @sctp_primitive_ASCONF(%struct.net* %25, %struct.sctp_association* %26, %struct.sctp_chunk* %27)
  store i32 %28, i32* %6, align 4
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %34

31:                                               ; preds = %22
  %32 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %33 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %32)
  br label %38

34:                                               ; preds = %22
  %35 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %36 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %37 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %36, i32 0, i32 0
  store %struct.sctp_chunk* %35, %struct.sctp_chunk** %37, align 8
  br label %38

38:                                               ; preds = %34, %31
  br label %39

39:                                               ; preds = %38, %16
  %40 = load i32, i32* %6, align 4
  ret i32 %40
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

declare dso_local i32 @sctp_chunk_hold(%struct.sctp_chunk*) #1

declare dso_local i32 @sctp_primitive_ASCONF(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
