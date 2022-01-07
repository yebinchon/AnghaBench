; ModuleID = '/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_clear.c'
source_filename = "/home/carl/AnghaBench/linux/net/bluetooth/extr_l2cap_core.c_l2cap_seq_list_clear.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2cap_seq_list = type { i64, i64, i64, i64* }

@L2CAP_SEQ_LIST_CLEAR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.l2cap_seq_list*)* @l2cap_seq_list_clear to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @l2cap_seq_list_clear(%struct.l2cap_seq_list* %0) #0 {
  %2 = alloca %struct.l2cap_seq_list*, align 8
  %3 = alloca i64, align 8
  store %struct.l2cap_seq_list* %0, %struct.l2cap_seq_list** %2, align 8
  %4 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %5 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %4, i32 0, i32 0
  %6 = load i64, i64* %5, align 8
  %7 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %8 = icmp eq i64 %6, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  br label %34

10:                                               ; preds = %1
  store i64 0, i64* %3, align 8
  br label %11

11:                                               ; preds = %24, %10
  %12 = load i64, i64* %3, align 8
  %13 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %14 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %13, i32 0, i32 1
  %15 = load i64, i64* %14, align 8
  %16 = icmp ule i64 %12, %15
  br i1 %16, label %17, label %27

17:                                               ; preds = %11
  %18 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %19 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %20 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %19, i32 0, i32 3
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* %3, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 %18, i64* %23, align 8
  br label %24

24:                                               ; preds = %17
  %25 = load i64, i64* %3, align 8
  %26 = add i64 %25, 1
  store i64 %26, i64* %3, align 8
  br label %11

27:                                               ; preds = %11
  %28 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %29 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %30 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %29, i32 0, i32 0
  store i64 %28, i64* %30, align 8
  %31 = load i64, i64* @L2CAP_SEQ_LIST_CLEAR, align 8
  %32 = load %struct.l2cap_seq_list*, %struct.l2cap_seq_list** %2, align 8
  %33 = getelementptr inbounds %struct.l2cap_seq_list, %struct.l2cap_seq_list* %32, i32 0, i32 2
  store i64 %31, i64* %33, align 8
  br label %34

34:                                               ; preds = %27, %9
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
