; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_seal_shrink.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_seal_shrink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [16 x i8] c"%s SEAL-SHRINK\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [23 x i8] c"kern_memfd_seal_shrink\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_SEAL_SHRINK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_seal_shrink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_seal_shrink() #0 {
  %1 = alloca i32, align 4
  %2 = load i8*, i8** @memfd_str, align 8
  %3 = call i32 @printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str, i64 0, i64 0), i8* %2)
  %4 = load i32, i32* @mfd_def_size, align 4
  %5 = load i32, i32* @MFD_CLOEXEC, align 4
  %6 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %7 = or i32 %5, %6
  %8 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([23 x i8], [23 x i8]* @.str.1, i64 0, i64 0), i32 %4, i32 %7)
  store i32 %8, i32* %1, align 4
  %9 = load i32, i32* %1, align 4
  %10 = call i32 @mfd_assert_has_seals(i32 %9, i32 0)
  %11 = load i32, i32* %1, align 4
  %12 = load i32, i32* @F_SEAL_SHRINK, align 4
  %13 = call i32 @mfd_assert_add_seals(i32 %11, i32 %12)
  %14 = load i32, i32* %1, align 4
  %15 = load i32, i32* @F_SEAL_SHRINK, align 4
  %16 = call i32 @mfd_assert_has_seals(i32 %14, i32 %15)
  %17 = load i32, i32* %1, align 4
  %18 = call i32 @mfd_assert_read(i32 %17)
  %19 = load i32, i32* %1, align 4
  %20 = call i32 @mfd_assert_write(i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @mfd_fail_shrink(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @mfd_assert_grow(i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @mfd_assert_grow_write(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @close(i32 %27)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_read(i32) #1

declare dso_local i32 @mfd_assert_write(i32) #1

declare dso_local i32 @mfd_fail_shrink(i32) #1

declare dso_local i32 @mfd_assert_grow(i32) #1

declare dso_local i32 @mfd_assert_grow_write(i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
