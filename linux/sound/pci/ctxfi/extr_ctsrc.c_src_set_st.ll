; ModuleID = '/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_set_st.c'
source_filename = "/home/carl/AnghaBench/linux/sound/pci/ctxfi/extr_ctsrc.c_src_set_st.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.src = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %struct.hw* }
%struct.hw = type { i32 (i32, i32)* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.src*, i32)* @src_set_st to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @src_set_st(%struct.src* %0, i32 %1) #0 {
  %3 = alloca %struct.src*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.hw*, align 8
  store %struct.src* %0, %struct.src** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load %struct.src*, %struct.src** %3, align 8
  %7 = getelementptr inbounds %struct.src, %struct.src* %6, i32 0, i32 0
  %8 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %7, i32 0, i32 1
  %9 = load %struct.hw*, %struct.hw** %8, align 8
  store %struct.hw* %9, %struct.hw** %5, align 8
  %10 = load %struct.hw*, %struct.hw** %5, align 8
  %11 = getelementptr inbounds %struct.hw, %struct.hw* %10, i32 0, i32 0
  %12 = load i32 (i32, i32)*, i32 (i32, i32)** %11, align 8
  %13 = load %struct.src*, %struct.src** %3, align 8
  %14 = getelementptr inbounds %struct.src, %struct.src* %13, i32 0, i32 0
  %15 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = load i32, i32* %4, align 4
  %18 = call i32 %12(i32 %16, i32 %17)
  ret i32 0
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
