; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_get_inode_usage.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_get_inode_usage.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_iloc = type { %struct.buffer_head* }
%struct.buffer_head = type { i32 }
%struct.ext4_inode = type { i32 }
%struct.ext4_xattr_ibody_header = type { i32 }
%struct.ext4_xattr_entry = type { i64 }
%struct.TYPE_4__ = type { i64, i32 }
%struct.TYPE_3__ = type { i32 }

@EXT4_STATE_XATTR = common dso_local global i32 0, align 4
@REQ_PRIO = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ext4_get_inode_usage(%struct.inode* %0, i64* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca i64*, align 8
  %5 = alloca %struct.ext4_iloc, align 8
  %6 = alloca %struct.buffer_head*, align 8
  %7 = alloca %struct.ext4_inode*, align 8
  %8 = alloca %struct.ext4_xattr_ibody_header*, align 8
  %9 = alloca %struct.ext4_xattr_entry*, align 8
  %10 = alloca i64, align 8
  %11 = alloca i8*, align 8
  %12 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %3, align 8
  store i64* %1, i64** %4, align 8
  %13 = bitcast %struct.ext4_iloc* %5 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %13, i8 0, i64 8, i1 false)
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  store i64 0, i64* %10, align 8
  %14 = load %struct.inode*, %struct.inode** %3, align 8
  %15 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %14)
  %16 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %15, i32 0, i32 1
  %17 = call i32 @lockdep_assert_held_read(i32* %16)
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = load i32, i32* @EXT4_STATE_XATTR, align 4
  %20 = call i64 @ext4_test_inode_state(%struct.inode* %18, i32 %19)
  %21 = icmp ne i64 %20, 0
  br i1 %21, label %22, label %71

22:                                               ; preds = %2
  %23 = load %struct.inode*, %struct.inode** %3, align 8
  %24 = call i32 @ext4_get_inode_loc(%struct.inode* %23, %struct.ext4_iloc* %5)
  store i32 %24, i32* %12, align 4
  %25 = load i32, i32* %12, align 4
  %26 = icmp ne i32 %25, 0
  br i1 %26, label %27, label %28

27:                                               ; preds = %22
  br label %125

28:                                               ; preds = %22
  %29 = call %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc* %5)
  store %struct.ext4_inode* %29, %struct.ext4_inode** %7, align 8
  %30 = load %struct.inode*, %struct.inode** %3, align 8
  %31 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %32 = call %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode* %30, %struct.ext4_inode* %31)
  store %struct.ext4_xattr_ibody_header* %32, %struct.ext4_xattr_ibody_header** %8, align 8
  %33 = load %struct.ext4_inode*, %struct.ext4_inode** %7, align 8
  %34 = bitcast %struct.ext4_inode* %33 to i8*
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 4
  %38 = call %struct.TYPE_3__* @EXT4_SB(i32 %37)
  %39 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr i8, i8* %34, i64 %41
  store i8* %42, i8** %11, align 8
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %45 = load i8*, i8** %11, align 8
  %46 = call i32 @xattr_check_inode(%struct.inode* %43, %struct.ext4_xattr_ibody_header* %44, i8* %45)
  store i32 %46, i32* %12, align 4
  %47 = load i32, i32* %12, align 4
  %48 = icmp ne i32 %47, 0
  br i1 %48, label %49, label %50

49:                                               ; preds = %28
  br label %125

50:                                               ; preds = %28
  %51 = load %struct.ext4_xattr_ibody_header*, %struct.ext4_xattr_ibody_header** %8, align 8
  %52 = call %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header* %51)
  store %struct.ext4_xattr_entry* %52, %struct.ext4_xattr_entry** %9, align 8
  br label %53

53:                                               ; preds = %67, %50
  %54 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %55 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %54)
  %56 = icmp ne i32 %55, 0
  %57 = xor i1 %56, true
  br i1 %57, label %58, label %70

58:                                               ; preds = %53
  %59 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %60 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %59, i32 0, i32 0
  %61 = load i64, i64* %60, align 8
  %62 = icmp ne i64 %61, 0
  br i1 %62, label %63, label %66

63:                                               ; preds = %58
  %64 = load i64, i64* %10, align 8
  %65 = add nsw i64 %64, 1
  store i64 %65, i64* %10, align 8
  br label %66

66:                                               ; preds = %63, %58
  br label %67

67:                                               ; preds = %66
  %68 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %69 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %68)
  store %struct.ext4_xattr_entry* %69, %struct.ext4_xattr_entry** %9, align 8
  br label %53

70:                                               ; preds = %53
  br label %71

71:                                               ; preds = %70, %2
  %72 = load %struct.inode*, %struct.inode** %3, align 8
  %73 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %72)
  %74 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %73, i32 0, i32 0
  %75 = load i64, i64* %74, align 8
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %121

