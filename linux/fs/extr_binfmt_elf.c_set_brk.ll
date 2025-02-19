; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_set_brk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_binfmt_elf.c_set_brk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i64, i64 }

@PROT_EXEC = common dso_local global i32 0, align 4
@VM_EXEC = common dso_local global i32 0, align 4
@current = common dso_local global %struct.TYPE_4__* null, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i64, i64, i32)* @set_brk to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @set_brk(i64 %0, i64 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i64, align 8
  %6 = alloca i64, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  store i64 %0, i64* %5, align 8
  store i64 %1, i64* %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load i64, i64* %5, align 8
  %10 = call i64 @ELF_PAGEALIGN(i64 %9)
  store i64 %10, i64* %5, align 8
  %11 = load i64, i64* %6, align 8
  %12 = call i64 @ELF_PAGEALIGN(i64 %11)
  store i64 %12, i64* %6, align 8
  %13 = load i64, i64* %6, align 8
  %14 = load i64, i64* %5, align 8
  %15 = icmp ugt i64 %13, %14
  br i1 %15, label %16, label %36

16:                                               ; preds = %3
  %17 = load i64, i64* %5, align 8
  %18 = load i64, i64* %6, align 8
  %19 = load i64, i64* %5, align 8
  %20 = sub i64 %18, %19
  %21 = load i32, i32* %7, align 4
  %22 = load i32, i32* @PROT_EXEC, align 4
  %23 = and i32 %21, %22
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %27

25:                                               ; preds = %16
  %26 = load i32, i32* @VM_EXEC, align 4
  br label %28

27:                                               ; preds = %16
  br label %28

28:                                               ; preds = %27, %25
  %29 = phi i32 [ %26, %25 ], [ 0, %27 ]
  %30 = call i32 @vm_brk_flags(i64 %17, i64 %20, i32 %29)
  store i32 %30, i32* %8, align 4
  %31 = load i32, i32* %8, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %8, align 4
  store i32 %34, i32* %4, align 4
  br label %46

35:                                               ; preds = %28
  br label %36

36:                                               ; preds = %35, %3
  %37 = load i64, i64* %6, align 8
  %38 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %39 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %38, i32 0, i32 0
  %40 = load %struct.TYPE_3__*, %struct.TYPE_3__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %40, i32 0, i32 1
  store i64 %37, i64* %41, align 8
  %42 = load %struct.TYPE_4__*, %struct.TYPE_4__** @current, align 8
  %43 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %42, i32 0, i32 0
  %44 = load %struct.TYPE_3__*, %struct.TYPE_3__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %44, i32 0, i32 0
  store i64 %37, i64* %45, align 8
  store i32 0, i32* %4, align 4
  br label %46

46:                                               ; preds = %36, %33
  %47 = load i32, i32* %4, align 4
  ret i32 %47
}

declare dso_local i64 @ELF_PAGEALIGN(i64) #1

declare dso_local i32 @vm_brk_flags(i64, i64, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
