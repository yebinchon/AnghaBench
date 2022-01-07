; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___get_nat_bitmaps.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_node.c___get_nat_bitmaps.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.f2fs_sb_info = type { i64 }
%struct.f2fs_checkpoint = type { i32 }
%struct.f2fs_nm_info = type { i32, i32, i64, i64, i64 }
%struct.page = type { i32 }

@BITS_PER_BYTE = common dso_local global i32 0, align 4
@F2FS_BLKSIZE_BITS = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@F2FS_BLKSIZE = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [29 x i8] c"Found nat_bits in checkpoint\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.f2fs_sb_info*)* @__get_nat_bitmaps to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @__get_nat_bitmaps(%struct.f2fs_sb_info* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.f2fs_sb_info*, align 8
  %4 = alloca %struct.f2fs_checkpoint*, align 8
  %5 = alloca %struct.f2fs_nm_info*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i64, align 8
  %10 = alloca %struct.page*, align 8
  store %struct.f2fs_sb_info* %0, %struct.f2fs_sb_info** %3, align 8
  %11 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %12 = call %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info* %11)
  store %struct.f2fs_checkpoint* %12, %struct.f2fs_checkpoint** %4, align 8
  %13 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %14 = call %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info* %13)
  store %struct.f2fs_nm_info* %14, %struct.f2fs_nm_info** %5, align 8
  %15 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %16 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 8
  %18 = load i32, i32* @BITS_PER_BYTE, align 4
  %19 = udiv i32 %17, %18
  store i32 %19, i32* %6, align 4
  %20 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %21 = call i32 @cur_cp_version(%struct.f2fs_checkpoint* %20)
  store i32 %21, i32* %8, align 4
  %22 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %23 = call i32 @enabled_nat_bits(%struct.f2fs_sb_info* %22, i32* null)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %26, label %25

25:                                               ; preds = %1
  store i32 0, i32* %2, align 4
  br label %132

26:                                               ; preds = %1
  %27 = load i32, i32* %6, align 4
  %28 = shl i32 %27, 1
  %29 = add i32 %28, 8
  %30 = call i32 @F2FS_BLK_ALIGN(i32 %29)
  %31 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %32 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %31, i32 0, i32 1
  store i32 %30, i32* %32, align 4
  %33 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %34 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %35 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 4
  %37 = load i32, i32* @F2FS_BLKSIZE_BITS, align 4
  %38 = shl i32 %36, %37
  %39 = load i32, i32* @GFP_KERNEL, align 4
  %40 = call i64 @f2fs_kzalloc(%struct.f2fs_sb_info* %33, i32 %38, i32 %39)
  %41 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %42 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %41, i32 0, i32 4
  store i64 %40, i64* %42, align 8
  %43 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %44 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %43, i32 0, i32 4
  %45 = load i64, i64* %44, align 8
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %50, label %47

47:                                               ; preds = %26
  %48 = load i32, i32* @ENOMEM, align 4
  %49 = sub nsw i32 0, %48
  store i32 %49, i32* %2, align 4
  br label %132

50:                                               ; preds = %26
  %51 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %52 = call i64 @__start_cp_addr(%struct.f2fs_sb_info* %51)
  %53 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %54 = getelementptr inbounds %struct.f2fs_sb_info, %struct.f2fs_sb_info* %53, i32 0, i32 0
  %55 = load i64, i64* %54, align 8
  %56 = add nsw i64 %52, %55
  %57 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %58 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 4
  %60 = zext i32 %59 to i64
  %61 = sub nsw i64 %56, %60
  store i64 %61, i64* %9, align 8
  store i32 0, i32* %7, align 4
  br label %62

62:                                               ; preds = %95, %50
  %63 = load i32, i32* %7, align 4
  %64 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %65 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %64, i32 0, i32 1
  %66 = load i32, i32* %65, align 4
  %67 = icmp ult i32 %63, %66
  br i1 %67, label %68, label %98

