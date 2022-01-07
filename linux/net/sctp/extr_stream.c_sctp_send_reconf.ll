; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reconf.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_stream.c_sctp_send_reconf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32 }
%struct.sctp_chunk = type { i32 }
%struct.net = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*, %struct.sctp_chunk*)* @sctp_send_reconf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_send_reconf(%struct.sctp_association* %0, %struct.sctp_chunk* %1) #0 {
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.sctp_chunk*, align 8
  %5 = alloca %struct.net*, align 8
  %6 = alloca i32, align 4
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  store %struct.sctp_chunk* %1, %struct.sctp_chunk** %4, align 8
  %7 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %8 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 4
  %11 = call %struct.net* @sock_net(i32 %10)
  store %struct.net* %11, %struct.net** %5, align 8
  store i32 0, i32* %6, align 4
  %12 = load %struct.net*, %struct.net** %5, align 8
  %13 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %14 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %15 = call i32 @sctp_primitive_RECONF(%struct.net* %12, %struct.sctp_association* %13, %struct.sctp_chunk* %14)
  store i32 %15, i32* %6, align 4
  %16 = load i32, i32* %6, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %18, label %21

18:                                               ; preds = %2
  %19 = load %struct.sctp_chunk*, %struct.sctp_chunk** %4, align 8
  %20 = call i32 @sctp_chunk_free(%struct.sctp_chunk* %19)
  br label %21

21:                                               ; preds = %18, %2
  %22 = load i32, i32* %6, align 4
  ret i32 %22
}

declare dso_local %struct.net* @sock_net(i32) #1

declare dso_local i32 @sctp_primitive_RECONF(%struct.net*, %struct.sctp_association*, %struct.sctp_chunk*) #1

declare dso_local i32 @sctp_chunk_free(%struct.sctp_chunk*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
