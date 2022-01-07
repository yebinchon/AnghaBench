; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_seal_future_write.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_memfd_test.c_test_seal_future_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [22 x i8] c"%s SEAL-FUTURE-WRITE\0A\00", align 1
@memfd_str = common dso_local global i8* null, align 8
@.str.1 = private unnamed_addr constant [29 x i8] c"kern_memfd_seal_future_write\00", align 1
@mfd_def_size = common dso_local global i32 0, align 4
@MFD_CLOEXEC = common dso_local global i32 0, align 4
@MFD_ALLOW_SEALING = common dso_local global i32 0, align 4
@F_SEAL_FUTURE_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @test_seal_future_write to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @test_seal_future_write() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = load i8*, i8** @memfd_str, align 8
  %5 = call i32 @printf(i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0), i8* %4)
  %6 = load i32, i32* @mfd_def_size, align 4
  %7 = load i32, i32* @MFD_CLOEXEC, align 4
  %8 = load i32, i32* @MFD_ALLOW_SEALING, align 4
  %9 = or i32 %7, %8
  %10 = call i32 @mfd_assert_new(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.1, i64 0, i64 0), i32 %6, i32 %9)
  store i32 %10, i32* %1, align 4
  %11 = load i32, i32* %1, align 4
  %12 = call i8* @mfd_assert_mmap_shared(i32 %11)
  store i8* %12, i8** %3, align 8
  %13 = load i32, i32* %1, align 4
  %14 = call i32 @mfd_assert_has_seals(i32 %13, i32 0)
  %15 = load i32, i32* %1, align 4
  %16 = load i32, i32* @F_SEAL_FUTURE_WRITE, align 4
  %17 = call i32 @mfd_assert_add_seals(i32 %15, i32 %16)
  %18 = load i32, i32* %1, align 4
  %19 = load i32, i32* @F_SEAL_FUTURE_WRITE, align 4
  %20 = call i32 @mfd_assert_has_seals(i32 %18, i32 %19)
  %21 = load i32, i32* %1, align 4
  %22 = call i32 @mfd_assert_read(i32 %21)
  %23 = load i32, i32* %1, align 4
  %24 = call i32 @mfd_assert_read_shared(i32 %23)
  %25 = load i32, i32* %1, align 4
  %26 = call i32 @mfd_fail_write(i32 %25)
  %27 = load i32, i32* %1, align 4
  %28 = call i32 @mfd_assert_reopen_fd(i32 %27)
  store i32 %28, i32* %2, align 4
  %29 = load i32, i32* %2, align 4
  %30 = call i32 @mfd_assert_read(i32 %29)
  %31 = load i32, i32* %2, align 4
  %32 = call i32 @mfd_assert_read_shared(i32 %31)
  %33 = load i32, i32* %2, align 4
  %34 = call i32 @mfd_fail_write(i32 %33)
  %35 = load i8*, i8** %3, align 8
  %36 = load i32, i32* @mfd_def_size, align 4
  %37 = call i32 @munmap(i8* %35, i32 %36)
  %38 = load i32, i32* %2, align 4
  %39 = call i32 @close(i32 %38)
  %40 = load i32, i32* %1, align 4
  %41 = call i32 @close(i32 %40)
  ret void
}

declare dso_local i32 @printf(i8*, i8*) #1

declare dso_local i32 @mfd_assert_new(i8*, i32, i32) #1

declare dso_local i8* @mfd_assert_mmap_shared(i32) #1

declare dso_local i32 @mfd_assert_has_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_add_seals(i32, i32) #1

declare dso_local i32 @mfd_assert_read(i32) #1

declare dso_local i32 @mfd_assert_read_shared(i32) #1

declare dso_local i32 @mfd_fail_write(i32) #1

declare dso_local i32 @mfd_assert_reopen_fd(i32) #1

declare dso_local i32 @munmap(i8*, i32) #1

declare dso_local i32 @close(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
