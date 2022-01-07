; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_sys_bpf_prog_load.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_sys_bpf_prog_load.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@BPF_PROG_LOAD = common dso_local global i32 0, align 4
@errno = common dso_local global i64 0, align 8
@EAGAIN = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%union.bpf_attr*, i32)* @sys_bpf_prog_load to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @sys_bpf_prog_load(%union.bpf_attr* %0, i32 %1) #0 {
  %3 = alloca %union.bpf_attr*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %union.bpf_attr* %0, %union.bpf_attr** %3, align 8
  store i32 %1, i32* %4, align 4
  br label %6

6:                                                ; preds = %18, %2
  %7 = load i32, i32* @BPF_PROG_LOAD, align 4
  %8 = load %union.bpf_attr*, %union.bpf_attr** %3, align 8
  %9 = load i32, i32* %4, align 4
  %10 = call i32 @sys_bpf(i32 %7, %union.bpf_attr* %8, i32 %9)
  store i32 %10, i32* %5, align 4
  br label %11

11:                                               ; preds = %6
  %12 = load i32, i32* %5, align 4
  %13 = icmp slt i32 %12, 0
  br i1 %13, label %14, label %18

14:                                               ; preds = %11
  %15 = load i64, i64* @errno, align 8
  %16 = load i64, i64* @EAGAIN, align 8
  %17 = icmp eq i64 %15, %16
  br label %18

18:                                               ; preds = %14, %11
  %19 = phi i1 [ false, %11 ], [ %17, %14 ]
  br i1 %19, label %6, label %20

20:                                               ; preds = %18
  %21 = load i32, i32* %5, align 4
  ret i32 %21
}

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