77:                                               ; preds = %71
  %78 = load %struct.inode*, %struct.inode** %3, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 4
  %81 = load %struct.inode*, %struct.inode** %3, align 8
  %82 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %81)
  %83 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %82, i32 0, i32 0
  %84 = load i64, i64* %83, align 8
  %85 = load i32, i32* @REQ_PRIO, align 4
  %86 = call %struct.buffer_head* @ext4_sb_bread(i32 %80, i64 %84, i32 %85)
  store %struct.buffer_head* %86, %struct.buffer_head** %6, align 8
  %87 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %88 = call i64 @IS_ERR(%struct.buffer_head* %87)
  %89 = icmp ne i64 %88, 0
  br i1 %89, label %90, label %93

90:                                               ; preds = %77
  %91 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %92 = call i32 @PTR_ERR(%struct.buffer_head* %91)
  store i32 %92, i32* %12, align 4
  store %struct.buffer_head* null, %struct.buffer_head** %6, align 8
  br label %125

93:                                               ; preds = %77
  %94 = load %struct.inode*, %struct.inode** %3, align 8
  %95 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %96 = call i32 @ext4_xattr_check_block(%struct.inode* %94, %struct.buffer_head* %95)
  store i32 %96, i32* %12, align 4
  %97 = load i32, i32* %12, align 4
  %98 = icmp ne i32 %97, 0
  br i1 %98, label %99, label %100

99:                                               ; preds = %93
  br label %125

100:                                              ; preds = %93
  %101 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %102 = call %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head* %101)
  store %struct.ext4_xattr_entry* %102, %struct.ext4_xattr_entry** %9, align 8
  br label %103

103:                                              ; preds = %117, %100
  %104 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %105 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %104)
  %106 = icmp ne i32 %105, 0
  %107 = xor i1 %106, true
  br i1 %107, label %108, label %120

108:                                              ; preds = %103
  %109 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %110 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %109, i32 0, i32 0
  %111 = load i64, i64* %110, align 8
  %112 = icmp ne i64 %111, 0
  br i1 %112, label %113, label %116

113:                                              ; preds = %108
  %114 = load i64, i64* %10, align 8
  %115 = add nsw i64 %114, 1
  store i64 %115, i64* %10, align 8
  br label %116

116:                                              ; preds = %113, %108
  br label %117

117:                                              ; preds = %116
  %118 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %9, align 8
  %119 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %118)
  store %struct.ext4_xattr_entry* %119, %struct.ext4_xattr_entry** %9, align 8
  br label %103

120:                                              ; preds = %103
  br label %121

121:                                              ; preds = %120, %71
  %122 = load i64, i64* %10, align 8
  %123 = add nsw i64 %122, 1
  %124 = load i64*, i64** %4, align 8
  store i64 %123, i64* %124, align 8
  store i32 0, i32* %12, align 4
  br label %125

125:                                              ; preds = %121, %99, %90, %49, %27
  %126 = getelementptr inbounds %struct.ext4_iloc, %struct.ext4_iloc* %5, i32 0, i32 0
  %127 = load %struct.buffer_head*, %struct.buffer_head** %126, align 8
  %128 = call i32 @brelse(%struct.buffer_head* %127)
  %129 = load %struct.buffer_head*, %struct.buffer_head** %6, align 8
  %130 = call i32 @brelse(%struct.buffer_head* %129)
  %131 = load i32, i32* %12, align 4
  ret i32 %131
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local i32 @lockdep_assert_held_read(i32*) #2

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #2

declare dso_local i64 @ext4_test_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.ext4_iloc*) #2

declare dso_local %struct.ext4_inode* @ext4_raw_inode(%struct.ext4_iloc*) #2

declare dso_local %struct.ext4_xattr_ibody_header* @IHDR(%struct.inode*, %struct.ext4_inode*) #2

declare dso_local %struct.TYPE_3__* @EXT4_SB(i32) #2

declare dso_local i32 @xattr_check_inode(%struct.inode*, %struct.ext4_xattr_ibody_header*, i8*) #2

declare dso_local %struct.ext4_xattr_entry* @IFIRST(%struct.ext4_xattr_ibody_header*) #2

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #2

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #2

declare dso_local %struct.buffer_head* @ext4_sb_bread(i32, i64, i32) #2

declare dso_local i64 @IS_ERR(%struct.buffer_head*) #2

declare dso_local i32 @PTR_ERR(%struct.buffer_head*) #2

declare dso_local i32 @ext4_xattr_check_block(%struct.inode*, %struct.buffer_head*) #2

declare dso_local %struct.ext4_xattr_entry* @BFIRST(%struct.buffer_head*) #2

declare dso_local i32 @brelse(%struct.buffer_head*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
