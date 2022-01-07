; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_update_free_nid_bitmap.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c_update_free_nid_bitmap.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i32 }
%struct.f2fs_nm_info = type { i32*, i32*, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.f2fs_sb_info*, i32, i32, i32)* @update_free_nid_bitmap to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @update_free_nid_bitmap(%struct.f2fs_sb_info* %0, i32 %1, i32 %2, i32 %3) #0 {
  %5 = alloca %struct.f2fs_sb_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %struct.f2fs_nm_info*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %5, align 8
  store i32 %1, i32* %6, align 4
  store i32 %2, i32* %7, align 4
  store i32 %3, i32* %8, align 4
  %12 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %5, align 8
  %13 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %12)
  store %struct.f2fs_nm_info* %13, %struct.f2fs_nm_info** %9, align 8
  %14 = load i32, i32* %6, align 4
  %15 = call i32 @NAT_BLOCK_OFFSET(i32 %14)
  store i32 %15, i32* %10, align 4
  %16 = load i32, i32* %6, align 4
  %17 = load i32, i32* %6, align 4
  %18 = call i32 @START_NID(i32 %17)
  %19 = sub i32 %16, %18
  store i32 %19, i32* %11, align 4
  %20 = load i32, i32* %10, align 4
  %21 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %22 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = call i64 @test_bit_le(i32 %20, i32 %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %27, label %26

26:                                               ; preds = %4
  br label %94

27:                                               ; preds = %4
  %28 = load i32, i32* %7, align 4
  %29 = icmp ne i32 %28, 0
  br i1 %29, label %30, label %60

30:                                               ; preds = %27
  %31 = load i32, i32* %11, align 4
  %32 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %33 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %32, i32 0, i32 1
  %34 = load i32*, i32** %33, align 8
  %35 = load i32, i32* %10, align 4
  %36 = zext i32 %35 to i64
  %37 = getelementptr inbounds i32, i32* %34, i64 %36
  %38 = load i32, i32* %37, align 4
  %39 = call i64 @test_bit_le(i32 %31, i32 %38)
  %40 = icmp ne i64 %39, 0
  br i1 %40, label %41, label %42

41:                                               ; preds = %30
  br label %94

42:                                               ; preds = %30
  %43 = load i32, i32* %11, align 4
  %44 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %45 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %44, i32 0, i32 1
  %46 = load i32*, i32** %45, align 8
  %47 = load i32, i32* %10, align 4
  %48 = zext i32 %47 to i64
  %49 = getelementptr inbounds i32, i32* %46, i64 %48
  %50 = load i32, i32* %49, align 4
  %51 = call i32 @__set_bit_le(i32 %43, i32 %50)
  %52 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %53 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %52, i32 0, i32 0
  %54 = load i32*, i32** %53, align 8
  %55 = load i32, i32* %10, align 4
  %56 = zext i32 %55 to i64
  %57 = getelementptr inbounds i32, i32* %54, i64 %56
  %58 = load i32, i32* %57, align 4
  %59 = add nsw i32 %58, 1
  store i32 %59, i32* %57, align 4
  br label %94

60:                                               ; preds = %27
  %61 = load i32, i32* %11, align 4
  %62 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %63 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %62, i32 0, i32 1
  %64 = load i32*, i32** %63, align 8
  %65 = load i32, i32* %10, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  %69 = call i64 @test_bit_le(i32 %61, i32 %68)
  %70 = icmp ne i64 %69, 0
  br i1 %70, label %72, label %71

71:                                               ; preds = %60
  br label %94

72:                                               ; preds = %60
  %73 = load i32, i32* %11, align 4
  %74 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %75 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %74, i32 0, i32 1
  %76 = load i32*, i32** %75, align 8
  %77 = load i32, i32* %10, align 4
  %78 = zext i32 %77 to i64
  %79 = getelementptr inbounds i32, i32* %76, i64 %78
  %80 = load i32, i32* %79, align 4
  %81 = call i32 @__clear_bit_le(i32 %73, i32 %80)
  %82 = load i32, i32* %8, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %93, label %84

84:                                               ; preds = %72
  %85 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %9, align 8
  %86 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %85, i32 0, i32 0
  %87 = load i32*, i32** %86, align 8
  %88 = load i32, i32* %10, align 4
  %89 = zext i32 %88 to i64
  %90 = getelementptr inbounds i32, i32* %87, i64 %89
  %91 = load i32, i32* %90, align 4
  %92 = add nsw i32 %91, -1
  store i32 %92, i32* %90, align 4
  br label %93

93:                                               ; preds = %84, %72
  br label %94

94:                                               ; preds = %26, %41, %71, %93, %42
  ret void
}

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @NAT_BLOCK_OFFSET(i32) #1

declare dso_local i32 @START_NID(i32) #1

declare dso_local i64 @test_bit_le(i32, i32) #1

declare dso_local i32 @__set_bit_le(i32, i32) #1

declare dso_local i32 @__clear_bit_le(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
