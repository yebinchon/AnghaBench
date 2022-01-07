; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_write_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_write_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_xattr_entry = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_inode = type { i64 }
%struct.TYPE_2__ = type { i32, i64 }

@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*, %struct.ext4_iloc*, i8*, i64, i32)* @ext4_write_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_write_inline_data(%struct.inode* %0, %struct.ext4_iloc* %1, i8* %2, i64 %3, i32 %4) #0 {
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.ext4_iloc*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i32, align 4
  %11 = alloca %struct.ext4_xattr_entry*, align 8
  %12 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %13 = alloca %struct.ext4_inode*, align 8
  %14 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %7, align 8
  store i8* %2, i8** %8, align 8
  store i64 %3, i64* %9, align 8
  store i32 %4, i32* %10, align 4
  store i32 0, i32* %14, align 4
  %15 = load %struct.inode*, %struct.inode** %6, align 8
  %16 = getelementptr inbounds %struct.inode, %struct.inode* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = call i32 @EXT4_SB(i32 %17)
  %19 = call i32 @ext4_forced_shutdown(i32 %18)
  %20 = call i64 @unlikely(i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %23

22:                                               ; preds = %5
  br label %122

23:                                               ; preds = %5
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ne i32 %27, 0
  %29 = xor i1 %28, true
  %30 = zext i1 %29 to i32
  %31 = call i32 @BUG_ON(i32 %30)
  %32 = load i64, i64* %9, align 8
  %33 = load i32, i32* %10, align 4
  %34 = zext i32 %33 to i64
  %35 = add nsw i64 %32, %34
  %36 = load %struct.inode*, %struct.inode** %6, align 8
  %37 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %36)
  %38 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %37, i32 0, i32 1
  %39 = load i64, i64* %38, align 8
  %40 = icmp sgt i64 %35, %39
  %41 = zext i1 %40 to i32
  %42 = call i32 @BUG_ON(i32 %41)
  %43 = load %struct.ext4_iloc*, %struct.ext4_iloc** %7, align 8
  %44 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %43)
  store %struct.ext4_inode* %44, %struct.ext4_inode** %13, align 8
  %45 = load i64, i64* %9, align 8
  %46 = load i8*, i8** %8, align 8
  %47 = getelementptr i8, i8* %46, i64 %45
  store i8* %47, i8** %8, align 8
  %48 = load i64, i64* %9, align 8
  %49 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %50 = icmp slt i64 %48, %49
  br i1 %50, label %51, label %88

51:                                               ; preds = %23
  %52 = load i64, i64* %9, align 8
  %53 = load i32, i32* %10, align 4
  %54 = zext i32 %53 to i64
  %55 = add nsw i64 %52, %54
  %56 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %57 = icmp sgt i64 %55, %56
  br i1 %57, label %58, label %62

58:                                               ; preds = %51
  %59 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %60 = load i64, i64* %9, align 8
  %61 = sub nsw i64 %59, %60
  br label %65

62:                                               ; preds = %51
  %63 = load i32, i32* %10, align 4
  %64 = zext i32 %63 to i64
  br label %65

65:                                               ; preds = %62, %58
  %66 = phi i64 [ %61, %58 ], [ %64, %62 ]
  %67 = trunc i64 %66 to i32
  store i32 %67, i32* %14, align 4
  %68 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %69 = getelementptr inbounds %struct.ext4_inode, %struct.ext4_inode* %68, i32 0, i32 0
  %70 = load i64, i64* %69, align 8
  %71 = inttoptr i64 %70 to i8*
  %72 = load i64, i64* %9, align 8
  %73 = getelementptr i8, i8* %71, i64 %72
  %74 = load i8*, i8** %8, align 8
  %75 = load i32, i32* %14, align 4
  %76 = call i32 @memcpy(i8* %73, i8* %74, i32 %75)
  %77 = load i32, i32* %14, align 4
  %78 = load i32, i32* %10, align 4
  %79 = sub i32 %78, %77
  store i32 %79, i32* %10, align 4
  %80 = load i32, i32* %14, align 4
  %81 = load i8*, i8** %8, align 8
  %82 = sext i32 %80 to i64
  %83 = getelementptr i8, i8* %81, i64 %82
  store i8* %83, i8** %8, align 8
  %84 = load i32, i32* %14, align 4
  %85 = sext i32 %84 to i64
  %86 = load i64, i64* %9, align 8
  %87 = add nsw i64 %86, %85
  store i64 %87, i64* %9, align 8
  br label %88

88:                                               ; preds = %65, %23
  %89 = load i32, i32* %10, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %92, label %91

91:                                               ; preds = %88
  br label %122

92:                                               ; preds = %88
  %93 = load i64, i64* @EXT4_MIN_INLINE_DATA_SIZE, align 8
  %94 = load i64, i64* %9, align 8
  %95 = sub nsw i64 %94, %93
  store i64 %95, i64* %9, align 8
  %96 = load %struct.inode*, %struct.inode** %6, align 8
  %97 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %98 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %96, %struct.ext4_inode* %97)
  store %struct.ext4_xattr_ibody_header* %98, %struct.ext4_xattr_ibody_header** %12, align 8
  %99 = load %struct.ext4_inode*, %struct.ext4_inode** %13, align 8
  %100 = bitcast %struct.ext4_inode* %99 to i8*
  %101 = load %struct.inode*, %struct.inode** %6, align 8
  %102 = call %struct.TYPE_2__* @EXT4_I(%struct.inode* %101)
  %103 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %102, i32 0, i32 0
  %104 = load i32, i32* %103, align 8
  %105 = sext i32 %104 to i64
  %106 = getelementptr i8, i8* %100, i64 %105
  %107 = bitcast i8* %106 to %struct.ext4_xattr_entry*
  store %struct.ext4_xattr_entry* %107, %struct.ext4_xattr_entry** %11, align 8
  %108 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %12, align 8
  %109 = call i64 @IFIRST(%struct.ext4_xattr_ibody_header* %108)
  %110 = inttoptr i64 %109 to i8*
  %111 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %11, align 8
  %112 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %111, i32 0, i32 0
  %113 = load i32, i32* %112, align 4
  %114 = call i32 @le16_to_cpu(i32 %113)
  %115 = sext i32 %114 to i64
  %116 = getelementptr i8, i8* %110, i64 %115
  %117 = load i64, i64* %9, align 8
  %118 = getelementptr i8, i8* %116, i64 %117
  %119 = load i8*, i8** %8, align 8
  %120 = load i32, i32* %10, align 4
  %121 = call i32 @memcpy(i8* %118, i8* %119, i32 %120)
  br label %122

122:                                              ; preds = %92, %91, %22
  ret void
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_forced_shutdown(i32) #1

declare dso_local i32 @EXT4_SB(i32) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local %struct.TYPE_2__* @EXT4_I(%struct.inode*) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local i64 @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @le16_to_cpu(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
