; ModuleID = '/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_register_af.c'
source_filename = "/home/carl/AnghaBench/linux/net/sctp/extr_protocol.c_sctp_register_af.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sctp_af = type { i32, i32 }

@sctp_af_v4_specific = common dso_local global %struct.sctp_af* null, align 8
@sctp_af_v6_specific = common dso_local global %struct.sctp_af* null, align 8
@sctp_address_families = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @sctp_register_af(%struct.sctp_af* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.sctp_af*, align 8
  store %struct.sctp_af* %0, %struct.sctp_af** %3, align 8
  %4 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  %5 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %4, i32 0, i32 0
  %6 = load i32, i32* %5, align 4
  switch i32 %6, label %19 [
    i32 129, label %7
    i32 128, label %13
  ]

7:                                                ; preds = %1
  %8 = load %struct.sctp_af*, %struct.sctp_af** @sctp_af_v4_specific, align 8
  %9 = icmp ne %struct.sctp_af* %8, null
  br i1 %9, label %10, label %11

10:                                               ; preds = %7
  store i32 0, i32* %2, align 4
  br label %27

11:                                               ; preds = %7
  %12 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  store %struct.sctp_af* %12, %struct.sctp_af** @sctp_af_v4_specific, align 8
  br label %20

13:                                               ; preds = %1
  %14 = load %struct.sctp_af*, %struct.sctp_af** @sctp_af_v6_specific, align 8
  %15 = icmp ne %struct.sctp_af* %14, null
  br i1 %15, label %16, label %17

16:                                               ; preds = %13
  store i32 0, i32* %2, align 4
  br label %27

17:                                               ; preds = %13
  %18 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  store %struct.sctp_af* %18, %struct.sctp_af** @sctp_af_v6_specific, align 8
  br label %20

19:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %27

20:                                               ; preds = %17, %11
  %21 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  %22 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %21, i32 0, i32 1
  %23 = call i32 @INIT_LIST_HEAD(i32* %22)
  %24 = load %struct.sctp_af*, %struct.sctp_af** %3, align 8
  %25 = getelementptr inbounds %struct.sctp_af, %struct.sctp_af* %24, i32 0, i32 1
  %26 = call i32 @list_add_tail(i32* %25, i32* @sctp_address_families)
  store i32 1, i32* %2, align 4
  br label %27

27:                                               ; preds = %20, %19, %16, %10
  %28 = load i32, i32* %2, align 4
  ret i32 %28
}

declare dso_local i32 @INIT_LIST_HEAD(i32*) #1

declare dso_local i32 @list_add_tail(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
