; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat12_ent_bread.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat12_ent_bread.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32, i32, %struct.buffer_head** }
%struct.buffer_head = type { i32 }
%struct.TYPE_2__ = type { i64, i32 }

@KERN_ERR = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [31 x i8] c"FAT read failed (blocknr %llu)\00", align 1
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.super_block*, %struct.fat_entry*, i32, i64)* @fat12_ent_bread to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fat12_ent_bread(%struct.super_block* %0, %struct.fat_entry* %1, i32 %2, i64 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.super_block*, align 8
  %7 = alloca %struct.fat_entry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.buffer_head**, align 8
  store %struct.super_block* %0, %struct.super_block** %6, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i64 %3, i64* %9, align 8
  %11 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %12 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %11, i32 0, i32 2
  %13 = load %struct.buffer_head**, %struct.buffer_head*** %12, align 8
  store %struct.buffer_head** %13, %struct.buffer_head*** %10, align 8
  %14 = load i64, i64* %9, align 8
  %15 = load %struct.super_block*, %struct.super_block** %6, align 8
  %16 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %15)
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %14, %18
  %20 = zext i1 %19 to i32
  %21 = call i32 @WARN_ON(i32 %20)
  %22 = load %struct.super_block*, %struct.super_block** %6, align 8
  %23 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %22)
  %24 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %23, i32 0, i32 1
  %25 = load i32, i32* %24, align 8
  %26 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %27 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %26, i32 0, i32 1
  store i32 %25, i32* %27, align 4
  %28 = load %struct.super_block*, %struct.super_block** %6, align 8
  %29 = load i64, i64* %9, align 8
  %30 = call %struct.buffer_head* @sb_bread(%struct.super_block* %28, i64 %29)
  %31 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %32 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %31, i64 0
  store %struct.buffer_head* %30, %struct.buffer_head** %32, align 8
  %33 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %34 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %33, i64 0
  %35 = load %struct.buffer_head*, %struct.buffer_head** %34, align 8
  %36 = icmp ne %struct.buffer_head* %35, null
  br i1 %36, label %38, label %37

37:                                               ; preds = %4
  br label %73

38:                                               ; preds = %4
  %39 = load i32, i32* %8, align 4
  %40 = add nsw i32 %39, 1
  %41 = load %struct.super_block*, %struct.super_block** %6, align 8
  %42 = getelementptr inbounds %struct.super_block, %struct.super_block* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 4
  %44 = icmp slt i32 %40, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %38
  %46 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %47 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %46, i32 0, i32 0
  store i32 1, i32* %47, align 8
  br label %64

48:                                               ; preds = %38
  %49 = load i64, i64* %9, align 8
  %50 = add nsw i64 %49, 1
  store i64 %50, i64* %9, align 8
  %51 = load %struct.super_block*, %struct.super_block** %6, align 8
  %52 = load i64, i64* %9, align 8
  %53 = call %struct.buffer_head* @sb_bread(%struct.super_block* %51, i64 %52)
  %54 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %55 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %54, i64 1
  store %struct.buffer_head* %53, %struct.buffer_head** %55, align 8
  %56 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %57 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %56, i64 1
  %58 = load %struct.buffer_head*, %struct.buffer_head** %57, align 8
  %59 = icmp ne %struct.buffer_head* %58, null
  br i1 %59, label %61, label %60

60:                                               ; preds = %48
  br label %68

61:                                               ; preds = %48
  %62 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %63 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %62, i32 0, i32 0
  store i32 2, i32* %63, align 8
  br label %64

64:                                               ; preds = %61, %45
  %65 = load %struct.fat_entry*, %struct.fat_entry** %7, align 8
  %66 = load i32, i32* %8, align 4
  %67 = call i32 @fat12_ent_set_ptr(%struct.fat_entry* %65, i32 %66)
  store i32 0, i32* %5, align 4
  br label %81

68:                                               ; preds = %60
  %69 = load %struct.buffer_head**, %struct.buffer_head*** %10, align 8
  %70 = getelementptr inbounds %struct.buffer_head*, %struct.buffer_head** %69, i64 0
  %71 = load %struct.buffer_head*, %struct.buffer_head** %70, align 8
  %72 = call i32 @brelse(%struct.buffer_head* %71)
  br label %73

73:                                               ; preds = %68, %37
  %74 = load %struct.super_block*, %struct.super_block** %6, align 8
  %75 = load i32, i32* @KERN_ERR, align 4
  %76 = load i64, i64* %9, align 8
  %77 = trunc i64 %76 to i32
  %78 = call i32 @fat_msg(%struct.super_block* %74, i32 %75, i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str, i64 0, i64 0), i32 %77)
  %79 = load i32, i32* @EIO, align 4
  %80 = sub nsw i32 0, %79
  store i32 %80, i32* %5, align 4
  br label %81

81:                                               ; preds = %73, %64
  %82 = load i32, i32* %5, align 4
  ret i32 %82
}

declare dso_local i32 @WARN_ON(i32) #1

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local %struct.buffer_head* @sb_bread(%struct.super_block*, i64) #1

declare dso_local i32 @fat12_ent_set_ptr(%struct.fat_entry*, i32) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @fat_msg(%struct.super_block*, i32, i8*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
