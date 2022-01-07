; ModuleID = '/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_is_loop.c'
source_filename = "/home/carl/AnghaBench/linux/security/apparmor/extr_match.c_is_loop.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.match_workbuf = type { i32, i32*, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.match_workbuf*, i32, i32*)* @is_loop to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @is_loop(%struct.match_workbuf* %0, i32 %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.match_workbuf*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  store %struct.match_workbuf* %0, %struct.match_workbuf** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32* %2, i32** %7, align 8
  %10 = load %struct.match_workbuf*, %struct.match_workbuf** %5, align 8
  %11 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 8
  store i32 %12, i32* %8, align 4
  %13 = load %struct.match_workbuf*, %struct.match_workbuf** %5, align 8
  %14 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %13, i32 0, i32 1
  %15 = load i32*, i32** %14, align 8
  %16 = load i32, i32* %8, align 4
  %17 = zext i32 %16 to i64
  %18 = getelementptr inbounds i32, i32* %15, i64 %17
  %19 = load i32, i32* %18, align 4
  %20 = load i32, i32* %6, align 4
  %21 = icmp ult i32 %19, %20
  br i1 %21, label %22, label %23

22:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %59

23:                                               ; preds = %3
  store i32 0, i32* %9, align 4
  br label %24

24:                                               ; preds = %53, %23
  %25 = load i32, i32* %9, align 4
  %26 = load %struct.match_workbuf*, %struct.match_workbuf** %5, align 8
  %27 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %26, i32 0, i32 2
  %28 = load i32, i32* %27, align 8
  %29 = icmp ule i32 %25, %28
  br i1 %29, label %30, label %56

30:                                               ; preds = %24
  %31 = load %struct.match_workbuf*, %struct.match_workbuf** %5, align 8
  %32 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %31, i32 0, i32 1
  %33 = load i32*, i32** %32, align 8
  %34 = load i32, i32* %8, align 4
  %35 = zext i32 %34 to i64
  %36 = getelementptr inbounds i32, i32* %33, i64 %35
  %37 = load i32, i32* %36, align 4
  %38 = load i32, i32* %6, align 4
  %39 = icmp eq i32 %37, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %30
  %41 = load i32, i32* %9, align 4
  %42 = load i32*, i32** %7, align 8
  store i32 %41, i32* %42, align 4
  store i32 1, i32* %4, align 4
  br label %59

43:                                               ; preds = %30
  %44 = load i32, i32* %8, align 4
  %45 = icmp eq i32 %44, 0
  br i1 %45, label %46, label %50

46:                                               ; preds = %43
  %47 = load %struct.match_workbuf*, %struct.match_workbuf** %5, align 8
  %48 = getelementptr inbounds %struct.match_workbuf, %struct.match_workbuf* %47, i32 0, i32 3
  %49 = load i32, i32* %48, align 4
  store i32 %49, i32* %8, align 4
  br label %50

50:                                               ; preds = %46, %43
  %51 = load i32, i32* %8, align 4
  %52 = add i32 %51, -1
  store i32 %52, i32* %8, align 4
  br label %53

53:                                               ; preds = %50
  %54 = load i32, i32* %9, align 4
  %55 = add i32 %54, 1
  store i32 %55, i32* %9, align 4
  br label %24

56:                                               ; preds = %24
  %57 = load i32, i32* %9, align 4
  %58 = load i32*, i32** %7, align 8
  store i32 %57, i32* %58, align 4
  store i32 1, i32* %4, align 4
  br label %59

59:                                               ; preds = %56, %40, %22
  %60 = load i32, i32* %4, align 4
  ret i32 %60
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
