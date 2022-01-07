; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_dec_ref_all.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_xattr.c_ext4_xattr_inode_dec_ref_all.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32 }
%struct.buffer_head = type { i32 }
%struct.ext4_xattr_entry = type { i64, i64, i64 }
%struct.ext4_xattr_inode_array = type { i32 }

@.str = private unnamed_addr constant [26 x i8] c"Expand inode array err=%d\00", align 1
@.str.1 = private unnamed_addr constant [22 x i8] c"Ensure credits err=%d\00", align 1
@.str.2 = private unnamed_addr constant [24 x i8] c"ea_inode dec ref err=%d\00", align 1
@.str.3 = private unnamed_addr constant [29 x i8] c"handle dirty metadata err=%d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.inode*, %struct.buffer_head*, %struct.ext4_xattr_entry*, i32, %struct.ext4_xattr_inode_array**, i32, i32)* @ext4_xattr_inode_dec_ref_all to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @ext4_xattr_inode_dec_ref_all(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, %struct.ext4_xattr_entry* %3, i32 %4, %struct.ext4_xattr_inode_array** %5, i32 %6, i32 %7) #0 {
  %9 = alloca i32*, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.ext4_xattr_entry*, align 8
  %13 = alloca i32, align 4
  %14 = alloca %struct.ext4_xattr_inode_array**, align 8
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca %struct.inode*, align 8
  %18 = alloca %struct.ext4_xattr_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %9, align 8
  store %struct.inode* %1, %struct.inode** %10, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %11, align 8
  store %struct.ext4_xattr_entry* %3, %struct.ext4_xattr_entry** %12, align 8
  store i32 %4, i32* %13, align 4
  store %struct.ext4_xattr_inode_array** %5, %struct.ext4_xattr_inode_array*** %14, align 8
  store i32 %6, i32* %15, align 4
  store i32 %7, i32* %16, align 4
  store i32 0, i32* %19, align 4
  %23 = load i32, i32* %15, align 4
  %24 = add nsw i32 2, %23
  store i32 %24, i32* %22, align 4
  %25 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %12, align 8
  store %struct.ext4_xattr_entry* %25, %struct.ext4_xattr_entry** %18, align 8
  br label %26

26:                                               ; preds = %104, %8
  %27 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %28 = call i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry* %27)
  %29 = icmp ne i32 %28, 0
  %30 = xor i1 %29, true
  br i1 %30, label %31, label %107

31:                                               ; preds = %26
  %32 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %33 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %32, i32 0, i32 1
  %34 = load i64, i64* %33, align 8
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %37, label %36

36:                                               ; preds = %31
  br label %104

37:                                               ; preds = %31
  %38 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %39 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %38, i32 0, i32 1
  %40 = load i64, i64* %39, align 8
  %41 = call i32 @le32_to_cpu(i64 %40)
  store i32 %41, i32* %20, align 4
  %42 = load %struct.inode*, %struct.inode** %10, align 8
  %43 = load i32, i32* %20, align 4
  %44 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %45 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = call i32 @le32_to_cpu(i64 %46)
  %48 = call i32 @ext4_xattr_inode_iget(%struct.inode* %42, i32 %43, i32 %47, %struct.inode** %17)
  store i32 %48, i32* %21, align 4
  %49 = load i32, i32* %21, align 4
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %52

51:                                               ; preds = %37
  br label %104

52:                                               ; preds = %37
  %53 = load %struct.ext4_xattr_inode_array**, %struct.ext4_xattr_inode_array*** %14, align 8
  %54 = load %struct.inode*, %struct.inode** %17, align 8
  %55 = call i32 @ext4_expand_inode_array(%struct.ext4_xattr_inode_array** %53, %struct.inode* %54)
  store i32 %55, i32* %21, align 4
  %56 = load i32, i32* %21, align 4
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %58, label %64

58:                                               ; preds = %52
  %59 = load %struct.inode*, %struct.inode** %17, align 8
  %60 = load i32, i32* %21, align 4
  %61 = call i32 @ext4_warning_inode(%struct.inode* %59, i8* getelementptr inbounds ([26 x i8], [26 x i8]* @.str, i64 0, i64 0), i32 %60)
  %62 = load %struct.inode*, %struct.inode** %17, align 8
  %63 = call i32 @iput(%struct.inode* %62)
  br label %104

