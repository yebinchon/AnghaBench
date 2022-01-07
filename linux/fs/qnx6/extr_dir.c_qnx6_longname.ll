; ModuleID = '/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_longname.c'
source_filename = "/home/carl/AnghaBench/linux/fs/qnx6/extr_dir.c_qnx6_longname.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.qnx6_long_filename = type { i32 }
%struct.super_block = type { i32 }
%struct.qnx6_long_dir_entry = type { i32 }
%struct.page = type { i32 }
%struct.qnx6_sb_info = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.qnx6_long_filename* (%struct.super_block*, %struct.qnx6_long_dir_entry*, %struct.page**)* @qnx6_longname to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.qnx6_long_filename* @qnx6_longname(%struct.super_block* %0, %struct.qnx6_long_dir_entry* %1, %struct.page** %2) #0 {
  %4 = alloca %struct.qnx6_long_filename*, align 8
  %5 = alloca %struct.super_block*, align 8
  %6 = alloca %struct.qnx6_long_dir_entry*, align 8
  %7 = alloca %struct.page**, align 8
  %8 = alloca %struct.qnx6_sb_info*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.address_space*, align 8
  %13 = alloca %struct.page*, align 8
  store %struct.super_block* %0, %struct.super_block** %5, align 8
  store %struct.qnx6_long_dir_entry* %1, %struct.qnx6_long_dir_entry** %6, align 8
  store %struct.page** %2, %struct.page*** %7, align 8
  %14 = load %struct.super_block*, %struct.super_block** %5, align 8
  %15 = call %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block* %14)
  store %struct.qnx6_sb_info* %15, %struct.qnx6_sb_info** %8, align 8
  %16 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %17 = load %struct.qnx6_long_dir_entry*, %struct.qnx6_long_dir_entry** %6, align 8
  %18 = getelementptr inbounds %struct.qnx6_long_dir_entry, %struct.qnx6_long_dir_entry* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = call i32 @fs32_to_cpu(%struct.qnx6_sb_info* %16, i32 %19)
  store i32 %20, i32* %9, align 4
  %21 = load i32, i32* %9, align 4
  %22 = load i32, i32* @PAGE_SHIFT, align 4
  %23 = load %struct.super_block*, %struct.super_block** %5, align 8
  %24 = getelementptr inbounds %struct.super_block, %struct.super_block* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sub nsw i32 %22, %25
  %27 = ashr i32 %21, %26
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %9, align 4
  %29 = load %struct.super_block*, %struct.super_block** %5, align 8
  %30 = getelementptr inbounds %struct.super_block, %struct.super_block* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = shl i32 %28, %31
  %33 = load i32, i32* @PAGE_MASK, align 4
  %34 = xor i32 %33, -1
  %35 = and i32 %32, %34
  store i32 %35, i32* %11, align 4
  %36 = load %struct.qnx6_sb_info*, %struct.qnx6_sb_info** %8, align 8
  %37 = getelementptr inbounds %struct.qnx6_sb_info, %struct.qnx6_sb_info* %36, i32 0, i32 0
  %38 = load %struct.TYPE_2__*, %struct.TYPE_2__** %37, align 8
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load %struct.address_space*, %struct.address_space** %39, align 8
  store %struct.address_space* %40, %struct.address_space** %12, align 8
  %41 = load %struct.address_space*, %struct.address_space** %12, align 8
  %42 = load i32, i32* %10, align 4
  %43 = call %struct.page* @read_mapping_page(%struct.address_space* %41, i32 %42, i32* null)
  store %struct.page* %43, %struct.page** %13, align 8
  %44 = load %struct.page*, %struct.page** %13, align 8
  %45 = call i64 @IS_ERR(%struct.page* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %3
  %48 = load %struct.page*, %struct.page** %13, align 8
  %49 = call %struct.qnx6_long_filename* @ERR_CAST(%struct.page* %48)
  store %struct.qnx6_long_filename* %49, %struct.qnx6_long_filename** %4, align 8
  br label %60

50:                                               ; preds = %3
  %51 = load %struct.page*, %struct.page** %13, align 8
  %52 = load %struct.page**, %struct.page*** %7, align 8
  store %struct.page* %51, %struct.page** %52, align 8
  %53 = call i32 @kmap(%struct.page* %51)
  %54 = load %struct.page*, %struct.page** %13, align 8
  %55 = call i32 @page_address(%struct.page* %54)
  %56 = load i32, i32* %11, align 4
  %57 = add nsw i32 %55, %56
  %58 = sext i32 %57 to i64
  %59 = inttoptr i64 %58 to %struct.qnx6_long_filename*
  store %struct.qnx6_long_filename* %59, %struct.qnx6_long_filename** %4, align 8
  br label %60

60:                                               ; preds = %50, %47
  %61 = load %struct.qnx6_long_filename*, %struct.qnx6_long_filename** %4, align 8
  ret %struct.qnx6_long_filename* %61
}

declare dso_local %struct.qnx6_sb_info* @QNX6_SB(%struct.super_block*) #1

declare dso_local i32 @fs32_to_cpu(%struct.qnx6_sb_info*, i32) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local %struct.qnx6_long_filename* @ERR_CAST(%struct.page*) #1

declare dso_local i32 @kmap(%struct.page*) #1

declare dso_local i32 @page_address(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
