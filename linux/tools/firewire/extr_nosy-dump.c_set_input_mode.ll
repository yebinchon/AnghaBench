; ModuleID = '/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_set_input_mode.c'
source_filename = "/home/carl/AnghaBench/linux/tools/firewire/extr_nosy-dump.c_set_input_mode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i32* }

@STDIN_FILENO = common dso_local global i32 0, align 4
@stderr = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"Not a terminal.\0A\00", align 1
@EXIT_FAILURE = common dso_local global i32 0, align 4
@saved_attributes = common dso_local global %struct.termios zeroinitializer, align 8
@reset_input_mode = common dso_local global i32 0, align 4
@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSAFLUSH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void ()* @set_input_mode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @set_input_mode() #0 {
  %1 = alloca %struct.termios, align 8
  %2 = load i32, i32* @STDIN_FILENO, align 4
  %3 = call i32 @isatty(i32 %2)
  %4 = icmp ne i32 %3, 0
  br i1 %4, label %10, label %5

5:                                                ; preds = %0
  %6 = load i32, i32* @stderr, align 4
  %7 = call i32 @fprintf(i32 %6, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %8 = load i32, i32* @EXIT_FAILURE, align 4
  %9 = call i32 @exit(i32 %8) #3
  unreachable

10:                                               ; preds = %0
  %11 = load i32, i32* @STDIN_FILENO, align 4
  %12 = call i32 @tcgetattr(i32 %11, %struct.termios* @saved_attributes)
  %13 = load i32, i32* @reset_input_mode, align 4
  %14 = call i32 @atexit(i32 %13)
  %15 = load i32, i32* @STDIN_FILENO, align 4
  %16 = call i32 @tcgetattr(i32 %15, %struct.termios* %1)
  %17 = load i32, i32* @ICANON, align 4
  %18 = load i32, i32* @ECHO, align 4
  %19 = or i32 %17, %18
  %20 = xor i32 %19, -1
  %21 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = and i32 %22, %20
  store i32 %23, i32* %21, align 8
  %24 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* @VMIN, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.termios, %struct.termios* %1, i32 0, i32 1
  %29 = load i32*, i32** %28, align 8
  %30 = load i64, i64* @VTIME, align 8
  %31 = getelementptr inbounds i32, i32* %29, i64 %30
  store i32 0, i32* %31, align 4
  %32 = load i32, i32* @STDIN_FILENO, align 4
  %33 = load i32, i32* @TCSAFLUSH, align 4
  %34 = call i32 @tcsetattr(i32 %32, i32 %33, %struct.termios* %1)
  ret void
}

declare dso_local i32 @isatty(i32) #1

declare dso_local i32 @fprintf(i32, i8*) #1

; Function Attrs: noreturn
declare dso_local i32 @exit(i32) #2

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

declare dso_local i32 @atexit(i32) #1

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { noreturn "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #3 = { noreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
