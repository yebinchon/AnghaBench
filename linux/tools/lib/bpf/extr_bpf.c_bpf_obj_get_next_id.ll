; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_obj_get_next_id.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/bpf/extr_bpf.c_bpf_obj_get_next_id.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%union.bpf_attr = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32, i32*, i32)* @bpf_obj_get_next_id to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @bpf_obj_get_next_id(i32 %0, i32* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %union.bpf_attr, align 4
  %8 = alloca i32, align 4
  store i32 %0, i32* %4, align 4
  store i32* %1, i32** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = call i32 @memset(%union.bpf_attr* %7, i32 0, i32 4)
  %10 = load i32, i32* %4, align 4
  %11 = bitcast %union.bpf_attr* %7 to i32*
  store i32 %10, i32* %11, align 4
  %12 = load i32, i32* %6, align 4
  %13 = call i32 @sys_bpf(i32 %12, %union.bpf_attr* %7, i32 4)
  store i32 %13, i32* %8, align 4
  %14 = load i32, i32* %8, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %20, label %16

16:                                               ; preds = %3
  %17 = bitcast %union.bpf_attr* %7 to i32*
  %18 = load i32, i32* %17, align 4
  %19 = load i32*, i32** %5, align 8
  store i32 %18, i32* %19, align 4
  br label %20

20:                                               ; preds = %16, %3
  %21 = load i32, i32* %8, align 4
  ret i32 %21
}

declare dso_local i32 @memset(%union.bpf_attr*, i32, i32) #1

declare dso_local i32 @sys_bpf(i32, %union.bpf_attr*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
