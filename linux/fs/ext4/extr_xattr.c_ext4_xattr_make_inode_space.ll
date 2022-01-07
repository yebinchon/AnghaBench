; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_make_inode_space.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_make_inode_space.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i32, i64, i32, i32, i32 }

@EXT4_XATTR_INDEX_SYSTEM = common dso_local global i64 0, align 8
@.str = private unnamed_addr constant [5 x i8] c"data\00", align 1
@ENOSPC = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.ext4_inode*, i32, i64, i64, i32*)* @ext4_xattr_make_inode_space to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_xattr_make_inode_space(i32* %0, %struct.inode* %1, %struct.ext4_inode* %2, i32 %3, i64 %4, i64 %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ext4_inode*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i64, align 8
  %14 = alloca i64, align 8
  %15 = alloca i32*, align 8
  %16 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %17 = alloca %struct.ext4_xattr_entry*, align 8
  %18 = alloca %struct.ext4_xattr_entry*, align 8
  %19 = alloca %struct.ext4_xattr_entry*, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  %23 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.ext4_inode* %2, %struct.ext4_inode** %11, align 8
  store i32 %3, i32* %12, align 4
  store i64 %4, i64* %13, align 8
  store i64 %5, i64* %14, align 8
  store i32* %6, i32** %15, align 8
  %24 = load %struct.inode*, %struct.inode** %10, align 8
  %25 = load %struct.ext4_inode*, %struct.ext4_inode** %11, align 8
  %26 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %24, %struct.ext4_inode* %25)
  store %struct.ext4_xattr_ibody_header* %26, %struct.ext4_xattr_ibody_header** %16, align 8
  br label %27

27:                                               ; preds = %145, %7
  %28 = load i32, i32* %12, align 4
  %29 = sext i32 %28 to i64
  %30 = load i64, i64* %13, align 8
  %31 = icmp ugt i64 %29, %30
  br i1 %31, label %32, label %158

32:                                               ; preds = %27
  store %struct.ext4_xattr_entry* null, %struct.ext4_xattr_entry** %18, align 8
  store %struct.ext4_xattr_entry* null, %struct.ext4_xattr_entry** %17, align 8
  store i32 -1, i32* %22, align 4
  %33 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %16, align 8
  %34 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %33)
  store %struct.ext4_xattr_entry* %34, %struct.ext4_xattr_entry** %19, align 8
  br label %35

35:                                               ; preds = %101, %32
  %36 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %37 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %36)
  %38 = icmp ne i32 %37, 0
  %39 = xor i1 %38, true
  br i1 %39, label %40, label %104

40:                                               ; preds = %35
  %41 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %42 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp eq i32 %43, 4
  br i1 %44, label %45, label %58

45:                                               ; preds = %40
  %46 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %47 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %46, i32 0, i32 1
  %48 = load i64, i64* %47, align 8
  %49 = load i64, i64* @EXT4_XATTR_INDEX_SYSTEM, align 8
  %50 = icmp eq i64 %48, %49
  br i1 %50, label %51, label %58

51:                                               ; preds = %45
  %52 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %53 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %52, i32 0, i32 4
  %54 = load i32, i32* %53, align 8
  %55 = call i32 @memcmp(i32 %54, i8* getelementptr inbounds ([5 x i8], [5 x i8]* @.str, i64 0, i64 0), i32 4)
  %56 = icmp ne i32 %55, 0
  br i1 %56, label %58, label %57

57:                                               ; preds = %51
  br label %101

58:                                               ; preds = %51, %45, %40
  %59 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %60 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 8
  %62 = call i32 @EXT4_XATTR_LEN(i32 %61)
  store i32 %62, i32* %21, align 4
  %63 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %64 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %63, i32 0, i32 3
  %65 = load i32, i32* %64, align 4
  %66 = icmp ne i32 %65, 0
  br i1 %66, label %77, label %67

67:                                               ; preds = %58
  %68 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %69 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %68, i32 0, i32 2
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i64 @EXT4_XATTR_SIZE(i32 %71)
  %73 = load i32, i32* %21, align 4
  %74 = zext i32 %73 to i64
  %75 = add nsw i64 %74, %72
  %76 = trunc i64 %75 to i32
  store i32 %76, i32* %21, align 4
  br label %77

77:                                               ; preds = %67, %58
  %78 = load i32, i32* %21, align 4
  %79 = zext i32 %78 to i64
  %80 = load i64, i64* %14, align 8
  %81 = icmp ule i64 %79, %80
  br i1 %81, label %82, label %100

82:                                               ; preds = %77
  %83 = load i32, i32* %21, align 4
  %84 = load i32, i32* %22, align 4
  %85 = icmp ult i32 %83, %84
  br i1 %85, label %86, label %100

