; ModuleID = '/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_set_header_len.c'
source_filename = "/home/carl/AnghaBench/linux/net/l2tp/extr_l2tp_core.c_l2tp_session_set_header_len.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.l2tp_session = type { i32, i32, %struct.TYPE_2__*, i64 }
%struct.TYPE_2__ = type { i64 }

@L2TP_HDR_VER_2 = common dso_local global i32 0, align 4
@L2TP_ENCAPTYPE_UDP = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @l2tp_session_set_header_len(%struct.l2tp_session* %0, i32 %1) #0 {
  %3 = alloca %struct.l2tp_session*, align 8
  %4 = alloca i32, align 4
  store %struct.l2tp_session* %0, %struct.l2tp_session** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = load i32, i32* @L2TP_HDR_VER_2, align 4
  %7 = icmp eq i32 %5, %6
  br i1 %7, label %8, label %21

8:                                                ; preds = %2
  %9 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %10 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %9, i32 0, i32 0
  store i32 6, i32* %10, align 8
  %11 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %12 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %11, i32 0, i32 3
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %20

15:                                               ; preds = %8
  %16 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %17 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = add nsw i32 %18, 4
  store i32 %19, i32* %17, align 8
  br label %20

20:                                               ; preds = %15, %8
  br label %49

21:                                               ; preds = %2
  %22 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %23 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %22, i32 0, i32 1
  %24 = load i32, i32* %23, align 4
  %25 = add nsw i32 4, %24
  %26 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %27 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %26, i32 0, i32 0
  store i32 %25, i32* %27, align 8
  %28 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %29 = call i64 @l2tp_get_l2specific_len(%struct.l2tp_session* %28)
  %30 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %31 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = sext i32 %32 to i64
  %34 = add nsw i64 %33, %29
  %35 = trunc i64 %34 to i32
  store i32 %35, i32* %31, align 8
  %36 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %37 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %36, i32 0, i32 2
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i64, i64* %39, align 8
  %41 = load i64, i64* @L2TP_ENCAPTYPE_UDP, align 8
  %42 = icmp eq i64 %40, %41
  br i1 %42, label %43, label %48

43:                                               ; preds = %21
  %44 = load %struct.l2tp_session*, %struct.l2tp_session** %3, align 8
  %45 = getelementptr inbounds %struct.l2tp_session, %struct.l2tp_session* %44, i32 0, i32 0
  %46 = load i32, i32* %45, align 8
  %47 = add nsw i32 %46, 4
  store i32 %47, i32* %45, align 8
  br label %48

48:                                               ; preds = %43, %21
  br label %49

49:                                               ; preds = %48, %20
  ret void
}

declare dso_local i64 @l2tp_get_l2specific_len(%struct.l2tp_session*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
