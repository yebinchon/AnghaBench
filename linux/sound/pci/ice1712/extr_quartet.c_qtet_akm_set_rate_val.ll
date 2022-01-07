; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_set_rate_val.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ice1712/extr_quartet.c_qtet_akm_set_rate_val.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.snd_akm4xxx = type { i32 }

@AK4620_DFS1 = common dso_local global i8 0, align 1
@AK4620_CKS1 = common dso_local global i8 0, align 1
@AK4620_DFS0 = common dso_local global i8 0, align 1
@AK4620_CKS0 = common dso_local global i8 0, align 1
@AK4620_DFS_REG = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.snd_akm4xxx*, i32)* @qtet_akm_set_rate_val to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @qtet_akm_set_rate_val(%struct.snd_akm4xxx* %0, i32 %1) #0 {
  %3 = alloca %struct.snd_akm4xxx*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i8, align 1
  store %struct.snd_akm4xxx* %0, %struct.snd_akm4xxx** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = icmp eq i32 %6, 0
  br i1 %7, label %8, label %9

8:                                                ; preds = %2
  br label %48

9:                                                ; preds = %2
  %10 = load i32, i32* %4, align 4
  %11 = icmp ugt i32 %10, 108000
  br i1 %11, label %12, label %19

12:                                               ; preds = %9
  %13 = load i8, i8* @AK4620_DFS1, align 1
  %14 = zext i8 %13 to i32
  %15 = load i8, i8* @AK4620_CKS1, align 1
  %16 = zext i8 %15 to i32
  %17 = or i32 %14, %16
  %18 = trunc i32 %17 to i8
  store i8 %18, i8* %5, align 1
  br label %31

19:                                               ; preds = %9
  %20 = load i32, i32* %4, align 4
  %21 = icmp ugt i32 %20, 54000
  br i1 %21, label %22, label %29

22:                                               ; preds = %19
  %23 = load i8, i8* @AK4620_DFS0, align 1
  %24 = zext i8 %23 to i32
  %25 = load i8, i8* @AK4620_CKS0, align 1
  %26 = zext i8 %25 to i32
  %27 = or i32 %24, %26
  %28 = trunc i32 %27 to i8
  store i8 %28, i8* %5, align 1
  br label %30

29:                                               ; preds = %19
  store i8 0, i8* %5, align 1
  br label %30

30:                                               ; preds = %29, %22
  br label %31

31:                                               ; preds = %30, %12
  %32 = load %struct.snd_akm4xxx*, %struct.snd_akm4xxx** %3, align 8
  %33 = load i32, i32* @AK4620_DFS_REG, align 4
  %34 = load i8, i8* @AK4620_DFS0, align 1
  %35 = zext i8 %34 to i32
  %36 = load i8, i8* @AK4620_DFS1, align 1
  %37 = zext i8 %36 to i32
  %38 = or i32 %35, %37
  %39 = load i8, i8* @AK4620_CKS0, align 1
  %40 = zext i8 %39 to i32
  %41 = or i32 %38, %40
  %42 = load i8, i8* @AK4620_CKS1, align 1
  %43 = zext i8 %42 to i32
  %44 = or i32 %41, %43
  %45 = trunc i32 %44 to i8
  %46 = load i8, i8* %5, align 1
  %47 = call i32 @qtet_akm_set_regs(%struct.snd_akm4xxx* %32, i32 %33, i8 zeroext %45, i8 zeroext %46)
  br label %48

48:                                               ; preds = %31, %8
  ret void
}

declare dso_local i32 @qtet_akm_set_regs(%struct.snd_akm4xxx*, i32, i8 zeroext, i8 zeroext) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
