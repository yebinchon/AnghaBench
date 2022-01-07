; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_create.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [11 x i8] c"%s CREATE\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_create() #0 {
  %1 = alloca [2048 x i8], align 16
  %2 = alloca i32, align 4
  %3 = load i8*, i8** @memfd_str, align 8
  %4 = call i32 @printf(i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str, i64 0, i64 0), i8* %3)
  %5 = call i32 @mfd_fail_new(i8* null, i32 0)
  %6 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %7 = call i32 @memset(i8* %6, i32 255, i32 2048)
  %8 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %9 = call i32 @mfd_fail_new(i8* %8, i32 0)
  %10 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %11 = call i32 @memset(i8* %10, i32 255, i32 2048)
  %12 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 2047
  store i8 0, i8* %12, align 1
  %13 = getelementptr inbounds [2048 x i8], [2048 x i8]* %1, i64 0, i64 0
  %14 = call i32 @mfd_fail_new(i8* %13, i32 0)
  %15 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 0)
  store i32 %15, i32* %2, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @close(i32 %16)
  %18 = call i32 @mfd_fail_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 256)
  %19 = load i32, i32* @MFD_CLOEXEC, align 4
  %20 = xor i32 %19, -1
  %21 = call i32 @mfd_fail_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %20)
  %22 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %23 = xor i32 %22, -1
  %24 = call i32 @mfd_fail_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 %23)
  %25 = call i32 @mfd_fail_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 -1)
  %26 = call i32 @mfd_fail_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 -2147483648)
  %27 = load i32, i32* @MFD_CLOEXEC, align 4
  %28 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @close(i32 %29)
  %31 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %32 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %31)
  store i32 %32, i32* %2, align 4
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @close(i32 %33)
  %35 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %36 = load i32, i32* @MFD_CLOEXEC, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str.1, i64 0, i64 0), i32 0, i32 %37)
  store i32 %38, i32* %2, align 4
  %39 = load i32, i32* %2, align 4
  %40 = call i32 @close(i32 %39)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mfd_fail_new(i8*, i32) #1

declare dso_local i32 @memset(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
