; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_namei.c_f2fs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.f2fs_dir_entry = type { i32 }
%struct.page = type { i32, i32, i32 }
%struct.fscrypt_name = type { i32 }

@F2FS_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@ENOENT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @f2fs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @f2fs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.f2fs_dir_entry*, align 8
  %10 = alloca %struct.page*, align 8
  %11 = alloca %struct.dentry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %8, align 8
  store i32 -1, i32* %12, align 4
  store i32 0, i32* %13, align 4
  %16 = load %struct.inode*, %struct.inode** %5, align 8
  %17 = bitcast %struct.inode* %16 to %struct.page*
  %18 = call i32 @F2FS_I_SB(%struct.page* %17)
  %19 = call i32 @F2FS_ROOT_INO(i32 %18)
  store i32 %19, i32* %14, align 4
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = bitcast %struct.inode* %20 to %struct.page*
  %22 = load %struct.dentry*, %struct.dentry** %6, align 8
  %23 = load i32, i32* %7, align 4
  %24 = call i32 @trace_f2fs_lookup_start(%struct.page* %21, %struct.dentry* %22, i32 %23)
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = getelementptr inbounds %struct.dentry, %struct.dentry* %25, i32 0, i32 0
  %27 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %26, i32 0, i32 0
  %28 = load i64, i64* %27, align 8
  %29 = load i64, i64* @F2FS_NAME_LEN, align 8
  %30 = icmp sgt i64 %28, %29
  br i1 %30, label %31, label %34

31:                                               ; preds = %3
  %32 = load i32, i32* @ENAMETOOLONG, align 4
  %33 = sub nsw i32 0, %32
  store i32 %33, i32* %13, align 4
  br label %176

34:                                               ; preds = %3
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = bitcast %struct.inode* %35 to %struct.page*
  %37 = load %struct.dentry*, %struct.dentry** %6, align 8
  %38 = call i32 @fscrypt_prepare_lookup(%struct.page* %36, %struct.dentry* %37, %struct.fscrypt_name* %15)
  store i32 %38, i32* %13, align 4
  %39 = load i32, i32* %13, align 4
  %40 = load i32, i32* @ENOENT, align 4
  %41 = sub nsw i32 0, %40
  %42 = icmp eq i32 %39, %41
  br i1 %42, label %43, label %44

43:                                               ; preds = %34
  br label %158

44:                                               ; preds = %34
  %45 = load i32, i32* %13, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %48

47:                                               ; preds = %44
  br label %176

48:                                               ; preds = %44
  %49 = load %struct.inode*, %struct.inode** %5, align 8
  %50 = bitcast %struct.inode* %49 to %struct.page*
  %51 = call %struct.f2fs_dir_entry* @__f2fs_find_entry(%struct.page* %50, %struct.fscrypt_name* %15, %struct.page** %10)
  store %struct.f2fs_dir_entry* %51, %struct.f2fs_dir_entry** %9, align 8
  %52 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %15)
  %53 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %54 = icmp ne %struct.f2fs_dir_entry* %53, null
  br i1 %54, label %63, label %55

55:                                               ; preds = %48
  %56 = load %struct.page*, %struct.page** %10, align 8
  %57 = call i64 @IS_ERR(%struct.page* %56)
  %58 = icmp ne i64 %57, 0
  br i1 %58, label %59, label %62

59:                                               ; preds = %55
  %60 = load %struct.page*, %struct.page** %10, align 8
  %61 = call i32 @PTR_ERR(%struct.page* %60)
  store i32 %61, i32* %13, align 4
  br label %176

62:                                               ; preds = %55
  br label %158

63:                                               ; preds = %48
  %64 = load %struct.f2fs_dir_entry*, %struct.f2fs_dir_entry** %9, align 8
  %65 = getelementptr inbounds %struct.f2fs_dir_entry, %struct.f2fs_dir_entry* %64, i32 0, i32 0
  %66 = load i32, i32* %65, align 4
  %67 = call i32 @le32_to_cpu(i32 %66)
  store i32 %67, i32* %12, align 4
  %68 = load %struct.page*, %struct.page** %10, align 8
  %69 = call i32 @f2fs_put_page(%struct.page* %68, i32 0)
  %70 = load %struct.inode*, %struct.inode** %5, align 8
  %71 = getelementptr inbounds %struct.inode, %struct.inode* %70, i32 0, i32 2
  %72 = load i32, i32* %71, align 4
  %73 = load i32, i32* %12, align 4
  %74 = call %struct.page* @f2fs_iget(i32 %72, i32 %73)
  %75 = bitcast %struct.page* %74 to %struct.inode*
  store %struct.inode* %75, %struct.inode** %8, align 8
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = bitcast %struct.inode* %76 to %struct.page*
  %78 = call i64 @IS_ERR(%struct.page* %77)
  %79 = icmp ne i64 %78, 0
  br i1 %79, label %80, label %84

