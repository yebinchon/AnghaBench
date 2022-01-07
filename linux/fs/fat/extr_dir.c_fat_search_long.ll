; ModuleID = '/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_search_long.c'
source_filename = "/home/carl/AnghaBench/linux/fs/fat/extr_dir.c_fat_search_long.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.super_block* }
%struct.super_block = type { i32 }
%struct.fat_slot_info = type { i8, %struct.msdos_dir_entry*, %struct.buffer_head*, i32, i64 }
%struct.msdos_dir_entry = type { i64*, i32 }
%struct.buffer_head = type { i32 }
%struct.msdos_sb_info = type { i32 }

@FAT_MAX_SHORT_SIZE = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@DELETED_FLAG = common dso_local global i64 0, align 8
@ATTR_EXT = common dso_local global i32 0, align 4
@ATTR_VOLUME = common dso_local global i32 0, align 4
@PARSE_INVALID = common dso_local global i32 0, align 4
@PARSE_NOT_LONGNAME = common dso_local global i32 0, align 4
@PARSE_EOF = common dso_local global i32 0, align 4
@FAT_MAX_UNI_CHARS = common dso_local global i32 0, align 4
@PATH_MAX = common dso_local global i32 0, align 4
@FAT_MAX_UNI_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @fat_search_long(%struct.inode* %0, i8* %1, i32 %2, %struct.fat_slot_info* %3) #0 {
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.fat_slot_info*, align 8
  %9 = alloca %struct.super_block*, align 8
  %10 = alloca %struct.msdos_sb_info*, align 8
  %11 = alloca %struct.buffer_head*, align 8
  %12 = alloca %struct.msdos_dir_entry*, align 8
  %13 = alloca i8, align 1
  %14 = alloca i32*, align 8
  %15 = alloca i8*, align 8
  %16 = alloca i64, align 8
  %17 = alloca i64, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i8*, align 8
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.fat_slot_info* %3, %struct.fat_slot_info** %8, align 8
  %23 = load %struct.inode*, %struct.inode** %5, align 8
  %24 = getelementptr inbounds %struct.inode, %struct.inode* %23, i32 0, i32 0
  %25 = load %struct.super_block*, %struct.super_block** %24, align 8
  store %struct.super_block* %25, %struct.super_block** %9, align 8
  %26 = load %struct.super_block*, %struct.super_block** %9, align 8
  %27 = call %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block* %26)
  store %struct.msdos_sb_info* %27, %struct.msdos_sb_info** %10, align 8
  store %struct.buffer_head* null, %struct.buffer_head** %11, align 8
  store i32* null, i32** %14, align 8
  %28 = load i32, i32* @FAT_MAX_SHORT_SIZE, align 4
  %29 = zext i32 %28 to i64
  %30 = call i8* @llvm.stacksave()
  store i8* %30, i8** %15, align 8
  %31 = alloca i8, i64 %29, align 16
  store i64 %29, i64* %16, align 8
  store i64 0, i64* %17, align 8
  %32 = load i32, i32* @ENOENT, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %18, align 4
  br label %34

34:                                               ; preds = %150, %115, %94, %76, %63, %49, %4
  br label %35

35:                                               ; preds = %34
  %36 = load %struct.inode*, %struct.inode** %5, align 8
  %37 = call i32 @fat_get_entry(%struct.inode* %36, i64* %17, %struct.buffer_head** %11, %struct.msdos_dir_entry** %12)
  %38 = icmp eq i32 %37, -1
  br i1 %38, label %39, label %40

39:                                               ; preds = %35
  br label %180

40:                                               ; preds = %35
  br label %41

41:                                               ; preds = %99, %40
  store i8 0, i8* %13, align 1
  %42 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %43 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %42, i32 0, i32 0
  %44 = load i64*, i64** %43, align 8
  %45 = getelementptr inbounds i64, i64* %44, i64 0
  %46 = load i64, i64* %45, align 8
  %47 = load i64, i64* @DELETED_FLAG, align 8
  %48 = icmp eq i64 %46, %47
  br i1 %48, label %49, label %50

49:                                               ; preds = %41
  br label %34

50:                                               ; preds = %41
  %51 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %52 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %51, i32 0, i32 1
  %53 = load i32, i32* %52, align 8
  %54 = load i32, i32* @ATTR_EXT, align 4
  %55 = icmp ne i32 %53, %54
  br i1 %55, label %56, label %64

56:                                               ; preds = %50
  %57 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %58 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %57, i32 0, i32 1
  %59 = load i32, i32* %58, align 8
  %60 = load i32, i32* @ATTR_VOLUME, align 4
  %61 = and i32 %59, %60
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %64

