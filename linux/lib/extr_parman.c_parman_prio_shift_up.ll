; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_shift_up.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_shift_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { i32 }
%struct.parman_prio = type { i32 }
%struct.parman_item = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parman*, %struct.parman_prio*)* @parman_prio_shift_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parman_prio_shift_up(%struct.parman* %0, %struct.parman_prio* %1) #0 {
  %3 = alloca %struct.parman*, align 8
  %4 = alloca %struct.parman_prio*, align 8
  %5 = alloca %struct.parman_item*, align 8
  %6 = alloca i64, align 8
  store %struct.parman* %0, %struct.parman** %3, align 8
  store %struct.parman_prio* %1, %struct.parman_prio** %4, align 8
  %7 = load %struct.parman_prio*, %struct.parman_prio** %4, align 8
  %8 = call i32 @parman_prio_used(%struct.parman_prio* %7)
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %11, label %10

10:                                               ; preds = %2
  br label %31

11:                                               ; preds = %2
  %12 = load %struct.parman_prio*, %struct.parman_prio** %4, align 8
  %13 = call %struct.parman_item* @parman_prio_last_item(%struct.parman_prio* %12)
  store %struct.parman_item* %13, %struct.parman_item** %5, align 8
  %14 = load %struct.parman_prio*, %struct.parman_prio** %4, align 8
  %15 = call i32 @parman_prio_first_index(%struct.parman_prio* %14)
  %16 = sub nsw i32 %15, 1
  %17 = sext i32 %16 to i64
  store i64 %17, i64* %6, align 8
  %18 = load %struct.parman*, %struct.parman** %3, align 8
  %19 = load %struct.parman_prio*, %struct.parman_prio** %4, align 8
  %20 = load %struct.parman_item*, %struct.parman_item** %5, align 8
  %21 = load i64, i64* %6, align 8
  %22 = call i32 @__parman_prio_move(%struct.parman* %18, %struct.parman_prio* %19, %struct.parman_item* %20, i64 %21, i32 1)
  %23 = load %struct.parman_item*, %struct.parman_item** %5, align 8
  %24 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %23, i32 0, i32 1
  %25 = load %struct.parman_prio*, %struct.parman_prio** %4, align 8
  %26 = getelementptr inbounds %struct.parman_prio, %struct.parman_prio* %25, i32 0, i32 0
  %27 = call i32 @list_move(i32* %24, i32* %26)
  %28 = load i64, i64* %6, align 8
  %29 = load %struct.parman_item*, %struct.parman_item** %5, align 8
  %30 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  br label %31

31:                                               ; preds = %11, %10
  ret void
}

declare dso_local i32 @parman_prio_used(%struct.parman_prio*) #1

declare dso_local %struct.parman_item* @parman_prio_last_item(%struct.parman_prio*) #1

declare dso_local i32 @parman_prio_first_index(%struct.parman_prio*) #1

declare dso_local i32 @__parman_prio_move(%struct.parman*, %struct.parman_prio*, %struct.parman_item*, i64, i32) #1

declare dso_local i32 @list_move(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
