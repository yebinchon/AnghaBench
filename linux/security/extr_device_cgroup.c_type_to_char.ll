; ModuleID = '/home/carl/AnghaBench/linux/security/extr_device_cgroup.c_type_to_char.c'
source_filename = "/home/carl/AnghaBench/linux/security/extr_device_cgroup.c_type_to_char.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@DEVCG_DEV_ALL = common dso_local global i16 0, align 2
@DEVCG_DEV_CHAR = common dso_local global i16 0, align 2
@DEVCG_DEV_BLOCK = common dso_local global i16 0, align 2
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8 (i16)* @type_to_char to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal signext i8 @type_to_char(i16 signext %0) #0 {
  %2 = alloca i8, align 1
  %3 = alloca i16, align 2
  store i16 %0, i16* %3, align 2
  %4 = load i16, i16* %3, align 2
  %5 = sext i16 %4 to i32
  %6 = load i16, i16* @DEVCG_DEV_ALL, align 2
  %7 = sext i16 %6 to i32
  %8 = icmp eq i32 %5, %7
  br i1 %8, label %9, label %10

9:                                                ; preds = %1
  store i8 97, i8* %2, align 1
  br label %25

10:                                               ; preds = %1
  %11 = load i16, i16* %3, align 2
  %12 = sext i16 %11 to i32
  %13 = load i16, i16* @DEVCG_DEV_CHAR, align 2
  %14 = sext i16 %13 to i32
  %15 = icmp eq i32 %12, %14
  br i1 %15, label %16, label %17

16:                                               ; preds = %10
  store i8 99, i8* %2, align 1
  br label %25

17:                                               ; preds = %10
  %18 = load i16, i16* %3, align 2
  %19 = sext i16 %18 to i32
  %20 = load i16, i16* @DEVCG_DEV_BLOCK, align 2
  %21 = sext i16 %20 to i32
  %22 = icmp eq i32 %19, %21
  br i1 %22, label %23, label %24

23:                                               ; preds = %17
  store i8 98, i8* %2, align 1
  br label %25

24:                                               ; preds = %17
  store i8 88, i8* %2, align 1
  br label %25

25:                                               ; preds = %24, %23, %16, %9
  %26 = load i8, i8* %2, align 1
  ret i8 %26
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
