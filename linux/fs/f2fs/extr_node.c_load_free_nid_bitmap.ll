; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_load_free_nid_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_load_free_nid_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32, i32, i32, i32, i32 }

@NAT_ENTRY_PER_BLOCK = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*)* @load_free_nid_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @load_free_nid_bitmap(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca %struct.f2fs_sb_info*, align 8
  %3 = alloca %struct.f2fs_nm_info*, align 8
  %4 = alloca i32, align 4
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %2, align 8
  %7 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %8 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %7)
  store %struct.f2fs_nm_info* %8, %struct.f2fs_nm_info** %3, align 8
  store i32 0, i32* %4, align 4
  %9 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %10 = call i32 @enabled_nat_bits(%struct.f2fs_sb_info* %9, i32* null)
  %11 = icmp ne i32 %10, 0
  br i1 %11, label %13, label %12

12:                                               ; preds = %1
  br label %101

13:                                               ; preds = %1
  store i32 0, i32* %4, align 4
  br label %14

14:                                               ; preds = %67, %13
  %15 = load i32, i32* %4, align 4
  %16 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %17 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = icmp ult i32 %15, %18
  br i1 %19, label %20, label %70

20:                                               ; preds = %14
  %21 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %22 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %21, i32 0, i32 4
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %25 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %24, i32 0, i32 0
  %26 = load i32, i32* %25, align 4
  %27 = load i32, i32* %4, align 4
  %28 = call i32 @find_next_bit_le(i32 %23, i32 %26, i32 %27)
  store i32 %28, i32* %4, align 4
  %29 = load i32, i32* %4, align 4
  %30 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %31 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 4
  %33 = icmp uge i32 %29, %32
  br i1 %33, label %34, label %35

34:                                               ; preds = %20
  br label %70

35:                                               ; preds = %20
  %36 = load i32, i32* %4, align 4
  %37 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %38 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 4
  %40 = call i32 @__set_bit_le(i32 %36, i32 %39)
  %41 = load i32, i32* %4, align 4
  %42 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %43 = mul i32 %41, %42
  store i32 %43, i32* %5, align 4
  %44 = load i32, i32* %5, align 4
  %45 = load i32, i32* @NAT_ENTRY_PER_BLOCK, align 4
  %46 = add i32 %44, %45
  store i32 %46, i32* %6, align 4
  %47 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %48 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %47)
  %49 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %48, i32 0, i32 3
  %50 = call i32 @spin_lock(i32* %49)
  br label %51

51:                                               ; preds = %59, %35
  %52 = load i32, i32* %5, align 4
  %53 = load i32, i32* %6, align 4
  %54 = icmp ult i32 %52, %53
  br i1 %54, label %55, label %62

55:                                               ; preds = %51
  %56 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %57 = load i32, i32* %5, align 4
  %58 = call i32 @update_free_nid_bitmap(%struct.f2fs_sb_info* %56, i32 %57, i32 1, i32 1)
  br label %59

59:                                               ; preds = %55
  %60 = load i32, i32* %5, align 4
  %61 = add i32 %60, 1
  store i32 %61, i32* %5, align 4
  br label %51

62:                                               ; preds = %51
  %63 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %2, align 8
  %64 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %63)
  %65 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %64, i32 0, i32 3
  %66 = call i32 @spin_unlock(i32* %65)
  br label %67

67:                                               ; preds = %62
  %68 = load i32, i32* %4, align 4
  %69 = add i32 %68, 1
  store i32 %69, i32* %4, align 4
  br label %14

70:                                               ; preds = %34, %14
  store i32 0, i32* %4, align 4
  br label %71

71:                                               ; preds = %98, %70
  %72 = load i32, i32* %4, align 4
  %73 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %74 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %73, i32 0, i32 0
  %75 = load i32, i32* %74, align 4
  %76 = icmp ult i32 %72, %75
  br i1 %76, label %77, label %101

77:                                               ; preds = %71
  %78 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %79 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %78, i32 0, i32 2
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %82 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 4
  %84 = load i32, i32* %4, align 4
  %85 = call i32 @find_next_bit_le(i32 %80, i32 %83, i32 %84)
  store i32 %85, i32* %4, align 4
  %86 = load i32, i32* %4, align 4
  %87 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %88 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %87, i32 0, i32 0
  %89 = load i32, i32* %88, align 4
  %90 = icmp uge i32 %86, %89
  br i1 %90, label %91, label %92

91:                                               ; preds = %77
  br label %101

92:                                               ; preds = %77
  %93 = load i32, i32* %4, align 4
  %94 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %3, align 8
  %95 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %94, i32 0, i32 1
  %96 = load i32, i32* %95, align 4
  %97 = call i32 @__set_bit_le(i32 %93, i32 %96)
  br label %98

98:                                               ; preds = %92
  %99 = load i32, i32* %4, align 4
  %100 = add i32 %99, 1
  store i32 %100, i32* %4, align 4
  br label %71

101:                                              ; preds = %12, %91, %71
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @enabled_nat_bits(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i32 @find_next_bit_le(i32, i32, i32) #1

declare dso_local i32 @__set_bit_le(i32, i32) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @update_free_nid_bitmap(%struct.f2fs_sb_info*, i32, i32, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
