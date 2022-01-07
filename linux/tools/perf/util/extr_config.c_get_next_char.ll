; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_get_next_char.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_config.c_get_next_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@config_file = common dso_local global i32* null, align 8
@config_linenr = common dso_local global i32 0, align 4
@EOF = common dso_local global i32 0, align 4
@config_file_eof = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @get_next_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_next_char() #0 {
  %1 = alloca i32, align 4
  %2 = alloca i32*, align 8
  store i32 10, i32* %1, align 4
  %3 = load i32*, i32** @config_file, align 8
  store i32* %3, i32** %2, align 8
  %4 = icmp ne i32* %3, null
  br i1 %4, label %5, label %32

5:                                                ; preds = %0
  %6 = load i32*, i32** %2, align 8
  %7 = call i32 @fgetc(i32* %6)
  store i32 %7, i32* %1, align 4
  %8 = load i32, i32* %1, align 4
  %9 = icmp eq i32 %8, 13
  br i1 %9, label %10, label %20

10:                                               ; preds = %5
  %11 = load i32*, i32** %2, align 8
  %12 = call i32 @fgetc(i32* %11)
  store i32 %12, i32* %1, align 4
  %13 = load i32, i32* %1, align 4
  %14 = icmp ne i32 %13, 10
  br i1 %14, label %15, label %19

15:                                               ; preds = %10
  %16 = load i32, i32* %1, align 4
  %17 = load i32*, i32** %2, align 8
  %18 = call i32 @ungetc(i32 %16, i32* %17)
  store i32 13, i32* %1, align 4
  br label %19

19:                                               ; preds = %15, %10
  br label %20

20:                                               ; preds = %19, %5
  %21 = load i32, i32* %1, align 4
  %22 = icmp eq i32 %21, 10
  br i1 %22, label %23, label %26

23:                                               ; preds = %20
  %24 = load i32, i32* @config_linenr, align 4
  %25 = add nsw i32 %24, 1
  store i32 %25, i32* @config_linenr, align 4
  br label %26

26:                                               ; preds = %23, %20
  %27 = load i32, i32* %1, align 4
  %28 = load i32, i32* @EOF, align 4
  %29 = icmp eq i32 %27, %28
  br i1 %29, label %30, label %31

30:                                               ; preds = %26
  store i32 1, i32* @config_file_eof, align 4
  store i32 10, i32* %1, align 4
  br label %31

31:                                               ; preds = %30, %26
  br label %32

32:                                               ; preds = %31, %0
  %33 = load i32, i32* %1, align 4
  ret i32 %33
}

declare dso_local i32 @fgetc(i32*) #1

declare dso_local i32 @ungetc(i32, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
