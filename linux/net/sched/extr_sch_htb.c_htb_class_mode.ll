; ModuleID = '/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_class_mode.c'
source_filename = "/home/carl/AnghaBench/linux/net/sched/extr_sch_htb.c_htb_class_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.htb_class = type { i64, i64 }

@HTB_CANT_SEND = common dso_local global i32 0, align 4
@HTB_CAN_SEND = common dso_local global i32 0, align 4
@HTB_MAY_BORROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.htb_class*, i64*)* @htb_class_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @htb_class_mode(%struct.htb_class* %0, i64* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.htb_class*, align 8
  %5 = alloca i64*, align 8
  %6 = alloca i64, align 8
  store %struct.htb_class* %0, %struct.htb_class** %4, align 8
  store i64* %1, i64** %5, align 8
  %7 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %8 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64*, i64** %5, align 8
  %11 = load i64, i64* %10, align 8
  %12 = add nsw i64 %9, %11
  store i64 %12, i64* %6, align 8
  %13 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %14 = call i64 @htb_lowater(%struct.htb_class* %13)
  %15 = icmp slt i64 %12, %14
  br i1 %15, label %16, label %21

16:                                               ; preds = %2
  %17 = load i64, i64* %6, align 8
  %18 = sub nsw i64 0, %17
  %19 = load i64*, i64** %5, align 8
  store i64 %18, i64* %19, align 8
  %20 = load i32, i32* @HTB_CANT_SEND, align 4
  store i32 %20, i32* %3, align 4
  br label %38

21:                                               ; preds = %2
  %22 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %23 = getelementptr inbounds %struct.htb_class, %struct.htb_class* %22, i32 0, i32 1
  %24 = load i64, i64* %23, align 8
  %25 = load i64*, i64** %5, align 8
  %26 = load i64, i64* %25, align 8
  %27 = add nsw i64 %24, %26
  store i64 %27, i64* %6, align 8
  %28 = load %struct.htb_class*, %struct.htb_class** %4, align 8
  %29 = call i64 @htb_hiwater(%struct.htb_class* %28)
  %30 = icmp sge i64 %27, %29
  br i1 %30, label %31, label %33

31:                                               ; preds = %21
  %32 = load i32, i32* @HTB_CAN_SEND, align 4
  store i32 %32, i32* %3, align 4
  br label %38

33:                                               ; preds = %21
  %34 = load i64, i64* %6, align 8
  %35 = sub nsw i64 0, %34
  %36 = load i64*, i64** %5, align 8
  store i64 %35, i64* %36, align 8
  %37 = load i32, i32* @HTB_MAY_BORROW, align 4
  store i32 %37, i32* %3, align 4
  br label %38

38:                                               ; preds = %33, %31, %16
  %39 = load i32, i32* %3, align 4
  ret i32 %39
}

declare dso_local i64 @htb_lowater(%struct.htb_class*) #1

declare dso_local i64 @htb_hiwater(%struct.htb_class*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
