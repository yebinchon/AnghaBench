; ModuleID = '/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_add_free_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/udf/extr_balloc.c_udf_add_free_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.udf_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i64 }
%struct.logicalVolIntegrityDesc = type { i32* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.super_block*, i64, i32)* @udf_add_free_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @udf_add_free_space(%struct.super_block* %0, i64 %1, i32 %2) #0 {
  %4 = alloca %struct.super_block*, align 8
  %5 = alloca i64, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.udf_sb_info*, align 8
  %8 = alloca %struct.logicalVolIntegrityDesc*, align 8
  store %struct.super_block* %0, %struct.super_block** %4, align 8
  store i64 %1, i64* %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.super_block*, %struct.super_block** %4, align 8
  %10 = call %struct.udf_sb_info* @UDF_SB(%struct.super_block* %9)
  store %struct.udf_sb_info* %10, %struct.udf_sb_info** %7, align 8
  %11 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %12 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %11, i32 0, i32 0
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** %12, align 8
  %14 = icmp ne %struct.TYPE_2__* %13, null
  br i1 %14, label %16, label %15

15:                                               ; preds = %3
  br label %32

16:                                               ; preds = %3
  %17 = load %struct.udf_sb_info*, %struct.udf_sb_info** %7, align 8
  %18 = getelementptr inbounds %struct.udf_sb_info, %struct.udf_sb_info* %17, i32 0, i32 0
  %19 = load %struct.TYPE_2__*, %struct.TYPE_2__** %18, align 8
  %20 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %19, i32 0, i32 0
  %21 = load i64, i64* %20, align 8
  %22 = inttoptr i64 %21 to %struct.logicalVolIntegrityDesc*
  store %struct.logicalVolIntegrityDesc* %22, %struct.logicalVolIntegrityDesc** %8, align 8
  %23 = load %struct.logicalVolIntegrityDesc*, %struct.logicalVolIntegrityDesc** %8, align 8
  %24 = getelementptr inbounds %struct.logicalVolIntegrityDesc, %struct.logicalVolIntegrityDesc* %23, i32 0, i32 0
  %25 = load i32*, i32** %24, align 8
  %26 = load i64, i64* %5, align 8
  %27 = getelementptr inbounds i32, i32* %25, i64 %26
  %28 = load i32, i32* %6, align 4
  %29 = call i32 @le32_add_cpu(i32* %27, i32 %28)
  %30 = load %struct.super_block*, %struct.super_block** %4, align 8
  %31 = call i32 @udf_updated_lvid(%struct.super_block* %30)
  br label %32

32:                                               ; preds = %16, %15
  ret void
}

declare dso_local %struct.udf_sb_info* @UDF_SB(%struct.super_block*) #1

declare dso_local i32 @le32_add_cpu(i32*, i32) #1

declare dso_local i32 @udf_updated_lvid(%struct.super_block*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