80:                                               ; preds = %63
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = bitcast %struct.inode* %81 to %struct.page*
  %83 = call i32 @PTR_ERR(%struct.page* %82)
  store i32 %83, i32* %13, align 4
  br label %176

84:                                               ; preds = %63
  %85 = load %struct.inode*, %struct.inode** %5, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = load i32, i32* %14, align 4
  %89 = icmp eq i32 %87, %88
  br i1 %89, label %90, label %104

90:                                               ; preds = %84
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = bitcast %struct.inode* %91 to %struct.page*
  %93 = call i64 @f2fs_has_inline_dots(%struct.page* %92)
  %94 = icmp ne i64 %93, 0
  br i1 %94, label %95, label %104

95:                                               ; preds = %90
  %96 = load %struct.inode*, %struct.inode** %5, align 8
  %97 = bitcast %struct.inode* %96 to %struct.page*
  %98 = load i32, i32* %14, align 4
  %99 = call i32 @__recover_dot_dentries(%struct.page* %97, i32 %98)
  store i32 %99, i32* %13, align 4
  %100 = load i32, i32* %13, align 4
  %101 = icmp ne i32 %100, 0
  br i1 %101, label %102, label %103

102:                                              ; preds = %95
  br label %172

103:                                              ; preds = %95
  br label %104

104:                                              ; preds = %103, %90, %84
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = bitcast %struct.inode* %105 to %struct.page*
  %107 = call i64 @f2fs_has_inline_dots(%struct.page* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %120

109:                                              ; preds = %104
  %110 = load %struct.inode*, %struct.inode** %8, align 8
  %111 = bitcast %struct.inode* %110 to %struct.page*
  %112 = load %struct.inode*, %struct.inode** %5, align 8
  %113 = getelementptr inbounds %struct.inode, %struct.inode* %112, i32 0, i32 0
  %114 = load i32, i32* %113, align 4
  %115 = call i32 @__recover_dot_dentries(%struct.page* %111, i32 %114)
  store i32 %115, i32* %13, align 4
  %116 = load i32, i32* %13, align 4
  %117 = icmp ne i32 %116, 0
  br i1 %117, label %118, label %119

118:                                              ; preds = %109
  br label %172

119:                                              ; preds = %109
  br label %120

120:                                              ; preds = %119, %104
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = bitcast %struct.inode* %121 to %struct.page*
  %123 = call i64 @IS_ENCRYPTED(%struct.page* %122)
  %124 = icmp ne i64 %123, 0
  br i1 %124, label %125, label %157

125:                                              ; preds = %120
  %126 = load %struct.inode*, %struct.inode** %8, align 8
  %127 = getelementptr inbounds %struct.inode, %struct.inode* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i64 @S_ISDIR(i32 %128)
  %130 = icmp ne i64 %129, 0
  br i1 %130, label %137, label %131

131:                                              ; preds = %125
  %132 = load %struct.inode*, %struct.inode** %8, align 8
  %133 = getelementptr inbounds %struct.inode, %struct.inode* %132, i32 0, i32 1
  %134 = load i32, i32* %133, align 4
  %135 = call i64 @S_ISLNK(i32 %134)
  %136 = icmp ne i64 %135, 0
  br i1 %136, label %137, label %157

137:                                              ; preds = %131, %125
  %138 = load %struct.inode*, %struct.inode** %5, align 8
  %139 = bitcast %struct.inode* %138 to %struct.page*
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = bitcast %struct.inode* %140 to %struct.page*
  %142 = call i32 @fscrypt_has_permitted_context(%struct.page* %139, %struct.page* %141)
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %157, label %144

144:                                              ; preds = %137
  %145 = load %struct.inode*, %struct.inode** %8, align 8
  %146 = bitcast %struct.inode* %145 to %struct.page*
  %147 = call i32 @F2FS_I_SB(%struct.page* %146)
  %148 = load %struct.inode*, %struct.inode** %5, align 8
  %149 = getelementptr inbounds %struct.inode, %struct.inode* %148, i32 0, i32 0
  %150 = load i32, i32* %149, align 4
  %151 = load %struct.inode*, %struct.inode** %8, align 8
  %152 = getelementptr inbounds %struct.inode, %struct.inode* %151, i32 0, i32 0
  %153 = load i32, i32* %152, align 4
  %154 = call i32 @f2fs_warn(i32 %147, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str, i64 0, i64 0), i32 %150, i32 %153)
  %155 = load i32, i32* @EPERM, align 4
  %156 = sub nsw i32 0, %155
  store i32 %156, i32* %13, align 4
  br label %172

