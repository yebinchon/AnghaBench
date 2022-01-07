; ModuleID = '/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_disassemble.c'
source_filename = "/home/carl/AnghaBench/linux/tools/bpf/extr_bpf_dbg.c_cmd_disassemble.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@CMD_ERR = common dso_local global i32 0, align 4
@bpf_prog_len = common dso_local global i64 0, align 8
@bpf_image = common dso_local global i32* null, align 8
@CMD_OK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @cmd_disassemble to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @cmd_disassemble(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  store i8* %0, i8** %3, align 8
  store i32 0, i32* %4, align 4
  %6 = call i32 (...) @bpf_prog_loaded()
  %7 = icmp ne i32 %6, 0
  br i1 %7, label %10, label %8

8:                                                ; preds = %1
  %9 = load i32, i32* @CMD_ERR, align 4
  store i32 %9, i32* %2, align 4
  br label %36

10:                                               ; preds = %1
  %11 = load i8*, i8** %3, align 8
  %12 = call i64 @strlen(i8* %11)
  %13 = icmp sgt i64 %12, 0
  br i1 %13, label %14, label %20

14:                                               ; preds = %10
  %15 = load i8*, i8** %3, align 8
  %16 = call i64 @strtoul(i8* %15, i32* null, i32 10)
  store i64 %16, i64* %5, align 8
  %17 = load i64, i64* @bpf_prog_len, align 8
  %18 = icmp ult i64 %16, %17
  br i1 %18, label %19, label %20

19:                                               ; preds = %14
  store i32 1, i32* %4, align 4
  br label %20

20:                                               ; preds = %19, %14, %10
  %21 = load i32, i32* %4, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %30

23:                                               ; preds = %20
  %24 = load i32*, i32** @bpf_image, align 8
  %25 = load i64, i64* %5, align 8
  %26 = getelementptr inbounds i32, i32* %24, i64 %25
  %27 = load i32, i32* %26, align 4
  %28 = load i64, i64* %5, align 8
  %29 = call i32 @bpf_disasm(i32 %27, i64 %28)
  br label %34

30:                                               ; preds = %20
  %31 = load i32*, i32** @bpf_image, align 8
  %32 = load i64, i64* @bpf_prog_len, align 8
  %33 = call i32 @bpf_disasm_all(i32* %31, i64 %32)
  br label %34

34:                                               ; preds = %30, %23
  %35 = load i32, i32* @CMD_OK, align 4
  store i32 %35, i32* %2, align 4
  br label %36

36:                                               ; preds = %34, %8
  %37 = load i32, i32* %2, align 4
  ret i32 %37
}

declare dso_local i32 @bpf_prog_loaded(...) #1

declare dso_local i64 @strlen(i8*) #1

declare dso_local i64 @strtoul(i8*, i32*, i32) #1

declare dso_local i32 @bpf_disasm(i32, i64) #1

declare dso_local i32 @bpf_disasm_all(i32*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
