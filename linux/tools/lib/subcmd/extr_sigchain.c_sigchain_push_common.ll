; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_sigchain.c_sigchain_push_common.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/subcmd/extr_sigchain.c_sigchain_push_common.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SIGINT = common dso_local global i32 0, align 4
@SIGHUP = common dso_local global i32 0, align 4
@SIGTERM = common dso_local global i32 0, align 4
@SIGQUIT = common dso_local global i32 0, align 4
@SIGPIPE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @sigchain_push_common(i32 %0) #0 {
  %2 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %3 = load i32, i32* @SIGINT, align 4
  %4 = load i32, i32* %2, align 4
  %5 = call i32 @sigchain_push(i32 %3, i32 %4)
  %6 = load i32, i32* @SIGHUP, align 4
  %7 = load i32, i32* %2, align 4
  %8 = call i32 @sigchain_push(i32 %6, i32 %7)
  %9 = load i32, i32* @SIGTERM, align 4
  %10 = load i32, i32* %2, align 4
  %11 = call i32 @sigchain_push(i32 %9, i32 %10)
  %12 = load i32, i32* @SIGQUIT, align 4
  %13 = load i32, i32* %2, align 4
  %14 = call i32 @sigchain_push(i32 %12, i32 %13)
  %15 = load i32, i32* @SIGPIPE, align 4
  %16 = load i32, i32* %2, align 4
  %17 = call i32 @sigchain_push(i32 %15, i32 %16)
  ret void
}

declare dso_local i32 @sigchain_push(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
