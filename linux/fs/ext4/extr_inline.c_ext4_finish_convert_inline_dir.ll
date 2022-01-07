; ModuleID = '/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_finish_convert_inline_dir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ext4/extr_inline.c_ext4_finish_convert_inline_dir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_3__*, i64 }
%struct.TYPE_3__ = type { i64 }
%struct.buffer_head = type { i8* }
%struct.ext4_dir_entry_2 = type { i32 }
%struct.TYPE_4__ = type { i64 }

@EXT4_INLINE_DOTDOT_SIZE = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i32*, %struct.inode*, %struct.buffer_head*, i8*, i32)* @ext4_finish_convert_inline_dir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ext4_finish_convert_inline_dir(i32* %0, %struct.inode* %1, %struct.buffer_head* %2, i8* %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca i32*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.buffer_head*, align 8
  %10 = alloca i8*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.ext4_dir_entry_2*, align 8
  %16 = alloca i8*, align 8
  store i32* %0, i32** %7, align 8
  store %struct.inode* %1, %struct.inode** %8, align 8
  store %struct.buffer_head* %2, %struct.buffer_head** %9, align 8
  store i8* %3, i8** %10, align 8
  store i32 %4, i32* %11, align 4
  store i32 0, i32* %13, align 4
  store i32 0, i32* %14, align 4
  %17 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %18 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %17, i32 0, i32 0
  %19 = load i8*, i8** %18, align 8
  store i8* %19, i8** %16, align 8
  %20 = load i8*, i8** %16, align 8
  %21 = bitcast i8* %20 to %struct.ext4_dir_entry_2*
  store %struct.ext4_dir_entry_2* %21, %struct.ext4_dir_entry_2** %15, align 8
  %22 = load %struct.inode*, %struct.inode** %8, align 8
  %23 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %24 = load %struct.inode*, %struct.inode** %8, align 8
  %25 = getelementptr inbounds %struct.inode, %struct.inode* %24, i32 0, i32 0
  %26 = load %struct.TYPE_3__*, %struct.TYPE_3__** %25, align 8
  %27 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i32, i32* %13, align 4
  %30 = load i8*, i8** %10, align 8
  %31 = bitcast i8* %30 to %struct.ext4_dir_entry_2*
  %32 = getelementptr inbounds %struct.ext4_dir_entry_2, %struct.ext4_dir_entry_2* %31, i32 0, i32 0
  %33 = load i32, i32* %32, align 4
  %34 = call i32 @le32_to_cpu(i32 %33)
  %35 = call %struct.ext4_dir_entry_2* @ext4_init_dot_dotdot(%struct.inode* %22, %struct.ext4_dir_entry_2* %23, i64 %28, i32 %29, i32 %34, i32 1)
  store %struct.ext4_dir_entry_2* %35, %struct.ext4_dir_entry_2** %15, align 8
  %36 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %37 = bitcast %struct.ext4_dir_entry_2* %36 to i8*
  %38 = load i8*, i8** %16, align 8
  %39 = ptrtoint i8* %37 to i64
  %40 = ptrtoint i8* %38 to i64
  %41 = sub i64 %39, %40
  %42 = trunc i64 %41 to i32
  store i32 %42, i32* %14, align 4
  %43 = load %struct.ext4_dir_entry_2*, %struct.ext4_dir_entry_2** %15, align 8
  %44 = bitcast %struct.ext4_dir_entry_2* %43 to i8*
  %45 = load i8*, i8** %10, align 8
  %46 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %47 = sext i32 %46 to i64
  %48 = getelementptr i8, i8* %45, i64 %47
  %49 = load i32, i32* %11, align 4
  %50 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %51 = sub nsw i32 %49, %50
  %52 = call i32 @memcpy(i8* %44, i8* %48, i32 %51)
  %53 = load %struct.inode*, %struct.inode** %8, align 8
  %54 = getelementptr inbounds %struct.inode, %struct.inode* %53, i32 0, i32 0
  %55 = load %struct.TYPE_3__*, %struct.TYPE_3__** %54, align 8
  %56 = call i64 @ext4_has_metadata_csum(%struct.TYPE_3__* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %59

58:                                               ; preds = %5
  store i32 4, i32* %13, align 4
  br label %59

59:                                               ; preds = %58, %5
  %60 = load %struct.inode*, %struct.inode** %8, align 8
  %61 = getelementptr inbounds %struct.inode, %struct.inode* %60, i32 0, i32 0
  %62 = load %struct.TYPE_3__*, %struct.TYPE_3__** %61, align 8
  %63 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %62, i32 0, i32 0
  %64 = load i64, i64* %63, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 1
  store i64 %64, i64* %66, align 8
  %67 = load %struct.inode*, %struct.inode** %8, align 8
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_3__*, %struct.TYPE_3__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %70, i32 0, i32 0
  %72 = load i64, i64* %71, align 8
  %73 = call i32 @i_size_write(%struct.inode* %67, i64 %72)
  %74 = load %struct.inode*, %struct.inode** %8, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load %struct.TYPE_3__*, %struct.TYPE_3__** %75, align 8
  %77 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %76, i32 0, i32 0
  %78 = load i64, i64* %77, align 8
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call %struct.TYPE_4__* @EXT4_I(%struct.inode* %79)
  %81 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %80, i32 0, i32 0
  store i64 %78, i64* %81, align 8
  %82 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %83 = getelementptr inbounds %struct.buffer_head, %struct.buffer_head* %82, i32 0, i32 0
  %84 = load i8*, i8** %83, align 8
  %85 = load i32, i32* %11, align 4
  %86 = load i32, i32* @EXT4_INLINE_DOTDOT_SIZE, align 4
  %87 = sub nsw i32 %85, %86
  %88 = load i32, i32* %14, align 4
  %89 = add nsw i32 %87, %88
  %90 = load %struct.inode*, %struct.inode** %8, align 8
  %91 = getelementptr inbounds %struct.inode, %struct.inode* %90, i32 0, i32 0
  %92 = load %struct.TYPE_3__*, %struct.TYPE_3__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* %13, align 4
  %96 = sext i32 %95 to i64
  %97 = sub nsw i64 %94, %96
  %98 = call i32 @ext4_update_final_de(i8* %84, i32 %89, i64 %97)
  %99 = load i32, i32* %13, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %109

101:                                              ; preds = %59
  %102 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = getelementptr inbounds %struct.inode, %struct.inode* %103, i32 0, i32 0
  %105 = load %struct.TYPE_3__*, %struct.TYPE_3__** %104, align 8
  %106 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %105, i32 0, i32 0
  %107 = load i64, i64* %106, align 8
  %108 = call i32 @ext4_initialize_dirent_tail(%struct.buffer_head* %102, i64 %107)
  br label %109

109:                                              ; preds = %101, %59
  %110 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %111 = call i32 @set_buffer_uptodate(%struct.buffer_head* %110)
  %112 = load i32*, i32** %7, align 8
  %113 = load %struct.inode*, %struct.inode** %8, align 8
  %114 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %115 = call i32 @ext4_handle_dirty_dirblock(i32* %112, %struct.inode* %113, %struct.buffer_head* %114)
  store i32 %115, i32* %12, align 4
  %116 = load i32, i32* %12, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %120

118:                                              ; preds = %109
  %119 = load i32, i32* %12, align 4
  store i32 %119, i32* %6, align 4
  br label %126

120:                                              ; preds = %109
  %121 = load %struct.buffer_head*, %struct.buffer_head** %9, align 8
  %122 = call i32 @set_buffer_verified(%struct.buffer_head* %121)
  %123 = load i32*, i32** %7, align 8
  %124 = load %struct.inode*, %struct.inode** %8, align 8
  %125 = call i32 @ext4_mark_inode_dirty(i32* %123, %struct.inode* %124)
  store i32 %125, i32* %6, align 4
  br label %126

126:                                              ; preds = %120, %118
  %127 = load i32, i32* %6, align 4
  ret i32 %127
}

declare dso_local %struct.ext4_dir_entry_2* @ext4_init_dot_dotdot(%struct.inode*, %struct.ext4_dir_entry_2*, i64, i32, i32, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i64 @ext4_has_metadata_csum(%struct.TYPE_3__*) #1

declare dso_local i32 @i_size_write(%struct.inode*, i64) #1

declare dso_local %struct.TYPE_4__* @EXT4_I(%struct.inode*) #1

declare dso_local i32 @ext4_update_final_de(i8*, i32, i64) #1

declare dso_local i32 @ext4_initialize_dirent_tail(%struct.buffer_head*, i64) #1

declare dso_local i32 @set_buffer_uptodate(%struct.buffer_head*) #1

declare dso_local i32 @ext4_handle_dirty_dirblock(i32*, %struct.inode*, %struct.buffer_head*) #1

declare dso_local i32 @set_buffer_verified(%struct.buffer_head*) #1

declare dso_local i32 @ext4_mark_inode_dirty(i32*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