157:                                              ; preds = %137, %131, %120
  br label %158

158:                                              ; preds = %157, %62, %43
  %159 = load %struct.inode*, %struct.inode** %8, align 8
  %160 = bitcast %struct.inode* %159 to %struct.page*
  %161 = load %struct.dentry*, %struct.dentry** %6, align 8
  %162 = call %struct.dentry* @d_splice_alias(%struct.page* %160, %struct.dentry* %161)
  store %struct.dentry* %162, %struct.dentry** %11, align 8
  %163 = load %struct.dentry*, %struct.dentry** %11, align 8
  %164 = call i32 @PTR_ERR_OR_ZERO(%struct.dentry* %163)
  store i32 %164, i32* %13, align 4
  %165 = load %struct.inode*, %struct.inode** %5, align 8
  %166 = bitcast %struct.inode* %165 to %struct.page*
  %167 = load %struct.dentry*, %struct.dentry** %6, align 8
  %168 = load i32, i32* %12, align 4
  %169 = load i32, i32* %13, align 4
  %170 = call i32 @trace_f2fs_lookup_end(%struct.page* %166, %struct.dentry* %167, i32 %168, i32 %169)
  %171 = load %struct.dentry*, %struct.dentry** %11, align 8
  store %struct.dentry* %171, %struct.dentry** %4, align 8
  br label %185

172:                                              ; preds = %144, %118, %102
  %173 = load %struct.inode*, %struct.inode** %8, align 8
  %174 = bitcast %struct.inode* %173 to %struct.page*
  %175 = call i32 @iput(%struct.page* %174)
  br label %176

176:                                              ; preds = %172, %80, %59, %47, %31
  %177 = load %struct.inode*, %struct.inode** %5, align 8
  %178 = bitcast %struct.inode* %177 to %struct.page*
  %179 = load %struct.dentry*, %struct.dentry** %6, align 8
  %180 = load i32, i32* %12, align 4
  %181 = load i32, i32* %13, align 4
  %182 = call i32 @trace_f2fs_lookup_end(%struct.page* %178, %struct.dentry* %179, i32 %180, i32 %181)
  %183 = load i32, i32* %13, align 4
  %184 = call %struct.dentry* @ERR_PTR(i32 %183)
  store %struct.dentry* %184, %struct.dentry** %4, align 8
  br label %185

185:                                              ; preds = %176, %158
  %186 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %186
}

declare dso_local i32 @F2FS_ROOT_INO(i32) #1

declare dso_local i32 @F2FS_I_SB(%struct.page*) #1

declare dso_local i32 @trace_f2fs_lookup_start(%struct.page*, %struct.dentry*, i32) #1

declare dso_local i32 @fscrypt_prepare_lookup(%struct.page*, %struct.dentry*, %struct.fscrypt_name*) #1

declare dso_local %struct.f2fs_dir_entry* @__f2fs_find_entry(%struct.page*, %struct.fscrypt_name*, %struct.page**) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i32 @PTR_ERR(%struct.page*) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @f2fs_put_page(%struct.page*, i32) #1

declare dso_local %struct.page* @f2fs_iget(i32, i32) #1

declare dso_local i64 @f2fs_has_inline_dots(%struct.page*) #1

declare dso_local i32 @__recover_dot_dentries(%struct.page*, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.page*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.page*, %struct.page*) #1

declare dso_local i32 @f2fs_warn(i32, i8*, i32, i32) #1

declare dso_local %struct.dentry* @d_splice_alias(%struct.page*, %struct.dentry*) #1

declare dso_local i32 @PTR_ERR_OR_ZERO(%struct.dentry*) #1

declare dso_local i32 @trace_f2fs_lookup_end(%struct.page*, %struct.dentry*, i32, i32) #1

declare dso_local i32 @iput(%struct.page*) #1

declare dso_local %struct.dentry* @ERR_PTR(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
