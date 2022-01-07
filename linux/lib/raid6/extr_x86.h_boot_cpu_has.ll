; ModuleID = '/home/carl/AnghaBench/linux/lib/raid6/extr_x86.h_boot_cpu_has.c'
source_filename = "/home/carl/AnghaBench/linux/lib/raid6/extr_x86.h_boot_cpu_has.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @boot_cpu_has to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @boot_cpu_has(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %7 = load i32, i32* %2, align 4
  %8 = and i32 %7, 256
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %11

10:                                               ; preds = %1
  br label %17

11:                                               ; preds = %1
  %12 = load i32, i32* %2, align 4
  %13 = and i32 %12, 32
  %14 = icmp ne i32 %13, 0
  %15 = zext i1 %14 to i64
  %16 = select i1 %14, i32 -2147483647, i32 1
  br label %17

17:                                               ; preds = %11, %10
  %18 = phi i32 [ 7, %10 ], [ %16, %11 ]
  store i32 %18, i32* %3, align 4
  store i32 0, i32* %5, align 4
  %19 = load i32, i32* %3, align 4
  %20 = load i32, i32* %5, align 4
  %21 = call { i32, i32, i32, i32 } asm sideeffect "cpuid", "={ax},={bx},={dx},={cx},0,3,~{dirflag},~{fpsr},~{flags}"(i32 %19, i32 %20) #1, !srcloc !2
  %22 = extractvalue { i32, i32, i32, i32 } %21, 0
  %23 = extractvalue { i32, i32, i32, i32 } %21, 1
  %24 = extractvalue { i32, i32, i32, i32 } %21, 2
  %25 = extractvalue { i32, i32, i32, i32 } %21, 3
  store i32 %22, i32* %3, align 4
  store i32 %23, i32* %4, align 4
  store i32 %24, i32* %6, align 4
  store i32 %25, i32* %5, align 4
  %26 = load i32, i32* %2, align 4
  %27 = and i32 %26, 256
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %31

29:                                               ; preds = %17
  %30 = load i32, i32* %4, align 4
  br label %41

31:                                               ; preds = %17
  %32 = load i32, i32* %2, align 4
  %33 = and i32 %32, 128
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %35, label %37

35:                                               ; preds = %31
  %36 = load i32, i32* %5, align 4
  br label %39

37:                                               ; preds = %31
  %38 = load i32, i32* %6, align 4
  br label %39

39:                                               ; preds = %37, %35
  %40 = phi i32 [ %36, %35 ], [ %38, %37 ]
  br label %41

41:                                               ; preds = %39, %29
  %42 = phi i32 [ %30, %29 ], [ %40, %39 ]
  %43 = load i32, i32* %2, align 4
  %44 = and i32 %43, 31
  %45 = ashr i32 %42, %44
  %46 = and i32 %45, 1
  ret i32 %46
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
!2 = !{i32 338}
