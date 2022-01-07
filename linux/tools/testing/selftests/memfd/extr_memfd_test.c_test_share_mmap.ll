; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_mmap.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_share_mmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [10 x i8] c"%s %s %s\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [22 x i8] c"kern_memfd_share_mmap\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_SEAL_WRITE = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i8*)* @test_share_mmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_share_mmap(i8* %0, i8* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i8*, align 8
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
  %19 = call i8* @mfd_assert_mmap_shared(i32 %18)
  store i8* %19, i8** %6, align 8
  %20 = load i32, i32* %5, align 4
  %21 = load i32, i32* @F_SEAL_WRITE, align 4
  %22 = call i32 @mfd_fail_add_seals(i32 %20, i32 %21)
  %23 = load i32, i32* %5, align 4
  %24 = call i32 @mfd_assert_has_seals(i32 %23, i32 0)
  %25 = load i32, i32* %5, align 4
  %26 = load i32, i32* @F_SEAL_SHRINK, align 4
  %27 = call i32 @mfd_assert_add_seals(i32 %25, i32 %26)
  %28 = load i32, i32* %5, align 4
  %29 = load i32, i32* @F_SEAL_SHRINK, align 4
  %30 = call i32 @mfd_assert_has_seals(i32 %28, i32 %29)
  %31 = load i8*, i8** %6, align 8
  %32 = load i32, i32* @mfd_def_size, align 4
  %33 = call i32 @munmap(i8* %31, i32 %32)
  %34 = load i32, i32* %5, align 4
  %35 = call i8* @mfd_assert_mmap_private(i32 %34)
  store i8* %35, i8** %6, align 8
  %36 = load i32, i32* %5, align 4
  %37 = load i32, i32* @F_SEAL_WRITE, align 4
  %38 = call i32 @mfd_assert_add_seals(i32 %36, i32 %37)
  %39 = load i32, i32* %5, align 4
  %40 = load i32, i32* @F_SEAL_WRITE, align 4
  %41 = load i32, i32* @F_SEAL_SHRINK, align 4
  %42 = or i32 %40, %41
  %43 = call i32 @mfd_assert_has_seals(i32 %39, i32 %42)
  %44 = load i8*, i8** %6, align 8
  %45 = load i32, i32* @mfd_def_size, align 4
  %46 = call i32 @munmap(i8* %44, i32 %45)
  %47 = load i32, i32* %5, align 4
  %48 = call i32 @close(i32 %47)
  ret void
}

declare dso_local i32 @printf(i8*, i8*, i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i8* @mfd_assert_mmap_shared(i32) #1

declare dso_local i32 @mfd_fail_add_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i8* @mfd_assert_mmap_private(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
