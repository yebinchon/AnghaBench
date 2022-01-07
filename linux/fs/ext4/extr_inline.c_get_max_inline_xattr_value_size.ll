; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_get_max_inline_xattr_value_size.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_get_max_inline_xattr_value_size.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i64, i32, i32 }
%struct.ext4_inode = type { i32 }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32, i32 }

@EXT4_GOOD_OLD_INODE_SIZE = common dso_local global i32 0, align 4
@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@EXT4_XATTR_SYSTEM_DATA = common dso_local global i32 0, align 4
@EXT4_XATTR_ROUND = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.ext4_iloc*)* @get_max_inline_xattr_value_size to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @get_max_inline_xattr_value_size(%struct.inode* %0, %struct.ext4_iloc* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.ext4_iloc*, align 8
  %6 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %7 = alloca %struct.ext4_xattr_entry*, align 8
  %8 = alloca %struct.ext4_inode*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  store %struct.inode* %0, %struct.inode** %4, align 8
  store %struct.ext4_iloc* %1, %struct.ext4_iloc** %5, align 8
  %12 = load %struct.inode*, %struct.inode** %4, align 8
  %13 = getelementptr inbounds %struct.inode, %struct.inode* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 4
  %15 = call %struct.TYPE_3__* @EXT4_SB(i32 %14)
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load i32, i32* @EXT4_GOOD_OLD_INODE_SIZE, align 4
  %19 = sub nsw i32 %17, %18
  %20 = load %struct.inode*, %struct.inode** %4, align 8
  %21 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %20)
  %22 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %21, i32 0, i32 0
  %23 = load i32, i32* %22, align 4
  %24 = sub nsw i32 %19, %23
  %25 = sext i32 %24 to i64
  %26 = sub i64 %25, 4
  %27 = trunc i64 %26 to i32
  store i32 %27, i32* %10, align 4
  %28 = load %struct.inode*, %struct.inode** %4, align 8
  %29 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %30 = call i32 @ext4_test_inode_state(%struct.inode* %28, i32 %29)
  %31 = icmp ne i32 %30, 0
  br i1 %31, label %44, label %32

32:                                               ; preds = %2
  %33 = load i32, i32* %10, align 4
  %34 = load i32, i32* @EXT4_XATTR_SYSTEM_DATA, align 4
  %35 = call i32 @strlen(i32 %34)
  %36 = call i32 @EXT4_XATTR_LEN(i32 %35)
  %37 = sub nsw i32 %33, %36
  %38 = load i32, i32* @EXT4_XATTR_ROUND, align 4
  %39 = sub nsw i32 %37, %38
  %40 = sext i32 %39 to i64
  %41 = sub i64 %40, 4
  %42 = trunc i64 %41 to i32
  %43 = call i32 @EXT4_XATTR_SIZE(i32 %42)
  store i32 %43, i32* %3, align 4
  br label %138

44:                                               ; preds = %2
  %45 = load %struct.ext4_iloc*, %struct.ext4_iloc** %5, align 8
  %46 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %45)
  store %struct.ext4_inode* %46, %struct.ext4_inode** %8, align 8
  %47 = load %struct.inode*, %struct.inode** %4, align 8
  %48 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %49 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %47, %struct.ext4_inode* %48)
  store %struct.ext4_xattr_ibody_header* %49, %struct.ext4_xattr_ibody_header** %6, align 8
  %50 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %6, align 8
  %51 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %50)
  store %struct.ext4_xattr_entry* %51, %struct.ext4_xattr_entry** %7, align 8
  br label %52

52:                                               ; preds = %81, %44
  %53 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %54 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %53)
  %55 = icmp ne i32 %54, 0
  %56 = xor i1 %55, true
  br i1 %56, label %57, label %84

57:                                               ; preds = %52
  %58 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %59 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %58, i32 0, i32 2
  %60 = load i32, i32* %59, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %80, label %62

62:                                               ; preds = %57
  %63 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %64 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %63, i32 0, i32 0
  %65 = load i64, i64* %64, align 8
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %80

