; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_inline_data.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_update_inline_data.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.ext4_xattr_ibody_find = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i32 }
%struct.TYPE_8__ = type { %struct.TYPE_7__*, i32 }
%struct.TYPE_7__ = type { i32 }
%struct.ext4_xattr_info = type { i32, i8*, i32, i32 }
%struct.TYPE_10__ = type { i32, i64 }

@ENODATA = common dso_local global i32 0, align 4
@EXT4_XATTR_SYSTEM_DATA = common dso_local global i32 0, align 4
@EXT4_XATTR_INDEX_SYSTEM = common dso_local global i32 0, align 4
@EXT4_MIN_INLINE_DATA_SIZE = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [17 x i8] c"get_write_access\00", align 1
@EXT4_STATE_MAY_INLINE_DATA = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, i32)* @ext4_update_inline_data to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_update_inline_data(i32* %0, %struct.inode* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca i32*, align 8
  %6 = alloca %struct.inode*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i8*, align 8
  %10 = alloca %struct.ext4_xattr_ibody_find, align 8
  %11 = alloca %struct.ext4_xattr_info, align 8
  store i32* %0, i32** %5, align 8
  store %struct.inode* %1, %struct.inode** %6, align 8
  store i32 %2, i32* %7, align 4
  store i8* null, i8** %9, align 8
  %12 = bitcast %struct.ext4_xattr_ibody_find* %10 to i8*
  call void @llvm.memset.p0i8.i64(i8* align 8 %12, i8 0, i64 24, i1 false)
  %13 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 1
  %14 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %13, i32 0, i32 1
  %15 = load i32, i32* @ENODATA, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %14, align 8
  %17 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 0
  store i32 0, i32* %17, align 8
  %18 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 1
  store i8* null, i8** %18, align 8
  %19 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 2
  %20 = load i32, i32* @EXT4_XATTR_SYSTEM_DATA, align 4
  store i32 %20, i32* %19, align 8
  %21 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 3
  %22 = load i32, i32* @EXT4_XATTR_INDEX_SYSTEM, align 4
  store i32 %22, i32* %21, align 4
  %23 = load i32, i32* %7, align 4
  %24 = load %struct.inode*, %struct.inode** %6, align 8
  %25 = call %struct.TYPE_10__* @EXT4_I(%struct.inode* %24)
  %26 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %25, i32 0, i32 0
  %27 = load i32, i32* %26, align 8
  %28 = icmp ule i32 %23, %27
  br i1 %28, label %29, label %30

29:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %142

30:                                               ; preds = %3
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %33 = call i32 @ext4_get_inode_loc(%struct.inode* %31, %struct.TYPE_9__* %32)
  store i32 %33, i32* %8, align 4
  %34 = load i32, i32* %8, align 4
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %38

36:                                               ; preds = %30
  %37 = load i32, i32* %8, align 4
  store i32 %37, i32* %4, align 4
  br label %142

38:                                               ; preds = %30
  %39 = load %struct.inode*, %struct.inode** %6, align 8
  %40 = call i32 @ext4_xattr_ibody_find(%struct.inode* %39, %struct.ext4_xattr_info* %11, %struct.ext4_xattr_ibody_find* %10)
  store i32 %40, i32* %8, align 4
  %41 = load i32, i32* %8, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %44

43:                                               ; preds = %38
  br label %134

44:                                               ; preds = %38
  %45 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %45, i32 0, i32 1
  %47 = load i32, i32* %46, align 8
  %48 = call i32 @BUG_ON(i32 %47)
  %49 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %50 = load i32, i32* %7, align 4
  %51 = sub i32 %50, %49
  store i32 %51, i32* %7, align 4
  %52 = load i32, i32* %7, align 4
  %53 = load i32, i32* @GFP_NOFS, align 4
  %54 = call i8* @kzalloc(i32 %52, i32 %53)
  store i8* %54, i8** %9, align 8
  %55 = load i8*, i8** %9, align 8
  %56 = icmp ne i8* %55, null
  br i1 %56, label %60, label %57

57:                                               ; preds = %44
  %58 = load i32, i32* @ENOMEM, align 4
  %59 = sub nsw i32 0, %58
  store i32 %59, i32* %8, align 4
  br label %134

60:                                               ; preds = %44
  %61 = load %struct.inode*, %struct.inode** %6, align 8
  %62 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 3
  %63 = load i32, i32* %62, align 4
  %64 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 2
  %65 = load i32, i32* %64, align 8
  %66 = load i8*, i8** %9, align 8
  %67 = load i32, i32* %7, align 4
  %68 = call i32 @ext4_xattr_ibody_get(%struct.inode* %61, i32 %63, i32 %65, i8* %66, i32 %67)
  store i32 %68, i32* %8, align 4
  %69 = load i32, i32* %8, align 4
  %70 = load i32, i32* @ENODATA, align 4
  %71 = sub nsw i32 0, %70
  %72 = icmp eq i32 %69, %71
  br i1 %72, label %73, label %74

73:                                               ; preds = %60
  br label %134

74:                                               ; preds = %60
  %75 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %76 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 8
  %78 = call i32 @BUFFER_TRACE(i32 %77, i8* getelementptr inbounds ([17 x i8], [17 x i8]* @.str, i64 0, i64 0))
  %79 = load i32*, i32** %5, align 8
  %80 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = call i32 @ext4_journal_get_write_access(i32* %79, i32 %82)
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %8, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %87

86:                                               ; preds = %74
  br label %134

87:                                               ; preds = %74
  %88 = load i8*, i8** %9, align 8
  %89 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 1
  store i8* %88, i8** %89, align 8
  %90 = load i32, i32* %7, align 4
  %91 = getelementptr inbounds %struct.ext4_xattr_info, %struct.ext4_xattr_info* %11, i32 0, i32 0
  store i32 %90, i32* %91, align 8
  %92 = load i32*, i32** %5, align 8
  %93 = load %struct.inode*, %struct.inode** %6, align 8
  %94 = call i32 @ext4_xattr_ibody_inline_set(i32* %92, %struct.inode* %93, %struct.ext4_xattr_info* %11, %struct.ext4_xattr_ibody_find* %10)
  store i32 %94, i32* %8, align 4
  %95 = load i32, i32* %8, align 4
  %96 = icmp ne i32 %95, 0
  br i1 %96, label %97, label %98

97:                                               ; preds = %87
  br label %134

98:                                               ; preds = %87
  %99 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 1
  %100 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %99, i32 0, i32 0
  %101 = load %struct.TYPE_7__*, %struct.TYPE_7__** %100, align 8
  %102 = bitcast %struct.TYPE_7__* %101 to i8*
  %103 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %104 = call i64 @ext4_raw_inode(%struct.TYPE_9__* %103)
  %105 = inttoptr i64 %104 to i8*
  %106 = ptrtoint i8* %102 to i64
  %107 = ptrtoint i8* %105 to i64
  %108 = sub i64 %106, %107
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = call %struct.TYPE_10__* @EXT4_I(%struct.inode* %109)
  %111 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %110, i32 0, i32 1
  store i64 %108, i64* %111, align 8
  %112 = load i32, i32* @EXT4_MIN_INLINE_DATA_SIZE, align 4
  %113 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 1
  %114 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %113, i32 0, i32 0
  %115 = load %struct.TYPE_7__*, %struct.TYPE_7__** %114, align 8
  %116 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 4
  %118 = call i32 @le32_to_cpu(i32 %117)
  %119 = add i32 %112, %118
  %120 = load %struct.inode*, %struct.inode** %6, align 8
  %121 = call %struct.TYPE_10__* @EXT4_I(%struct.inode* %120)
  %122 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %121, i32 0, i32 0
  store i32 %119, i32* %122, align 8
  %123 = load %struct.inode*, %struct.inode** %6, align 8
  %124 = load i32, i32* @EXT4_STATE_MAY_INLINE_DATA, align 4
  %125 = call i32 @ext4_set_inode_state(%struct.inode* %123, i32 %124)
  %126 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %127 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = call i32 @get_bh(i32 %128)
  %130 = load i32*, i32** %5, align 8
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %133 = call i32 @ext4_mark_iloc_dirty(i32* %130, %struct.inode* %131, %struct.TYPE_9__* %132)
  store i32 %133, i32* %8, align 4
  br label %134

134:                                              ; preds = %98, %97, %86, %73, %57, %43
  %135 = load i8*, i8** %9, align 8
  %136 = call i32 @kfree(i8* %135)
  %137 = getelementptr inbounds %struct.ext4_xattr_ibody_find, %struct.ext4_xattr_ibody_find* %10, i32 0, i32 0
  %138 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %137, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = call i32 @brelse(i32 %139)
  %141 = load i32, i32* %8, align 4
  store i32 %141, i32* %4, align 4
  br label %142

142:                                              ; preds = %134, %36, %29
  %143 = load i32, i32* %4, align 4
  ret i32 %143
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memset.p0i8.i64(i8* nocapture writeonly, i8, i64, i1 immarg) #1

declare dso_local %struct.TYPE_10__* @EXT4_I(%struct.inode*) #2

declare dso_local i32 @ext4_get_inode_loc(%struct.inode*, %struct.TYPE_9__*) #2

declare dso_local i32 @ext4_xattr_ibody_find(%struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i32 @BUG_ON(i32) #2

declare dso_local i8* @kzalloc(i32, i32) #2

declare dso_local i32 @ext4_xattr_ibody_get(%struct.inode*, i32, i32, i8*, i32) #2

declare dso_local i32 @BUFFER_TRACE(i32, i8*) #2

declare dso_local i32 @ext4_journal_get_write_access(i32*, i32) #2

declare dso_local i32 @ext4_xattr_ibody_inline_set(i32*, %struct.inode*, %struct.ext4_xattr_info*, %struct.ext4_xattr_ibody_find*) #2

declare dso_local i64 @ext4_raw_inode(%struct.TYPE_9__*) #2

declare dso_local i32 @le32_to_cpu(i32) #2

declare dso_local i32 @ext4_set_inode_state(%struct.inode*, i32) #2

declare dso_local i32 @get_bh(i32) #2

declare dso_local i32 @ext4_mark_iloc_dirty(i32*, %struct.inode*, %struct.TYPE_9__*) #2

declare dso_local i32 @kfree(i8*) #2

declare dso_local i32 @brelse(i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
