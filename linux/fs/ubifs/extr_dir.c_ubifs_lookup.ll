; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_lookup.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_lookup.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32, i32, %struct.TYPE_2__* }
%union.ubifs_key = type { i32 }
%struct.ubifs_dent_node = type { i32 }
%struct.fscrypt_name = type { i32, i64 }

@.str = private unnamed_addr constant [21 x i8] c"'%pd' in dir ino %lu\00", align 1
@ENOENT = common dso_local global i32 0, align 4
@UBIFS_MAX_NLEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@UBIFS_MAX_DENT_NODE_SZ = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [10 x i8] c"not found\00", align 1
@EINVAL = common dso_local global i32 0, align 4
@.str.2 = private unnamed_addr constant [37 x i8] c"dead directory entry '%pd', error %d\00", align 1
@.str.3 = private unnamed_addr constant [42 x i8] c"Inconsistent encryption contexts: %lu/%lu\00", align 1
@EPERM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.dentry* (%struct.inode*, %struct.dentry*, i32)* @ubifs_lookup to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.dentry* @ubifs_lookup(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca %struct.dentry*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca %union.ubifs_key, align 4
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_dent_node*, align 8
  %12 = alloca %struct.ubifs_info*, align 8
  %13 = alloca %struct.fscrypt_name, align 8
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.inode* null, %struct.inode** %10, align 8
  store %struct.ubifs_dent_node* null, %struct.ubifs_dent_node** %11, align 8
  %14 = load %struct.inode*, %struct.inode** %5, align 8
  %15 = getelementptr inbounds %struct.inode, %struct.inode* %14, i32 0, i32 2
  %16 = load %struct.TYPE_2__*, %struct.TYPE_2__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %16, i32 0, i32 0
  %18 = load %struct.ubifs_info*, %struct.ubifs_info** %17, align 8
  store %struct.ubifs_info* %18, %struct.ubifs_info** %12, align 8
  %19 = load %struct.dentry*, %struct.dentry** %6, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 0
  %22 = load i32, i32* %21, align 8
  %23 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([21 x i8], [21 x i8]* @.str, i64 0, i64 0), %struct.dentry* %19, i32 %22)
  %24 = load %struct.inode*, %struct.inode** %5, align 8
  %25 = load %struct.dentry*, %struct.dentry** %6, align 8
  %26 = bitcast %struct.dentry* %25 to %struct.inode*
  %27 = call i32 @fscrypt_prepare_lookup(%struct.inode* %24, %struct.inode* %26, %struct.fscrypt_name* %13)
  store i32 %27, i32* %8, align 4
  %28 = load i32, i32* %8, align 4
  %29 = load i32, i32* @ENOENT, align 4
  %30 = sub nsw i32 0, %29
  %31 = icmp eq i32 %28, %30
  br i1 %31, label %32, label %37

32:                                               ; preds = %3
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = bitcast %struct.dentry* %33 to %struct.inode*
  %35 = call %struct.inode* @d_splice_alias(%struct.inode* null, %struct.inode* %34)
  %36 = bitcast %struct.inode* %35 to %struct.dentry*
  store %struct.dentry* %36, %struct.dentry** %4, align 8
  br label %189

37:                                               ; preds = %3
  %38 = load i32, i32* %8, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %44

40:                                               ; preds = %37
  %41 = load i32, i32* %8, align 4
  %42 = call %struct.inode* @ERR_PTR(i32 %41)
  %43 = bitcast %struct.inode* %42 to %struct.dentry*
  store %struct.dentry* %43, %struct.dentry** %4, align 8
  br label %189

44:                                               ; preds = %37
  %45 = call i64 @fname_len(%struct.fscrypt_name* %13)
  %46 = load i64, i64* @UBIFS_MAX_NLEN, align 8
  %47 = icmp sgt i64 %45, %46
  br i1 %47, label %48, label %52

48:                                               ; preds = %44
  %49 = load i32, i32* @ENAMETOOLONG, align 4
  %50 = sub nsw i32 0, %49
  %51 = call %struct.inode* @ERR_PTR(i32 %50)
  store %struct.inode* %51, %struct.inode** %10, align 8
  br label %180

52:                                               ; preds = %44
  %53 = load i32, i32* @UBIFS_MAX_DENT_NODE_SZ, align 4
  %54 = load i32, i32* @GFP_NOFS, align 4
  %55 = call %struct.ubifs_dent_node* @kmalloc(i32 %53, i32 %54)
  store %struct.ubifs_dent_node* %55, %struct.ubifs_dent_node** %11, align 8
  %56 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %57 = icmp ne %struct.ubifs_dent_node* %56, null
  br i1 %57, label %62, label %58

58:                                               ; preds = %52
  %59 = load i32, i32* @ENOMEM, align 4
  %60 = sub nsw i32 0, %59
  %61 = call %struct.inode* @ERR_PTR(i32 %60)
  store %struct.inode* %61, %struct.inode** %10, align 8
  br label %180

62:                                               ; preds = %52
  %63 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %13, i32 0, i32 1
  %64 = load i64, i64* %63, align 8
  %65 = icmp ne i64 %64, 0
  br i1 %65, label %66, label %89

