; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_force_token.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/traceevent/extr_event-parse.c_force_token.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@input_buf = common dso_local global i8* null, align 8
@input_buf_ptr = common dso_local global i64 0, align 8
@input_buf_siz = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i8**)* @force_token to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @force_token(i8* %0, i8** %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca i8**, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  store i8** %1, i8*** %4, align 8
  %9 = load i8*, i8** @input_buf, align 8
  store i8* %9, i8** %5, align 8
  %10 = load i64, i64* @input_buf_ptr, align 8
  store i64 %10, i64* %6, align 8
  %11 = load i64, i64* @input_buf_siz, align 8
  store i64 %11, i64* %7, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = load i8*, i8** %3, align 8
  %14 = call i32 @strlen(i8* %13)
  %15 = call i32 @init_input_buf(i8* %12, i32 %14)
  %16 = load i8**, i8*** %4, align 8
  %17 = call i32 @__read_token(i8** %16)
  store i32 %17, i32* %8, align 4
  %18 = load i8*, i8** %5, align 8
  store i8* %18, i8** @input_buf, align 8
  %19 = load i64, i64* %6, align 8
  store i64 %19, i64* @input_buf_ptr, align 8
  %20 = load i64, i64* %7, align 8
  store i64 %20, i64* @input_buf_siz, align 8
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local i32 @init_input_buf(i8*, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @__read_token(i8**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
