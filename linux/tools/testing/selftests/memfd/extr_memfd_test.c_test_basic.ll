; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_basic.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_basic.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s BASIC\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [17 x i8] c"kern_memfd_basic\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_GROW = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_basic to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_basic() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @memfd_str, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @mfd_def_size, align 4
  %5 = load i32, i32* @MFD_CLOEXEC, align 4
  %6 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @mfd_assert_has_seals(i32 %9, i32 0)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @F_SEAL_SHRINK, align 4
  %13 = load i32, i32* @F_SEAL_WRITE, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mfd_assert_add_seals(i32 %11, i32 %14)
  %16 = load i32, i32* %1, align 4
  %17 = load i32, i32* @F_SEAL_SHRINK, align 4
  %18 = load i32, i32* @F_SEAL_WRITE, align 4
  %19 = or i32 %17, %18
  %20 = call i32 @mfd_assert_has_seals(i32 %16, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = load i32, i32* @F_SEAL_SHRINK, align 4
  %23 = load i32, i32* @F_SEAL_WRITE, align 4
  %24 = or i32 %22, %23
  %25 = call i32 @mfd_assert_add_seals(i32 %21, i32 %24)
  %26 = load i32, i32* %1, align 4
  %27 = load i32, i32* @F_SEAL_SHRINK, align 4
  %28 = load i32, i32* @F_SEAL_WRITE, align 4
  %29 = or i32 %27, %28
  %30 = call i32 @mfd_assert_has_seals(i32 %26, i32 %29)
  %31 = load i32, i32* %1, align 4
  %32 = load i32, i32* @F_SEAL_GROW, align 4
  %33 = load i32, i32* @F_SEAL_SEAL, align 4
  %34 = or i32 %32, %33
  %35 = call i32 @mfd_assert_add_seals(i32 %31, i32 %34)
  %36 = load i32, i32* %1, align 4
  %37 = load i32, i32* @F_SEAL_SHRINK, align 4
  %38 = load i32, i32* @F_SEAL_GROW, align 4
  %39 = or i32 %37, %38
  %40 = load i32, i32* @F_SEAL_WRITE, align 4
  %41 = or i32 %39, %40
  %42 = load i32, i32* @F_SEAL_SEAL, align 4
  %43 = or i32 %41, %42
  %44 = call i32 @mfd_assert_has_seals(i32 %36, i32 %43)
  %45 = load i32, i32* %1, align 4
  %46 = load i32, i32* @F_SEAL_GROW, align 4
  %47 = call i32 @mfd_fail_add_seals(i32 %45, i32 %46)
  %48 = load i32, i32* %1, align 4
  %49 = call i32 @mfd_fail_add_seals(i32 %48, i32 0)
  %50 = load i32, i32* %1, align 4
  %51 = call i32 @close(i32 %50)
  %52 = load i32, i32* @mfd_def_size, align 4
  %53 = load i32, i32* @MFD_CLOEXEC, align 4
  %54 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str.1, i64 0, i64 0), i32 %52, i32 %53)
  store i32 %54, i32* %1, align 4
  %55 = load i32, i32* %1, align 4
  %56 = load i32, i32* @F_SEAL_SEAL, align 4
  %57 = call i32 @mfd_assert_has_seals(i32 %55, i32 %56)
  %58 = load i32, i32* %1, align 4
  %59 = load i32, i32* @F_SEAL_SHRINK, align 4
  %60 = load i32, i32* @F_SEAL_GROW, align 4
  %61 = or i32 %59, %60
  %62 = load i32, i32* @F_SEAL_WRITE, align 4
  %63 = or i32 %61, %62
  %64 = call i32 @mfd_fail_add_seals(i32 %58, i32 %63)
  %65 = load i32, i32* %1, align 4
  %66 = load i32, i32* @F_SEAL_SEAL, align 4
  %67 = call i32 @mfd_assert_has_seals(i32 %65, i32 %66)
  %68 = load i32, i32* %1, align 4
  %69 = call i32 @close(i32 %68)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @mfd_fail_add_seals(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
