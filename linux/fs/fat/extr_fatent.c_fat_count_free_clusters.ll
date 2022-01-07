; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_count_free_clusters.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_count_free_clusters.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64 }
%struct.msdos_sb_info = type { i32, i32, i64, i64, %struct.fatent_operations* }
%struct.fatent_operations = type { i64 (%struct.fat_entry*)* }
%struct.fat_entry = type opaque
%struct.fat_entry.0 = type { i64 }

@FAT_READA_SIZE = common dso_local global i64 0, align 8
@FAT_START_ENT = common dso_local global i32 0, align 4
@FAT_ENT_FREE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_count_free_clusters(%struct.super_block* %0) #0 {
  %2 = alloca %struct.super_block*, align 8
  %3 = alloca %struct.msdos_sb_info*, align 8
  %4 = alloca %struct.fatent_operations*, align 8
  %5 = alloca %struct.fat_entry.0, align 8
  %6 = alloca i64, align 8
  %7 = alloca i64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.super_block* %0, %struct.super_block** %2, align 8
  %12 = load %struct.super_block*, %struct.super_block** %2, align 8
  %13 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %12)
  store %struct.msdos_sb_info* %13, %struct.msdos_sb_info** %3, align 8
  %14 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %15 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %14, i32 0, i32 4
  %16 = load %struct.fatent_operations*, %struct.fatent_operations** %15, align 8
  store %struct.fatent_operations* %16, %struct.fatent_operations** %4, align 8
  store i32 0, i32* %9, align 4
  %17 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %18 = call i32 @lock_fat(%struct.msdos_sb_info* %17)
  %19 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %20 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 8
  %22 = icmp ne i32 %21, -1
  br i1 %22, label %23, label %29

23:                                               ; preds = %1
  %24 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %25 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 4
  %27 = icmp ne i32 %26, 0
  br i1 %27, label %28, label %29

28:                                               ; preds = %23
  br label %99

29:                                               ; preds = %23, %1
  %30 = load i64, i64* @FAT_READA_SIZE, align 8
  %31 = load %struct.super_block*, %struct.super_block** %2, align 8
  %32 = getelementptr inbounds %struct.super_block, %struct.super_block* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  %34 = lshr i64 %30, %33
  store i64 %34, i64* %6, align 8
  %35 = load i64, i64* %6, align 8
  %36 = sub i64 %35, 1
  store i64 %36, i64* %7, align 8
  store i64 0, i64* %8, align 8
  store i32 0, i32* %10, align 4
  %37 = call i32 @fatent_init(%struct.fat_entry.0* %5)
  %38 = load i32, i32* @FAT_START_ENT, align 4
  %39 = call i32 @fatent_set_entry(%struct.fat_entry.0* %5, i32 %38)
  br label %40

40:                                               ; preds = %88, %29
  %41 = getelementptr inbounds %struct.fat_entry.0, %struct.fat_entry.0* %5, i32 0, i32 0
  %42 = load i64, i64* %41, align 8
  %43 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %44 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %43, i32 0, i32 2
  %45 = load i64, i64* %44, align 8
  %46 = icmp slt i64 %42, %45
  br i1 %46, label %47, label %90

47:                                               ; preds = %40
  %48 = load i64, i64* %8, align 8
  %49 = load i64, i64* %7, align 8
  %50 = and i64 %48, %49
  %51 = icmp eq i64 %50, 0
  br i1 %51, label %52, label %63

52:                                               ; preds = %47
  %53 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %53, i32 0, i32 3
  %55 = load i64, i64* %54, align 8
  %56 = load i64, i64* %8, align 8
  %57 = sub i64 %55, %56
  store i64 %57, i64* %11, align 8
  %58 = load %struct.super_block*, %struct.super_block** %2, align 8
  %59 = load i64, i64* %6, align 8
  %60 = load i64, i64* %11, align 8
  %61 = call i32 @min(i64 %59, i64 %60)
  %62 = call i32 @fat_ent_reada(%struct.super_block* %58, %struct.fat_entry.0* %5, i32 %61)
  br label %63

63:                                               ; preds = %52, %47
  %64 = load i64, i64* %8, align 8
  %65 = add i64 %64, 1
  store i64 %65, i64* %8, align 8
  %66 = load %struct.super_block*, %struct.super_block** %2, align 8
  %67 = call i32 @fat_ent_read_block(%struct.super_block* %66, %struct.fat_entry.0* %5)
  store i32 %67, i32* %9, align 4
  %68 = load i32, i32* %9, align 4
  %69 = icmp ne i32 %68, 0
  br i1 %69, label %70, label %71

70:                                               ; preds = %63
  br label %99

71:                                               ; preds = %63
  br label %72

72:                                               ; preds = %84, %71
  %73 = load %struct.fatent_operations*, %struct.fatent_operations** %4, align 8
  %74 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %73, i32 0, i32 0
  %75 = load i64 (%struct.fat_entry*)*, i64 (%struct.fat_entry*)** %74, align 8
  %76 = bitcast %struct.fat_entry.0* %5 to %struct.fat_entry*
  %77 = call i64 %75(%struct.fat_entry* %76)
  %78 = load i64, i64* @FAT_ENT_FREE, align 8
  %79 = icmp eq i64 %77, %78
  br i1 %79, label %80, label %83

80:                                               ; preds = %72
  %81 = load i32, i32* %10, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %10, align 4
  br label %83

83:                                               ; preds = %80, %72
  br label %84

84:                                               ; preds = %83
  %85 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %86 = call i64 @fat_ent_next(%struct.msdos_sb_info* %85, %struct.fat_entry.0* %5)
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %72, label %88

88:                                               ; preds = %84
  %89 = call i32 (...) @cond_resched()
  br label %40

90:                                               ; preds = %40
  %91 = load i32, i32* %10, align 4
  %92 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %93 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %92, i32 0, i32 0
  store i32 %91, i32* %93, align 8
  %94 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %95 = getelementptr inbounds %struct.msdos_sb_info, %struct.msdos_sb_info* %94, i32 0, i32 1
  store i32 1, i32* %95, align 4
  %96 = load %struct.super_block*, %struct.super_block** %2, align 8
  %97 = call i32 @mark_fsinfo_dirty(%struct.super_block* %96)
  %98 = call i32 @fatent_brelse(%struct.fat_entry.0* %5)
  br label %99

99:                                               ; preds = %90, %70, %28
  %100 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %3, align 8
  %101 = call i32 @unlock_fat(%struct.msdos_sb_info* %100)
  %102 = load i32, i32* %9, align 4
  ret i32 %102
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @lock_fat(%struct.msdos_sb_info*) #1

declare dso_local i32 @fatent_init(%struct.fat_entry.0*) #1

declare dso_local i32 @fatent_set_entry(%struct.fat_entry.0*, i32) #1

declare dso_local i32 @fat_ent_reada(%struct.super_block*, %struct.fat_entry.0*, i32) #1

declare dso_local i32 @min(i64, i64) #1

declare dso_local i32 @fat_ent_read_block(%struct.super_block*, %struct.fat_entry.0*) #1

declare dso_local i64 @fat_ent_next(%struct.msdos_sb_info*, %struct.fat_entry.0*) #1

declare dso_local i32 @cond_resched(...) #1

declare dso_local i32 @mark_fsinfo_dirty(%struct.super_block*) #1

declare dso_local i32 @fatent_brelse(%struct.fat_entry.0*) #1

declare dso_local i32 @unlock_fat(%struct.msdos_sb_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
