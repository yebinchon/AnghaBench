; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_nlist_add.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_bcast.c_tipc_nlist_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_nlist = type { i64, i32, i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @tipc_nlist_add(%struct.tipc_nlist* %0, i64 %1) #0 {
  %3 = alloca %struct.tipc_nlist*, align 8
  %4 = alloca i64, align 8
  store %struct.tipc_nlist* %0, %struct.tipc_nlist** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i64, i64* %4, align 8
  %6 = load %struct.tipc_nlist*, %struct.tipc_nlist** %3, align 8
  %7 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = icmp eq i64 %5, %8
  br i1 %9, label %10, label %13

10:                                               ; preds = %2
  %11 = load %struct.tipc_nlist*, %struct.tipc_nlist** %3, align 8
  %12 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %11, i32 0, i32 1
  store i32 1, i32* %12, align 8
  br label %25

13:                                               ; preds = %2
  %14 = load %struct.tipc_nlist*, %struct.tipc_nlist** %3, align 8
  %15 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %14, i32 0, i32 3
  %16 = load i64, i64* %4, align 8
  %17 = call i64 @tipc_dest_push(i32* %15, i64 %16, i32 0)
  %18 = icmp ne i64 %17, 0
  br i1 %18, label %19, label %24

19:                                               ; preds = %13
  %20 = load %struct.tipc_nlist*, %struct.tipc_nlist** %3, align 8
  %21 = getelementptr inbounds %struct.tipc_nlist, %struct.tipc_nlist* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = add nsw i32 %22, 1
  store i32 %23, i32* %21, align 4
  br label %24

24:                                               ; preds = %19, %13
  br label %25

25:                                               ; preds = %24, %10
  ret void
}

declare dso_local i64 @tipc_dest_push(i32*, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
