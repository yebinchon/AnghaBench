; ModuleID = '/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_textbox.c_print_line.c'
source_filename = "/home/carl/AnghaBench/linux/scripts/kconfig/lxdialog/extr_textbox.c_print_line.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@hscroll = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, i32, i32)* @print_line to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @print_line(i32* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca i8*, align 8
  store i32* %0, i32** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %8 = call i8* (...) @get_line()
  store i8* %8, i8** %7, align 8
  %9 = load i8*, i8** %7, align 8
  %10 = call i32 @strlen(i8* %9)
  %11 = load i32, i32* @hscroll, align 4
  %12 = call i32 @MIN(i32 %10, i32 %11)
  %13 = load i8*, i8** %7, align 8
  %14 = sext i32 %12 to i64
  %15 = getelementptr inbounds i8, i8* %13, i64 %14
  store i8* %15, i8** %7, align 8
  %16 = load i32*, i32** %4, align 8
  %17 = load i32, i32* %5, align 4
  %18 = call i32 @wmove(i32* %16, i32 %17, i32 0)
  %19 = load i32*, i32** %4, align 8
  %20 = call i32 @waddch(i32* %19, i8 signext 32)
  %21 = load i32*, i32** %4, align 8
  %22 = load i8*, i8** %7, align 8
  %23 = load i8*, i8** %7, align 8
  %24 = call i32 @strlen(i8* %23)
  %25 = load i32, i32* %6, align 4
  %26 = sub nsw i32 %25, 2
  %27 = call i32 @MIN(i32 %24, i32 %26)
  %28 = call i32 @waddnstr(i32* %21, i8* %22, i32 %27)
  %29 = load i32*, i32** %4, align 8
  %30 = call i32 @wclrtoeol(i32* %29)
  ret void
}

declare dso_local i8* @get_line(...) #1

declare dso_local i32 @MIN(i32, i32) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @wmove(i32*, i32, i32) #1

declare dso_local i32 @waddch(i32*, i8 signext) #1

declare dso_local i32 @waddnstr(i32*, i8*, i32) #1

declare dso_local i32 @wclrtoeol(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
