; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_symlink.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_ubifs_symlink.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i64, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32, i32, i32, i64 }
%struct.fscrypt_str = type { i32, i64 }
%struct.ubifs_budget_req = type { i32, i32, i32, i32 }
%struct.fscrypt_name = type { i32 }

@.str = private unnamed_addr constant [39 x i8] c"dent '%pd', target '%s' in dir ino %lu\00", align 1
@UBIFS_MAX_INO_DATA = common dso_local global i32 0, align 4
@S_IFLNK = common dso_local global i32 0, align 4
@S_IRWXUGO = common dso_local global i32 0, align 4
@GFP_NOFS = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i8*)* @ubifs_symlink to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ubifs_symlink(%struct.inode* %0, %struct.dentry* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca %struct.inode*, align 8
  %9 = alloca %struct.ubifs_inode*, align 8
  %10 = alloca %struct.ubifs_inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca %struct.fscrypt_str, align 8
  %16 = alloca %struct.ubifs_budget_req, align 4
  %17 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i8* %2, i8** %7, align 8
  %18 = load %struct.inode*, %struct.inode** %5, align 8
  %19 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %18)
  store %struct.ubifs_inode* %19, %struct.ubifs_inode** %10, align 8
  %20 = load %struct.inode*, %struct.inode** %5, align 8
  %21 = getelementptr inbounds %struct.inode, %struct.inode* %20, i32 0, i32 5
  %22 = load %struct.TYPE_2__*, %struct.TYPE_2__** %21, align 8
  %23 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %22, i32 0, i32 0
  %24 = load %struct.ubifs_info*, %struct.ubifs_info** %23, align 8
  store %struct.ubifs_info* %24, %struct.ubifs_info** %11, align 8
  %25 = load i8*, i8** %7, align 8
  %26 = call i32 @strlen(i8* %25)
  store i32 %26, i32* %14, align 4
  %27 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 0
  store i32 1, i32* %27, align 4
  %28 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 1
  store i32 1, i32* %28, align 4
  %29 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 2
  store i32 1, i32* %29, align 4
  %30 = getelementptr inbounds %struct.ubifs_budget_req, %struct.ubifs_budget_req* %16, i32 0, i32 3
  %31 = load i32, i32* %14, align 4
  %32 = call i32 @ALIGN(i32 %31, i32 8)
  store i32 %32, i32* %30, align 4
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = load i8*, i8** %7, align 8
  %35 = load %struct.inode*, %struct.inode** %5, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 4
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @dbg_gen(i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str, i64 0, i64 0), %struct.dentry* %33, i8* %34, i32 %37)
  %39 = load %struct.inode*, %struct.inode** %5, align 8
  %40 = load i8*, i8** %7, align 8
  %41 = load i32, i32* %14, align 4
  %42 = load i32, i32* @UBIFS_MAX_INO_DATA, align 4
  %43 = call i32 @fscrypt_prepare_symlink(%struct.inode* %39, i8* %40, i32 %41, i32 %42, %struct.fscrypt_str* %15)
  store i32 %43, i32* %12, align 4
  %44 = load i32, i32* %12, align 4
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %48

46:                                               ; preds = %3
  %47 = load i32, i32* %12, align 4
  store i32 %47, i32* %4, align 4
  br label %209

48:                                               ; preds = %3
  %49 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %50 = call i32 @ubifs_budget_space(%struct.ubifs_info* %49, %struct.ubifs_budget_req* %16)
  store i32 %50, i32* %12, align 4
  %51 = load i32, i32* %12, align 4
  %52 = icmp ne i32 %51, 0
  br i1 %52, label %53, label %55

53:                                               ; preds = %48
  %54 = load i32, i32* %12, align 4
  store i32 %54, i32* %4, align 4
  br label %209

55:                                               ; preds = %48
  %56 = load %struct.inode*, %struct.inode** %5, align 8
  %57 = load %struct.dentry*, %struct.dentry** %6, align 8
  %58 = getelementptr inbounds %struct.dentry, %struct.dentry* %57, i32 0, i32 0
  %59 = call i32 @fscrypt_setup_filename(%struct.inode* %56, i32* %58, i32 0, %struct.fscrypt_name* %17)
  store i32 %59, i32* %12, align 4
  %60 = load i32, i32* %12, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %55
  br label %205

63:                                               ; preds = %55
  %64 = call i32 @fname_len(%struct.fscrypt_name* %17)
  %65 = call i32 @CALC_DENT_SIZE(i32 %64)
  store i32 %65, i32* %13, align 4
  %66 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %67 = load %struct.inode*, %struct.inode** %5, align 8
  %68 = load i32, i32* @S_IFLNK, align 4
  %69 = load i32, i32* @S_IRWXUGO, align 4
  %70 = or i32 %68, %69
  %71 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %66, %struct.inode* %67, i32 %70)
  store %struct.inode* %71, %struct.inode** %8, align 8
  %72 = load %struct.inode*, %struct.inode** %8, align 8
  %73 = call i64 @IS_ERR(%struct.inode* %72)
  %74 = icmp ne i64 %73, 0
  br i1 %74, label %75, label %78

