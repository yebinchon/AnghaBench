; ModuleID = '/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_is_acked.c'
source_filename = "/home/carl/AnghaBench/linux/net/rds/extr_send.c_rds_send_is_acked.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rds_message = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.rds_message*, i64, i32 (%struct.rds_message*, i64)*)* @rds_send_is_acked to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @rds_send_is_acked(%struct.rds_message* %0, i64 %1, i32 (%struct.rds_message*, i64)* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.rds_message*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32 (%struct.rds_message*, i64)*, align 8
  store %struct.rds_message* %0, %struct.rds_message** %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 (%struct.rds_message*, i64)* %2, i32 (%struct.rds_message*, i64)** %7, align 8
  %8 = load i32 (%struct.rds_message*, i64)*, i32 (%struct.rds_message*, i64)** %7, align 8
  %9 = icmp ne i32 (%struct.rds_message*, i64)* %8, null
  br i1 %9, label %10, label %15

10:                                               ; preds = %3
  %11 = load i32 (%struct.rds_message*, i64)*, i32 (%struct.rds_message*, i64)** %7, align 8
  %12 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %13 = load i64, i64* %6, align 8
  %14 = call i32 %11(%struct.rds_message* %12, i64 %13)
  store i32 %14, i32* %4, align 4
  br label %25

15:                                               ; preds = %3
  %16 = load %struct.rds_message*, %struct.rds_message** %5, align 8
  %17 = getelementptr inbounds %struct.rds_message, %struct.rds_message* %16, i32 0, i32 0
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i64 @be64_to_cpu(i32 %20)
  %22 = load i64, i64* %6, align 8
  %23 = icmp sle i64 %21, %22
  %24 = zext i1 %23 to i32
  store i32 %24, i32* %4, align 4
  br label %25

25:                                               ; preds = %15, %10
  %26 = load i32, i32* %4, align 4
  ret i32 %26
}

declare dso_local i64 @be64_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
