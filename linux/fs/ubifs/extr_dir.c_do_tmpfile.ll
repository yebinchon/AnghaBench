; ModuleID = '/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_do_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ubifs/extr_dir.c_do_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ubifs_budget_req = type { i32, i32, i32 }
%struct.inode = type { i32*, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.ubifs_info* }
%struct.ubifs_info = type { i32 }
%struct.dentry = type { i32 }
%struct.ubifs_inode = type { i32, i32 }
%struct.fscrypt_name = type { i32 }

@__const.do_tmpfile.req = private unnamed_addr constant %struct.ubifs_budget_req { i32 1, i32 1, i32 0 }, align 4
@__const.do_tmpfile.ino_req = private unnamed_addr constant %struct.ubifs_budget_req { i32 0, i32 0, i32 1 }, align 4
@.str = private unnamed_addr constant [37 x i8] c"dent '%pd', mode %#hx in dir ino %lu\00", align 1
@WHITEOUT_DEV = common dso_local global i32 0, align 4
@ubifs_file_inode_operations = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [39 x i8] c"cannot create temporary file, error %d\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, %struct.inode**)* @do_tmpfile to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @do_tmpfile(%struct.inode* %0, %struct.dentry* %1, i32 %2, %struct.inode** %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode**, align 8
  %10 = alloca %struct.inode*, align 8
  %11 = alloca %struct.ubifs_info*, align 8
  %12 = alloca %struct.ubifs_budget_req, align 4
  %13 = alloca %struct.ubifs_budget_req, align 4
  %14 = alloca %struct.ubifs_inode*, align 8
  %15 = alloca %struct.ubifs_inode*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca %struct.fscrypt_name, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store %struct.inode** %3, %struct.inode*** %9, align 8
  %19 = load %struct.inode*, %struct.inode** %6, align 8
  %20 = getelementptr inbounds %struct.inode, %struct.inode* %19, i32 0, i32 3
  %21 = load %struct.TYPE_2__*, %struct.TYPE_2__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %21, i32 0, i32 0
  %23 = load %struct.ubifs_info*, %struct.ubifs_info** %22, align 8
  store %struct.ubifs_info* %23, %struct.ubifs_info** %11, align 8
  %24 = bitcast %struct.ubifs_budget_req* %12 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %24, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.do_tmpfile.req to i8*), i64 12, i1 false)
  %25 = bitcast %struct.ubifs_budget_req* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 4 %25, i8* align 4 bitcast (%struct.ubifs_budget_req* @__const.do_tmpfile.ino_req to i8*), i64 12, i1 false)
  %26 = load %struct.inode*, %struct.inode** %6, align 8
  %27 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %26)
  store %struct.ubifs_inode* %27, %struct.ubifs_inode** %15, align 8
  store i32 0, i32* %17, align 4
  %28 = load %struct.dentry*, %struct.dentry** %7, align 8
  %29 = load i32, i32* %8, align 4
  %30 = load %struct.inode*, %struct.inode** %6, align 8
  %31 = getelementptr inbounds %struct.inode, %struct.inode* %30, i32 0, i32 2
  %32 = load i32, i32* %31, align 4
  %33 = call i32 @dbg_gen(i8* getelementptr inbounds ([37 x i8], [37 x i8]* @.str, i64 0, i64 0), %struct.dentry* %28, i32 %29, i32 %32)
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.dentry*, %struct.dentry** %7, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 0
  %37 = call i32 @fscrypt_setup_filename(%struct.inode* %34, i32* %36, i32 0, %struct.fscrypt_name* %18)
  store i32 %37, i32* %16, align 4
  %38 = load i32, i32* %16, align 4
  %39 = icmp ne i32 %38, 0
  br i1 %39, label %40, label %42

40:                                               ; preds = %4
  %41 = load i32, i32* %16, align 4
  store i32 %41, i32* %5, align 4
  br label %170

42:                                               ; preds = %4
  %43 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %44 = call i32 @ubifs_budget_space(%struct.ubifs_info* %43, %struct.ubifs_budget_req* %12)
  store i32 %44, i32* %16, align 4
  %45 = load i32, i32* %16, align 4
  %46 = icmp ne i32 %45, 0
  br i1 %46, label %47, label %50

47:                                               ; preds = %42
  %48 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %18)
  %49 = load i32, i32* %16, align 4
  store i32 %49, i32* %5, align 4
  br label %170

50:                                               ; preds = %42
  %51 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %52 = call i32 @ubifs_budget_space(%struct.ubifs_info* %51, %struct.ubifs_budget_req* %13)
  store i32 %52, i32* %16, align 4
  %53 = load i32, i32* %16, align 4
  %54 = icmp ne i32 %53, 0
  br i1 %54, label %55, label %60

55:                                               ; preds = %50
  %56 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %57 = call i32 @ubifs_release_budget(%struct.ubifs_info* %56, %struct.ubifs_budget_req* %12)
  %58 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %18)
  %59 = load i32, i32* %16, align 4
  store i32 %59, i32* %5, align 4
  br label %170