86:                                               ; preds = %82
  %87 = load i32, i32* %21, align 4
  %88 = zext i32 %87 to i64
  %89 = load i64, i64* %13, align 8
  %90 = add i64 %88, %89
  %91 = load i32, i32* %12, align 4
  %92 = sext i32 %91 to i64
  %93 = icmp ult i64 %90, %92
  br i1 %93, label %94, label %96

94:                                               ; preds = %86
  %95 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  store %struct.ext4_xattr_entry* %95, %struct.ext4_xattr_entry** %17, align 8
  br label %99

96:                                               ; preds = %86
  %97 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  store %struct.ext4_xattr_entry* %97, %struct.ext4_xattr_entry** %18, align 8
  %98 = load i32, i32* %21, align 4
  store i32 %98, i32* %22, align 4
  br label %99

99:                                               ; preds = %96, %94
  br label %100

100:                                              ; preds = %99, %82, %77
  br label %101

101:                                              ; preds = %100, %57
  %102 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %19, align 8
  %103 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %102)
  store %struct.ext4_xattr_entry* %103, %struct.ext4_xattr_entry** %19, align 8
  br label %35

104:                                              ; preds = %35
  %105 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %106 = icmp eq %struct.ext4_xattr_entry* %105, null
  br i1 %106, label %107, label %115

107:                                              ; preds = %104
  %108 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %17, align 8
  %109 = icmp eq %struct.ext4_xattr_entry* %108, null
  br i1 %109, label %110, label %113

110:                                              ; preds = %107
  %111 = load i32, i32* @ENOSPC, align 4
  %112 = sub nsw i32 0, %111
  store i32 %112, i32* %8, align 4
  br label %159

113:                                              ; preds = %107
  %114 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %17, align 8
  store %struct.ext4_xattr_entry* %114, %struct.ext4_xattr_entry** %18, align 8
  br label %115

115:                                              ; preds = %113, %104
  %116 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %117 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @EXT4_XATTR_LEN(i32 %118)
  store i32 %119, i32* %20, align 4
  %120 = load i32, i32* %20, align 4
  store i32 %120, i32* %21, align 4
  %121 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %122 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %121, i32 0, i32 3
  %123 = load i32, i32* %122, align 4
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %135, label %125

125:                                              ; preds = %115
  %126 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %127 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %126, i32 0, i32 2
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @le32_to_cpu(i32 %128)
  %130 = call i64 @EXT4_XATTR_SIZE(i32 %129)
  %131 = load i32, i32* %21, align 4
  %132 = zext i32 %131 to i64
  %133 = add nsw i64 %132, %130
  %134 = trunc i64 %133 to i32
  store i32 %134, i32* %21, align 4
  br label %135

135:                                              ; preds = %125, %115
  %136 = load i32*, i32** %9, align 8
  %137 = load %struct.inode*, %struct.inode** %10, align 8
  %138 = load %struct.ext4_inode*, %struct.ext4_inode** %11, align 8
  %139 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %140 = call i32 @ext4_xattr_move_to_block(i32* %136, %struct.inode* %137, %struct.ext4_inode* %138, %struct.ext4_xattr_entry* %139)
  store i32 %140, i32* %23, align 4
  %141 = load i32, i32* %23, align 4
  %142 = icmp ne i32 %141, 0
  br i1 %142, label %143, label %145

143:                                              ; preds = %135
  %144 = load i32, i32* %23, align 4
  store i32 %144, i32* %8, align 4
  br label %159

145:                                              ; preds = %135
  %146 = load i32, i32* %20, align 4
  %147 = load i32*, i32** %15, align 8
  %148 = load i32, i32* %147, align 4
  %149 = sub i32 %148, %146
  store i32 %149, i32* %147, align 4
  %150 = load i32, i32* %21, align 4
  %151 = zext i32 %150 to i64
  %152 = load i64, i64* %13, align 8
  %153 = add i64 %152, %151
  store i64 %153, i64* %13, align 8
  %154 = load i32, i32* %21, align 4
  %155 = zext i32 %154 to i64
  %156 = load i64, i64* %14, align 8
  %157 = sub i64 %156, %155
  store i64 %157, i64* %14, align 8
  br label %27

158:                                              ; preds = %27
  store i32 0, i32* %8, align 4
  br label %159

159:                                              ; preds = %158, %143, %110
  %160 = load i32, i32* %8, align 4
  ret i32 %160
}

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #1

declare dso_local %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header*) #1

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @memcmp(i32, i8*, i32) #1

declare dso_local i32 @EXT4_XATTR_LEN(i32) #1

declare dso_local i64 @EXT4_XATTR_SIZE(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @ext4_xattr_move_to_block(i32*, %struct.inode*, %struct.ext4_inode*, %struct.ext4_xattr_entry*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
