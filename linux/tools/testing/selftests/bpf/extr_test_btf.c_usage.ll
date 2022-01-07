; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_usage.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_btf.c_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [236 x i8] c"Usage: %s [-l] [[-r btf_raw_test_num (1 - %zu)] |\0A\09[-g btf_get_info_test_num (1 - %zu)] |\0A\09[-f btf_file_test_num (1 - %zu)] |\0A\09[-k btf_prog_info_raw_test_num (1 - %zu)] |\0A\09[-p (pretty print test)] |\0A\09[-d btf_dedup_test_num (1 - %zu)]]\0A\00", align 1
@raw_tests = common dso_local global i32 0, align 4
@get_info_tests = common dso_local global i32 0, align 4
@file_tests = common dso_local global i32 0, align 4
@info_raw_tests = common dso_local global i32 0, align 4
@dedup_tests = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*)* @usage to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @usage(i8* %0) #0 {
  %2 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  %3 = load i32, i32* @stderr, align 4
  %4 = load i8*, i8** %2, align 8
  %5 = load i32, i32* @raw_tests, align 4
  %6 = call i32 @ARRAY_SIZE(i32 %5)
  %7 = load i32, i32* @get_info_tests, align 4
  %8 = call i32 @ARRAY_SIZE(i32 %7)
  %9 = load i32, i32* @file_tests, align 4
  %10 = call i32 @ARRAY_SIZE(i32 %9)
  %11 = load i32, i32* @info_raw_tests, align 4
  %12 = call i32 @ARRAY_SIZE(i32 %11)
  %13 = load i32, i32* @dedup_tests, align 4
  %14 = call i32 @ARRAY_SIZE(i32 %13)
  %15 = call i32 @fprintf(i32 %3, i8* getelementptr inbounds ([236 x i8], [236 x i8]* @.str, i64 0, i64 0), i8* %4, i32 %6, i32 %8, i32 %10, i32 %12, i32 %14)
  ret void
}

declare dso_local i32 @fprintf(i32, i8*, i8*, i32, i32, i32, i32, i32) #1

declare dso_local i32 @ARRAY_SIZE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
