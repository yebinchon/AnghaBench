; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_init_input_buf.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_init_input_buf.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_buf = common dso_local global i8* null, align 8
@input_buf_siz = common dso_local global i64 0, align 8
@input_buf_ptr = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i8*, i64)* @init_input_buf to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @init_input_buf(i8* %0, i64 %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i64 %1, i64* %4, align 8
  %5 = load i8*, i8** %3, align 8
  store i8* %5, i8** @input_buf, align 8
  %6 = load i64, i64* %4, align 8
  store i64 %6, i64* @input_buf_siz, align 8
  store i64 0, i64* @input_buf_ptr, align 8
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
