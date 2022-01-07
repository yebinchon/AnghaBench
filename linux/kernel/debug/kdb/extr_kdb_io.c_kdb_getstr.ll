; ModuleID = '/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kdb_getstr.c'
source_filename = "/home/carl/AnghaBench/linux/kernel/debug/kdb/extr_kdb_io.c_kdb_getstr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@kdb_prompt_str = common dso_local global i8* null, align 8
@CMD_BUFLEN = common dso_local global i32 0, align 4
@kdb_nextline = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i8* @kdb_getstr(i8* %0, i64 %1, i8* %2) #0 {
  %4 = alloca i8*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i8*, align 8
  store i8* %0, i8** %4, align 8
  store i64 %1, i64* %5, align 8
  store i8* %2, i8** %6, align 8
  %7 = load i8*, i8** %6, align 8
  %8 = icmp ne i8* %7, null
  br i1 %8, label %9, label %18

9:                                                ; preds = %3
  %10 = load i8*, i8** @kdb_prompt_str, align 8
  %11 = load i8*, i8** %6, align 8
  %12 = icmp ne i8* %10, %11
  br i1 %12, label %13, label %18

13:                                               ; preds = %9
  %14 = load i8*, i8** @kdb_prompt_str, align 8
  %15 = load i8*, i8** %6, align 8
  %16 = load i32, i32* @CMD_BUFLEN, align 4
  %17 = call i32 @strscpy(i8* %14, i8* %15, i32 %16)
  br label %18

18:                                               ; preds = %13, %9, %3
  %19 = load i8*, i8** @kdb_prompt_str, align 8
  %20 = call i32 @kdb_printf(i8* %19)
  store i32 1, i32* @kdb_nextline, align 4
  %21 = load i8*, i8** %4, align 8
  %22 = load i64, i64* %5, align 8
  %23 = call i8* @kdb_read(i8* %21, i64 %22)
  ret i8* %23
}

declare dso_local i32 @strscpy(i8*, i8*, i32) #1

declare dso_local i32 @kdb_printf(i8*) #1

declare dso_local i8* @kdb_read(i8*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
