; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_rx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_flow_dissector.c_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"recv\00", align 1
@cfg_payload_char = common dso_local global i8 0, align 1
@.str.1 = private unnamed_addr constant [23 x i8] c"recv: payload mismatch\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @do_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_rx(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8, align 1
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  store i32 0, i32* %5, align 4
  br label %6

6:                                                ; preds = %1, %31
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @MSG_DONTWAIT, align 4
  %9 = call i32 @recv(i32 %7, i8* %3, i32 1, i32 %8)
  store i32 %9, i32* %4, align 4
  %10 = load i32, i32* %4, align 4
  %11 = icmp eq i32 %10, -1
  br i1 %11, label %12, label %17

12:                                               ; preds = %6
  %13 = load i64, i64* @errno, align 8
  %14 = load i64, i64* @EAGAIN, align 8
  %15 = icmp eq i64 %13, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %12
  br label %34

17:                                               ; preds = %12, %6
  %18 = load i32, i32* %4, align 4
  %19 = icmp eq i32 %18, -1
  br i1 %19, label %20, label %23

20:                                               ; preds = %17
  %21 = load i64, i64* @errno, align 8
  %22 = call i32 @error(i32 1, i64 %21, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %17
  %24 = load i8, i8* %3, align 1
  %25 = sext i8 %24 to i32
  %26 = load i8, i8* @cfg_payload_char, align 1
  %27 = sext i8 %26 to i32
  %28 = icmp ne i32 %25, %27
  br i1 %28, label %29, label %31

29:                                               ; preds = %23
  %30 = call i32 @error(i32 1, i64 0, i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0))
  br label %31

31:                                               ; preds = %29, %23
  %32 = load i32, i32* %5, align 4
  %33 = add nsw i32 %32, 1
  store i32 %33, i32* %5, align 4
  br label %6

34:                                               ; preds = %16
  %35 = load i32, i32* %5, align 4
  ret i32 %35
}

declare dso_local i32 @recv(i32, i8*, i32, i32) #1

declare dso_local i32 @error(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
