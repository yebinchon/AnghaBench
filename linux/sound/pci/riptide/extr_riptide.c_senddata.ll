; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_senddata.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/riptide/extr_riptide.c_senddata.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.cmdif = type { i32 }

@EACCES = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.cmdif*, i8*, i32)* @senddata to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @senddata(%struct.cmdif* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.cmdif*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i8*, align 8
  store %struct.cmdif* %0, %struct.cmdif** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %12 = load i8*, i8** %6, align 8
  %13 = getelementptr inbounds i8, i8* %12, i64 1
  %14 = call i32 @atoh(i8* %13, i32 2)
  store i32 %14, i32* %10, align 4
  %15 = load i32, i32* %7, align 4
  %16 = load i8*, i8** %6, align 8
  %17 = getelementptr inbounds i8, i8* %16, i64 3
  %18 = call i32 @atoh(i8* %17, i32 4)
  %19 = add nsw i32 %15, %18
  store i32 %19, i32* %8, align 4
  %20 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call i64 @SEND_SMEM(%struct.cmdif* %20, i32 0, i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %27

24:                                               ; preds = %3
  %25 = load i32, i32* @EACCES, align 4
  %26 = sub nsw i32 0, %25
  store i32 %26, i32* %4, align 4
  br label %55

27:                                               ; preds = %3
  %28 = load i8*, i8** %6, align 8
  %29 = getelementptr inbounds i8, i8* %28, i64 9
  store i8* %29, i8** %11, align 8
  br label %30

30:                                               ; preds = %49, %27
  %31 = load i32, i32* %10, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %54

33:                                               ; preds = %30
  %34 = load i8*, i8** %11, align 8
  %35 = call i32 @atoh(i8* %34, i32 8)
  store i32 %35, i32* %9, align 4
  %36 = load %struct.cmdif*, %struct.cmdif** %5, align 8
  %37 = load i32, i32* %9, align 4
  %38 = and i32 %37, 252645135
  %39 = shl i32 %38, 4
  %40 = load i32, i32* %9, align 4
  %41 = and i32 %40, -252645136
  %42 = lshr i32 %41, 4
  %43 = or i32 %39, %42
  %44 = call i64 @SEND_WMEM(%struct.cmdif* %36, i32 2, i32 %43)
  %45 = icmp ne i64 %44, 0
  br i1 %45, label %46, label %49

46:                                               ; preds = %33
  %47 = load i32, i32* @EACCES, align 4
  %48 = sub nsw i32 0, %47
  store i32 %48, i32* %4, align 4
  br label %55

49:                                               ; preds = %33
  %50 = load i32, i32* %10, align 4
  %51 = sub nsw i32 %50, 4
  store i32 %51, i32* %10, align 4
  %52 = load i8*, i8** %11, align 8
  %53 = getelementptr inbounds i8, i8* %52, i64 8
  store i8* %53, i8** %11, align 8
  br label %30

54:                                               ; preds = %30
  store i32 0, i32* %4, align 4
  br label %55

55:                                               ; preds = %54, %46, %24
  %56 = load i32, i32* %4, align 4
  ret i32 %56
}

declare dso_local i32 @atoh(i8*, i32) #1

declare dso_local i64 @SEND_SMEM(%struct.cmdif*, i32, i32) #1

declare dso_local i64 @SEND_WMEM(%struct.cmdif*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
