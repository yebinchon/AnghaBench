; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_map_old_perms.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_file.c_map_old_perms.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAY_READ = common dso_local global i32 0, align 4
@AA_MAY_GETATTR = common dso_local global i32 0, align 4
@AA_MAY_OPEN = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@AA_MAY_SETATTR = common dso_local global i32 0, align 4
@AA_MAY_CREATE = common dso_local global i32 0, align 4
@AA_MAY_DELETE = common dso_local global i32 0, align 4
@AA_MAY_CHMOD = common dso_local global i32 0, align 4
@AA_MAY_CHOWN = common dso_local global i32 0, align 4
@AA_MAY_LINK = common dso_local global i32 0, align 4
@AA_MAY_LOCK = common dso_local global i32 0, align 4
@AA_LINK_SUBSET = common dso_local global i32 0, align 4
@AA_EXEC_MMAP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32)* @map_old_perms to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @map_old_perms(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca i32, align 4
  store i32 %0, i32* %2, align 4
  %4 = load i32, i32* %2, align 4
  %5 = and i32 %4, 15
  store i32 %5, i32* %3, align 4
  %6 = load i32, i32* %2, align 4
  %7 = load i32, i32* @MAY_READ, align 4
  %8 = and i32 %6, %7
  %9 = icmp ne i32 %8, 0
  br i1 %9, label %10, label %16

10:                                               ; preds = %1
  %11 = load i32, i32* @AA_MAY_GETATTR, align 4
  %12 = load i32, i32* @AA_MAY_OPEN, align 4
  %13 = or i32 %11, %12
  %14 = load i32, i32* %3, align 4
  %15 = or i32 %14, %13
  store i32 %15, i32* %3, align 4
  br label %16

16:                                               ; preds = %10, %1
  %17 = load i32, i32* %2, align 4
  %18 = load i32, i32* @MAY_WRITE, align 4
  %19 = and i32 %17, %18
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %35

21:                                               ; preds = %16
  %22 = load i32, i32* @AA_MAY_SETATTR, align 4
  %23 = load i32, i32* @AA_MAY_CREATE, align 4
  %24 = or i32 %22, %23
  %25 = load i32, i32* @AA_MAY_DELETE, align 4
  %26 = or i32 %24, %25
  %27 = load i32, i32* @AA_MAY_CHMOD, align 4
  %28 = or i32 %26, %27
  %29 = load i32, i32* @AA_MAY_CHOWN, align 4
  %30 = or i32 %28, %29
  %31 = load i32, i32* @AA_MAY_OPEN, align 4
  %32 = or i32 %30, %31
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %35

35:                                               ; preds = %21, %16
  %36 = load i32, i32* %2, align 4
  %37 = and i32 %36, 16
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %35
  %40 = load i32, i32* @AA_MAY_LINK, align 4
  %41 = load i32, i32* %3, align 4
  %42 = or i32 %41, %40
  store i32 %42, i32* %3, align 4
  br label %43

43:                                               ; preds = %39, %35
  %44 = load i32, i32* %2, align 4
  %45 = and i32 %44, 32
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %53

47:                                               ; preds = %43
  %48 = load i32, i32* @AA_MAY_LOCK, align 4
  %49 = load i32, i32* @AA_LINK_SUBSET, align 4
  %50 = or i32 %48, %49
  %51 = load i32, i32* %3, align 4
  %52 = or i32 %51, %50
  store i32 %52, i32* %3, align 4
  br label %53

53:                                               ; preds = %47, %43
  %54 = load i32, i32* %2, align 4
  %55 = and i32 %54, 64
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %57, label %61

57:                                               ; preds = %53
  %58 = load i32, i32* @AA_EXEC_MMAP, align 4
  %59 = load i32, i32* %3, align 4
  %60 = or i32 %59, %58
  store i32 %60, i32* %3, align 4
  br label %61

61:                                               ; preds = %57, %53
  %62 = load i32, i32* %3, align 4
  ret i32 %62
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
