; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_overlayfs.h_ovl_open_flags_need_copy_up.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_overlayfs.h_ovl_open_flags_need_copy_up.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@FMODE_WRITE = common dso_local global i32 0, align 4
@O_TRUNC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @ovl_open_flags_need_copy_up to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_open_flags_need_copy_up(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %3, align 4
  %4 = load i32, i32* %3, align 4
  %5 = icmp ne i32 %4, 0
  br i1 %5, label %7, label %6

6:                                                ; preds = %1
  store i32 0, i32* %2, align 4
  br label %21

7:                                                ; preds = %1
  %8 = load i32, i32* %3, align 4
  %9 = call i32 @OPEN_FMODE(i32 %8)
  %10 = load i32, i32* @FMODE_WRITE, align 4
  %11 = and i32 %9, %10
  %12 = icmp ne i32 %11, 0
  br i1 %12, label %18, label %13

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = load i32, i32* @O_TRUNC, align 4
  %16 = and i32 %14, %15
  %17 = icmp ne i32 %16, 0
  br label %18

18:                                               ; preds = %13, %7
  %19 = phi i1 [ true, %7 ], [ %17, %13 ]
  %20 = zext i1 %19 to i32
  store i32 %20, i32* %2, align 4
  br label %21

21:                                               ; preds = %18, %6
  %22 = load i32, i32* %2, align 4
  ret i32 %22
}

declare dso_local i32 @OPEN_FMODE(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
