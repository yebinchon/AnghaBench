; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_read_int_sysctl.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_select_reuseport.c_read_int_sysctl.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [13 x i8] c"open(sysctl)\00", align 1
@.str.1 = private unnamed_addr constant [26 x i8] c"sysctl:%s fd:%d errno:%d\0A\00", align 1
@errno = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [13 x i8] c"read(sysctl)\00", align 1
@.str.3 = private unnamed_addr constant [27 x i8] c"sysctl:%s ret:%d errno:%d\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @read_int_sysctl to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @read_int_sysctl(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca [16 x i8], align 16
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  %6 = load i8*, i8** %2, align 8
  %7 = call i32 @open(i8* %6, i32 0)
  store i32 %7, i32* %4, align 4
  %8 = load i32, i32* %4, align 4
  %9 = icmp eq i32 %8, -1
  %10 = zext i1 %9 to i32
  %11 = load i8*, i8** %2, align 8
  %12 = load i32, i32* %4, align 4
  %13 = load i32, i32* @errno, align 4
  %14 = call i32 @CHECK(i32 %10, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str, i64 0, i64 0), i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str.1, i64 0, i64 0), i8* %11, i32 %12, i32 %13)
  %15 = load i32, i32* %4, align 4
  %16 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %17 = call i32 @read(i32 %15, i8* %16, i32 16)
  store i32 %17, i32* %5, align 4
  %18 = load i32, i32* %5, align 4
  %19 = icmp sle i32 %18, 0
  %20 = zext i1 %19 to i32
  %21 = load i8*, i8** %2, align 8
  %22 = load i32, i32* %5, align 4
  %23 = load i32, i32* @errno, align 4
  %24 = call i32 @CHECK(i32 %20, i8* getelementptr inbounds ([13 x i8], [13 x i8]* @.str.2, i64 0, i64 0), i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str.3, i64 0, i64 0), i8* %21, i32 %22, i32 %23)
  %25 = load i32, i32* %4, align 4
  %26 = call i32 @close(i32 %25)
  %27 = getelementptr inbounds [16 x i8], [16 x i8]* %3, i64 0, i64 0
  %28 = call i32 @atoi(i8* %27)
  ret i32 %28
}

declare dso_local i32 @open(i8*, i32) #1

declare dso_local i32 @CHECK(i32, i8*, i8*, i8*, i32, i32) #1

declare dso_local i32 @read(i32, i8*, i32) #1

declare dso_local i32 @close(i32) #1

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