75:                                               ; preds = %63
  %76 = load %struct.inode*, %struct.inode** %8, align 8
  %77 = call i32 @PTR_ERR(%struct.inode* %76)
  store i32 %77, i32* %12, align 4
  br label %203

78:                                               ; preds = %63
  %79 = load %struct.inode*, %struct.inode** %8, align 8
  %80 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %79)
  store %struct.ubifs_inode* %80, %struct.ubifs_inode** %9, align 8
  %81 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 0
  %82 = load i32, i32* %81, align 8
  %83 = load i32, i32* @GFP_NOFS, align 4
  %84 = call i64 @kmalloc(i32 %82, i32 %83)
  %85 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %86 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %85, i32 0, i32 3
  store i64 %84, i64* %86, align 8
  %87 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %88 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %87, i32 0, i32 3
  %89 = load i64, i64* %88, align 8
  %90 = icmp ne i64 %89, 0
  br i1 %90, label %94, label %91

91:                                               ; preds = %78
  %92 = load i32, i32* @ENOMEM, align 4
  %93 = sub nsw i32 0, %92
  store i32 %93, i32* %12, align 4
  br label %198

94:                                               ; preds = %78
  %95 = load %struct.inode*, %struct.inode** %8, align 8
  %96 = call i64 @IS_ENCRYPTED(%struct.inode* %95)
  %97 = icmp ne i64 %96, 0
  br i1 %97, label %98, label %111

98:                                               ; preds = %94
  %99 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %100 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %99, i32 0, i32 3
  %101 = load i64, i64* %100, align 8
  %102 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 1
  store i64 %101, i64* %102, align 8
  %103 = load %struct.inode*, %struct.inode** %8, align 8
  %104 = load i8*, i8** %7, align 8
  %105 = load i32, i32* %14, align 4
  %106 = call i32 @fscrypt_encrypt_symlink(%struct.inode* %103, i8* %104, i32 %105, %struct.fscrypt_str* %15)
  store i32 %106, i32* %12, align 4
  %107 = load i32, i32* %12, align 4
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %110

109:                                              ; preds = %98
  br label %198

110:                                              ; preds = %98
  br label %125

111:                                              ; preds = %94
  %112 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %113 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %112, i32 0, i32 3
  %114 = load i64, i64* %113, align 8
  %115 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 1
  %116 = load i64, i64* %115, align 8
  %117 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @memcpy(i64 %114, i64 %116, i32 %118)
  %120 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %121 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %120, i32 0, i32 3
  %122 = load i64, i64* %121, align 8
  %123 = load %struct.inode*, %struct.inode** %8, align 8
  %124 = getelementptr inbounds %struct.inode, %struct.inode* %123, i32 0, i32 3
  store i64 %122, i64* %124, align 8
  br label %125

125:                                              ; preds = %111, %110
  %126 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 0
  %127 = load i32, i32* %126, align 8
  %128 = sub nsw i32 %127, 1
  %129 = load %struct.ubifs_inode*, %struct.ubifs_inode** %9, align 8
  %130 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %129, i32 0, i32 0
  store i32 %128, i32* %130, align 8
  %131 = getelementptr inbounds %struct.fscrypt_str, %struct.fscrypt_str* %15, i32 0, i32 0
  %132 = load i32, i32* %131, align 8
  %133 = sub nsw i32 %132, 1
  %134 = load %struct.inode*, %struct.inode** %8, align 8
  %135 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %134)
  %136 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %135, i32 0, i32 1
  store i32 %133, i32* %136, align 4
  %137 = load %struct.inode*, %struct.inode** %8, align 8
  %138 = getelementptr inbounds %struct.inode, %struct.inode* %137, i32 0, i32 0
  store i32 %133, i32* %138, align 8
  %139 = load %struct.inode*, %struct.inode** %5, align 8
  %140 = load %struct.inode*, %struct.inode** %8, align 8
  %141 = load %struct.dentry*, %struct.dentry** %6, align 8
  %142 = getelementptr inbounds %struct.dentry, %struct.dentry* %141, i32 0, i32 0
  %143 = call i32 @ubifs_init_security(%struct.inode* %139, %struct.inode* %140, i32* %142)
  store i32 %143, i32* %12, align 4
  %144 = load i32, i32* %12, align 4
  %145 = icmp ne i32 %144, 0
  br i1 %145, label %146, label %147

146:                                              ; preds = %125
  br label %198

