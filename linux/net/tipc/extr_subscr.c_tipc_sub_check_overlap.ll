; ModuleID = '/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_check_overlap.c'
source_filename = "/home/carl/AnghaBench/linux/net/tipc/extr_subscr.c_tipc_sub_check_overlap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.tipc_name_seq = type { i64, i64 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @tipc_sub_check_overlap(%struct.tipc_name_seq* %0, i64 %1, i64 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.tipc_name_seq*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  store %struct.tipc_name_seq* %0, %struct.tipc_name_seq** %5, align 8
  store i64 %1, i64* %6, align 8
  store i64 %2, i64* %7, align 8
  %8 = load i64, i64* %6, align 8
  %9 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %10 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %9, i32 0, i32 0
  %11 = load i64, i64* %10, align 8
  %12 = icmp slt i64 %8, %11
  br i1 %12, label %13, label %17

13:                                               ; preds = %3
  %14 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %15 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %14, i32 0, i32 0
  %16 = load i64, i64* %15, align 8
  store i64 %16, i64* %6, align 8
  br label %17

17:                                               ; preds = %13, %3
  %18 = load i64, i64* %7, align 8
  %19 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %20 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = icmp sgt i64 %18, %21
  br i1 %22, label %23, label %27

23:                                               ; preds = %17
  %24 = load %struct.tipc_name_seq*, %struct.tipc_name_seq** %5, align 8
  %25 = getelementptr inbounds %struct.tipc_name_seq, %struct.tipc_name_seq* %24, i32 0, i32 1
  %26 = load i64, i64* %25, align 8
  store i64 %26, i64* %7, align 8
  br label %27

27:                                               ; preds = %23, %17
  %28 = load i64, i64* %6, align 8
  %29 = load i64, i64* %7, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %32

31:                                               ; preds = %27
  store i32 0, i32* %4, align 4
  br label %33

32:                                               ; preds = %27
  store i32 1, i32* %4, align 4
  br label %33

33:                                               ; preds = %32, %31
  %34 = load i32, i32* %4, align 4
  ret i32 %34
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
