; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_rx.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_msg_zerocopy.c_do_rx.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@cfg_runtime_ms = common dso_local global i64 0, align 8
@SOCK_STREAM = common dso_local global i32 0, align 4
@POLLIN = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"close\00", align 1
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [17 x i8] c"rx=%lu (%lu MB)\0A\00", align 1
@packets = common dso_local global i32 0, align 4
@bytes = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32, i32)* @do_rx to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @do_rx(i32 %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  store i32 400, i32* %7, align 4
  %10 = load i32, i32* %4, align 4
  %11 = load i32, i32* %5, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @do_setup_rx(i32 %10, i32 %11, i32 %12)
  store i32 %13, i32* %9, align 4
  %14 = call i64 (...) @gettimeofday_ms()
  %15 = load i64, i64* @cfg_runtime_ms, align 8
  %16 = add nsw i64 %14, %15
  %17 = add nsw i64 %16, 400
  store i64 %17, i64* %8, align 8
  br label %18

18:                                               ; preds = %33, %3
  %19 = load i32, i32* %5, align 4
  %20 = load i32, i32* @SOCK_STREAM, align 4
  %21 = icmp eq i32 %19, %20
  br i1 %21, label %22, label %25

22:                                               ; preds = %18
  %23 = load i32, i32* %9, align 4
  %24 = call i32 @do_flush_tcp(i32 %23)
  br label %29

25:                                               ; preds = %18
  %26 = load i32, i32* %9, align 4
  %27 = load i32, i32* %5, align 4
  %28 = call i32 @do_flush_datagram(i32 %26, i32 %27)
  br label %29

29:                                               ; preds = %25, %22
  %30 = load i32, i32* %9, align 4
  %31 = load i32, i32* @POLLIN, align 4
  %32 = call i32 @do_poll(i32 %30, i32 %31)
  br label %33

33:                                               ; preds = %29
  %34 = call i64 (...) @gettimeofday_ms()
  %35 = load i64, i64* %8, align 8
  %36 = icmp slt i64 %34, %35
  br i1 %36, label %18, label %37

37:                                               ; preds = %33
  %38 = load i32, i32* %9, align 4
  %39 = call i64 @close(i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %44

41:                                               ; preds = %37
  %42 = load i32, i32* @errno, align 4
  %43 = call i32 @error(i32 1, i32 %42, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  br label %44

44:                                               ; preds = %41, %37
  %45 = load i32, i32* @stderr, align 4
  %46 = load i32, i32* @packets, align 4
  %47 = load i32, i32* @bytes, align 4
  %48 = ashr i32 %47, 20
  %49 = call i32 @fprintf(i32 %45, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %46, i32 %48)
  ret void
}

declare dso_local i32 @do_setup_rx(i32, i32, i32) #1

declare dso_local i64 @gettimeofday_ms(...) #1

declare dso_local i32 @do_flush_tcp(i32) #1

declare dso_local i32 @do_flush_datagram(i32, i32) #1

declare dso_local i32 @do_poll(i32, i32) #1

declare dso_local i64 @close(i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i32 @fprintf(i32, i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
