; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_flush_tcp.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_flush_tcp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MSG_TRUNC = common dso_local global i32 0, align 4
@MSG_DONTWAIT = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [6 x i8] c"flush\00", align 1
@packets = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32)* @do_flush_tcp to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_flush_tcp(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @MSG_TRUNC, align 4
  %6 = load i32, i32* @MSG_DONTWAIT, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @recv(i32 %4, i32* null, i32 2097152, i32 %7)
  store i32 %8, i32* %3, align 4
  %9 = load i32, i32* %3, align 4
  %10 = icmp eq i32 %9, -1
  br i1 %10, label %11, label %16

11:                                               ; preds = %1
  %12 = load i64, i64* @errno, align 8
  %13 = load i64, i64* @EAGAIN, align 8
  %14 = icmp eq i64 %12, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %11
  br label %32

16:                                               ; preds = %11, %1
  %17 = load i32, i32* %3, align 4
  %18 = icmp eq i32 %17, -1
  br i1 %18, label %19, label %22

19:                                               ; preds = %16
  %20 = load i64, i64* @errno, align 8
  %21 = call i32 @error(i32 1, i64 %20, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %22

22:                                               ; preds = %19, %16
  %23 = load i32, i32* %3, align 4
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %22
  br label %32

26:                                               ; preds = %22
  %27 = load i32, i32* @packets, align 4
  %28 = add nsw i32 %27, 1
  store i32 %28, i32* @packets, align 4
  %29 = load i32, i32* %3, align 4
  %30 = load i32, i32* @bytes, align 4
  %31 = add nsw i32 %30, %29
  store i32 %31, i32* @bytes, align 4
  br label %32

32:                                               ; preds = %26, %25, %15
  ret void
}

declare dso_local i32 @recv(i32, i32*, i32, i32) #1

declare dso_local i32 @error(i32, i64, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