68:                                               ; preds = %62
  %69 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %70 = load i64, i64* %9, align 8
  %71 = add nsw i64 %70, 1
  store i64 %71, i64* %9, align 8
  %72 = trunc i64 %70 to i32
  %73 = call %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info* %69, i32 %72)
  store %struct.page* %73, %struct.page** %10, align 8
  %74 = load %struct.page*, %struct.page** %10, align 8
  %75 = call i64 @IS_ERR(%struct.page* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %80

77:                                               ; preds = %68
  %78 = load %struct.page*, %struct.page** %10, align 8
  %79 = call i32 @PTR_ERR(%struct.page* %78)
  store i32 %79, i32* %2, align 4
  br label %132

80:                                               ; preds = %68
  %81 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %82 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %81, i32 0, i32 4
  %83 = load i64, i64* %82, align 8
  %84 = load i32, i32* %7, align 4
  %85 = load i32, i32* @F2FS_BLKSIZE_BITS, align 4
  %86 = shl i32 %84, %85
  %87 = zext i32 %86 to i64
  %88 = add nsw i64 %83, %87
  %89 = load %struct.page*, %struct.page** %10, align 8
  %90 = call i32 @page_address(%struct.page* %89)
  %91 = load i32, i32* @F2FS_BLKSIZE, align 4
  %92 = call i32 @memcpy(i64 %88, i32 %90, i32 %91)
  %93 = load %struct.page*, %struct.page** %10, align 8
  %94 = call i32 @f2fs_put_page(%struct.page* %93, i32 1)
  br label %95

95:                                               ; preds = %80
  %96 = load i32, i32* %7, align 4
  %97 = add i32 %96, 1
  store i32 %97, i32* %7, align 4
  br label %62

98:                                               ; preds = %62
  %99 = load %struct.f2fs_checkpoint*, %struct.f2fs_checkpoint** %4, align 8
  %100 = call i32 @cur_cp_crc(%struct.f2fs_checkpoint* %99)
  %101 = shl i32 %100, 32
  %102 = load i32, i32* %8, align 4
  %103 = or i32 %102, %101
  store i32 %103, i32* %8, align 4
  %104 = load i32, i32* %8, align 4
  %105 = call i64 @cpu_to_le64(i32 %104)
  %106 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %107 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %106, i32 0, i32 4
  %108 = load i64, i64* %107, align 8
  %109 = inttoptr i64 %108 to i64*
  %110 = load i64, i64* %109, align 8
  %111 = icmp ne i64 %105, %110
  br i1 %111, label %112, label %115

112:                                              ; preds = %98
  %113 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %114 = call i32 @disable_nat_bits(%struct.f2fs_sb_info* %113, i32 1)
  store i32 0, i32* %2, align 4
  br label %132

115:                                              ; preds = %98
  %116 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %117 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %116, i32 0, i32 4
  %118 = load i64, i64* %117, align 8
  %119 = add nsw i64 %118, 8
  %120 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %121 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %120, i32 0, i32 2
  store i64 %119, i64* %121, align 8
  %122 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %123 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %122, i32 0, i32 2
  %124 = load i64, i64* %123, align 8
  %125 = load i32, i32* %6, align 4
  %126 = zext i32 %125 to i64
  %127 = add nsw i64 %124, %126
  %128 = load %struct.f2fs_nm_info*, %struct.f2fs_nm_info** %5, align 8
  %129 = getelementptr inbounds %struct.f2fs_nm_info, %struct.f2fs_nm_info* %128, i32 0, i32 3
  store i64 %127, i64* %129, align 8
  %130 = load %struct.f2fs_sb_info*, %struct.f2fs_sb_info** %3, align 8
  %131 = call i32 @f2fs_notice(%struct.f2fs_sb_info* %130, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str, i64 0, i64 0))
  store i32 0, i32* %2, align 4
  br label %132

132:                                              ; preds = %115, %112, %77, %47, %25
  %133 = load i32, i32* %2, align 4
  ret i32 %133
}

declare dso_local %struct.f2fs_checkpoint* @F2FS_CKPT(%struct.f2fs_sb_info*) #1

declare dso_local %struct.f2fs_nm_info* @NM_I(%struct.f2fs_sb_info*) #1

declare dso_local i32 @cur_cp_version(%struct.f2fs_checkpoint*) #1

declare dso_local i32 @enabled_nat_bits(%struct.f2fs_sb_info*, i32*) #1

declare dso_local i32 @F2FS_BLK_ALIGN(i32) #1

declare dso_local i64 @f2fs_kzalloc(%struct.f2fs_sb_info*, i32, i32) #1

declare dso_local i64 @__start_cp_addr(%struct.f2fs_sb_info*) #1

declare dso_local %struct.page* @f2fs_get_meta_page(%struct.f2fs_sb_info*, i32) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @memcpy(i64, i32, i32) #1

declare dso_local i32 @page_address(%struct.page*) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local i32 @cur_cp_crc(%struct.f2fs_checkpoint*) #1

declare dso_local i64 @cpu_to_le64(i32) #1

declare dso_local i32 @disable_nat_bits(%struct.f2fs_sb_info*, i32) #1

declare dso_local i32 @f2fs_notice(%struct.f2fs_sb_info*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
