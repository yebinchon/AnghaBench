; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_trans_elect_tie.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_trans_elect_tie.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.sctp_transport*, %struct.sctp_transport*)* @sctp_trans_elect_tie to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_trans_elect_tie(%struct.sctp_transport* %0, %struct.sctp_transport* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  %6 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %7 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %10 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp sgt i64 %8, %11
  br i1 %12, label %13, label %15

13:                                               ; preds = %2
  %14 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  store %struct.sctp_transport* %14, %struct.sctp_transport** %3, align 8
  br label %36

15:                                               ; preds = %2
  %16 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %17 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %20 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = icmp eq i64 %18, %21
  br i1 %22, label %23, label %34

23:                                               ; preds = %15
  %24 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %25 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %28 = getelementptr inbounds %struct.sctp_transport, %struct.sctp_transport* %27, i32 0, i32 1
  %29 = load i32, i32* %28, align 8
  %30 = call i64 @ktime_after(i32 %26, i32 %29)
  %31 = icmp ne i64 %30, 0
  br i1 %31, label %32, label %34

32:                                               ; preds = %23
  %33 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  store %struct.sctp_transport* %33, %struct.sctp_transport** %3, align 8
  br label %36

34:                                               ; preds = %23, %15
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  store %struct.sctp_transport* %35, %struct.sctp_transport** %3, align 8
  br label %36

36:                                               ; preds = %34, %32, %13
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  ret %struct.sctp_transport* %37
}

declare dso_local i64 @ktime_after(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
