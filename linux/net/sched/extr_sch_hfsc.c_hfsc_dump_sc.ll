; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_sc.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_hfsc.c_hfsc_dump_sc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.sk_buff = type { i32 }
%struct.internal_sc = type { i32, i32, i32 }
%struct.tc_service_curve = type { i8*, i32, i8* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.sk_buff*, i32, %struct.internal_sc*)* @hfsc_dump_sc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsc_dump_sc(%struct.sk_buff* %0, i32 %1, %struct.internal_sc* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.sk_buff*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.internal_sc*, align 8
  %8 = alloca %struct.tc_service_curve, align 8
  store %struct.sk_buff* %0, %struct.sk_buff** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.internal_sc* %2, %struct.internal_sc** %7, align 8
  %9 = load %struct.internal_sc*, %struct.internal_sc** %7, align 8
  %10 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %9, i32 0, i32 2
  %11 = load i32, i32* %10, align 4
  %12 = call i8* @sm2m(i32 %11)
  %13 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %8, i32 0, i32 2
  store i8* %12, i8** %13, align 8
  %14 = load %struct.internal_sc*, %struct.internal_sc** %7, align 8
  %15 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %14, i32 0, i32 1
  %16 = load i32, i32* %15, align 4
  %17 = call i32 @dx2d(i32 %16)
  %18 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %8, i32 0, i32 1
  store i32 %17, i32* %18, align 8
  %19 = load %struct.internal_sc*, %struct.internal_sc** %7, align 8
  %20 = getelementptr inbounds %struct.internal_sc, %struct.internal_sc* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i8* @sm2m(i32 %21)
  %23 = getelementptr inbounds %struct.tc_service_curve, %struct.tc_service_curve* %8, i32 0, i32 0
  store i8* %22, i8** %23, align 8
  %24 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %25 = load i32, i32* %6, align 4
  %26 = call i64 @nla_put(%struct.sk_buff* %24, i32 %25, i32 24, %struct.tc_service_curve* %8)
  %27 = icmp ne i64 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %3
  br label %33

29:                                               ; preds = %3
  %30 = load %struct.sk_buff*, %struct.sk_buff** %5, align 8
  %31 = getelementptr inbounds %struct.sk_buff, %struct.sk_buff* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  store i32 %32, i32* %4, align 4
  br label %34

33:                                               ; preds = %28
  store i32 -1, i32* %4, align 4
  br label %34

34:                                               ; preds = %33, %29
  %35 = load i32, i32* %4, align 4
  ret i32 %35
}

declare dso_local i8* @sm2m(i32) #1

declare dso_local i32 @dx2d(i32) #1

declare dso_local i64 @nla_put(%struct.sk_buff*, i32, i32, %struct.tc_service_curve*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
