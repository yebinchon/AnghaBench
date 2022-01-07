; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_perm_from_str.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smk_perm_from_str.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@MAY_READ = common dso_local global i32 0, align 4
@MAY_WRITE = common dso_local global i32 0, align 4
@MAY_EXEC = common dso_local global i32 0, align 4
@MAY_APPEND = common dso_local global i32 0, align 4
@MAY_TRANSMUTE = common dso_local global i32 0, align 4
@MAY_LOCK = common dso_local global i32 0, align 4
@MAY_BRINGUP = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*)* @smk_perm_from_str to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @smk_perm_from_str(i8* %0) #0 {
  %2 = alloca i8*, align 8
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i8* %0, i8** %2, align 8
  store i32 0, i32* %3, align 4
  %5 = load i8*, i8** %2, align 8
  store i8* %5, i8** %4, align 8
  br label %6

6:                                                ; preds = %42, %1
  %7 = load i8*, i8** %4, align 8
  %8 = load i8, i8* %7, align 1
  %9 = sext i8 %8 to i32
  switch i32 %9, label %39 [
    i32 45, label %10
    i32 114, label %11
    i32 82, label %11
    i32 119, label %15
    i32 87, label %15
    i32 120, label %19
    i32 88, label %19
    i32 97, label %23
    i32 65, label %23
    i32 116, label %27
    i32 84, label %27
    i32 108, label %31
    i32 76, label %31
    i32 98, label %35
    i32 66, label %35
  ]

10:                                               ; preds = %6
  br label %41

11:                                               ; preds = %6, %6
  %12 = load i32, i32* @MAY_READ, align 4
  %13 = load i32, i32* %3, align 4
  %14 = or i32 %13, %12
  store i32 %14, i32* %3, align 4
  br label %41

15:                                               ; preds = %6, %6
  %16 = load i32, i32* @MAY_WRITE, align 4
  %17 = load i32, i32* %3, align 4
  %18 = or i32 %17, %16
  store i32 %18, i32* %3, align 4
  br label %41

19:                                               ; preds = %6, %6
  %20 = load i32, i32* @MAY_EXEC, align 4
  %21 = load i32, i32* %3, align 4
  %22 = or i32 %21, %20
  store i32 %22, i32* %3, align 4
  br label %41

23:                                               ; preds = %6, %6
  %24 = load i32, i32* @MAY_APPEND, align 4
  %25 = load i32, i32* %3, align 4
  %26 = or i32 %25, %24
  store i32 %26, i32* %3, align 4
  br label %41

27:                                               ; preds = %6, %6
  %28 = load i32, i32* @MAY_TRANSMUTE, align 4
  %29 = load i32, i32* %3, align 4
  %30 = or i32 %29, %28
  store i32 %30, i32* %3, align 4
  br label %41

31:                                               ; preds = %6, %6
  %32 = load i32, i32* @MAY_LOCK, align 4
  %33 = load i32, i32* %3, align 4
  %34 = or i32 %33, %32
  store i32 %34, i32* %3, align 4
  br label %41

35:                                               ; preds = %6, %6
  %36 = load i32, i32* @MAY_BRINGUP, align 4
  %37 = load i32, i32* %3, align 4
  %38 = or i32 %37, %36
  store i32 %38, i32* %3, align 4
  br label %41

39:                                               ; preds = %6
  %40 = load i32, i32* %3, align 4
  ret i32 %40

41:                                               ; preds = %35, %31, %27, %23, %19, %15, %11, %10
  br label %42

42:                                               ; preds = %41
  %43 = load i8*, i8** %4, align 8
  %44 = getelementptr inbounds i8, i8* %43, i32 1
  store i8* %44, i8** %4, align 8
  br label %6
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
