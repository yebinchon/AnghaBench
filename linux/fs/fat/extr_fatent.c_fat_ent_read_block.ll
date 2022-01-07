; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_read_block.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_read_block.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32 }
%struct.fatent_operations = type { i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.super_block*, i32, i32*, i32*)* }
%struct.fat_entry.0 = type opaque
%struct.TYPE_2__ = type { %struct.fatent_operations* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_entry*)* @fat_ent_read_block to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_ent_read_block(%struct.super_block* %0, %struct.fat_entry* %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca %struct.fat_entry*, align 8
  %5 = alloca %struct.fatent_operations*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %4, align 8
  %8 = load %struct.super_block*, %struct.super_block** %3, align 8
  %9 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %8)
  %10 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %9, i32 0, i32 0
  %11 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  store %struct.fatent_operations* %11, %struct.fatent_operations** %5, align 8
  %12 = load %struct.fat_entry*, %struct.fat_entry** %4, align 8
  %13 = call i32 @fatent_brelse(%struct.fat_entry* %12)
  %14 = load %struct.fatent_operations*, %struct.fatent_operations** %5, align 8
  %15 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %14, i32 0, i32 1
  %16 = load i32 (%struct.super_block*, i32, i32*, i32*)*, i32 (%struct.super_block*, i32, i32*, i32*)** %15, align 8
  %17 = load %struct.super_block*, %struct.super_block** %3, align 8
  %18 = load %struct.fat_entry*, %struct.fat_entry** %4, align 8
  %19 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %18, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = call i32 %16(%struct.super_block* %17, i32 %20, i32* %7, i32* %6)
  %22 = load %struct.fatent_operations*, %struct.fatent_operations** %5, align 8
  %23 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %22, i32 0, i32 0
  %24 = load i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)*, i32 (%struct.super_block*, %struct.fat_entry.0*, i32, i32)** %23, align 8
  %25 = load %struct.super_block*, %struct.super_block** %3, align 8
  %26 = load %struct.fat_entry*, %struct.fat_entry** %4, align 8
  %27 = bitcast %struct.fat_entry* %26 to %struct.fat_entry.0*
  %28 = load i32, i32* %7, align 4
  %29 = load i32, i32* %6, align 4
  %30 = call i32 %24(%struct.super_block* %25, %struct.fat_entry.0* %27, i32 %28, i32 %29)
  ret i32 %30
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
