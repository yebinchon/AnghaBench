; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_test_tpacket.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/net/extr_psock_tpacket.c_test_tpacket.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ring = type { i32 }

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [18 x i8] c"test: %s with %s \00", align 1
@tpacket_str = common dso_local global i8** null, align 8
@type_str = common dso_local global i8** null, align 8
@TPACKET_V1 = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [71 x i8] c"test: skip %s %s since user and kernel space have different bit width\0A\00", align 1
@KSFT_SKIP = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [2 x i8] c"\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32)* @test_tpacket to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @test_tpacket(i32 %0, i32 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.ring, align 4
  store i32 %0, i32* %4, align 4
  store i32 %1, i32* %5, align 4
  %8 = load i32, i32* @stderr, align 4
  %9 = load i8**, i8*** @tpacket_str, align 8
  %10 = load i32, i32* %4, align 4
  %11 = sext i32 %10 to i64
  %12 = getelementptr inbounds i8*, i8** %9, i64 %11
  %13 = load i8*, i8** %12, align 8
  %14 = load i8**, i8*** @type_str, align 8
  %15 = load i32, i32* %5, align 4
  %16 = sext i32 %15 to i64
  %17 = getelementptr inbounds i8*, i8** %14, i64 %16
  %18 = load i8*, i8** %17, align 8
  %19 = call i32 (i32, i8*, ...) @fprintf(i32 %8, i8* getelementptr inbounds ([18 x i8], [18 x i8]* @.str, i64 0, i64 0), i8* %13, i8* %18)
  %20 = load i32, i32* @stderr, align 4
  %21 = call i32 @fflush(i32 %20)
  %22 = load i32, i32* %4, align 4
  %23 = load i32, i32* @TPACKET_V1, align 4
  %24 = icmp eq i32 %22, %23
  br i1 %24, label %25, label %43

25:                                               ; preds = %2
  %26 = call i64 (...) @test_kernel_bit_width()
  %27 = call i64 (...) @test_user_bit_width()
  %28 = icmp ne i64 %26, %27
  br i1 %28, label %29, label %43

29:                                               ; preds = %25
  %30 = load i32, i32* @stderr, align 4
  %31 = load i8**, i8*** @tpacket_str, align 8
  %32 = load i32, i32* %4, align 4
  %33 = sext i32 %32 to i64
  %34 = getelementptr inbounds i8*, i8** %31, i64 %33
  %35 = load i8*, i8** %34, align 8
  %36 = load i8**, i8*** @type_str, align 8
  %37 = load i32, i32* %5, align 4
  %38 = sext i32 %37 to i64
  %39 = getelementptr inbounds i8*, i8** %36, i64 %38
  %40 = load i8*, i8** %39, align 8
  %41 = call i32 (i32, i8*, ...) @fprintf(i32 %30, i8* getelementptr inbounds ([71 x i8], [71 x i8]* @.str.1, i64 0, i64 0), i8* %35, i8* %40)
  %42 = load i32, i32* @KSFT_SKIP, align 4
  store i32 %42, i32* %3, align 4
  br label %63

43:                                               ; preds = %25, %2
  %44 = load i32, i32* %4, align 4
  %45 = call i32 @pfsocket(i32 %44)
  store i32 %45, i32* %6, align 4
  %46 = call i32 @memset(%struct.ring* %7, i32 0, i32 4)
  %47 = load i32, i32* %6, align 4
  %48 = load i32, i32* %4, align 4
  %49 = load i32, i32* %5, align 4
  %50 = call i32 @setup_ring(i32 %47, %struct.ring* %7, i32 %48, i32 %49)
  %51 = load i32, i32* %6, align 4
  %52 = call i32 @mmap_ring(i32 %51, %struct.ring* %7)
  %53 = load i32, i32* %6, align 4
  %54 = call i32 @bind_ring(i32 %53, %struct.ring* %7)
  %55 = load i32, i32* %6, align 4
  %56 = call i32 @walk_ring(i32 %55, %struct.ring* %7)
  %57 = load i32, i32* %6, align 4
  %58 = call i32 @unmap_ring(i32 %57, %struct.ring* %7)
  %59 = load i32, i32* %6, align 4
  %60 = call i32 @close(i32 %59)
  %61 = load i32, i32* @stderr, align 4
  %62 = call i32 (i32, i8*, ...) @fprintf(i32 %61, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.2, i64 0, i64 0))
  store i32 0, i32* %3, align 4
  br label %63

63:                                               ; preds = %43, %29
  %64 = load i32, i32* %3, align 4
  ret i32 %64
}

declare dso_local i32 @fprintf(i32, i8*, ...) #1

declare dso_local i32 @fflush(i32) #1

declare dso_local i64 @test_kernel_bit_width(...) #1

declare dso_local i64 @test_user_bit_width(...) #1

declare dso_local i32 @pfsocket(i32) #1

declare dso_local i32 @memset(%struct.ring*, i32, i32) #1

declare dso_local i32 @setup_ring(i32, %struct.ring*, i32, i32) #1

declare dso_local i32 @mmap_ring(i32, %struct.ring*) #1

declare dso_local i32 @bind_ring(i32, %struct.ring*) #1

declare dso_local i32 @walk_ring(i32, %struct.ring*) #1

declare dso_local i32 @unmap_ring(i32, %struct.ring*) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
