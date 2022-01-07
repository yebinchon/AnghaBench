; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_pushbit.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_compr_rubin.c_pushbit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pushpull = type { i32, i32, i32, i32* }

@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.pushpull*, i32, i32)* @pushbit to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @pushbit(%struct.pushpull* %0, i32 %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.pushpull*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.pushpull* %0, %struct.pushpull** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  %8 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %9 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %8, i32 0, i32 0
  %10 = load i32, i32* %9, align 8
  %11 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %12 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %11, i32 0, i32 1
  %13 = load i32, i32* %12, align 4
  %14 = load i32, i32* %7, align 4
  %15 = icmp ne i32 %14, 0
  br i1 %15, label %16, label %17

16:                                               ; preds = %3
  br label %21

17:                                               ; preds = %3
  %18 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %19 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %18, i32 0, i32 2
  %20 = load i32, i32* %19, align 8
  br label %21

21:                                               ; preds = %17, %16
  %22 = phi i32 [ 0, %16 ], [ %20, %17 ]
  %23 = sub nsw i32 %13, %22
  %24 = icmp sge i32 %10, %23
  br i1 %24, label %25, label %28

25:                                               ; preds = %21
  %26 = load i32, i32* @ENOSPC, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %73

28:                                               ; preds = %21
  %29 = load i32, i32* %6, align 4
  %30 = icmp ne i32 %29, 0
  br i1 %30, label %31, label %49

31:                                               ; preds = %28
  %32 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %33 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = and i32 %34, 7
  %36 = sub nsw i32 7, %35
  %37 = shl i32 1, %36
  %38 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %39 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %38, i32 0, i32 3
  %40 = load i32*, i32** %39, align 8
  %41 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %42 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = ashr i32 %43, 3
  %45 = sext i32 %44 to i64
  %46 = getelementptr inbounds i32, i32* %40, i64 %45
  %47 = load i32, i32* %46, align 4
  %48 = or i32 %47, %37
  store i32 %48, i32* %46, align 4
  br label %68

49:                                               ; preds = %28
  %50 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %51 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %50, i32 0, i32 0
  %52 = load i32, i32* %51, align 8
  %53 = and i32 %52, 7
  %54 = sub nsw i32 7, %53
  %55 = shl i32 1, %54
  %56 = xor i32 %55, -1
  %57 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %58 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %57, i32 0, i32 3
  %59 = load i32*, i32** %58, align 8
  %60 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %61 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %60, i32 0, i32 0
  %62 = load i32, i32* %61, align 8
  %63 = ashr i32 %62, 3
  %64 = sext i32 %63 to i64
  %65 = getelementptr inbounds i32, i32* %59, i64 %64
  %66 = load i32, i32* %65, align 4
  %67 = and i32 %66, %56
  store i32 %67, i32* %65, align 4
  br label %68

68:                                               ; preds = %49, %31
  %69 = load %struct.pushpull*, %struct.pushpull** %5, align 8
  %70 = getelementptr inbounds %struct.pushpull, %struct.pushpull* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  store i32 0, i32* %4, align 4
  br label %73

73:                                               ; preds = %68, %25
  %74 = load i32, i32* %4, align 4
  ret i32 %74
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
