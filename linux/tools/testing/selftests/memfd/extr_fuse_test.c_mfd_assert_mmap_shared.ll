; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_test.c_mfd_assert_mmap_shared.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/memfd/extr_fuse_test.c_mfd_assert_mmap_shared.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@mfd_def_size = common dso_local global i32 0, align 4
@PROT_READ = common dso_local global i32 0, align 4
@PROT_WRITE = common dso_local global i32 0, align 4
@MAP_SHARED = common dso_local global i32 0, align 4
@MAP_FAILED = common dso_local global i8* null, align 8
@.str = private unnamed_addr constant [19 x i8] c"mmap() failed: %m\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i32)* @mfd_assert_mmap_shared to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @mfd_assert_mmap_shared(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* @mfd_def_size, align 4
  %5 = load i32, i32* @PROT_READ, align 4
  %6 = load i32, i32* @PROT_WRITE, align 4
  %7 = or i32 %5, %6
  %8 = load i32, i32* @MAP_SHARED, align 4
  %9 = load i32, i32* %2, align 4
  %10 = call i8* @mmap(i32* null, i32 %4, i32 %7, i32 %8, i32 %9, i32 0)
  store i8* %10, i8** %3, align 8
  %11 = load i8*, i8** %3, align 8
  %12 = load i8*, i8** @MAP_FAILED, align 8
  %13 = icmp eq i8* %11, %12
  br i1 %13, label %14, label %17

14:                                               ; preds = %1
  %15 = call i32 @printf(i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0))
  %16 = call i32 (...) @abort() #3
  unreachable

17:                                               ; preds = %1
  %18 = load i8*, i8** %3, align 8
  ret i8* %18
}

declare dso_local i8* @mmap(i32*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @printf(i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @abort(...) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