66:                                               ; preds = %62
  %67 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %68 = call i64 @fname_len(%struct.fscrypt_name* %13)
  %69 = icmp eq i64 %68, 0
  %70 = zext i1 %69 to i32
  %71 = call i32 @ubifs_assert(%struct.ubifs_info* %67, i32 %70)
  %72 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %73 = call i32* @fname_name(%struct.fscrypt_name* %13)
  %74 = icmp eq i32* %73, null
  %75 = zext i1 %74 to i32
  %76 = call i32 @ubifs_assert(%struct.ubifs_info* %72, i32 %75)
  %77 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %78 = load %struct.inode*, %struct.inode** %5, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 0
  %80 = load i32, i32* %79, align 8
  %81 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %13, i32 0, i32 1
  %82 = load i64, i64* %81, align 8
  %83 = call i32 @dent_key_init_hash(%struct.ubifs_info* %77, %union.ubifs_key* %9, i32 %80, i64 %82)
  %84 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %85 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %86 = getelementptr inbounds %struct.fscrypt_name, %struct.fscrypt_name* %13, i32 0, i32 0
  %87 = load i32, i32* %86, align 8
  %88 = call i32 @ubifs_tnc_lookup_dh(%struct.ubifs_info* %84, %union.ubifs_key* %9, %struct.ubifs_dent_node* %85, i32 %87)
  store i32 %88, i32* %8, align 4
  br label %98

89:                                               ; preds = %62
  %90 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %91 = load %struct.inode*, %struct.inode** %5, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = call i32 @dent_key_init(%struct.ubifs_info* %90, %union.ubifs_key* %9, i32 %93, %struct.fscrypt_name* %13)
  %95 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %96 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %97 = call i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info* %95, %union.ubifs_key* %9, %struct.ubifs_dent_node* %96, %struct.fscrypt_name* %13)
  store i32 %97, i32* %8, align 4
  br label %98

98:                                               ; preds = %89, %66
  %99 = load i32, i32* %8, align 4
  %100 = icmp ne i32 %99, 0
  br i1 %100, label %101, label %112

101:                                              ; preds = %98
  %102 = load i32, i32* %8, align 4
  %103 = load i32, i32* @ENOENT, align 4
  %104 = sub nsw i32 0, %103
  %105 = icmp eq i32 %102, %104
  br i1 %105, label %106, label %108

106:                                              ; preds = %101
  %107 = call i32 (i8*, ...) @dbg_gen(i8* getelementptr inbounds ([10 x i8], [10 x i8]* @.str.1, i64 0, i64 0))
  br label %111

108:                                              ; preds = %101
  %109 = load i32, i32* %8, align 4
  %110 = call %struct.inode* @ERR_PTR(i32 %109)
  store %struct.inode* %110, %struct.inode** %10, align 8
  br label %111

111:                                              ; preds = %108, %106
  br label %180

112:                                              ; preds = %98
  %113 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %114 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %115 = call i64 @dbg_check_name(%struct.ubifs_info* %113, %struct.ubifs_dent_node* %114, %struct.fscrypt_name* %13)
  %116 = icmp ne i64 %115, 0
  br i1 %116, label %117, label %121

117:                                              ; preds = %112
  %118 = load i32, i32* @EINVAL, align 4
  %119 = sub nsw i32 0, %118
  %120 = call %struct.inode* @ERR_PTR(i32 %119)
  store %struct.inode* %120, %struct.inode** %10, align 8
  br label %180

121:                                              ; preds = %112
  %122 = load %struct.inode*, %struct.inode** %5, align 8
  %123 = getelementptr inbounds %struct.inode, %struct.inode* %122, i32 0, i32 2
  %124 = load %struct.TYPE_2__*, %struct.TYPE_2__** %123, align 8
  %125 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %126 = getelementptr inbounds %struct.ubifs_dent_node, %struct.ubifs_dent_node* %125, i32 0, i32 0
  %127 = load i32, i32* %126, align 4
  %128 = call i32 @le64_to_cpu(i32 %127)
  %129 = call %struct.inode* @ubifs_iget(%struct.TYPE_2__* %124, i32 %128)
  store %struct.inode* %129, %struct.inode** %10, align 8
  %130 = load %struct.inode*, %struct.inode** %10, align 8
  %131 = call i64 @IS_ERR(%struct.inode* %130)
  %132 = icmp ne i64 %131, 0
  br i1 %132, label %133, label %144

133:                                              ; preds = %121
  %134 = load %struct.inode*, %struct.inode** %10, align 8
  %135 = call i32 @PTR_ERR(%struct.inode* %134)
  store i32 %135, i32* %8, align 4
  %136 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %137 = load %struct.dentry*, %struct.dentry** %6, align 8
  %138 = bitcast %struct.dentry* %137 to %struct.inode*
  %139 = load i32, i32* %8, align 4
  %140 = call i32 @ubifs_err(%struct.ubifs_info* %136, i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str.2, i64 0, i64 0), %struct.inode* %138, i32 %139)
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %142 = load i32, i32* %8, align 4
  %143 = call i32 @ubifs_ro_mode(%struct.ubifs_info* %141, i32 %142)
  br label %180

