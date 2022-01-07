; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_breakpoint.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_breakpoint.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"reset\00", align 1
@bpf_prog_len = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [16 x i8] c"breakpoint at: \00", align 1
@bpf_image = common dso_local global i32* null, align 8
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_breakpoint to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_breakpoint(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = call i32 (...) @bpf_prog_loaded()
  %6 = icmp ne i32 %5, 0
  br i1 %6, label %9, label %7

7:                                                ; preds = %1
  %8 = load i32, i32* @CMD_ERR, align 4
  store i32 %8, i32* %2, align 4
  br label %42

9:                                                ; preds = %1
  %10 = load i8*, i8** %3, align 8
  %11 = call i64 @strlen(i8* %10)
  %12 = icmp eq i64 %11, 0
  br i1 %12, label %13, label %15

13:                                               ; preds = %9
  %14 = call i32 (...) @bpf_dump_breakpoints()
  br label %40

15:                                               ; preds = %9
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @matches(i8* %16, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %21

19:                                               ; preds = %15
  %20 = call i32 (...) @bpf_reset_breakpoints()
  br label %39

21:                                               ; preds = %15
  %22 = load i8*, i8** %3, align 8
  %23 = call i32 @strtoul(i8* %22, i32* null, i32 10)
  store i32 %23, i32* %4, align 4
  %24 = load i32, i32* %4, align 4
  %25 = load i32, i32* @bpf_prog_len, align 4
  %26 = icmp ult i32 %24, %25
  br i1 %26, label %27, label %38

27:                                               ; preds = %21
  %28 = load i32, i32* %4, align 4
  %29 = call i32 @bpf_set_breakpoints(i32 %28)
  %30 = call i32 @rl_printf(i8* getelementptr inbounds ([16 x i8], [16 x i8]* @.str.1, i64 0, i64 0))
  %31 = load i32*, i32** @bpf_image, align 8
  %32 = load i32, i32* %4, align 4
  %33 = zext i32 %32 to i64
  %34 = getelementptr inbounds i32, i32* %31, i64 %33
  %35 = load i32, i32* %34, align 4
  %36 = load i32, i32* %4, align 4
  %37 = call i32 @bpf_disasm(i32 %35, i32 %36)
  br label %38

38:                                               ; preds = %27, %21
  br label %39

39:                                               ; preds = %38, %19
  br label %40

40:                                               ; preds = %39, %13
  %41 = load i32, i32* @CMD_OK, align 4
  store i32 %41, i32* %2, align 4
  br label %42

42:                                               ; preds = %40, %7
  %43 = load i32, i32* %2, align 4
  ret i32 %43
}

declare dso_local i32 @bpf_prog_loaded(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i32 @bpf_dump_breakpoints(...) #1

declare dso_local i64 @matches(i8*, i8*) #1

declare dso_local i32 @bpf_reset_breakpoints(...) #1

declare dso_local i32 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @bpf_set_breakpoints(i32) #1

declare dso_local i32 @rl_printf(i8*) #1

declare dso_local i32 @bpf_disasm(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
