; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_open.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_open.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"kern_memfd_share_open\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@O_RDWR = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@O_RDONLY = common dso_local global i32 0, align 4
@F_SEAL_SEAL = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_share_open to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_share_open(i8* %0, i8* %1) #0 {
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
  %15 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %11, i32 %14)
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = call i32 @mfd_assert_has_seals(i32 %16, i32 0)
  %18 = load i32, i32* %5, align 4
  %19 = load i32, i32* @O_RDWR, align 4
  %20 = call i32 @mfd_assert_open(i32 %18, i32 %19, i32 0)
  store i32 %20, i32* %6, align 4
  %21 = load i32, i32* %5, align 4
  %22 = load i32, i32* @F_SEAL_WRITE, align 4
  %23 = call i32 @mfd_assert_add_seals(i32 %21, i32 %22)
  %24 = load i32, i32* %5, align 4
  %25 = load i32, i32* @F_SEAL_WRITE, align 4
  %26 = call i32 @mfd_assert_has_seals(i32 %24, i32 %25)
  %27 = load i32, i32* %6, align 4
  %28 = load i32, i32* @F_SEAL_WRITE, align 4
  %29 = call i32 @mfd_assert_has_seals(i32 %27, i32 %28)
  %30 = load i32, i32* %6, align 4
  %31 = load i32, i32* @F_SEAL_SHRINK, align 4
  %32 = call i32 @mfd_assert_add_seals(i32 %30, i32 %31)
  %33 = load i32, i32* %5, align 4
  %34 = load i32, i32* @F_SEAL_WRITE, align 4
  %35 = load i32, i32* @F_SEAL_SHRINK, align 4
  %36 = or i32 %34, %35
  %37 = call i32 @mfd_assert_has_seals(i32 %33, i32 %36)
  %38 = load i32, i32* %6, align 4
  %39 = load i32, i32* @F_SEAL_WRITE, align 4
  %40 = load i32, i32* @F_SEAL_SHRINK, align 4
  %41 = or i32 %39, %40
  %42 = call i32 @mfd_assert_has_seals(i32 %38, i32 %41)
  %43 = load i32, i32* %5, align 4
  %44 = call i32 @close(i32 %43)
  %45 = load i32, i32* %6, align 4
  %46 = load i32, i32* @O_RDONLY, align 4
  %47 = call i32 @mfd_assert_open(i32 %45, i32 %46, i32 0)
  store i32 %47, i32* %5, align 4
  %48 = load i32, i32* %5, align 4
  %49 = load i32, i32* @F_SEAL_SEAL, align 4
  %50 = call i32 @mfd_fail_add_seals(i32 %48, i32 %49)
  %51 = load i32, i32* %5, align 4
  %52 = load i32, i32* @F_SEAL_WRITE, align 4
  %53 = load i32, i32* @F_SEAL_SHRINK, align 4
  %54 = or i32 %52, %53
  %55 = call i32 @mfd_assert_has_seals(i32 %51, i32 %54)
  %56 = load i32, i32* %6, align 4
  %57 = load i32, i32* @F_SEAL_WRITE, align 4
  %58 = load i32, i32* @F_SEAL_SHRINK, align 4
  %59 = or i32 %57, %58
  %60 = call i32 @mfd_assert_has_seals(i32 %56, i32 %59)
  %61 = load i32, i32* %6, align 4
  %62 = call i32 @close(i32 %61)
  %63 = load i32, i32* %5, align 4
  %64 = load i32, i32* @O_RDWR, align 4
  %65 = call i32 @mfd_assert_open(i32 %63, i32 %64, i32 0)
  store i32 %65, i32* %6, align 4
  %66 = load i32, i32* %6, align 4
  %67 = load i32, i32* @F_SEAL_SEAL, align 4
  %68 = call i32 @mfd_assert_add_seals(i32 %66, i32 %67)
  %69 = load i32, i32* %5, align 4
  %70 = load i32, i32* @F_SEAL_WRITE, align 4
  %71 = load i32, i32* @F_SEAL_SHRINK, align 4
  %72 = or i32 %70, %71
  %73 = load i32, i32* @F_SEAL_SEAL, align 4
  %74 = or i32 %72, %73
  %75 = call i32 @mfd_assert_has_seals(i32 %69, i32 %74)
  %76 = load i32, i32* %6, align 4
  %77 = load i32, i32* @F_SEAL_WRITE, align 4
  %78 = load i32, i32* @F_SEAL_SHRINK, align 4
  %79 = or i32 %77, %78
  %80 = load i32, i32* @F_SEAL_SEAL, align 4
  %81 = or i32 %79, %80
  %82 = call i32 @mfd_assert_has_seals(i32 %76, i32 %81)
  %83 = load i32, i32* %6, align 4
  %84 = call i32 @close(i32 %83)
  %85 = load i32, i32* %5, align 4
  %86 = call i32 @close(i32 %85)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_open(i32, i32, i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @mfd_fail_add_seals(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