147:                                              ; preds = %125
  %148 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %149 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %148, i32 0, i32 2
  %150 = call i32 @mutex_lock(i32* %149)
  %151 = load i32, i32* %13, align 4
  %152 = load %struct.inode*, %struct.inode** %5, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 0
  %154 = load i32, i32* %153, align 8
  %155 = add nsw i32 %154, %151
  store i32 %155, i32* %153, align 8
  %156 = load %struct.inode*, %struct.inode** %5, align 8
  %157 = getelementptr inbounds %struct.inode, %struct.inode* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 8
  %159 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %160 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %159, i32 0, i32 1
  store i32 %158, i32* %160, align 4
  %161 = load %struct.inode*, %struct.inode** %8, align 8
  %162 = getelementptr inbounds %struct.inode, %struct.inode* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = load %struct.inode*, %struct.inode** %5, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 1
  store i32 %163, i32* %165, align 4
  %166 = load %struct.inode*, %struct.inode** %5, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 2
  store i32 %163, i32* %167, align 8
  %168 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %169 = load %struct.inode*, %struct.inode** %5, align 8
  %170 = load %struct.inode*, %struct.inode** %8, align 8
  %171 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %168, %struct.inode* %169, %struct.fscrypt_name* %17, %struct.inode* %170, i32 0, i32 0)
  store i32 %171, i32* %12, align 4
  %172 = load i32, i32* %12, align 4
  %173 = icmp ne i32 %172, 0
  br i1 %173, label %174, label %175

174:                                              ; preds = %147
  br label %184

175:                                              ; preds = %147
  %176 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %177 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %176, i32 0, i32 2
  %178 = call i32 @mutex_unlock(i32* %177)
  %179 = load %struct.inode*, %struct.inode** %8, align 8
  %180 = call i32 @insert_inode_hash(%struct.inode* %179)
  %181 = load %struct.dentry*, %struct.dentry** %6, align 8
  %182 = load %struct.inode*, %struct.inode** %8, align 8
  %183 = call i32 @d_instantiate(%struct.dentry* %181, %struct.inode* %182)
  store i32 0, i32* %12, align 4
  br label %203

184:                                              ; preds = %174
  %185 = load i32, i32* %13, align 4
  %186 = load %struct.inode*, %struct.inode** %5, align 8
  %187 = getelementptr inbounds %struct.inode, %struct.inode* %186, i32 0, i32 0
  %188 = load i32, i32* %187, align 8
  %189 = sub nsw i32 %188, %185
  store i32 %189, i32* %187, align 8
  %190 = load %struct.inode*, %struct.inode** %5, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 0
  %192 = load i32, i32* %191, align 8
  %193 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %194 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %193, i32 0, i32 1
  store i32 %192, i32* %194, align 4
  %195 = load %struct.ubifs_inode*, %struct.ubifs_inode** %10, align 8
  %196 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %195, i32 0, i32 2
  %197 = call i32 @mutex_unlock(i32* %196)
  br label %198

198:                                              ; preds = %184, %146, %109, %91
  %199 = load %struct.inode*, %struct.inode** %8, align 8
  %200 = call i32 @make_bad_inode(%struct.inode* %199)
  %201 = load %struct.inode*, %struct.inode** %8, align 8
  %202 = call i32 @iput(%struct.inode* %201)
  br label %203

203:                                              ; preds = %198, %175, %75
  %204 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %17)
  br label %205

205:                                              ; preds = %203, %62
  %206 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %207 = call i32 @ubifs_release_budget(%struct.ubifs_info* %206, %struct.ubifs_budget_req* %16)
  %208 = load i32, i32* %12, align 4
  store i32 %208, i32* %4, align 4
  br label %209

209:                                              ; preds = %205, %53, %46
  %210 = load i32, i32* %4, align 4
  ret i32 %210
}

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #1

declare dso_local i32 @strlen(i8*) #1

declare dso_local i32 @ALIGN(i32, i32) #1

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i8*, i32) #1

declare dso_local i32 @fscrypt_prepare_symlink(%struct.inode*, i8*, i32, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #1

declare dso_local i32 @CALC_DENT_SIZE(i32) #1

declare dso_local i32 @fname_len(%struct.fscrypt_name*) #1

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #1

declare dso_local i64 @IS_ERR(%struct.inode*) #1

declare dso_local i32 @PTR_ERR(%struct.inode*) #1

declare dso_local i64 @kmalloc(i32, i32) #1

declare dso_local i64 @IS_ENCRYPTED(%struct.inode*) #1

declare dso_local i32 @fscrypt_encrypt_symlink(%struct.inode*, i8*, i32, %struct.fscrypt_str*) #1

declare dso_local i32 @memcpy(i64, i64, i32) #1

declare dso_local i32 @ubifs_init_security(%struct.inode*, %struct.inode*, i32*) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @insert_inode_hash(%struct.inode*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

declare dso_local i32 @make_bad_inode(%struct.inode*) #1

declare dso_local i32 @iput(%struct.inode*) #1

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #1

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
