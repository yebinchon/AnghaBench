; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_nat_page.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_nat_page.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_nm_info = type { i32, i32, i32 }
%struct.f2fs_nat_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@NEW_ADDR = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*, %struct.page*, i32)* @scan_nat_page to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @scan_nat_page(%struct.f2fs_sb_info* %0, %struct.page* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca %struct.page*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.f2fs_nm_info*, align 8
  %9 = alloca %struct.f2fs_nat_block*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store %struct.page* %1, %struct.page** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %14 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %13)
  store %struct.f2fs_nm_info* %14, %struct.f2fs_nm_info** %8, align 8
  %15 = load %struct.page*, %struct.page** %6, align 8
  %16 = call %struct.f2fs_nat_block* @page_address(%struct.page* %15)
  store %struct.f2fs_nat_block* %16, %struct.f2fs_nat_block** %9, align 8
  %17 = load i32, i32* %7, align 4
  %18 = call i32 @NAT_BLOCK_OFFSET(i32 %17)
  store i32 %18, i32* %11, align 4
  %19 = load i32, i32* %11, align 4
  %20 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %21 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %20, i32 0, i32 2
  %22 = load i32, i32* %21, align 4
  %23 = call i32 @__set_bit_le(i32 %19, i32 %22)
  %24 = load i32, i32* %7, align 4
  %25 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %26 = srem i32 %24, %25
  store i32 %26, i32* %12, align 4
  br label %27

27:                                               ; preds = %78, %3
  %28 = load i32, i32* %12, align 4
  %29 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %30 = icmp slt i32 %28, %29
  br i1 %30, label %31, label %83

31:                                               ; preds = %27
  %32 = load i32, i32* %7, align 4
  %33 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %8, align 8
  %34 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp sge i32 %32, %35
  %37 = zext i1 %36 to i32
  %38 = call i64 @unlikely(i32 %37)
  %39 = icmp ne i64 %38, 0
  br i1 %39, label %40, label %41

40:                                               ; preds = %31
  br label %83

41:                                               ; preds = %31
  %42 = load %struct.f2fs_nat_block*, %struct.f2fs_nat_block** %9, align 8
  %43 = getelementptr inbounds %struct.f2fs_nat_block, %struct.f2fs_nat_block* %42, i32 0, i32 0
  %44 = load %struct.TYPE_2__*, %struct.TYPE_2__** %43, align 8
  %45 = load i32, i32* %12, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i64 %46
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 4
  %50 = call i64 @le32_to_cpu(i32 %49)
  store i64 %50, i64* %10, align 8
  %51 = load i64, i64* %10, align 8
  %52 = load i64, i64* @NEW_ADDR, align 8
  %53 = icmp eq i64 %51, %52
  br i1 %53, label %54, label %57

54:                                               ; preds = %41
  %55 = load i32, i32* @EINVAL, align 4
  %56 = sub nsw i32 0, %55
  store i32 %56, i32* %4, align 4
  br label %84

57:                                               ; preds = %41
  %58 = load i64, i64* %10, align 8
  %59 = load i64, i64* @NULL_ADDR, align 8
  %60 = icmp eq i64 %58, %59
  br i1 %60, label %61, label %65

61:                                               ; preds = %57
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %63 = load i32, i32* %7, align 4
  %64 = call i32 @add_free_nid(%struct.f2fs_sb_info* %62, i32 %63, i32 1, i32 1)
  br label %77

65:                                               ; preds = %57
  %66 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %67 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %66)
  %68 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %67, i32 0, i32 1
  %69 = call i32 @spin_lock(i32* %68)
  %70 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %71 = load i32, i32* %7, align 4
  %72 = call i32 @update_free_nid_bitmap(%struct.f2fs_sb_info* %70, i32 %71, i32 0, i32 1)
  %73 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %74 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %73)
  %75 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %74, i32 0, i32 1
  %76 = call i32 @spin_unlock(i32* %75)
  br label %77

77:                                               ; preds = %65, %61
  br label %78

78:                                               ; preds = %77
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, 1
  store i32 %80, i32* %12, align 4
  %81 = load i32, i32* %7, align 4
  %82 = add nsw i32 %81, 1
  store i32 %82, i32* %7, align 4
  br label %27

83:                                               ; preds = %40, %27
  store i32 0, i32* %4, align 4
  br label %84

84:                                               ; preds = %83, %54
  %85 = load i32, i32* %4, align 4
  ret i32 %85
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_nat_block* @page_address(%struct.page*) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local i32 @__set_bit_le(i32, i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @add_free_nid(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_free_nid_bitmap(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
