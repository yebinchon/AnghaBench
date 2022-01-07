; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___update_nat_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___update_nat_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.page = type { i32 }
%struct.f2fs_nm_info = type { i32, i32 }
%struct.f2fs_nat_block = type { %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32 }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@NULL_ADDR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, %struct.page*)* @__update_nat_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__update_nat_bits(%struct.f2fs_sb_info* %0, i32 %1, %struct.page* %2) #0 {
  %4 = alloca %struct.f2fs_sb_info*, align 8
  %5 = alloca i32, align 4
  %6 = alloca %struct.page*, align 8
  %7 = alloca %struct.f2fs_nm_info*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_nat_block*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %4, align 8
  store i32 %1, i32* %5, align 4
  store %struct.page* %2, %struct.page** %6, align 8
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %13 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %12)
  store %struct.f2fs_nm_info* %13, %struct.f2fs_nm_info** %7, align 8
  %14 = load i32, i32* %5, align 4
  %15 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %16 = sdiv i32 %14, %15
  store i32 %16, i32* %8, align 4
  %17 = load %struct.page*, %struct.page** %6, align 8
  %18 = call %struct.f2fs_nat_block* @page_address(%struct.page* %17)
  store %struct.f2fs_nat_block* %18, %struct.f2fs_nat_block** %9, align 8
  store i32 0, i32* %10, align 4
  store i32 0, i32* %11, align 4
  %19 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %4, align 8
  %20 = call i32 @enabled_nat_bits(%struct.f2fs_sb_info* %19, i32* null)
  %21 = icmp ne i32 %20, 0
  br i1 %21, label %23, label %22

22:                                               ; preds = %3
  br label %86

23:                                               ; preds = %3
  %24 = load i32, i32* %8, align 4
  %25 = icmp eq i32 %24, 0
  br i1 %25, label %26, label %27

26:                                               ; preds = %23
  store i32 1, i32* %10, align 4
  store i32 1, i32* %11, align 4
  br label %27

27:                                               ; preds = %26, %23
  br label %28

28:                                               ; preds = %48, %27
  %29 = load i32, i32* %11, align 4
  %30 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %31 = icmp slt i32 %29, %30
  br i1 %31, label %32, label %51

32:                                               ; preds = %28
  %33 = load %struct.f2fs_nat_block*, %struct.f2fs_nat_block** %9, align 8
  %34 = getelementptr inbounds %struct.f2fs_nat_block, %struct.f2fs_nat_block* %33, i32 0, i32 0
  %35 = load %struct.TYPE_2__*, %struct.TYPE_2__** %34, align 8
  %36 = load i32, i32* %11, align 4
  %37 = sext i32 %36 to i64
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %35, i64 %37
  %39 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = call i64 @le32_to_cpu(i32 %40)
  %42 = load i64, i64* @NULL_ADDR, align 8
  %43 = icmp ne i64 %41, %42
  br i1 %43, label %44, label %47

44:                                               ; preds = %32
  %45 = load i32, i32* %10, align 4
  %46 = add nsw i32 %45, 1
  store i32 %46, i32* %10, align 4
  br label %47

47:                                               ; preds = %44, %32
  br label %48

48:                                               ; preds = %47
  %49 = load i32, i32* %11, align 4
  %50 = add nsw i32 %49, 1
  store i32 %50, i32* %11, align 4
  br label %28

51:                                               ; preds = %28
  %52 = load i32, i32* %10, align 4
  %53 = icmp eq i32 %52, 0
  br i1 %53, label %54, label %65

54:                                               ; preds = %51
  %55 = load i32, i32* %8, align 4
  %56 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %57 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @__set_bit_le(i32 %55, i32 %58)
  %60 = load i32, i32* %8, align 4
  %61 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %62 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 4
  %64 = call i32 @__clear_bit_le(i32 %60, i32 %63)
  br label %86

65:                                               ; preds = %51
  %66 = load i32, i32* %8, align 4
  %67 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %68 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i32 @__clear_bit_le(i32 %66, i32 %69)
  %71 = load i32, i32* %10, align 4
  %72 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %73 = icmp eq i32 %71, %72
  br i1 %73, label %74, label %80

74:                                               ; preds = %65
  %75 = load i32, i32* %8, align 4
  %76 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %77 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = call i32 @__set_bit_le(i32 %75, i32 %78)
  br label %86

80:                                               ; preds = %65
  %81 = load i32, i32* %8, align 4
  %82 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %7, align 8
  %83 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i32 @__clear_bit_le(i32 %81, i32 %84)
  br label %86

86:                                               ; preds = %22, %54, %80, %74
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_nat_block* @page_address(%struct.page*) #1

declare dso_local i32 @enabled_nat_bits(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i32 @__set_bit_le(i32, i32) #1

declare dso_local i32 @__clear_bit_le(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