64:                                               ; preds = %52
  %65 = load i32*, i32** %9, align 8
  %66 = load %struct.inode*, %struct.inode** %10, align 8
  %67 = load i32, i32* %22, align 4
  %68 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %69 = load i32, i32* %19, align 4
  %70 = load i32, i32* %13, align 4
  %71 = call i32 @ext4_xattr_ensure_credits(i32* %65, %struct.inode* %66, i32 %67, %struct.buffer_head* %68, i32 %69, i32 %70)
  store i32 %71, i32* %21, align 4
  %72 = load i32, i32* %21, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %78

74:                                               ; preds = %64
  %75 = load %struct.inode*, %struct.inode** %17, align 8
  %76 = load i32, i32* %21, align 4
  %77 = call i32 @ext4_warning_inode(%struct.inode* %75, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str.1, i64 0, i64 0), i32 %76)
  br label %104

78:                                               ; preds = %64
  %79 = load i32*, i32** %9, align 8
  %80 = load %struct.inode*, %struct.inode** %17, align 8
  %81 = call i32 @ext4_xattr_inode_dec_ref(i32* %79, %struct.inode* %80)
  store i32 %81, i32* %21, align 4
  %82 = load i32, i32* %21, align 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %88

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %17, align 8
  %86 = load i32, i32* %21, align 4
  %87 = call i32 @ext4_warning_inode(%struct.inode* %85, i8* getelementptr inbounds ([24 x i8], [24 x i8]* @.str.2, i64 0, i64 0), i32 %86)
  br label %104

88:                                               ; preds = %78
  %89 = load i32, i32* %16, align 4
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %99, label %91

91:                                               ; preds = %88
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = load %struct.inode*, %struct.inode** %17, align 8
  %94 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %95 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %94, i32 0, i32 0
  %96 = load i64, i64* %95, align 8
  %97 = call i32 @le32_to_cpu(i64 %96)
  %98 = call i32 @ext4_xattr_inode_free_quota(%struct.inode* %92, %struct.inode* %93, i32 %97)
  br label %99

99:                                               ; preds = %91, %88
  %100 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %101 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %100, i32 0, i32 1
  store i64 0, i64* %101, align 8
  %102 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %103 = getelementptr inbounds %struct.ext4_xattr_entry, %struct.ext4_xattr_entry* %102, i32 0, i32 0
  store i64 0, i64* %103, align 8
  store i32 1, i32* %19, align 4
  br label %104

104:                                              ; preds = %99, %84, %74, %58, %51, %36
  %105 = load %struct.ext4_xattr_entry*, %struct.ext4_xattr_entry** %18, align 8
  %106 = call %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry* %105)
  store %struct.ext4_xattr_entry* %106, %struct.ext4_xattr_entry** %18, align 8
  br label %26

107:                                              ; preds = %26
  %108 = load i32, i32* %19, align 4
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %110, label %121

110:                                              ; preds = %107
  %111 = load i32*, i32** %9, align 8
  %112 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %113 = call i32 @ext4_handle_dirty_metadata(i32* %111, i32* null, %struct.buffer_head* %112)
  store i32 %113, i32* %21, align 4
  %114 = load i32, i32* %21, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %120

116:                                              ; preds = %110
  %117 = load %struct.inode*, %struct.inode** %10, align 8
  %118 = load i32, i32* %21, align 4
  %119 = call i32 @ext4_warning_inode(%struct.inode* %117, i8* getelementptr inbounds ([29 x i8], [29 x i8]* @.str.3, i64 0, i64 0), i32 %118)
  br label %120

120:                                              ; preds = %116, %110
  br label %121

121:                                              ; preds = %120, %107
  ret void
}

declare dso_local i32 @IS_LAST_ENTRY(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @le32_to_cpu(i64) #1

declare dso_local i32 @ext4_xattr_inode_iget(%struct.inode*, i32, i32, %struct.inode**) #1

declare dso_local i32 @ext4_expand_inode_array(%struct.ext4_xattr_inode_array**, %struct.inode*) #1

declare dso_local i32 @ext4_warning_inode(%struct.inode*, i8*, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @ext4_xattr_ensure_credits(i32*, %struct.inode*, i32, %struct.buffer_head*, i32, i32) #1

declare dso_local i32 @ext4_xattr_inode_dec_ref(i32*, %struct.inode*) #1

declare dso_local i32 @ext4_xattr_inode_free_quota(%struct.inode*, %struct.inode*, i32) #1

declare dso_local %struct.ext4_xattr_entry* @EXT4_XATTR_NEXT(%struct.ext4_xattr_entry*) #1

declare dso_local i32 @ext4_handle_dirty_metadata(i32*, i32*, %struct.buffer_head*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
