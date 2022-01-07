; ModuleID = '/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_addrlist.h___af4list_valid_rcu.c'
source_filename = "/home/carl/AnghaBench/linux/net/netlabel/extr_netlabel_addrlist.h___af4list_valid_rcu.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.netlbl_af4list = type { i32 }
%struct.list_head = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.netlbl_af4list* (%struct.list_head*, %struct.list_head*)* @__af4list_valid_rcu to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.netlbl_af4list* @__af4list_valid_rcu(%struct.list_head* %0, %struct.list_head* %1) #0 {
  %3 = alloca %struct.list_head*, align 8
  %4 = alloca %struct.list_head*, align 8
  %5 = alloca %struct.list_head*, align 8
  %6 = alloca %struct.netlbl_af4list*, align 8
  store %struct.list_head* %0, %struct.list_head** %3, align 8
  store %struct.list_head* %1, %struct.list_head** %4, align 8
  %7 = load %struct.list_head*, %struct.list_head** %3, align 8
  store %struct.list_head* %7, %struct.list_head** %5, align 8
  %8 = load %struct.list_head*, %struct.list_head** %3, align 8
  %9 = call %struct.netlbl_af4list* @__af4list_entry(%struct.list_head* %8)
  store %struct.netlbl_af4list* %9, %struct.netlbl_af4list** %6, align 8
  br label %10

10:                                               ; preds = %22, %2
  %11 = load %struct.list_head*, %struct.list_head** %5, align 8
  %12 = load %struct.list_head*, %struct.list_head** %4, align 8
  %13 = icmp ne %struct.list_head* %11, %12
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %6, align 8
  %16 = getelementptr inbounds %struct.netlbl_af4list, %struct.netlbl_af4list* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = icmp ne i32 %17, 0
  %19 = xor i1 %18, true
  br label %20

20:                                               ; preds = %14, %10
  %21 = phi i1 [ false, %10 ], [ %19, %14 ]
  br i1 %21, label %22, label %28

22:                                               ; preds = %20
  %23 = load %struct.list_head*, %struct.list_head** %5, align 8
  %24 = call i32 @list_next_rcu(%struct.list_head* %23)
  %25 = call %struct.list_head* @rcu_dereference(i32 %24)
  store %struct.list_head* %25, %struct.list_head** %5, align 8
  %26 = load %struct.list_head*, %struct.list_head** %5, align 8
  %27 = call %struct.netlbl_af4list* @__af4list_entry(%struct.list_head* %26)
  store %struct.netlbl_af4list* %27, %struct.netlbl_af4list** %6, align 8
  br label %10

28:                                               ; preds = %20
  %29 = load %struct.netlbl_af4list*, %struct.netlbl_af4list** %6, align 8
  ret %struct.netlbl_af4list* %29
}

declare dso_local %struct.netlbl_af4list* @__af4list_entry(%struct.list_head*) #1

declare dso_local %struct.list_head* @rcu_dereference(i32) #1

declare dso_local i32 @list_next_rcu(%struct.list_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
