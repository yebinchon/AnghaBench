; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_map_mask_to_chr_mask.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_map_mask_to_chr_mask.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@PERMS_CHRS_MASK = common dso_local global i32 0, align 4
@AA_MAY_GETATTR = common dso_local global i32 0, align 4
@MAY_READ = common dso_local global i32 0, align 4
@AA_MAY_SETATTR = common dso_local global i32 0, align 4
@AA_MAY_CHMOD = common dso_local global i32 0, align 4
@AA_MAY_CHOWN = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @map_mask_to_chr_mask to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_mask_to_chr_mask(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = load i32, i32* @PERMS_CHRS_MASK, align 4
  %6 = and i32 %4, %5
  store i32 %6, i32* %3, align 4
  %7 = load i32, i32* %2, align 4
  %8 = load i32, i32* @AA_MAY_GETATTR, align 4
  %9 = and i32 %7, %8
  %10 = icmp ne i32 %9, 0
  br i1 %10, label %11, label %15

11:                                               ; preds = %1
  %12 = load i32, i32* @MAY_READ, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %15

15:                                               ; preds = %11, %1
  %16 = load i32, i32* %2, align 4
  %17 = load i32, i32* @AA_MAY_SETATTR, align 4
  %18 = load i32, i32* @AA_MAY_CHMOD, align 4
  %19 = or i32 %17, %18
  %20 = load i32, i32* @AA_MAY_CHOWN, align 4
  %21 = or i32 %19, %20
  %22 = and i32 %16, %21
  %23 = icmp ne i32 %22, 0
  br i1 %23, label %24, label %28

24:                                               ; preds = %15
  %25 = load i32, i32* @MAY_WRITE, align 4
  %26 = load i32, i32* %3, align 4
  %27 = or i32 %26, %25
  store i32 %27, i32* %3, align 4
  br label %28

28:                                               ; preds = %24, %15
  %29 = load i32, i32* %3, align 4
  ret i32 %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