63:                                               ; preds = %56
  br label %34

64:                                               ; preds = %56, %50
  %65 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %66 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %65, i32 0, i32 1
  %67 = load i32, i32* %66, align 8
  %68 = load i32, i32* @ATTR_EXT, align 4
  %69 = icmp ne i32 %67, %68
  br i1 %69, label %70, label %77

70:                                               ; preds = %64
  %71 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %72 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %71, i32 0, i32 0
  %73 = load i64*, i64** %72, align 8
  %74 = call i64 @IS_FREE(i64* %73)
  %75 = icmp ne i64 %74, 0
  br i1 %75, label %76, label %77

76:                                               ; preds = %70
  br label %34

77:                                               ; preds = %70, %64
  %78 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %79 = getelementptr inbounds %struct.msdos_dir_entry, %struct.msdos_dir_entry* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @ATTR_EXT, align 4
  %82 = icmp eq i32 %80, %81
  br i1 %82, label %83, label %109

83:                                               ; preds = %77
  %84 = load %struct.inode*, %struct.inode** %5, align 8
  %85 = call i32 @fat_parse_long(%struct.inode* %84, i64* %17, %struct.buffer_head** %11, %struct.msdos_dir_entry** %12, i32** %14, i8* %13)
  store i32 %85, i32* %20, align 4
  %86 = load i32, i32* %20, align 4
  %87 = icmp slt i32 %86, 0
  br i1 %87, label %88, label %90

88:                                               ; preds = %83
  %89 = load i32, i32* %20, align 4
  store i32 %89, i32* %18, align 4
  br label %180

90:                                               ; preds = %83
  %91 = load i32, i32* %20, align 4
  %92 = load i32, i32* @PARSE_INVALID, align 4
  %93 = icmp eq i32 %91, %92
  br i1 %93, label %94, label %95

94:                                               ; preds = %90
  br label %34

95:                                               ; preds = %90
  %96 = load i32, i32* %20, align 4
  %97 = load i32, i32* @PARSE_NOT_LONGNAME, align 4
  %98 = icmp eq i32 %96, %97
  br i1 %98, label %99, label %100

99:                                               ; preds = %95
  br label %41

100:                                              ; preds = %95
  %101 = load i32, i32* %20, align 4
  %102 = load i32, i32* @PARSE_EOF, align 4
  %103 = icmp eq i32 %101, %102
  br i1 %103, label %104, label %105

104:                                              ; preds = %100
  br label %180

105:                                              ; preds = %100
  br label %106

106:                                              ; preds = %105
  br label %107

107:                                              ; preds = %106
  br label %108

108:                                              ; preds = %107
  br label %109

109:                                              ; preds = %108, %77
  %110 = load %struct.super_block*, %struct.super_block** %9, align 8
  %111 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %112 = call i32 @fat_parse_short(%struct.super_block* %110, %struct.msdos_dir_entry* %111, i8* %31, i32 0)
  store i32 %112, i32* %19, align 4
  %113 = load i32, i32* %19, align 4
  %114 = icmp eq i32 %113, 0
  br i1 %114, label %115, label %116

115:                                              ; preds = %109
  br label %34

116:                                              ; preds = %109
  %117 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %118 = load i8*, i8** %6, align 8
  %119 = load i32, i32* %7, align 4
  %120 = load i32, i32* %19, align 4
  %121 = call i64 @fat_name_match(%struct.msdos_sb_info* %117, i8* %118, i32 %119, i8* %31, i32 %120)
  %122 = icmp ne i64 %121, 0
  br i1 %122, label %123, label %124

123:                                              ; preds = %116
  br label %151

124:                                              ; preds = %116
  %125 = load i8, i8* %13, align 1
  %126 = icmp ne i8 %125, 0
  br i1 %126, label %127, label %150

