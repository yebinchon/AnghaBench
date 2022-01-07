; ModuleID = '/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smack_catset_bit.c'
source_filename = "/home/carl/AnghaBench/linux/security/smack/extr_smackfs.c_smack_catset_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

@SMK_CIPSOLEN = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32, i8*)* @smack_catset_bit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @smack_catset_bit(i32 %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca i8*, align 8
  store i32 %0, i32* %3, align 4
  store i8* %1, i8** %4, align 8
  %5 = load i32, i32* %3, align 4
  %6 = icmp eq i32 %5, 0
  br i1 %6, label %12, label %7

7:                                                ; preds = %2
  %8 = load i32, i32* %3, align 4
  %9 = load i32, i32* @SMK_CIPSOLEN, align 4
  %10 = mul nsw i32 %9, 8
  %11 = icmp ugt i32 %8, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %7, %2
  br label %28

13:                                               ; preds = %7
  %14 = load i32, i32* %3, align 4
  %15 = sub i32 %14, 1
  %16 = urem i32 %15, 8
  %17 = ashr i32 128, %16
  %18 = load i8*, i8** %4, align 8
  %19 = load i32, i32* %3, align 4
  %20 = sub i32 %19, 1
  %21 = udiv i32 %20, 8
  %22 = zext i32 %21 to i64
  %23 = getelementptr inbounds i8, i8* %18, i64 %22
  %24 = load i8, i8* %23, align 1
  %25 = sext i8 %24 to i32
  %26 = or i32 %25, %17
  %27 = trunc i32 %26 to i8
  store i8 %27, i8* %23, align 1
  br label %28

28:                                               ; preds = %13, %12
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
