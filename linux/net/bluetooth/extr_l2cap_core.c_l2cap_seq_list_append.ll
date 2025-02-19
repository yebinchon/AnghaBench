; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_append.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_append.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_seq_list = type { i64, i64*, i64, i64 }

@L2CAP_SEQ_LIST_CLEAR = common dso_local global i64 0, align 8
@L2CAP_SEQ_LIST_TAIL = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_seq_list*, i64)* @l2cap_seq_list_append to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_seq_list_append(%struct.l2cap_seq_list* %0, i64 %1) #0 {
  %3 = alloca %struct.l2cap_seq_list*, align 8
  %4 = alloca i64, align 8
  %5 = alloca i64, align 8
  store %struct.l2cap_seq_list* %0, %struct.l2cap_seq_list** %3, align 8
  store i64 %1, i64* %4, align 8
  %6 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %7 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  store i64 %8, i64* %5, align 8
  %9 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %10 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %9, i32 0, i32 1
  %11 = load i64*, i64** %10, align 8
  %12 = load i64, i64* %4, align 8
  %13 = load i64, i64* %5, align 8
  %14 = and i64 %12, %13
  %15 = getelementptr inbounds i64, i64* %11, i64 %14
  %16 = load i64, i64* %15, align 8
  %17 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %18 = icmp ne i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %2
  br label %53

20:                                               ; preds = %2
  %21 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %22 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %21, i32 0, i32 2
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %25 = icmp eq i64 %23, %24
  br i1 %25, label %26, label %30

26:                                               ; preds = %20
  %27 = load i64, i64* %4, align 8
  %28 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %29 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %28, i32 0, i32 3
  store i64 %27, i64* %29, align 8
  br label %41

30:                                               ; preds = %20
  %31 = load i64, i64* %4, align 8
  %32 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %33 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %32, i32 0, i32 1
  %34 = load i64*, i64** %33, align 8
  %35 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %36 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %35, i32 0, i32 2
  %37 = load i64, i64* %36, align 8
  %38 = load i64, i64* %5, align 8
  %39 = and i64 %37, %38
  %40 = getelementptr inbounds i64, i64* %34, i64 %39
  store i64 %31, i64* %40, align 8
  br label %41

41:                                               ; preds = %30, %26
  %42 = load i64, i64* %4, align 8
  %43 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %44 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %43, i32 0, i32 2
  store i64 %42, i64* %44, align 8
  %45 = load i64, i64* @L2CAP_SEQ_LIST_TAIL, align 8
  %46 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %3, align 8
  %47 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %46, i32 0, i32 1
  %48 = load i64*, i64** %47, align 8
  %49 = load i64, i64* %4, align 8
  %50 = load i64, i64* %5, align 8
  %51 = and i64 %49, %50
  %52 = getelementptr inbounds i64, i64* %48, i64 %51
  store i64 %45, i64* %52, align 8
  br label %53

53:                                               ; preds = %41, %19
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
