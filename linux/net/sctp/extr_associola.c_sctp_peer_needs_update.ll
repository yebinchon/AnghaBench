; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_peer_needs_update.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_peer_needs_update.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_association = type { i32, i32, %struct.TYPE_5__, i64, i64 }
%struct.TYPE_5__ = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i32 }
%struct.net = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32 }

@__u32 = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sctp_association*)* @sctp_peer_needs_update to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sctp_peer_needs_update(%struct.sctp_association* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_association*, align 8
  %4 = alloca %struct.net*, align 8
  store %struct.sctp_association* %0, %struct.sctp_association** %3, align 8
  %5 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %6 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %5, i32 0, i32 2
  %7 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %6, i32 0, i32 0
  %8 = load %struct.TYPE_6__*, %struct.TYPE_6__** %7, align 8
  %9 = call %struct.net* @sock_net(%struct.TYPE_6__* %8)
  store %struct.net* %9, %struct.net** %4, align 8
  %10 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %11 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  switch i32 %12, label %48 [
    i32 131, label %13
    i32 130, label %13
    i32 129, label %13
    i32 128, label %13
  ]

13:                                               ; preds = %1, %1, %1, %1
  %14 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %15 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %14, i32 0, i32 4
  %16 = load i64, i64* %15, align 8
  %17 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %18 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %17, i32 0, i32 3
  %19 = load i64, i64* %18, align 8
  %20 = icmp sgt i64 %16, %19
  br i1 %20, label %21, label %47

21:                                               ; preds = %13
  %22 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %23 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %22, i32 0, i32 4
  %24 = load i64, i64* %23, align 8
  %25 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %26 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %25, i32 0, i32 3
  %27 = load i64, i64* %26, align 8
  %28 = sub nsw i64 %24, %27
  %29 = load i32, i32* @__u32, align 4
  %30 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %31 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %30, i32 0, i32 2
  %32 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %31, i32 0, i32 0
  %33 = load %struct.TYPE_6__*, %struct.TYPE_6__** %32, align 8
  %34 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = load %struct.net*, %struct.net** %4, align 8
  %37 = getelementptr inbounds %struct.net, %struct.net* %36, i32 0, i32 0
  %38 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = ashr i32 %35, %39
  %41 = load %struct.sctp_association*, %struct.sctp_association** %3, align 8
  %42 = getelementptr inbounds %struct.sctp_association, %struct.sctp_association* %41, i32 0, i32 1
  %43 = load i32, i32* %42, align 4
  %44 = call i64 @max_t(i32 %29, i32 %40, i32 %43)
  %45 = icmp sge i64 %28, %44
  br i1 %45, label %46, label %47

46:                                               ; preds = %21
  store i32 1, i32* %2, align 4
  br label %50

47:                                               ; preds = %21, %13
  br label %49

48:                                               ; preds = %1
  br label %49

49:                                               ; preds = %48, %47
  store i32 0, i32* %2, align 4
  br label %50

50:                                               ; preds = %49, %46
  %51 = load i32, i32* %2, align 4
  ret i32 %51
}

declare dso_local %struct.net* @sock_net(%struct.TYPE_6__*) #1

declare dso_local i64 @max_t(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
