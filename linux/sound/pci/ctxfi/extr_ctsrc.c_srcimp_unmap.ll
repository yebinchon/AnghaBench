; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_unmap.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_srcimp_unmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.srcimp = type { i32, i32*, %struct.TYPE_4__*, %struct.TYPE_3__ }
%struct.TYPE_4__ = type { i32 (%struct.TYPE_4__*, i32*)* }
%struct.TYPE_3__ = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.srcimp*)* @srcimp_unmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @srcimp_unmap(%struct.srcimp* %0) #0 {
  %2 = alloca %struct.srcimp*, align 8
  %3 = alloca i32, align 4
  store %struct.srcimp* %0, %struct.srcimp** %2, align 8
  store i32 0, i32* %3, align 4
  br label %4

4:                                                ; preds = %43, %1
  %5 = load i32, i32* %3, align 4
  %6 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %7 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %6, i32 0, i32 3
  %8 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %7, i32 0, i32 0
  %9 = load i32, i32* %8, align 8
  %10 = icmp slt i32 %5, %9
  br i1 %10, label %11, label %46

11:                                               ; preds = %4
  %12 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %13 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = load i32, i32* %3, align 4
  %16 = shl i32 1, %15
  %17 = and i32 %14, %16
  %18 = icmp ne i32 %17, 0
  br i1 %18, label %19, label %42

19:                                               ; preds = %11
  %20 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %21 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %20, i32 0, i32 2
  %22 = load %struct.TYPE_4__*, %struct.TYPE_4__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %22, i32 0, i32 0
  %24 = load i32 (%struct.TYPE_4__*, i32*)*, i32 (%struct.TYPE_4__*, i32*)** %23, align 8
  %25 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %26 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %25, i32 0, i32 2
  %27 = load %struct.TYPE_4__*, %struct.TYPE_4__** %26, align 8
  %28 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %29 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %28, i32 0, i32 1
  %30 = load i32*, i32** %29, align 8
  %31 = load i32, i32* %3, align 4
  %32 = sext i32 %31 to i64
  %33 = getelementptr inbounds i32, i32* %30, i64 %32
  %34 = call i32 %24(%struct.TYPE_4__* %27, i32* %33)
  %35 = load i32, i32* %3, align 4
  %36 = shl i32 1, %35
  %37 = xor i32 %36, -1
  %38 = load %struct.srcimp*, %struct.srcimp** %2, align 8
  %39 = getelementptr inbounds %struct.srcimp, %struct.srcimp* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = and i32 %40, %37
  store i32 %41, i32* %39, align 8
  br label %42

42:                                               ; preds = %19, %11
  br label %43

43:                                               ; preds = %42
  %44 = load i32, i32* %3, align 4
  %45 = add nsw i32 %44, 1
  store i32 %45, i32* %3, align 4
  br label %4

46:                                               ; preds = %4
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
