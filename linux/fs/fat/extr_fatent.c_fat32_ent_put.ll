; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat32_ent_put.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat32_ent_put.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.fat_entry = type { i32, i32*, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.fat_entry*, i32)* @fat32_ent_put to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat32_ent_put(%struct.fat_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.fat_entry*, align 8
  %4 = alloca i32, align 4
  store %struct.fat_entry* %0, %struct.fat_entry** %3, align 8
  store i32 %1, i32* %4, align 4
  %5 = load i32, i32* %4, align 4
  %6 = and i32 %5, -268435456
  %7 = call i32 @WARN_ON(i32 %6)
  %8 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %9 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %8, i32 0, i32 2
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load i32*, i32** %10, align 8
  %12 = load i32, i32* %11, align 4
  %13 = call i32 @le32_to_cpu(i32 %12)
  %14 = and i32 %13, -268435456
  %15 = load i32, i32* %4, align 4
  %16 = or i32 %15, %14
  store i32 %16, i32* %4, align 4
  %17 = load i32, i32* %4, align 4
  %18 = call i32 @cpu_to_le32(i32 %17)
  %19 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %20 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %19, i32 0, i32 2
  %21 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %20, i32 0, i32 0
  %22 = load i32*, i32** %21, align 8
  store i32 %18, i32* %22, align 4
  %23 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %24 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %23, i32 0, i32 1
  %25 = load i32*, i32** %24, align 8
  %26 = getelementptr inbounds i32, i32* %25, i64 0
  %27 = load i32, i32* %26, align 4
  %28 = load %struct.fat_entry*, %struct.fat_entry** %3, align 8
  %29 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = call i32 @mark_buffer_dirty_inode(i32 %27, i32 %30)
  ret void
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @cpu_to_le32(i32) #1

declare dso_local i32 @mark_buffer_dirty_inode(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
