; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_update_ptr.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_update_ptr.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32, %struct.buffer_head** }
%struct.buffer_head = type { i64 }
%struct.msdos_sb_info = type { %struct.fatent_operations* }
%struct.fatent_operations = type { i32 (%struct.fat_entry.0*, i32)* }
%struct.fat_entry.0 = type opaque

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_entry*, i32, i64)* @fat_ent_update_ptr to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat_ent_update_ptr(%struct.super_block* %0, %struct.fat_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.msdos_sb_info*, align 8
  %11 = alloca %struct.fatent_operations*, align 8
  %12 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %13 = load %struct.super_block*, %struct.super_block** %6, align 8
  %14 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %13)
  store %struct.msdos_sb_info* %14, %struct.msdos_sb_info** %10, align 8
  %15 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %16 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %15, i32 0, i32 0
  %17 = load %struct.fatent_operations*, %struct.fatent_operations** %16, align 8
  store %struct.fatent_operations* %17, %struct.fatent_operations** %11, align 8
  %18 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %19 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %18, i32 0, i32 1
  %20 = load %struct.buffer_head**, %struct.buffer_head*** %19, align 8
  store %struct.buffer_head** %20, %struct.buffer_head*** %12, align 8
  %21 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %22 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 8
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %25, label %33

25:                                               ; preds = %4
  %26 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %27 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %26, i64 0
  %28 = load %struct.buffer_head*, %struct.buffer_head** %27, align 8
  %29 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %28, i32 0, i32 0
  %30 = load i64, i64* %29, align 8
  %31 = load i64, i64* %9, align 8
  %32 = icmp ne i64 %30, %31
  br i1 %32, label %33, label %34

33:                                               ; preds = %25, %4
  store i32 0, i32* %5, align 4
  br label %84

34:                                               ; preds = %25
  %35 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %36 = call i64 @is_fat12(%struct.msdos_sb_info* %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %38, label %76

38:                                               ; preds = %34
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %58

45:                                               ; preds = %38
  %46 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %47 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %46, i32 0, i32 0
  %48 = load i32, i32* %47, align 8
  %49 = icmp eq i32 %48, 2
  br i1 %49, label %50, label %57

50:                                               ; preds = %45
  %51 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %52 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %51, i64 1
  %53 = load %struct.buffer_head*, %struct.buffer_head** %52, align 8
  %54 = call i32 @brelse(%struct.buffer_head* %53)
  %55 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %56 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %55, i32 0, i32 0
  store i32 1, i32* %56, align 8
  br label %57

57:                                               ; preds = %50, %45
  br label %75

58:                                               ; preds = %38
  %59 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %60 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = icmp ne i32 %61, 2
  br i1 %62, label %63, label %64

63:                                               ; preds = %58
  store i32 0, i32* %5, align 4
  br label %84

64:                                               ; preds = %58
  %65 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  %66 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %65, i64 1
  %67 = load %struct.buffer_head*, %struct.buffer_head** %66, align 8
  %68 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %67, i32 0, i32 0
  %69 = load i64, i64* %68, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  %72 = icmp ne i64 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %64
  store i32 0, i32* %5, align 4
  br label %84

74:                                               ; preds = %64
  br label %75

75:                                               ; preds = %74, %57
  br label %76

76:                                               ; preds = %75, %34
  %77 = load %struct.fatent_operations*, %struct.fatent_operations** %11, align 8
  %78 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %77, i32 0, i32 0
  %79 = load i32 (%struct.fat_entry.0*, i32)*, i32 (%struct.fat_entry.0*, i32)** %78, align 8
  %80 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %81 = bitcast %struct.fat_entry* %80 to %struct.fat_entry.0*
  %82 = load i32, i32* %8, align 4
  %83 = call i32 %79(%struct.fat_entry.0* %81, i32 %82)
  store i32 1, i32* %5, align 4
  br label %84

84:                                               ; preds = %76, %73, %63, %33
  %85 = load i32, i32* %5, align 4
  ret i32 %85
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i64 @is_fat12(%struct.msdos_sb_info*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
