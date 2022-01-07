; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_complete_nsw.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_tcp.c_o2net_complete_nsw.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.o2net_node = type { i32, i32 }
%struct.o2net_status_wait = type { i32 }

@INT_MAX = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.o2net_node*, %struct.o2net_status_wait*, i64, i32, i32)* @o2net_complete_nsw to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @o2net_complete_nsw(%struct.o2net_node* %0, %struct.o2net_status_wait* %1, i64 %2, i32 %3, i32 %4) #0 {
  %6 = alloca %struct.o2net_node*, align 8
  %7 = alloca %struct.o2net_status_wait*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.o2net_node* %0, %struct.o2net_node** %6, align 8
  store %struct.o2net_status_wait* %1, %struct.o2net_status_wait** %7, align 8
  store i64 %2, i64* %8, align 8
  store i32 %3, i32* %9, align 4
  store i32 %4, i32* %10, align 4
  %11 = load %struct.o2net_node*, %struct.o2net_node** %6, align 8
  %12 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %11, i32 0, i32 0
  %13 = call i32 @spin_lock(i32* %12)
  %14 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %7, align 8
  %15 = icmp eq %struct.o2net_status_wait* %14, null
  br i1 %15, label %16, label %30

16:                                               ; preds = %5
  %17 = load i64, i64* %8, align 8
  %18 = load i64, i64* @INT_MAX, align 8
  %19 = icmp sgt i64 %17, %18
  br i1 %19, label %20, label %21

20:                                               ; preds = %16
  br label %36

21:                                               ; preds = %16
  %22 = load %struct.o2net_node*, %struct.o2net_node** %6, align 8
  %23 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %22, i32 0, i32 1
  %24 = load i64, i64* %8, align 8
  %25 = call %struct.o2net_status_wait* @idr_find(i32* %23, i64 %24)
  store %struct.o2net_status_wait* %25, %struct.o2net_status_wait** %7, align 8
  %26 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %7, align 8
  %27 = icmp eq %struct.o2net_status_wait* %26, null
  br i1 %27, label %28, label %29

28:                                               ; preds = %21
  br label %36

29:                                               ; preds = %21
  br label %30

30:                                               ; preds = %29, %5
  %31 = load %struct.o2net_node*, %struct.o2net_node** %6, align 8
  %32 = load %struct.o2net_status_wait*, %struct.o2net_status_wait** %7, align 8
  %33 = load i32, i32* %9, align 4
  %34 = load i32, i32* %10, align 4
  %35 = call i32 @o2net_complete_nsw_locked(%struct.o2net_node* %31, %struct.o2net_status_wait* %32, i32 %33, i32 %34)
  br label %36

36:                                               ; preds = %30, %28, %20
  %37 = load %struct.o2net_node*, %struct.o2net_node** %6, align 8
  %38 = getelementptr inbounds %struct.o2net_node, %struct.o2net_node* %37, i32 0, i32 0
  %39 = call i32 @spin_unlock(i32* %38)
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.o2net_status_wait* @idr_find(i32*, i64) #1

declare dso_local i32 @o2net_complete_nsw_locked(%struct.o2net_node*, %struct.o2net_status_wait*, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
