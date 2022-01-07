; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_dup.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_dup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [21 x i8] c"kern_memfd_share_dup\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@F_SEAL_GROW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_share_dup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_share_dup(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8* %1, i8** %4, align 8
  %7 = load i8*, i8** @memfd_str, align 8
  %8 = load i8*, i8** %3, align 8
  %9 = load i8*, i8** %4, align 8
  %10 = call i32 @printf(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str, i64 0, i64 0), i8* %7, i8* %8, i8* %9)
  %11 = load i32, i32* @mfd_def_size, align 4
  %12 = load i32, i32* @MFD_CLOEXEC, align 4
  %13 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %14 = or i32 %12, %13
  %15 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mfd_assert_has_seals(i32 %16, i32 0)
  %18 = load i32, i32* %5, align 4
  %19 = call i32 @mfd_assert_dup(i32 %18)
  store i32 %19, i32* %6, align 4
  %20 = load i32, i32* %6, align 4
  %21 = call i32 @mfd_assert_has_seals(i32 %20, i32 0)
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @F_SEAL_WRITE, align 4
  %24 = call i32 @mfd_assert_add_seals(i32 %22, i32 %23)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @F_SEAL_WRITE, align 4
  %27 = call i32 @mfd_assert_has_seals(i32 %25, i32 %26)
  %28 = load i32, i32* %6, align 4
  %29 = load i32, i32* @F_SEAL_WRITE, align 4
  %30 = call i32 @mfd_assert_has_seals(i32 %28, i32 %29)
  %31 = load i32, i32* %6, align 4
  %32 = load i32, i32* @F_SEAL_SHRINK, align 4
  %33 = call i32 @mfd_assert_add_seals(i32 %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = load i32, i32* @F_SEAL_WRITE, align 4
  %36 = load i32, i32* @F_SEAL_SHRINK, align 4
  %37 = or i32 %35, %36
  %38 = call i32 @mfd_assert_has_seals(i32 %34, i32 %37)
  %39 = load i32, i32* %6, align 4
  %40 = load i32, i32* @F_SEAL_WRITE, align 4
  %41 = load i32, i32* @F_SEAL_SHRINK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mfd_assert_has_seals(i32 %39, i32 %42)
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @F_SEAL_SEAL, align 4
  %46 = call i32 @mfd_assert_add_seals(i32 %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = load i32, i32* @F_SEAL_WRITE, align 4
  %49 = load i32, i32* @F_SEAL_SHRINK, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* @F_SEAL_SEAL, align 4
  %52 = or i32 %50, %51
  %53 = call i32 @mfd_assert_has_seals(i32 %47, i32 %52)
  %54 = load i32, i32* %6, align 4
  %55 = load i32, i32* @F_SEAL_WRITE, align 4
  %56 = load i32, i32* @F_SEAL_SHRINK, align 4
  %57 = or i32 %55, %56
  %58 = load i32, i32* @F_SEAL_SEAL, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mfd_assert_has_seals(i32 %54, i32 %59)
  %61 = load i32, i32* %5, align 4
  %62 = load i32, i32* @F_SEAL_GROW, align 4
  %63 = call i32 @mfd_fail_add_seals(i32 %61, i32 %62)
  %64 = load i32, i32* %6, align 4
  %65 = load i32, i32* @F_SEAL_GROW, align 4
  %66 = call i32 @mfd_fail_add_seals(i32 %64, i32 %65)
  %67 = load i32, i32* %5, align 4
  %68 = load i32, i32* @F_SEAL_SEAL, align 4
  %69 = call i32 @mfd_fail_add_seals(i32 %67, i32 %68)
  %70 = load i32, i32* %6, align 4
  %71 = load i32, i32* @F_SEAL_SEAL, align 4
  %72 = call i32 @mfd_fail_add_seals(i32 %70, i32 %71)
  %73 = load i32, i32* %6, align 4
  %74 = call i32 @close(i32 %73)
  %75 = load i32, i32* %5, align 4
  %76 = load i32, i32* @F_SEAL_GROW, align 4
  %77 = call i32 @mfd_fail_add_seals(i32 %75, i32 %76)
  %78 = load i32, i32* %5, align 4
  %79 = call i32 @close(i32 %78)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_dup(i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @mfd_fail_add_seals(i32, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
