; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ibody_get.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_ibody_get.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_iloc = type { i32 }
%struct.TYPE_2__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@ENODATA = common dso_local global i32 0, align 4
@ERANGE = common dso_local global i32 0, align 4
@EXT4_XATTR_SIZE_MAX = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_xattr_ibody_get(%struct.inode* %0, i32 %1, i8* %2, i8* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.inode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %13 = alloca %struct.ext4_xattr_entry*, align 8
  %14 = alloca %struct.ext4_inode*, align 8
  %15 = alloca %struct.ext4_iloc, align 4
  %16 = alloca i64, align 8
  %17 = alloca i8*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i8*, align 8
  store %struct.inode* %0, %struct.inode** %7, align 8
  store i32 %1, i32* %8, align 4
  store i8* %2, i8** %9, align 8
  store i8* %3, i8** %10, align 8
  store i64 %4, i64* %11, align 8
  %21 = load %struct.inode*, %struct.inode** %7, align 8
  %22 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %23 = call i32 @ext4_test_inode_state(%struct.inode* %21, i32 %22)
  %24 = icmp ne i32 %23, 0
  br i1 %24, label %28, label %25

25:                                               ; preds = %5
  %26 = load i32, i32* @ENODATA, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %6, align 4
  br label %139

28:                                               ; preds = %5
  %29 = load %struct.inode*, %struct.inode** %7, align 8
  %30 = call i32 @ext4_get_inode_loc(%struct.inode* %29, %struct.ext4_iloc* %15)
  store i32 %30, i32* %18, align 4
  %31 = load i32, i32* %18, align 4
  %32 = icmp ne i32 %31, 0
  br i1 %32, label %33, label %35

33:                                               ; preds = %28
  %34 = load i32, i32* %18, align 4
  store i32 %34, i32* %6, align 4
  br label %139

35:                                               ; preds = %28
  %36 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %15)
  store %struct.ext4_inode* %36, %struct.ext4_inode** %14, align 8
  %37 = load %struct.inode*, %struct.inode** %7, align 8
  %38 = load %struct.ext4_inode*, %struct.ext4_inode** %14, align 8
  %39 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %37, %struct.ext4_inode* %38)
  store %struct.ext4_xattr_ibody_header* %39, %struct.ext4_xattr_ibody_header** %12, align 8
  %40 = load %struct.ext4_inode*, %struct.ext4_inode** %14, align 8
  %41 = bitcast %struct.ext4_inode* %40 to i8*
  %42 = load %struct.inode*, %struct.inode** %7, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 4
  %45 = call %struct.TYPE_2__* @EXT4_SB(i32 %44)
  %46 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = sext i32 %47 to i64
  %49 = getelementptr i8, i8* %41, i64 %48
  store i8* %49, i8** %17, align 8
  %50 = load %struct.inode*, %struct.inode** %7, align 8
  %51 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %12, align 8
  %52 = load i8*, i8** %17, align 8
  %53 = call i32 @xattr_check_inode(%struct.inode* %50, %struct.ext4_xattr_ibody_header* %51, i8* %52)
  store i32 %53, i32* %18, align 4
  %54 = load i32, i32* %18, align 4
  %55 = icmp ne i32 %54, 0
  br i1 %55, label %56, label %57

56:                                               ; preds = %35
  br label %134

57:                                               ; preds = %35
  %58 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %12, align 8
  %59 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %58)
  store %struct.ext4_xattr_entry* %59, %struct.ext4_xattr_entry** %13, align 8
  %60 = load %struct.inode*, %struct.inode** %7, align 8
  %61 = load i8*, i8** %17, align 8
  %62 = load i32, i32* %8, align 4
  %63 = load i8*, i8** %9, align 8
  %64 = call i32 @xattr_find_entry(%struct.inode* %60, %struct.ext4_xattr_entry** %13, i8* %61, i32 %62, i8* %63, i32 0)
  store i32 %64, i32* %18, align 4
  %65 = load i32, i32* %18, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %67, label %68

67:                                               ; preds = %57
  br label %134

