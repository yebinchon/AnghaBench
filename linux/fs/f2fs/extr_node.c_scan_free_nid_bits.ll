; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_free_nid_bits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_scan_free_nid_bits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i64*, i32, i32*, i32*, i32 }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@FREE_NID = common dso_local global i64 0, align 8
@MAX_FREE_NIDS = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @scan_free_nid_bits to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @scan_free_nid_bits(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_nm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %8 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %7)
  store %struct.f2fs_nm_info* %8, %struct.f2fs_nm_info** %3, align 8
  %9 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %10 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %9, i32 0, i32 2
  %11 = call i32 @down_read(i32* %10)
  store i32 0, i32* %4, align 4
  br label %12

12:                                               ; preds = %79, %1
  %13 = load i32, i32* %4, align 4
  %14 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %15 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %14, i32 0, i32 0
  %16 = load i32, i32* %15, align 8
  %17 = icmp ult i32 %13, %16
  br i1 %17, label %18, label %82

18:                                               ; preds = %12
  %19 = load i32, i32* %4, align 4
  %20 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %21 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %20, i32 0, i32 5
  %22 = load i32, i32* %21, align 8
  %23 = call i32 @test_bit_le(i32 %19, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %18
  br label %79

26:                                               ; preds = %18
  %27 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %28 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %27, i32 0, i32 4
  %29 = load i32*, i32** %28, align 8
  %30 = load i32, i32* %4, align 4
  %31 = zext i32 %30 to i64
  %32 = getelementptr inbounds i32, i32* %29, i64 %31
  %33 = load i32, i32* %32, align 4
  %34 = icmp ne i32 %33, 0
  br i1 %34, label %36, label %35

35:                                               ; preds = %26
  br label %79

36:                                               ; preds = %26
  store i32 0, i32* %5, align 4
  br label %37

37:                                               ; preds = %75, %36
  %38 = load i32, i32* %5, align 4
  %39 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %40 = icmp ult i32 %38, %39
  br i1 %40, label %41, label %78

41:                                               ; preds = %37
  %42 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %43 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %42, i32 0, i32 3
  %44 = load i32*, i32** %43, align 8
  %45 = load i32, i32* %4, align 4
  %46 = zext i32 %45 to i64
  %47 = getelementptr inbounds i32, i32* %44, i64 %46
  %48 = load i32, i32* %47, align 4
  %49 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %50 = load i32, i32* %5, align 4
  %51 = call i32 @find_next_bit_le(i32 %48, i32 %49, i32 %50)
  store i32 %51, i32* %5, align 4
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %54 = icmp uge i32 %52, %53
  br i1 %54, label %55, label %56

55:                                               ; preds = %41
  br label %78

56:                                               ; preds = %41
  %57 = load i32, i32* %4, align 4
  %58 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %59 = mul i32 %57, %58
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %59, %60
  store i32 %61, i32* %6, align 4
  %62 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %63 = load i32, i32* %6, align 4
  %64 = call i32 @add_free_nid(%struct.f2fs_sb_info* %62, i32 %63, i32 1, i32 0)
  %65 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %66 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %65, i32 0, i32 1
  %67 = load i64*, i64** %66, align 8
  %68 = load i64, i64* @FREE_NID, align 8
  %69 = getelementptr inbounds i64, i64* %67, i64 %68
  %70 = load i64, i64* %69, align 8
  %71 = load i64, i64* @MAX_FREE_NIDS, align 8
  %72 = icmp sge i64 %70, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %56
  br label %83

74:                                               ; preds = %56
  br label %75

75:                                               ; preds = %74
  %76 = load i32, i32* %5, align 4
  %77 = add i32 %76, 1
  store i32 %77, i32* %5, align 4
  br label %37

78:                                               ; preds = %55, %37
  br label %79

79:                                               ; preds = %78, %35, %25
  %80 = load i32, i32* %4, align 4
  %81 = add i32 %80, 1
  store i32 %81, i32* %4, align 4
  br label %12

82:                                               ; preds = %12
  br label %83

83:                                               ; preds = %82, %73
  %84 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %85 = call i32 @scan_curseg_cache(%struct.f2fs_sb_info* %84)
  %86 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %87 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %86, i32 0, i32 2
  %88 = call i32 @up_read(i32* %87)
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local i32 @test_bit_le(i32, i32) #1

declare dso_local i32 @find_next_bit_le(i32, i32, i32) #1

declare dso_local i32 @add_free_nid(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @scan_curseg_cache(%struct.f2fs_sb_info*) #1

declare dso_local i32 @up_read(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
