; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_bread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32, i32*, i32 }
%struct.fatent_operations = type { i32 (%struct.fat_entry.0*, i32)* }
%struct.fat_entry.0 = type opaque
%struct.TYPE_2__ = type { i64, i32, %struct.fatent_operations* }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FAT read failed (blocknr %llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_entry*, i32, i64)* @fat_ent_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_ent_bread(%struct.super_block* %0, %struct.fat_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.fatent_operations*, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.super_block*, %struct.super_block** %6, align 8
  %12 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 2
  %14 = load %struct.fatent_operations*, %struct.fatent_operations** %13, align 8
  store %struct.fatent_operations* %14, %struct.fatent_operations** %10, align 8
  %15 = load i64, i64* %9, align 8
  %16 = load %struct.super_block*, %struct.super_block** %6, align 8
  %17 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %16)
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  %19 = load i64, i64* %18, align 8
  %20 = icmp slt i64 %15, %19
  %21 = zext i1 %20 to i32
  %22 = call i32 @WARN_ON(i32 %21)
  %23 = load %struct.super_block*, %struct.super_block** %6, align 8
  %24 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %23)
  %25 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %28 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %27, i32 0, i32 2
  store i32 %26, i32* %28, align 8
  %29 = load %struct.super_block*, %struct.super_block** %6, align 8
  %30 = load i64, i64* %9, align 8
  %31 = call i32 @sb_bread(%struct.super_block* %29, i64 %30)
  %32 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %33 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = getelementptr inbounds i32, i32* %34, i64 0
  store i32 %31, i32* %35, align 4
  %36 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %37 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %36, i32 0, i32 1
  %38 = load i32*, i32** %37, align 8
  %39 = getelementptr inbounds i32, i32* %38, i64 0
  %40 = load i32, i32* %39, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %50, label %42

42:                                               ; preds = %4
  %43 = load %struct.super_block*, %struct.super_block** %6, align 8
  %44 = load i32, i32* @KERN_ERR, align 4
  %45 = load i64, i64* %9, align 8
  %46 = trunc i64 %45 to i32
  %47 = call i32 @fat_msg(%struct.super_block* %43, i32 %44, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %46)
  %48 = load i32, i32* @EIO, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %5, align 4
  br label %60

50:                                               ; preds = %4
  %51 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %52 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %51, i32 0, i32 0
  store i32 1, i32* %52, align 8
  %53 = load %struct.fatent_operations*, %struct.fatent_operations** %10, align 8
  %54 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %53, i32 0, i32 0
  %55 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %54, align 8
  %56 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %57 = bitcast %struct.fat_entry* %56 to %struct.fat_entry.0*
  %58 = load i32, i32* %8, align 4
  %59 = call i32 %55(%struct.fat_entry.0* %57, i32 %58)
  store i32 0, i32* %5, align 4
  br label %60

60:                                               ; preds = %50, %42
  %61 = load i32, i32* %5, align 4
  ret i32 %61
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local i32 @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