144:                                              ; preds = %121
  %145 = load %struct.inode*, %struct.inode** %5, align 8
  %146 = call i64 @ubifs_crypt_is_encrypted(%struct.inode* %145)
  %147 = icmp ne i64 %146, 0
  br i1 %147, label %148, label %179

148:                                              ; preds = %144
  %149 = load %struct.inode*, %struct.inode** %10, align 8
  %150 = getelementptr inbounds %struct.inode, %struct.inode* %149, i32 0, i32 1
  %151 = load i32, i32* %150, align 4
  %152 = call i64 @S_ISDIR(i32 %151)
  %153 = icmp ne i64 %152, 0
  br i1 %153, label %160, label %154

154:                                              ; preds = %148
  %155 = load %struct.inode*, %struct.inode** %10, align 8
  %156 = getelementptr inbounds %struct.inode, %struct.inode* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i64 @S_ISLNK(i32 %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %179

160:                                              ; preds = %154, %148
  %161 = load %struct.inode*, %struct.inode** %5, align 8
  %162 = load %struct.inode*, %struct.inode** %10, align 8
  %163 = call i32 @fscrypt_has_permitted_context(%struct.inode* %161, %struct.inode* %162)
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %179, label %165

165:                                              ; preds = %160
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %12, align 8
  %167 = load %struct.inode*, %struct.inode** %5, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 0
  %169 = load i32, i32* %168, align 8
  %170 = load %struct.inode*, %struct.inode** %10, align 8
  %171 = getelementptr inbounds %struct.inode, %struct.inode* %170, i32 0, i32 0
  %172 = load i32, i32* %171, align 8
  %173 = call i32 @ubifs_warn(%struct.ubifs_info* %166, i8* getelementptr inbounds ([42 x i8], [42 x i8]* @.str.3, i64 0, i64 0), i32 %169, i32 %172)
  %174 = load %struct.inode*, %struct.inode** %10, align 8
  %175 = call i32 @iput(%struct.inode* %174)
  %176 = load i32, i32* @EPERM, align 4
  %177 = sub nsw i32 0, %176
  %178 = call %struct.inode* @ERR_PTR(i32 %177)
  store %struct.inode* %178, %struct.inode** %10, align 8
  br label %179

179:                                              ; preds = %165, %160, %154, %144
  br label %180

180:                                              ; preds = %179, %133, %117, %111, %58, %48
  %181 = load %struct.ubifs_dent_node*, %struct.ubifs_dent_node** %11, align 8
  %182 = call i32 @kfree(%struct.ubifs_dent_node* %181)
  %183 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %13)
  %184 = load %struct.inode*, %struct.inode** %10, align 8
  %185 = load %struct.dentry*, %struct.dentry** %6, align 8
  %186 = bitcast %struct.dentry* %185 to %struct.inode*
  %187 = call %struct.inode* @d_splice_alias(%struct.inode* %184, %struct.inode* %186)
  %188 = bitcast %struct.inode* %187 to %struct.dentry*
  store %struct.dentry* %188, %struct.dentry** %4, align 8
  br label %189

189:                                              ; preds = %180, %40, %32
  %190 = load %struct.dentry*, %struct.dentry** %4, align 8
  ret %struct.dentry* %190
}

declare dso_local i32 @dbg_gen(i8*, ...) #1

declare dso_local i32 @fscrypt_prepare_lookup(%struct.inode*, %struct.inode*, %struct.fscrypt_name*) #1

declare dso_local %struct.inode* @d_splice_alias(%struct.inode*, %struct.inode*) #1

declare dso_local %struct.inode* @ERR_PTR(i32) #1

declare dso_local i64 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.ubifs_dent_node* @kmalloc(i32, i32) #1

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #1

declare dso_local i32* @fname_name(%struct.fscrypt_name*) #1

declare dso_local i32 @dent_key_init_hash(%struct.ubifs_info*, %union.ubifs_key*, i32, i64) #1

declare dso_local i32 @ubifs_tnc_lookup_dh(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, i32) #1

declare dso_local i32 @dent_key_init(%struct.ubifs_info*, %union.ubifs_key*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_tnc_lookup_nm(%struct.ubifs_info*, %union.ubifs_key*, %struct.ubifs_dent_node*, %struct.fscrypt_name*) #1

declare dso_local i64 @dbg_check_name(%struct.ubifs_info*, %struct.ubifs_dent_node*, %struct.fscrypt_name*) #1

declare dso_local %struct.inode* @ubifs_iget(%struct.TYPE_2__*, i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, %struct.inode*, i32) #1

declare dso_local i32 @ubifs_ro_mode(%struct.ubifs_info*, i32) #1

declare dso_local i64 @ubifs_crypt_is_encrypted(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

declare dso_local i32 @fscrypt_has_permitted_context(%struct.inode*, %struct.inode*) #1

declare dso_local i32 @ubifs_warn(%struct.ubifs_info*, i8*, i32, i32) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @kfree(%struct.ubifs_dent_node*) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
