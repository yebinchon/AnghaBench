; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_decr_active.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_group.c_tipc_group_decr_active.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_group = type { i32 }
%struct.tipc_member = type { i64 }

@MBR_ACTIVE = common dso_local global i64 0, align 8
@MBR_RECLAIMING = common dso_local global i64 0, align 8
@MBR_REMITTED = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.tipc_group*, %struct.tipc_member*)* @tipc_group_decr_active to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tipc_group_decr_active(%struct.tipc_group* %0, %struct.tipc_member* %1) #0 {
  %3 = alloca %struct.tipc_group*, align 8
  %4 = alloca %struct.tipc_member*, align 8
  store %struct.tipc_group* %0, %struct.tipc_group** %3, align 8
  store %struct.tipc_member* %1, %struct.tipc_member** %4, align 8
  %5 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %6 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %5, i32 0, i32 0
  %7 = load i64, i64* %6, align 8
  %8 = load i64, i64* @MBR_ACTIVE, align 8
  %9 = icmp eq i64 %7, %8
  br i1 %9, label %22, label %10

10:                                               ; preds = %2
  %11 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %12 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = load i64, i64* @MBR_RECLAIMING, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %22, label %16

16:                                               ; preds = %10
  %17 = load %struct.tipc_member*, %struct.tipc_member** %4, align 8
  %18 = getelementptr inbounds %struct.tipc_member, %struct.tipc_member* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = load i64, i64* @MBR_REMITTED, align 8
  %21 = icmp eq i64 %19, %20
  br i1 %21, label %22, label %27

22:                                               ; preds = %16, %10, %2
  %23 = load %struct.tipc_group*, %struct.tipc_group** %3, align 8
  %24 = getelementptr inbounds %struct.tipc_group, %struct.tipc_group* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = add nsw i32 %25, -1
  store i32 %26, i32* %24, align 4
  br label %27

27:                                               ; preds = %22, %16
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
