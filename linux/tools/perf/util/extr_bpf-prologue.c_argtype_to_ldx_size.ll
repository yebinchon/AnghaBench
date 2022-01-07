; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_argtype_to_ldx_size.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_bpf-prologue.c_argtype_to_ldx_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@BPF_B = common dso_local global i32 0, align 4
@BPF_H = common dso_local global i32 0, align 4
@BPF_W = common dso_local global i32 0, align 4
@BPF_DW = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @argtype_to_ldx_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @argtype_to_ldx_size(i8* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i8*, align 8
  %4 = alloca i32, align 4
  store i8* %0, i8** %3, align 8
  %5 = load i8*, i8** %3, align 8
  %6 = icmp ne i8* %5, null
  br i1 %6, label %7, label %11

7:                                                ; preds = %1
  %8 = load i8*, i8** %3, align 8
  %9 = getelementptr inbounds i8, i8* %8, i64 1
  %10 = call i32 @atoi(i8* %9)
  br label %12

11:                                               ; preds = %1
  br label %12

12:                                               ; preds = %11, %7
  %13 = phi i32 [ %10, %7 ], [ 64, %11 ]
  store i32 %13, i32* %4, align 4
  %14 = load i32, i32* %4, align 4
  switch i32 %14, label %22 [
    i32 8, label %15
    i32 16, label %17
    i32 32, label %19
    i32 64, label %21
  ]

15:                                               ; preds = %12
  %16 = load i32, i32* @BPF_B, align 4
  store i32 %16, i32* %2, align 4
  br label %24

17:                                               ; preds = %12
  %18 = load i32, i32* @BPF_H, align 4
  store i32 %18, i32* %2, align 4
  br label %24

19:                                               ; preds = %12
  %20 = load i32, i32* @BPF_W, align 4
  store i32 %20, i32* %2, align 4
  br label %24

21:                                               ; preds = %12
  br label %22

22:                                               ; preds = %12, %21
  %23 = load i32, i32* @BPF_DW, align 4
  store i32 %23, i32* %2, align 4
  br label %24

24:                                               ; preds = %22, %19, %17, %15
  %25 = load i32, i32* %2, align 4
  ret i32 %25
}

declare dso_local i32 @atoi(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