67:                                               ; preds = %62
  %68 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %69 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = call i64 @le16_to_cpu(i32 %70)
  store i64 %71, i64* %11, align 8
  %72 = load i64, i64* %11, align 8
  %73 = load i32, i32* %10, align 4
  %74 = sext i32 %73 to i64
  %75 = icmp ult i64 %72, %74
  br i1 %75, label %76, label %79

76:                                               ; preds = %67
  %77 = load i64, i64* %11, align 8
  %78 = trunc i64 %77 to i32
  store i32 %78, i32* %10, align 4
  br label %79

79:                                               ; preds = %76, %67
  br label %80

80:                                               ; preds = %79, %62, %57
  br label %81

81:                                               ; preds = %80
  %82 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %83 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %82)
  store %struct.ext4_xattr_entry* %83, %struct.ext4_xattr_entry** %7, align 8
  br label %52

84:                                               ; preds = %52
  %85 = load i32, i32* %10, align 4
  %86 = sext i32 %85 to i64
  %87 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %88 = bitcast %struct.ext4_xattr_entry* %87 to i8*
  %89 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %6, align 8
  %90 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %89)
  %91 = bitcast %struct.ext4_xattr_entry* %90 to i8*
  %92 = ptrtoint i8* %88 to i64
  %93 = ptrtoint i8* %91 to i64
  %94 = sub i64 %92, %93
  %95 = sub nsw i64 %86, %94
  %96 = sub i64 %95, 4
  %97 = trunc i64 %96 to i32
  store i32 %97, i32* %9, align 4
  %98 = load %struct.inode*, %struct.inode** %4, align 8
  %99 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %98)
  %100 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %120

103:                                              ; preds = %84
  %104 = load %struct.ext4_inode*, %struct.ext4_inode** %8, align 8
  %105 = bitcast %struct.ext4_inode* %104 to i8*
  %106 = load %struct.inode*, %struct.inode** %4, align 8
  %107 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %106)
  %108 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = sext i32 %109 to i64
  %111 = getelementptr i8, i8* %105, i64 %110
  %112 = bitcast i8* %111 to %struct.ext4_xattr_entry*
  store %struct.ext4_xattr_entry* %112, %struct.ext4_xattr_entry** %7, align 8
  %113 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %7, align 8
  %114 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %113, i32 0, i32 0
  %115 = load i64, i64* %114, align 8
  %116 = call i32 @le32_to_cpu(i64 %115)
  %117 = call i32 @EXT4_XATTR_SIZE(i32 %116)
  %118 = load i32, i32* %9, align 4
  %119 = add nsw i32 %118, %117
  store i32 %119, i32* %9, align 4
  br label %136

120:                                              ; preds = %84
  %121 = load i32, i32* @EXT4_XATTR_SYSTEM_DATA, align 4
  %122 = call i32 @strlen(i32 %121)
  %123 = call i32 @EXT4_XATTR_LEN(i32 %122)
  %124 = load i32, i32* %9, align 4
  %125 = sub nsw i32 %124, %123
  store i32 %125, i32* %9, align 4
  %126 = load i32, i32* %9, align 4
  %127 = load i32, i32* @EXT4_XATTR_ROUND, align 4
  %128 = icmp sgt i32 %126, %127
  br i1 %128, label %129, label %134

129:                                              ; preds = %120
  %130 = load i32, i32* %9, align 4
  %131 = load i32, i32* @EXT4_XATTR_ROUND, align 4
  %132 = sub nsw i32 %130, %131
  %133 = call i32 @EXT4_XATTR_SIZE(i32 %132)
  store i32 %133, i32* %9, align 4
  br label %135

134:                                              ; preds = %120
  store i32 0, i32* %9, align 4
  br label %135

135:                                              ; preds = %134, %129
  br label %136

136:                                              ; preds = %135, %103
  %137 = load i32, i32* %9, align 4
  store i32 %137, i32* %3, align 4
  br label %138

138:                                              ; preds = %136, %32
  %139 = load i32, i32* %3, align 4
  ret i32 %139
}

declare dso_local %struct.TYPE_3__* @EXT4_SB(i32) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @EXT4_XATTR_SIZE(i32) #1

declare dso_local i32 @EXT4_XATTR_LEN(i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i64 @le16_to_cpu(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
