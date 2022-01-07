; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_filter_without_bind.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_reuseport_bpf.c_test_filter_without_bind.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [36 x i8] c"Testing filter add without bind...\0A\00", align 1
@AF_INET = common dso_local global i32 0, align 4
@SOCK_DGRAM = common dso_local global i32 0, align 4
@errno = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [26 x i8] c"failed to create socket 1\00", align 1
@.str.2 = private unnamed_addr constant [26 x i8] c"failed to create socket 2\00", align 1
@SOL_SOCKET = common dso_local global i32 0, align 4
@SO_REUSEPORT = common dso_local global i32 0, align 4
@.str.3 = private unnamed_addr constant [39 x i8] c"failed to set SO_REUSEPORT on socket 1\00", align 1
@.str.4 = private unnamed_addr constant [39 x i8] c"failed to set SO_REUSEPORT on socket 2\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_filter_without_bind to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_filter_without_bind() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 1, i32* %3, align 4
  %4 = load i32, i32* @stderr, align 4
  %5 = call i32 @fprintf(i32 %4, i8* getelementptr inbounds ([36 x i8], [36 x i8]* @.str, i64 0, i64 0))
  %6 = load i32, i32* @AF_INET, align 4
  %7 = load i32, i32* @SOCK_DGRAM, align 4
  %8 = call i32 @socket(i32 %6, i32 %7, i32 0)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = icmp slt i32 %9, 0
  br i1 %10, label %11, label %14

11:                                               ; preds = %0
  %12 = load i32, i32* @errno, align 4
  %13 = call i32 @error(i32 1, i32 %12, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0))
  br label %14

14:                                               ; preds = %11, %0
  %15 = load i32, i32* @AF_INET, align 4
  %16 = load i32, i32* @SOCK_DGRAM, align 4
  %17 = call i32 @socket(i32 %15, i32 %16, i32 0)
  store i32 %17, i32* %2, align 4
  %18 = load i32, i32* %2, align 4
  %19 = icmp slt i32 %18, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %14
  %21 = load i32, i32* @errno, align 4
  %22 = call i32 @error(i32 1, i32 %21, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.2, i64 0, i64 0))
  br label %23

23:                                               ; preds = %20, %14
  %24 = load i32, i32* %1, align 4
  %25 = load i32, i32* @SOL_SOCKET, align 4
  %26 = load i32, i32* @SO_REUSEPORT, align 4
  %27 = call i64 @setsockopt(i32 %24, i32 %25, i32 %26, i32* %3, i32 4)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %32

29:                                               ; preds = %23
  %30 = load i32, i32* @errno, align 4
  %31 = call i32 @error(i32 1, i32 %30, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.3, i64 0, i64 0))
  br label %32

32:                                               ; preds = %29, %23
  %33 = load i32, i32* %2, align 4
  %34 = load i32, i32* @SOL_SOCKET, align 4
  %35 = load i32, i32* @SO_REUSEPORT, align 4
  %36 = call i64 @setsockopt(i32 %33, i32 %34, i32 %35, i32* %3, i32 4)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %41

38:                                               ; preds = %32
  %39 = load i32, i32* @errno, align 4
  %40 = call i32 @error(i32 1, i32 %39, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.4, i64 0, i64 0))
  br label %41

41:                                               ; preds = %38, %32
  %42 = load i32, i32* %1, align 4
  %43 = call i32 @attach_ebpf(i32 %42, i32 10)
  %44 = load i32, i32* %2, align 4
  %45 = call i32 @attach_cbpf(i32 %44, i32 10)
  %46 = load i32, i32* %1, align 4
  %47 = call i32 @close(i32 %46)
  %48 = load i32, i32* %2, align 4
  %49 = call i32 @close(i32 %48)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*) #1

declare dso_local i32 @socket(i32, i32, i32) #1

declare dso_local i32 @error(i32, i32, i8*) #1

declare dso_local i64 @setsockopt(i32, i32, i32, i32*, i32) #1

declare dso_local i32 @attach_ebpf(i32, i32) #1

declare dso_local i32 @attach_cbpf(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
