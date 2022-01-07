; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_term.c_set_term_quiet_input.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_term.c_set_term_quiet_input.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.termios = type { i32, i64* }

@ICANON = common dso_local global i32 0, align 4
@ECHO = common dso_local global i32 0, align 4
@VMIN = common dso_local global i64 0, align 8
@VTIME = common dso_local global i64 0, align 8
@TCSANOW = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @set_term_quiet_input(%struct.termios* %0) #0 {
  %2 = alloca %struct.termios*, align 8
  %3 = alloca %struct.termios, align 8
  store %struct.termios* %0, %struct.termios** %2, align 8
  %4 = load %struct.termios*, %struct.termios** %2, align 8
  %5 = call i32 @tcgetattr(i32 0, %struct.termios* %4)
  %6 = load %struct.termios*, %struct.termios** %2, align 8
  %7 = bitcast %struct.termios* %3 to i8*
  %8 = bitcast %struct.termios* %6 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %7, i8* align 8 %8, i64 16, i1 false)
  %9 = load i32, i32* @ICANON, align 4
  %10 = load i32, i32* @ECHO, align 4
  %11 = or i32 %9, %10
  %12 = xor i32 %11, -1
  %13 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = and i32 %14, %12
  store i32 %15, i32* %13, align 8
  %16 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %17 = load i64*, i64** %16, align 8
  %18 = load i64, i64* @VMIN, align 8
  %19 = getelementptr inbounds i64, i64* %17, i64 %18
  store i64 0, i64* %19, align 8
  %20 = getelementptr inbounds %struct.termios, %struct.termios* %3, i32 0, i32 1
  %21 = load i64*, i64** %20, align 8
  %22 = load i64, i64* @VTIME, align 8
  %23 = getelementptr inbounds i64, i64* %21, i64 %22
  store i64 0, i64* %23, align 8
  %24 = load i32, i32* @TCSANOW, align 4
  %25 = call i32 @tcsetattr(i32 0, i32 %24, %struct.termios* %3)
  ret void
}

declare dso_local i32 @tcgetattr(i32, %struct.termios*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @tcsetattr(i32, i32, %struct.termios*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
