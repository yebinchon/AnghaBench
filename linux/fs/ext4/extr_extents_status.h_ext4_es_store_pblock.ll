; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.h_ext4_es_store_pblock.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_extents_status.h_ext4_es_store_pblock.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_status = type { i32 }

@ES_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_status*, i32)* @ext4_es_store_pblock to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_es_store_pblock(%struct.extent_status* %0, i32 %1) #0 {
  %3 = alloca %struct.extent_status*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  store %struct.extent_status* %0, %struct.extent_status** %3, align 8
  store i32 %1, i32* %4, align 4
  %6 = load i32, i32* %4, align 4
  %7 = load i32, i32* @ES_MASK, align 4
  %8 = xor i32 %7, -1
  %9 = and i32 %6, %8
  %10 = load %struct.extent_status*, %struct.extent_status** %3, align 8
  %11 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %10, i32 0, i32 0
  %12 = load i32, i32* %11, align 4
  %13 = load i32, i32* @ES_MASK, align 4
  %14 = and i32 %12, %13
  %15 = or i32 %9, %14
  store i32 %15, i32* %5, align 4
  %16 = load i32, i32* %5, align 4
  %17 = load %struct.extent_status*, %struct.extent_status** %3, align 8
  %18 = getelementptr inbounds %struct.extent_status, %struct.extent_status* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 4
  ret void
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
