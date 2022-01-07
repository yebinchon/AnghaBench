; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_OK = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [2 x i8] c" \00", align 1
@.str.1 = private unnamed_addr constant [4 x i8] c"bpf\00", align 1
@CMD_ERR = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [5 x i8] c"pcap\00", align 1
@.str.3 = private unnamed_addr constant [28 x i8] c"bpf <code>:  load bpf code\0A\00", align 1
@.str.4 = private unnamed_addr constant [29 x i8] c"pcap <file>: load pcap file\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_load(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i8*, align 8
  %4 = alloca i8*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  store i8* %0, i8** %2, align 8
  store i8* null, i8** %4, align 8
  %7 = load i8*, i8** %2, align 8
  %8 = call i8* @strdup(i8* %7)
  store i8* %8, i8** %5, align 8
  %9 = load i32, i32* @CMD_OK, align 4
  store i32 %9, i32* %6, align 4
  %10 = load i8*, i8** %5, align 8
  %11 = call i8* @strtok_r(i8* %10, i8* getelementptr inbounds ([2 x i8], [2 x i8]* @.str, i64 0, i64 0), i8** %4)
  store i8* %11, i8** %3, align 8
  %12 = load i8*, i8** %3, align 8
  %13 = icmp eq i8* %12, null
  br i1 %13, label %14, label %15

14:                                               ; preds = %1
  br label %38

15:                                               ; preds = %1
  %16 = load i8*, i8** %3, align 8
  %17 = call i64 @matches(i8* %16, i8* getelementptr inbounds ([4 x i8], [4 x i8]* @.str.1, i64 0, i64 0))
  %18 = icmp eq i64 %17, 0
  br i1 %18, label %19, label %30

19:                                               ; preds = %15
  %20 = call i32 (...) @bpf_reset()
  %21 = call i32 (...) @bpf_reset_breakpoints()
  %22 = load i8*, i8** %4, align 8
  %23 = icmp ne i8* %22, null
  br i1 %23, label %26, label %24

24:                                               ; preds = %19
  %25 = load i32, i32* @CMD_ERR, align 4
  store i32 %25, i32* %6, align 4
  br label %29

26:                                               ; preds = %19
  %27 = load i8*, i8** %4, align 8
  %28 = call i32 @cmd_load_bpf(i8* %27)
  store i32 %28, i32* %6, align 4
  br label %29

29:                                               ; preds = %26, %24
  br label %43

30:                                               ; preds = %15
  %31 = load i8*, i8** %3, align 8
  %32 = call i64 @matches(i8* %31, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str.2, i64 0, i64 0))
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %30
  %35 = load i8*, i8** %4, align 8
  %36 = call i32 @cmd_load_pcap(i8* %35)
  store i32 %36, i32* %6, align 4
  br label %42

37:                                               ; preds = %30
  br label %38

38:                                               ; preds = %37, %14
  %39 = call i32 @rl_printf(i8* getelementptr inbounds ([28 x i8], [28 x i8]* @.str.3, i64 0, i64 0))
  %40 = call i32 @rl_printf(i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.4, i64 0, i64 0))
  %41 = load i32, i32* @CMD_ERR, align 4
  store i32 %41, i32* %6, align 4
  br label %42

42:                                               ; preds = %38, %34
  br label %43

43:                                               ; preds = %42, %29
  %44 = load i8*, i8** %5, align 8
  %45 = call i32 @free(i8* %44)
  %46 = load i32, i32* %6, align 4
  ret i32 %46
}

declare dso_local i8* @strdup(i8*) #1

declare dso_local i8* @strtok_r(i8*, i8*, i8**) #1

declare dso_local i64 @matches(i8*, i8*) #1

declare dso_local i32 @bpf_reset(...) #1

declare dso_local i32 @bpf_reset_breakpoints(...) #1

declare dso_local i32 @cmd_load_bpf(i8*) #1

declare dso_local i32 @cmd_load_pcap(i8*) #1

declare dso_local i32 @rl_printf(i8*) #1

declare dso_local i32 @free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
