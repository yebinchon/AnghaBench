; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_write.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_write.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_entry = type { i32, i32 }
%struct.fatent_operations = type { i32 (%struct.fat_entry.0*, i32)* }
%struct.fat_entry.0 = type opaque
%struct.TYPE_2__ = type { %struct.fatent_operations* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_ent_write(%struct.inode* %0, %struct.fat_entry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.fat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.super_block*, align 8
  %11 = alloca %struct.fatent_operations*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  %13 = load %struct.inode*, %struct.inode** %6, align 8
  %14 = getelementptr inbounds %struct.inode, %struct.inode* %13, i32 0, i32 0
  %15 = load %struct.super_block*, %struct.super_block** %14, align 8
  store %struct.super_block* %15, %struct.super_block** %10, align 8
  %16 = load %struct.super_block*, %struct.super_block** %10, align 8
  %17 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load %struct.fatent_operations*, %struct.fatent_operations** %18, align 8
  store %struct.fatent_operations* %19, %struct.fatent_operations** %11, align 8
  %20 = load %struct.fatent_operations*, %struct.fatent_operations** %11, align 8
  %21 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %20, i32 0, i32 0
  %22 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %21, align 8
  %23 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %24 = bitcast %struct.fat_entry* %23 to %struct.fat_entry.0*
  %25 = load i32, i32* %8, align 4
  %26 = call i32 %22(%struct.fat_entry.0* %24, i32 %25)
  %27 = load i32, i32* %9, align 4
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %29, label %42

29:                                               ; preds = %4
  %30 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %31 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %30, i32 0, i32 1
  %32 = load i32, i32* %31, align 4
  %33 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %34 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = call i32 @fat_sync_bhs(i32 %32, i32 %35)
  store i32 %36, i32* %12, align 4
  %37 = load i32, i32* %12, align 4
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %41

39:                                               ; preds = %29
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %5, align 4
  br label %51

41:                                               ; preds = %29
  br label %42

42:                                               ; preds = %41, %4
  %43 = load %struct.super_block*, %struct.super_block** %10, align 8
  %44 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %45 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %44, i32 0, i32 1
  %46 = load i32, i32* %45, align 4
  %47 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %48 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i32 @fat_mirror_bhs(%struct.super_block* %43, i32 %46, i32 %49)
  store i32 %50, i32* %5, align 4
  br label %51

51:                                               ; preds = %42, %39
  %52 = load i32, i32* %5, align 4
  ret i32 %52
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @fat_sync_bhs(i32, i32) #1

declare dso_local i32 @fat_mirror_bhs(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
