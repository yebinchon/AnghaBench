; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c___ext4_xattr_set_credits.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c___ext4_xattr_set_credits.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i64, i64 }
%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_entry = type { i64 }

@XATTR_SIZE_MAX = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @__ext4_xattr_set_credits(%struct.super_block* %0, %struct.inode* %1, %struct.buffer_head* %2, i64 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.super_block*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_xattr_entry*, align 8
  store %struct.super_block* %0, %struct.super_block** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i64 %3, i64* %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 7, i32* %12, align 4
  %15 = load %struct.super_block*, %struct.super_block** %7, align 8
  %16 = call i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(%struct.super_block* %15)
  %17 = load i32, i32* %12, align 4
  %18 = sext i32 %17 to i64
  %19 = add nsw i64 %18, %16
  %20 = trunc i64 %19 to i32
  store i32 %20, i32* %12, align 4
  %21 = load %struct.inode*, %struct.inode** %8, align 8
  %22 = icmp ne %struct.inode* %21, null
  br i1 %22, label %23, label %35

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = call i64 @ext4_has_inline_data(%struct.inode* %24)
  %26 = icmp ne i64 %25, 0
  br i1 %26, label %27, label %35

27:                                               ; preds = %23
  %28 = load %struct.inode*, %struct.inode** %8, align 8
  %29 = call i64 @ext4_writepage_trans_blocks(%struct.inode* %28)
  %30 = add nsw i64 %29, 1
  %31 = load i32, i32* %12, align 4
  %32 = sext i32 %31 to i64
  %33 = add nsw i64 %32, %30
  %34 = trunc i64 %33 to i32
  store i32 %34, i32* %12, align 4
  br label %35

35:                                               ; preds = %27, %23, %5
  %36 = load %struct.super_block*, %struct.super_block** %7, align 8
  %37 = call i32 @ext4_has_feature_ea_inode(%struct.super_block* %36)
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %41, label %39

39:                                               ; preds = %35
  %40 = load i32, i32* %12, align 4
  store i32 %40, i32* %6, align 4
  br label %107

41:                                               ; preds = %35
  %42 = load i32, i32* %12, align 4
  %43 = add nsw i32 %42, 4
  store i32 %43, i32* %12, align 4
  %44 = load i64, i64* %10, align 8
  %45 = load %struct.super_block*, %struct.super_block** %7, align 8
  %46 = getelementptr inbounds %struct.super_block, %struct.super_block* %45, i32 0, i32 0
  %47 = load i64, i64* %46, align 8
  %48 = add i64 %44, %47
  %49 = sub i64 %48, 1
  %50 = load %struct.super_block*, %struct.super_block** %7, align 8
  %51 = getelementptr inbounds %struct.super_block, %struct.super_block* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = lshr i64 %49, %52
  %54 = trunc i64 %53 to i32
  store i32 %54, i32* %13, align 4
  %55 = load i32, i32* %13, align 4
  %56 = add nsw i32 %55, 1
  store i32 %56, i32* %13, align 4
  %57 = load i32, i32* %13, align 4
  %58 = mul nsw i32 %57, 2
  %59 = load i32, i32* %12, align 4
  %60 = add nsw i32 %59, %58
  store i32 %60, i32* %12, align 4
  %61 = load i32, i32* %13, align 4
  %62 = load i32, i32* %12, align 4
  %63 = add nsw i32 %62, %61
  store i32 %63, i32* %12, align 4
  %64 = load i32, i32* %11, align 4
  %65 = icmp ne i32 %64, 0
  br i1 %65, label %81, label %66

66:                                               ; preds = %41
  %67 = load i32, i32* %12, align 4
  %68 = add nsw i32 %67, 4
  store i32 %68, i32* %12, align 4
  %69 = load i32, i32* @XATTR_SIZE_MAX, align 4
  %70 = load %struct.super_block*, %struct.super_block** %7, align 8
  %71 = getelementptr inbounds %struct.super_block, %struct.super_block* %70, i32 0, i32 1
  %72 = load i64, i64* %71, align 8
  %73 = trunc i64 %72 to i32
  %74 = ashr i32 %69, %73
  store i32 %74, i32* %13, align 4
  %75 = load i32, i32* %13, align 4
  %76 = add nsw i32 %75, 1
  store i32 %76, i32* %13, align 4
  %77 = load i32, i32* %13, align 4
  %78 = mul nsw i32 %77, 2
  %79 = load i32, i32* %12, align 4
  %80 = add nsw i32 %79, %78
  store i32 %80, i32* %12, align 4
  br label %81

81:                                               ; preds = %66, %41
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = icmp ne %struct.buffer_head* %82, null
  br i1 %83, label %84, label %105

84:                                               ; preds = %81
  %85 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %86 = call %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head* %85)
  store %struct.ext4_xattr_entry* %86, %struct.ext4_xattr_entry** %14, align 8
  br label %87

87:                                               ; preds = %101, %84
  %88 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %89 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %88)
  %90 = icmp ne i32 %89, 0
  %91 = xor i1 %90, true
  br i1 %91, label %92, label %104

92:                                               ; preds = %87
  %93 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %94 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %93, i32 0, i32 0
  %95 = load i64, i64* %94, align 8
  %96 = icmp ne i64 %95, 0
  br i1 %96, label %97, label %100

97:                                               ; preds = %92
  %98 = load i32, i32* %12, align 4
  %99 = add nsw i32 %98, 1
  store i32 %99, i32* %12, align 4
  br label %100

100:                                              ; preds = %97, %92
  br label %101

101:                                              ; preds = %100
  %102 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %14, align 8
  %103 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %102)
  store %struct.ext4_xattr_entry* %103, %struct.ext4_xattr_entry** %14, align 8
  br label %87

104:                                              ; preds = %87
  br label %105

105:                                              ; preds = %104, %81
  %106 = load i32, i32* %12, align 4
  store i32 %106, i32* %6, align 4
  br label %107

107:                                              ; preds = %105, %39
  %108 = load i32, i32* %6, align 4
  ret i32 %108
}

declare dso_local i64 @EXT4_MAXQUOTAS_TRANS_BLOCKS(%struct.super_block*) #1

declare dso_local i64 @ext4_has_inline_data(%struct.inode*) #1

declare dso_local i64 @ext4_writepage_trans_blocks(%struct.inode*) #1

declare dso_local i32 @ext4_has_feature_ea_inode(%struct.super_block*) #1

declare dso_local %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
