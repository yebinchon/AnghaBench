; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_trans_elect_best.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_associola.c_sctp_trans_elect_best.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_transport = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.sctp_transport* (%struct.sctp_transport*, %struct.sctp_transport*)* @sctp_trans_elect_best to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.sctp_transport* @sctp_trans_elect_best(%struct.sctp_transport* %0, %struct.sctp_transport* %1) #0 {
  %3 = alloca %struct.sctp_transport*, align 8
  %4 = alloca %struct.sctp_transport*, align 8
  %5 = alloca %struct.sctp_transport*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.sctp_transport* %0, %struct.sctp_transport** %4, align 8
  store %struct.sctp_transport* %1, %struct.sctp_transport** %5, align 8
  %8 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %9 = icmp eq %struct.sctp_transport* %8, null
  br i1 %9, label %14, label %10

10:                                               ; preds = %2
  %11 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %12 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %13 = icmp eq %struct.sctp_transport* %11, %12
  br i1 %13, label %14, label %16

14:                                               ; preds = %10, %2
  %15 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  store %struct.sctp_transport* %15, %struct.sctp_transport** %3, align 8
  br label %36

16:                                               ; preds = %10
  %17 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %18 = call i64 @sctp_trans_score(%struct.sctp_transport* %17)
  store i64 %18, i64* %6, align 8
  %19 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %20 = call i64 @sctp_trans_score(%struct.sctp_transport* %19)
  store i64 %20, i64* %7, align 8
  %21 = load i64, i64* %6, align 8
  %22 = load i64, i64* %7, align 8
  %23 = icmp sgt i64 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %16
  %25 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  store %struct.sctp_transport* %25, %struct.sctp_transport** %3, align 8
  br label %36

26:                                               ; preds = %16
  %27 = load i64, i64* %6, align 8
  %28 = load i64, i64* %7, align 8
  %29 = icmp eq i64 %27, %28
  br i1 %29, label %30, label %34

30:                                               ; preds = %26
  %31 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  %32 = load %struct.sctp_transport*, %struct.sctp_transport** %4, align 8
  %33 = call %struct.sctp_transport* @sctp_trans_elect_tie(%struct.sctp_transport* %31, %struct.sctp_transport* %32)
  store %struct.sctp_transport* %33, %struct.sctp_transport** %3, align 8
  br label %36

34:                                               ; preds = %26
  %35 = load %struct.sctp_transport*, %struct.sctp_transport** %5, align 8
  store %struct.sctp_transport* %35, %struct.sctp_transport** %3, align 8
  br label %36

36:                                               ; preds = %34, %30, %24, %14
  %37 = load %struct.sctp_transport*, %struct.sctp_transport** %3, align 8
  ret %struct.sctp_transport* %37
}

declare dso_local i64 @sctp_trans_score(%struct.sctp_transport*) #1

declare dso_local %struct.sctp_transport* @sctp_trans_elect_tie(%struct.sctp_transport*, %struct.sctp_transport*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