127:                                              ; preds = %124
  %128 = load i32*, i32** %14, align 8
  %129 = load i32, i32* @FAT_MAX_UNI_CHARS, align 4
  %130 = sext i32 %129 to i64
  %131 = getelementptr inbounds i32, i32* %128, i64 %130
  %132 = bitcast i32* %131 to i8*
  store i8* %132, i8** %21, align 8
  %133 = load i32, i32* @PATH_MAX, align 4
  %134 = load i32, i32* @FAT_MAX_UNI_SIZE, align 4
  %135 = sub nsw i32 %133, %134
  store i32 %135, i32* %22, align 4
  %136 = load %struct.super_block*, %struct.super_block** %9, align 8
  %137 = load i32*, i32** %14, align 8
  %138 = load i8*, i8** %21, align 8
  %139 = load i32, i32* %22, align 4
  %140 = call i32 @fat_uni_to_x8(%struct.super_block* %136, i32* %137, i8* %138, i32 %139)
  store i32 %140, i32* %19, align 4
  %141 = load %struct.msdos_sb_info*, %struct.msdos_sb_info** %10, align 8
  %142 = load i8*, i8** %6, align 8
  %143 = load i32, i32* %7, align 4
  %144 = load i8*, i8** %21, align 8
  %145 = load i32, i32* %19, align 4
  %146 = call i64 @fat_name_match(%struct.msdos_sb_info* %141, i8* %142, i32 %143, i8* %144, i32 %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %127
  br label %151

149:                                              ; preds = %127
  br label %150

150:                                              ; preds = %149, %124
  br label %34

151:                                              ; preds = %148, %123
  %152 = load i8, i8* %13, align 1
  %153 = add i8 %152, 1
  store i8 %153, i8* %13, align 1
  %154 = load i64, i64* %17, align 8
  %155 = load i8, i8* %13, align 1
  %156 = zext i8 %155 to i64
  %157 = mul i64 %156, 16
  %158 = sub i64 %154, %157
  %159 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %160 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %159, i32 0, i32 4
  store i64 %158, i64* %160, align 8
  %161 = load i8, i8* %13, align 1
  %162 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %163 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %162, i32 0, i32 0
  store i8 %161, i8* %163, align 8
  %164 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %12, align 8
  %165 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %166 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %165, i32 0, i32 1
  store %struct.msdos_dir_entry* %164, %struct.msdos_dir_entry** %166, align 8
  %167 = load %struct.buffer_head*, %struct.buffer_head** %11, align 8
  %168 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %169 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %168, i32 0, i32 2
  store %struct.buffer_head* %167, %struct.buffer_head** %169, align 8
  %170 = load %struct.super_block*, %struct.super_block** %9, align 8
  %171 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %172 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %171, i32 0, i32 2
  %173 = load %struct.buffer_head*, %struct.buffer_head** %172, align 8
  %174 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %175 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %174, i32 0, i32 1
  %176 = load %struct.msdos_dir_entry*, %struct.msdos_dir_entry** %175, align 8
  %177 = call i32 @fat_make_i_pos(%struct.super_block* %170, %struct.buffer_head* %173, %struct.msdos_dir_entry* %176)
  %178 = load %struct.fat_slot_info*, %struct.fat_slot_info** %8, align 8
  %179 = getelementptr inbounds %struct.fat_slot_info, %struct.fat_slot_info* %178, i32 0, i32 3
  store i32 %177, i32* %179, align 8
  store i32 0, i32* %18, align 4
  br label %180

180:                                              ; preds = %151, %104, %88, %39
  %181 = load i32*, i32** %14, align 8
  %182 = icmp ne i32* %181, null
  br i1 %182, label %183, label %186

183:                                              ; preds = %180
  %184 = load i32*, i32** %14, align 8
  %185 = call i32 @__putname(i32* %184)
  br label %186

186:                                              ; preds = %183, %180
  %187 = load i32, i32* %18, align 4
  %188 = load i8*, i8** %15, align 8
  call void @llvm.stackrestore(i8* %188)
  ret i32 %187
}

declare dso_local %struct.msdos_sb_info* @MSDOS_SB(%struct.super_block*) #1

; Function Attrs: nounwind
declare i8* @llvm.stacksave() #2

declare dso_local i32 @fat_get_entry(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**) #1

declare dso_local i64 @IS_FREE(i64*) #1

declare dso_local i32 @fat_parse_long(%struct.inode*, i64*, %struct.buffer_head**, %struct.msdos_dir_entry**, i32**, i8*) #1

declare dso_local i32 @fat_parse_short(%struct.super_block*, %struct.msdos_dir_entry*, i8*, i32) #1

declare dso_local i64 @fat_name_match(%struct.msdos_sb_info*, i8*, i32, i8*, i32) #1

declare dso_local i32 @fat_uni_to_x8(%struct.super_block*, i32*, i8*, i32) #1

declare dso_local i32 @fat_make_i_pos(%struct.super_block*, %struct.buffer_head*, %struct.msdos_dir_entry*) #1

declare dso_local i32 @__putname(i32*) #1

; Function Attrs: nounwind
declare void @llvm.stackrestore(i8*) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { nounwind }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
