; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_disable.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_disable.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src_mgr = type { %struct.TYPE_7__ }
%struct.TYPE_7__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32, i32)* }
%struct.src = type { %struct.TYPE_9__ }
%struct.TYPE_9__ = type { i32, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src_mgr*, %struct.src*)* @src_disable to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_disable(%struct.src_mgr* %0, %struct.src* %1) #0 {
  %3 = alloca %struct.src_mgr*, align 8
  %4 = alloca %struct.src*, align 8
  %5 = alloca %struct.hw*, align 8
  %6 = alloca i32, align 4
  store %struct.src_mgr* %0, %struct.src_mgr** %3, align 8
  store %struct.src* %1, %struct.src** %4, align 8
  %7 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %8 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %7, i32 0, i32 0
  %9 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %8, i32 0, i32 1
  %10 = load %struct.hw*, %struct.hw** %9, align 8
  store %struct.hw* %10, %struct.hw** %5, align 8
  %11 = load %struct.src*, %struct.src** %4, align 8
  %12 = getelementptr inbounds %struct.src, %struct.src* %11, i32 0, i32 0
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 1
  %14 = load %struct.TYPE_8__*, %struct.TYPE_8__** %13, align 8
  %15 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %14, i32 0, i32 0
  %16 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %15, align 8
  %17 = load %struct.src*, %struct.src** %4, align 8
  %18 = getelementptr inbounds %struct.src, %struct.src* %17, i32 0, i32 0
  %19 = call i32 %16(%struct.TYPE_9__* %18)
  store i32 0, i32* %6, align 4
  br label %20

20:                                               ; preds = %54, %2
  %21 = load i32, i32* %6, align 4
  %22 = load %struct.src*, %struct.src** %4, align 8
  %23 = getelementptr inbounds %struct.src, %struct.src* %22, i32 0, i32 0
  %24 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 8
  %26 = icmp slt i32 %21, %25
  br i1 %26, label %27, label %57

27:                                               ; preds = %20
  %28 = load %struct.hw*, %struct.hw** %5, align 8
  %29 = getelementptr inbounds %struct.hw, %struct.hw* %28, i32 0, i32 0
  %30 = load i32 (i32, i32)*, i32 (i32, i32)** %29, align 8
  %31 = load %struct.src_mgr*, %struct.src_mgr** %3, align 8
  %32 = getelementptr inbounds %struct.src_mgr, %struct.src_mgr* %31, i32 0, i32 0
  %33 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %32, i32 0, i32 0
  %34 = load i32, i32* %33, align 8
  %35 = load %struct.src*, %struct.src** %4, align 8
  %36 = getelementptr inbounds %struct.src, %struct.src* %35, i32 0, i32 0
  %37 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %36, i32 0, i32 1
  %38 = load %struct.TYPE_8__*, %struct.TYPE_8__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 2
  %40 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %39, align 8
  %41 = load %struct.src*, %struct.src** %4, align 8
  %42 = getelementptr inbounds %struct.src, %struct.src* %41, i32 0, i32 0
  %43 = call i32 %40(%struct.TYPE_9__* %42)
  %44 = call i32 %30(i32 %34, i32 %43)
  %45 = load %struct.src*, %struct.src** %4, align 8
  %46 = getelementptr inbounds %struct.src, %struct.src* %45, i32 0, i32 0
  %47 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %46, i32 0, i32 1
  %48 = load %struct.TYPE_8__*, %struct.TYPE_8__** %47, align 8
  %49 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %48, i32 0, i32 1
  %50 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %49, align 8
  %51 = load %struct.src*, %struct.src** %4, align 8
  %52 = getelementptr inbounds %struct.src, %struct.src* %51, i32 0, i32 0
  %53 = call i32 %50(%struct.TYPE_9__* %52)
  br label %54

54:                                               ; preds = %27
  %55 = load i32, i32* %6, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %6, align 4
  br label %20

57:                                               ; preds = %20
  %58 = load %struct.src*, %struct.src** %4, align 8
  %59 = getelementptr inbounds %struct.src, %struct.src* %58, i32 0, i32 0
  %60 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %59, i32 0, i32 1
  %61 = load %struct.TYPE_8__*, %struct.TYPE_8__** %60, align 8
  %62 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %61, i32 0, i32 0
  %63 = load i32 (%struct.TYPE_9__*)*, i32 (%struct.TYPE_9__*)** %62, align 8
  %64 = load %struct.src*, %struct.src** %4, align 8
  %65 = getelementptr inbounds %struct.src, %struct.src* %64, i32 0, i32 0
  %66 = call i32 %63(%struct.TYPE_9__* %65)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
