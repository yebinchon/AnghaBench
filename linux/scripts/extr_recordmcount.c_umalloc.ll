; ModuleID = '/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_umalloc.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/extr_recordmcount.c_umalloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [26 x i8] c"malloc failed: %zu bytes\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (i64)* @umalloc to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @umalloc(i64 %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i64, align 8
  %4 = alloca i8*, align 8
  store i64 %0, i64* %3, align 8
  %5 = load i64, i64* %3, align 8
  %6 = call i8* @malloc(i64 %5)
  store i8* %6, i8** %4, align 8
  %7 = load i8*, i8** %4, align 8
  %8 = icmp eq i8* %7, null
  br i1 %8, label %9, label %15

9:                                                ; preds = %1
  %10 = load i32, i32* @stderr, align 4
  %11 = load i64, i64* %3, align 8
  %12 = call i32 @fprintf(i32 %10, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i64 %11)
  %13 = call i32 (...) @file_append_cleanup()
  %14 = call i32 (...) @mmap_cleanup()
  store i8* null, i8** %2, align 8
  br label %17

15:                                               ; preds = %1
  %16 = load i8*, i8** %4, align 8
  store i8* %16, i8** %2, align 8
  br label %17

17:                                               ; preds = %15, %9
  %18 = load i8*, i8** %2, align 8
  ret i8* %18
}

declare dso_local i8* @malloc(i64) #1

declare dso_local i32 @fprintf(i32, i8*, i64) #1

declare dso_local i32 @file_append_cleanup(...) #1

declare dso_local i32 @mmap_cleanup(...) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
