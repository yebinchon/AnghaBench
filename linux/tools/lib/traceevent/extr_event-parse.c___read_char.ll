; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c___read_char.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c___read_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_buf_ptr = common dso_local global i64 0, align 8
@input_buf_siz = common dso_local global i64 0, align 8
@input_buf = common dso_local global i32* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 ()* @__read_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__read_char() #0 {
  %1 = alloca i32, align 4
  %2 = load i64, i64* @input_buf_ptr, align 8
  %3 = load i64, i64* @input_buf_siz, align 8
  %4 = icmp sge i64 %2, %3
  br i1 %4, label %5, label %6

5:                                                ; preds = %0
  store i32 -1, i32* %1, align 4
  br label %12

6:                                                ; preds = %0
  %7 = load i32*, i32** @input_buf, align 8
  %8 = load i64, i64* @input_buf_ptr, align 8
  %9 = add nsw i64 %8, 1
  store i64 %9, i64* @input_buf_ptr, align 8
  %10 = getelementptr inbounds i32, i32* %7, i64 %8
  %11 = load i32, i32* %10, align 4
  store i32 %11, i32* %1, align 4
  br label %12

12:                                               ; preds = %6, %5
  %13 = load i32, i32* %1, align 4
  ret i32 %13
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