60:                                               ; preds = %50
  %61 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %62 = load %struct.inode*, %struct.inode** %6, align 8
  %63 = load i32, i32* %8, align 4
  %64 = call %struct.inode* @ubifs_new_inode(%struct.ubifs_info* %61, %struct.inode* %62, i32 %63)
  store %struct.inode* %64, %struct.inode** %10, align 8
  %65 = load %struct.inode*, %struct.inode** %10, align 8
  %66 = call i64 @IS_ERR(%struct.inode* %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %71

68:                                               ; preds = %60
  %69 = load %struct.inode*, %struct.inode** %10, align 8
  %70 = call i32 @PTR_ERR(%struct.inode* %69)
  store i32 %70, i32* %16, align 4
  br label %156

71:                                               ; preds = %60
  %72 = load %struct.inode*, %struct.inode** %10, align 8
  %73 = call %struct.ubifs_inode* @ubifs_inode(%struct.inode* %72)
  store %struct.ubifs_inode* %73, %struct.ubifs_inode** %14, align 8
  %74 = load %struct.inode**, %struct.inode*** %9, align 8
  %75 = icmp ne %struct.inode** %74, null
  br i1 %75, label %76, label %90

76:                                               ; preds = %71
  %77 = load %struct.inode*, %struct.inode** %10, align 8
  %78 = load %struct.inode*, %struct.inode** %10, align 8
  %79 = getelementptr inbounds %struct.inode, %struct.inode* %78, i32 0, i32 1
  %80 = load i32, i32* %79, align 8
  %81 = load i32, i32* @WHITEOUT_DEV, align 4
  %82 = call i32 @init_special_inode(%struct.inode* %77, i32 %80, i32 %81)
  %83 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %84 = load %struct.inode*, %struct.inode** %10, align 8
  %85 = getelementptr inbounds %struct.inode, %struct.inode* %84, i32 0, i32 0
  %86 = load i32*, i32** %85, align 8
  %87 = icmp eq i32* %86, @ubifs_file_inode_operations
  %88 = zext i1 %87 to i32
  %89 = call i32 @ubifs_assert(%struct.ubifs_info* %83, i32 %88)
  br label %90

90:                                               ; preds = %76, %71
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = load %struct.inode*, %struct.inode** %10, align 8
  %93 = load %struct.dentry*, %struct.dentry** %7, align 8
  %94 = getelementptr inbounds %struct.dentry, %struct.dentry* %93, i32 0, i32 0
  %95 = call i32 @ubifs_init_security(%struct.inode* %91, %struct.inode* %92, i32* %94)
  store i32 %95, i32* %16, align 4
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %99

98:                                               ; preds = %90
  br label %147

99:                                               ; preds = %90
  %100 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %101 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %100, i32 0, i32 1
  %102 = call i32 @mutex_lock(i32* %101)
  %103 = load %struct.inode*, %struct.inode** %10, align 8
  %104 = call i32 @insert_inode_hash(%struct.inode* %103)
  %105 = load %struct.inode**, %struct.inode*** %9, align 8
  %106 = icmp ne %struct.inode** %105, null
  br i1 %106, label %107, label %114

107:                                              ; preds = %99
  %108 = load %struct.inode*, %struct.inode** %10, align 8
  %109 = call i32 @mark_inode_dirty(%struct.inode* %108)
  %110 = load %struct.inode*, %struct.inode** %10, align 8
  %111 = call i32 @drop_nlink(%struct.inode* %110)
  %112 = load %struct.inode*, %struct.inode** %10, align 8
  %113 = load %struct.inode**, %struct.inode*** %9, align 8
  store %struct.inode* %112, %struct.inode** %113, align 8
  br label %118

114:                                              ; preds = %99
  %115 = load %struct.dentry*, %struct.dentry** %7, align 8
  %116 = load %struct.inode*, %struct.inode** %10, align 8
  %117 = call i32 @d_tmpfile(%struct.dentry* %115, %struct.inode* %116)
  br label %118

118:                                              ; preds = %114, %107
  %119 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %120 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %121 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %120, i32 0, i32 0
  %122 = load i32, i32* %121, align 4
  %123 = call i32 @ubifs_assert(%struct.ubifs_info* %119, i32 %122)
  store i32 1, i32* %17, align 4
  %124 = load %struct.ubifs_inode*, %struct.ubifs_inode** %14, align 8
  %125 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %124, i32 0, i32 1
  %126 = call i32 @mutex_unlock(i32* %125)
  %127 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %128 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %127, i32 0, i32 1
  %129 = call i32 @mutex_lock(i32* %128)
  %130 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %131 = load %struct.inode*, %struct.inode** %6, align 8
  %132 = load %struct.inode*, %struct.inode** %10, align 8
  %133 = call i32 @ubifs_jnl_update(%struct.ubifs_info* %130, %struct.inode* %131, %struct.fscrypt_name* %18, %struct.inode* %132, i32 1, i32 0)
  store i32 %133, i32* %16, align 4
  %134 = load i32, i32* %16, align 4
  %135 = icmp ne i32 %134, 0
  br i1 %135, label %136, label %137

136:                                              ; preds = %118
  br label %143

137:                                              ; preds = %118
  %138 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %139 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %138, i32 0, i32 1
  %140 = call i32 @mutex_unlock(i32* %139)
  %141 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %142 = call i32 @ubifs_release_budget(%struct.ubifs_info* %141, %struct.ubifs_budget_req* %12)
  store i32 0, i32* %5, align 4
  br label %170

143:                                              ; preds = %136
  %144 = load %struct.ubifs_inode*, %struct.ubifs_inode** %15, align 8
  %145 = getelementptr inbounds %struct.ubifs_inode, %struct.ubifs_inode* %144, i32 0, i32 1
  %146 = call i32 @mutex_unlock(i32* %145)
  br label %147

147:                                              ; preds = %143, %98
  %148 = load %struct.inode*, %struct.inode** %10, align 8
  %149 = call i32 @make_bad_inode(%struct.inode* %148)
  %150 = load i32, i32* %17, align 4
  %151 = icmp ne i32 %150, 0
  br i1 %151, label %155, label %152

152:                                              ; preds = %147
  %153 = load %struct.inode*, %struct.inode** %10, align 8
  %154 = call i32 @iput(%struct.inode* %153)
  br label %155

155:                                              ; preds = %152, %147
  br label %156

156:                                              ; preds = %155, %68
  %157 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %158 = call i32 @ubifs_release_budget(%struct.ubifs_info* %157, %struct.ubifs_budget_req* %12)
  %159 = load i32, i32* %17, align 4
  %160 = icmp ne i32 %159, 0
  br i1 %160, label %164, label %161

161:                                              ; preds = %156
  %162 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %163 = call i32 @ubifs_release_budget(%struct.ubifs_info* %162, %struct.ubifs_budget_req* %13)
  br label %164

164:                                              ; preds = %161, %156
  %165 = call i32 @fscrypt_free_filename(%struct.fscrypt_name* %18)
  %166 = load %struct.ubifs_info*, %struct.ubifs_info** %11, align 8
  %167 = load i32, i32* %16, align 4
  %168 = call i32 @ubifs_err(%struct.ubifs_info* %166, i8* getelementptr inbounds ([39 x i8], [39 x i8]* @.str.1, i64 0, i64 0), i32 %167)
  %169 = load i32, i32* %16, align 4
  store i32 %169, i32* %5, align 4
  br label %170

170:                                              ; preds = %164, %137, %55, %47, %40
  %171 = load i32, i32* %5, align 4
  ret i32 %171
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

declare dso_local %struct.ubifs_inode* @ubifs_inode(%struct.inode*) #2

declare dso_local i32 @dbg_gen(i8*, %struct.dentry*, i32, i32) #2

declare dso_local i32 @fscrypt_setup_filename(%struct.inode*, i32*, i32, %struct.fscrypt_name*) #2

declare dso_local i32 @ubifs_budget_space(%struct.ubifs_info*, %struct.ubifs_budget_req*) #2

declare dso_local i32 @fscrypt_free_filename(%struct.fscrypt_name*) #2

declare dso_local i32 @ubifs_release_budget(%struct.ubifs_info*, %struct.ubifs_budget_req*) #2

declare dso_local %struct.inode* @ubifs_new_inode(%struct.ubifs_info*, %struct.inode*, i32) #2

declare dso_local i64 @IS_ERR(%struct.inode*) #2

declare dso_local i32 @PTR_ERR(%struct.inode*) #2

declare dso_local i32 @init_special_inode(%struct.inode*, i32, i32) #2

declare dso_local i32 @ubifs_assert(%struct.ubifs_info*, i32) #2

declare dso_local i32 @ubifs_init_security(%struct.inode*, %struct.inode*, i32*) #2

declare dso_local i32 @mutex_lock(i32*) #2

declare dso_local i32 @insert_inode_hash(%struct.inode*) #2

declare dso_local i32 @mark_inode_dirty(%struct.inode*) #2

declare dso_local i32 @drop_nlink(%struct.inode*) #2

declare dso_local i32 @d_tmpfile(%struct.dentry*, %struct.inode*) #2

declare dso_local i32 @mutex_unlock(i32*) #2

declare dso_local i32 @ubifs_jnl_update(%struct.ubifs_info*, %struct.inode*, %struct.fscrypt_name*, %struct.inode*, i32, i32) #2

declare dso_local i32 @make_bad_inode(%struct.inode*) #2

declare dso_local i32 @iput(%struct.inode*) #2

declare dso_local i32 @ubifs_err(%struct.ubifs_info*, i8*, i32) #2

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }
attributes #2 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