68:                                               ; preds = %57
  %69 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %70 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %69, i32 0, i32 2
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @le32_to_cpu(i32 %71)
  store i64 %72, i64* %16, align 8
  %73 = load i32, i32* @ERANGE, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %18, align 4
  %75 = load i64, i64* %16, align 8
  %76 = load i64, i64* @EXT4_XATTR_SIZE_MAX, align 8
  %77 = icmp ugt i64 %75, %76
  %78 = zext i1 %77 to i32
  %79 = call i64 @unlikely(i32 %78)
  %80 = icmp ne i64 %79, 0
  br i1 %80, label %81, label %82

81:                                               ; preds = %68
  br label %134

82:                                               ; preds = %68
  %83 = load i8*, i8** %10, align 8
  %84 = icmp ne i8* %83, null
  br i1 %84, label %85, label %131

85:                                               ; preds = %82
  %86 = load i64, i64* %16, align 8
  %87 = load i64, i64* %11, align 8
  %88 = icmp ugt i64 %86, %87
  br i1 %88, label %89, label %90

89:                                               ; preds = %85
  br label %134

90:                                               ; preds = %85
  %91 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %92 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %91, i32 0, i32 1
  %93 = load i64, i64* %92, align 8
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %105

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %7, align 8
  %97 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %98 = load i8*, i8** %10, align 8
  %99 = load i64, i64* %16, align 8
  %100 = call i32 @ext4_xattr_inode_get(%struct.inode* %96, %struct.ext4_xattr_entry* %97, i8* %98, i64 %99)
  store i32 %100, i32* %18, align 4
  %101 = load i32, i32* %18, align 4
  %102 = icmp ne i32 %101, 0
  br i1 %102, label %103, label %104

103:                                              ; preds = %95
  br label %134

104:                                              ; preds = %95
  br label %130

105:                                              ; preds = %90
  %106 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %13, align 8
  %107 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 8
  %109 = call i32 @le16_to_cpu(i32 %108)
  store i32 %109, i32* %19, align 4
  %110 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %12, align 8
  %111 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %110)
  %112 = bitcast %struct.ext4_xattr_entry* %111 to i8*
  %113 = load i32, i32* %19, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr i8, i8* %112, i64 %114
  store i8* %115, i8** %20, align 8
  %116 = load i8*, i8** %20, align 8
  %117 = load i64, i64* %16, align 8
  %118 = getelementptr i8, i8* %116, i64 %117
  %119 = load i8*, i8** %17, align 8
  %120 = icmp ugt i8* %118, %119
  %121 = zext i1 %120 to i32
  %122 = call i64 @unlikely(i32 %121)
  %123 = icmp ne i64 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %105
  br label %134

125:                                              ; preds = %105
  %126 = load i8*, i8** %10, align 8
  %127 = load i8*, i8** %20, align 8
  %128 = load i64, i64* %16, align 8
  %129 = call i32 @memcpy(i8* %126, i8* %127, i64 %128)
  br label %130

130:                                              ; preds = %125, %104
  br label %131

131:                                              ; preds = %130, %82
  %132 = load i64, i64* %16, align 8
  %133 = trunc i64 %132 to i32
  store i32 %133, i32* %18, align 4
  br label %134

134:                                              ; preds = %131, %124, %103, %89, %81, %67, %56
  %135 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %15, i32 0, i32 0
  %136 = load i32, i32* %135, align 4
  %137 = call i32 @brelse(i32 %136)
  %138 = load i32, i32* %18, align 4
  store i32 %138, i32* %6, align 4
  br label %139

139:                                              ; preds = %134, %33, %25
  %140 = load i32, i32* %6, align 4
  ret i32 %140
}

declare dso_local i32 @ext4_test_inode_state(%struct.inode*, i32) #1

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #1

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #1

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local %struct.TYPE_2__* @EXT4_SB(i32) #1

declare dso_local i32 @xattr_check_inode(%struct.inode*, %struct.ext4_xattr_ibody_header*, i8*) #1

declare dso_local %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @xattr_find_entry(%struct.inode*, %struct.ext4_xattr_entry**, i8*, i32, i8*, i32) #1

declare dso_local i64 @le32_to_cpu(i32) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @ext4_xattr_inode_get(%struct.inode*, %struct.ext4_xattr_entry*, i8*, i64) #1

declare dso_local i32 @le16_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i64) #1

declare dso_local i32 @brelse(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
