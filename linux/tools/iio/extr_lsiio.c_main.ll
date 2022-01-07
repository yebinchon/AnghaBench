; ModuleID = '/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_main.c'
source_filename = "/home/carl/AnghaBench/linux/tools/iio/extr_lsiio.c_main.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@.str = private unnamed_addr constant [2 x i8] c"v\00", align 1
@EOF = common dso_local global i32 0, align 4
@verblevel = common dso_local global i32 0, align 4
@optind = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [110 x i8] c"Usage: lsiio [options]...\0AList industrial I/O devices\0A  -v  Increase verbosity (may be given multiple times)\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @main(i32 %0, i8** %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i8**, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store i32 0, i32* %3, align 4
  store i32 %0, i32* %4, align 4
  store i8** %1, i8*** %5, align 8
  store i32 0, i32* %7, align 4
  br label %8

8:                                                ; preds = %23, %2
  %9 = load i32, i32* %4, align 4
  %10 = load i8**, i8*** %5, align 8
  %11 = call i32 @getopt(i32 %9, i8** %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0))
  store i32 %11, i32* %6, align 4
  %12 = load i32, i32* @EOF, align 4
  %13 = icmp ne i32 %11, %12
  br i1 %13, label %14, label %24

14:                                               ; preds = %8
  %15 = load i32, i32* %6, align 4
  switch i32 %15, label %20 [
    i32 118, label %16
    i32 63, label %19
  ]

16:                                               ; preds = %14
  %17 = load i32, i32* @verblevel, align 4
  %18 = add nsw i32 %17, 1
  store i32 %18, i32* @verblevel, align 4
  br label %23

19:                                               ; preds = %14
  br label %20

20:                                               ; preds = %14, %19
  %21 = load i32, i32* %7, align 4
  %22 = add nsw i32 %21, 1
  store i32 %22, i32* %7, align 4
  br label %23

23:                                               ; preds = %20, %16
  br label %8

24:                                               ; preds = %8
  %25 = load i32, i32* %7, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %31, label %27

27:                                               ; preds = %24
  %28 = load i32, i32* %4, align 4
  %29 = load i32, i32* @optind, align 4
  %30 = icmp sgt i32 %28, %29
  br i1 %30, label %31, label %35

31:                                               ; preds = %27, %24
  %32 = load i32, i32* @stderr, align 4
  %33 = call i32 @fprintf(i32 %32, i8* getelementptr inbounds ([110 x i8], [110 x i8]* @.str.1, i64 0, i64 0))
  %34 = call i32 @exit(i32 1) #3
  unreachable

35:                                               ; preds = %27
  %36 = call i32 (...) @dump_devices()
  ret i32 %36
}

declare dso_local i32 @getopt(i32, i8**, i8*) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @dump_devices(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
