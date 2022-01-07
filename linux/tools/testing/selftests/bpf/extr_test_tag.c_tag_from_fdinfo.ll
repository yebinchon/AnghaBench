; ModuleID = '/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_tag_from_fdinfo.c'
source_filename = "/home/carl/AnghaBench/linux/tools/testing/selftests/bpf/extr_test_tag.c_tag_from_fdinfo.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [19 x i8] c"/proc/%d/fdinfo/%d\00", align 1
@.str.1 = private unnamed_addr constant [2 x i8] c"r\00", align 1
@.str.2 = private unnamed_addr constant [11 x i8] c"prog_tag:\09\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i32*, i32)* @tag_from_fdinfo to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @tag_from_fdinfo(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca [256 x i8], align 16
  %9 = alloca i32, align 4
  %10 = alloca i32*, align 8
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  store i32 10, i32* %7, align 4
  store i32 -1, i32* %9, align 4
  %11 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %12 = call i32 (...) @getpid()
  %13 = load i32, i32* %4, align 4
  %14 = call i32 @snprintf(i8* %11, i32 256, i8* getelementptr inbounds ([19 x i8], [19 x i8]* @.str, i64 0, i64 0), i32 %12, i32 %13)
  %15 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %16 = call i32* @fopen(i8* %15, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str.1, i64 0, i64 0))
  store i32* %16, i32** %10, align 8
  %17 = load i32*, i32** %10, align 8
  %18 = ptrtoint i32* %17 to i32
  %19 = call i32 @assert(i32 %18)
  br label %20

20:                                               ; preds = %29, %3
  %21 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %22 = load i32*, i32** %10, align 8
  %23 = call i64 @fgets(i8* %21, i32 256, i32* %22)
  %24 = icmp ne i64 %23, 0
  br i1 %24, label %25, label %36

25:                                               ; preds = %20
  %26 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %27 = call i64 @strncmp(i8* %26, i8* getelementptr inbounds ([11 x i8], [11 x i8]* @.str.2, i64 0, i64 0), i32 10)
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %25
  br label %20

30:                                               ; preds = %25
  %31 = load i32*, i32** %5, align 8
  %32 = getelementptr inbounds [256 x i8], [256 x i8]* %8, i64 0, i64 0
  %33 = getelementptr inbounds i8, i8* %32, i64 10
  %34 = load i32, i32* %6, align 4
  %35 = call i32 @hex2bin(i32* %31, i8* %33, i32 %34)
  store i32 %35, i32* %9, align 4
  br label %36

36:                                               ; preds = %30, %20
  %37 = load i32*, i32** %10, align 8
  %38 = call i32 @fclose(i32* %37)
  %39 = load i32, i32* %9, align 4
  %40 = icmp ne i32 %39, 0
  %41 = xor i1 %40, true
  %42 = zext i1 %41 to i32
  %43 = call i32 @assert(i32 %42)
  ret void
}

declare dso_local i32 @snprintf(i8*, i32, i8*, i32, i32) #1

declare dso_local i32 @getpid(...) #1

declare dso_local i32* @fopen(i8*, i8*) #1

declare dso_local i32 @assert(i32) #1

declare dso_local i64 @fgets(i8*, i32, i32*) #1

declare dso_local i64 @strncmp(i8*, i8*, i32) #1

declare dso_local i32 @hex2bin(i32*, i8*, i32) #1

declare dso_local i32 @fclose(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
