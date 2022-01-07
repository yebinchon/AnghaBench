; ModuleID = '/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_item_remove.c'
source_filename = "/home/carl/AnghaBench/linux/lib/extr_parman.c_parman_prio_item_remove.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.parman = type { i32 }
%struct.parman_prio = type { i32 }
%struct.parman_item = type { i64, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.parman*, %struct.parman_prio*, %struct.parman_item*)* @parman_prio_item_remove to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @parman_prio_item_remove(%struct.parman* %0, %struct.parman_prio* %1, %struct.parman_item* %2) #0 {
  %4 = alloca %struct.parman*, align 8
  %5 = alloca %struct.parman_prio*, align 8
  %6 = alloca %struct.parman_item*, align 8
  %7 = alloca %struct.parman_item*, align 8
  %8 = alloca i64, align 8
  store %struct.parman* %0, %struct.parman** %4, align 8
  store %struct.parman_prio* %1, %struct.parman_prio** %5, align 8
  store %struct.parman_item* %2, %struct.parman_item** %6, align 8
  %9 = load %struct.parman_prio*, %struct.parman_prio** %5, align 8
  %10 = call %struct.parman_item* @parman_prio_last_item(%struct.parman_prio* %9)
  store %struct.parman_item* %10, %struct.parman_item** %7, align 8
  %11 = load %struct.parman_item*, %struct.parman_item** %7, align 8
  %12 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %13 = icmp eq %struct.parman_item* %11, %12
  br i1 %13, label %14, label %18

14:                                               ; preds = %3
  %15 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %16 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %15, i32 0, i32 1
  %17 = call i32 @list_del(i32* %16)
  br label %38

18:                                               ; preds = %3
  %19 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %20 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  store i64 %21, i64* %8, align 8
  %22 = load %struct.parman*, %struct.parman** %4, align 8
  %23 = load %struct.parman_prio*, %struct.parman_prio** %5, align 8
  %24 = load %struct.parman_item*, %struct.parman_item** %7, align 8
  %25 = load i64, i64* %8, align 8
  %26 = call i32 @__parman_prio_move(%struct.parman* %22, %struct.parman_prio* %23, %struct.parman_item* %24, i64 %25, i32 1)
  %27 = load %struct.parman_item*, %struct.parman_item** %7, align 8
  %28 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %27, i32 0, i32 1
  %29 = call i32 @list_del(i32* %28)
  %30 = load %struct.parman_item*, %struct.parman_item** %6, align 8
  %31 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %30, i32 0, i32 1
  %32 = load %struct.parman_item*, %struct.parman_item** %7, align 8
  %33 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %32, i32 0, i32 1
  %34 = call i32 @list_replace(i32* %31, i32* %33)
  %35 = load i64, i64* %8, align 8
  %36 = load %struct.parman_item*, %struct.parman_item** %7, align 8
  %37 = getelementptr inbounds %struct.parman_item, %struct.parman_item* %36, i32 0, i32 0
  store i64 %35, i64* %37, align 8
  br label %38

38:                                               ; preds = %18, %14
  ret void
}

declare dso_local %struct.parman_item* @parman_prio_last_item(%struct.parman_prio*) #1

declare dso_local i32 @list_del(i32*) #1

declare dso_local i32 @__parman_prio_move(%struct.parman*, %struct.parman_prio*, %struct.parman_item*, i64, i32) #1

declare dso_local i32 @list_replace(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
