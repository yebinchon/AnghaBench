; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_reada.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_fatent.c_fat_ent_reada.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.fat_entry = type { i32 }
%struct.fatent_operations = type { i32 (%struct.super_block*, i32, i32*, i64*)* }
%struct.TYPE_2__ = type { %struct.fatent_operations* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, %struct.fat_entry*, i64)* @fat_ent_reada to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @fat_ent_reada(%struct.super_block* %0, %struct.fat_entry* %1, i64 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca %struct.fat_entry*, align 8
  %6 = alloca i64, align 8
  %7 = alloca %struct.fatent_operations*, align 8
  %8 = alloca i64, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store %struct.fat_entry* %1, %struct.fat_entry** %5, align 8
  store i64 %2, i64* %6, align 8
  %11 = load %struct.super_block*, %struct.super_block** %4, align 8
  %12 = call %struct.TYPE_2__* @MSDOS_SB(%struct.super_block* %11)
  %13 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %12, i32 0, i32 0
  %14 = load %struct.fatent_operations*, %struct.fatent_operations** %13, align 8
  store %struct.fatent_operations* %14, %struct.fatent_operations** %7, align 8
  %15 = load %struct.fatent_operations*, %struct.fatent_operations** %7, align 8
  %16 = getelementptr inbounds %struct.fatent_operations, %struct.fatent_operations* %15, i32 0, i32 0
  %17 = load i32 (%struct.super_block*, i32, i32*, i64*)*, i32 (%struct.super_block*, i32, i32*, i64*)** %16, align 8
  %18 = load %struct.super_block*, %struct.super_block** %4, align 8
  %19 = load %struct.fat_entry*, %struct.fat_entry** %5, align 8
  %20 = getelementptr inbounds %struct.fat_entry, %struct.fat_entry* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = call i32 %17(%struct.super_block* %18, i32 %21, i32* %10, i64* %8)
  store i32 0, i32* %9, align 4
  br label %23

23:                                               ; preds = %35, %3
  %24 = load i32, i32* %9, align 4
  %25 = sext i32 %24 to i64
  %26 = load i64, i64* %6, align 8
  %27 = icmp ult i64 %25, %26
  br i1 %27, label %28, label %38

28:                                               ; preds = %23
  %29 = load %struct.super_block*, %struct.super_block** %4, align 8
  %30 = load i64, i64* %8, align 8
  %31 = load i32, i32* %9, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %30, %32
  %34 = call i32 @sb_breadahead(%struct.super_block* %29, i64 %33)
  br label %35

35:                                               ; preds = %28
  %36 = load i32, i32* %9, align 4
  %37 = add nsw i32 %36, 1
  store i32 %37, i32* %9, align 4
  br label %23

38:                                               ; preds = %23
  ret void
}

declare dso_local %struct.TYPE_2__* @MSDOS_SB(%struct.super_block*) #1

declare dso_local i32 @sb_breadahead(%struct.super_block*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
