; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_mkdir.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_mkdir.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32*, i32*, i32 }
%struct.dentry = type { %struct.TYPE_4__ }
%struct.TYPE_4__ = type { i32, %struct.jffs2_raw_inode* }
%struct.jffs2_raw_inode = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_inode_info = type { i32, i32, i32, %struct.jffs2_full_dnode*, %struct.TYPE_3__* }
%struct.jffs2_full_dnode = type { i32, i32, i32, i32*, i32*, i32 }
%struct.TYPE_3__ = type { i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_raw_dirent = type { i32, i8*, i8*, i8*, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8* }
%struct.jffs2_full_dirent = type { i32, i32, i32, i32*, i32*, i32 }

@S_IFDIR = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@ALLOC_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@jffs2_dir_inode_operations = common dso_local global i32 0, align 4
@jffs2_dir_operations = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@DT_DIR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32)* @jffs2_mkdir to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_mkdir(%struct.inode* %0, %struct.dentry* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.inode*, align 8
  %6 = alloca %struct.dentry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.jffs2_inode_info*, align 8
  %9 = alloca %struct.jffs2_inode_info*, align 8
  %10 = alloca %struct.jffs2_sb_info*, align 8
  %11 = alloca %struct.inode*, align 8
  %12 = alloca %struct.jffs2_raw_inode*, align 8
  %13 = alloca %struct.jffs2_raw_dirent*, align 8
  %14 = alloca %struct.jffs2_full_dnode*, align 8
  %15 = alloca %struct.jffs2_full_dirent*, align 8
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %5, align 8
  store %struct.dentry* %1, %struct.dentry** %6, align 8
  store i32 %2, i32* %7, align 4
  %19 = load i32, i32* @S_IFDIR, align 4
  %20 = load i32, i32* %7, align 4
  %21 = or i32 %20, %19
  store i32 %21, i32* %7, align 4
  %22 = call %struct.jffs2_raw_inode* (...) @jffs2_alloc_raw_inode()
  store %struct.jffs2_raw_inode* %22, %struct.jffs2_raw_inode** %12, align 8
  %23 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %24 = icmp ne %struct.jffs2_raw_inode* %23, null
  br i1 %24, label %28, label %25

25:                                               ; preds = %3
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %4, align 4
  br label %295

28:                                               ; preds = %3
  %29 = load %struct.inode*, %struct.inode** %5, align 8
  %30 = getelementptr inbounds %struct.inode, %struct.inode* %29, i32 0, i32 5
  %31 = load i32, i32* %30, align 8
  %32 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %31)
  store %struct.jffs2_sb_info* %32, %struct.jffs2_sb_info** %10, align 8
  %33 = load %struct.dentry*, %struct.dentry** %6, align 8
  %34 = getelementptr inbounds %struct.dentry, %struct.dentry* %33, i32 0, i32 0
  %35 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 8
  store i32 %36, i32* %16, align 4
  %37 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %38 = load i32, i32* @ALLOC_NORMAL, align 4
  %39 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %40 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %37, i32 104, i32* %17, i32 %38, i32 %39)
  store i32 %40, i32* %18, align 4
  %41 = load i32, i32* %18, align 4
  %42 = icmp ne i32 %41, 0
  br i1 %42, label %43, label %47

43:                                               ; preds = %28
  %44 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %45 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %44)
  %46 = load i32, i32* %18, align 4
  store i32 %46, i32* %4, align 4
  br label %295

47:                                               ; preds = %28
  %48 = load %struct.inode*, %struct.inode** %5, align 8
  %49 = bitcast %struct.inode* %48 to %struct.jffs2_full_dnode*
  %50 = load i32, i32* %7, align 4
  %51 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %52 = call %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode* %49, i32 %50, %struct.jffs2_raw_inode* %51)
  %53 = bitcast %struct.jffs2_full_dnode* %52 to %struct.inode*
  store %struct.inode* %53, %struct.inode** %11, align 8
  %54 = load %struct.inode*, %struct.inode** %11, align 8
  %55 = bitcast %struct.inode* %54 to %struct.jffs2_full_dnode*
  %56 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %55)
  %57 = icmp ne i64 %56, 0
  br i1 %57, label %58, label %66

58:                                               ; preds = %47
  %59 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %60 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %59)
  %61 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %62 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %61)
  %63 = load %struct.inode*, %struct.inode** %11, align 8
  %64 = bitcast %struct.inode* %63 to %struct.jffs2_full_dnode*
  %65 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %64)
  store i32 %65, i32* %4, align 4
  br label %295

66:                                               ; preds = %47
  %67 = load %struct.inode*, %struct.inode** %11, align 8
  %68 = getelementptr inbounds %struct.inode, %struct.inode* %67, i32 0, i32 4
  store i32* @jffs2_dir_inode_operations, i32** %68, align 8
  %69 = load %struct.inode*, %struct.inode** %11, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  store i32* @jffs2_dir_operations, i32** %70, align 8
  %71 = load %struct.inode*, %struct.inode** %11, align 8
  %72 = bitcast %struct.inode* %71 to %struct.jffs2_full_dnode*
  %73 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %72)
  store %struct.jffs2_inode_info* %73, %struct.jffs2_inode_info** %8, align 8
  %74 = load %struct.inode*, %struct.inode** %11, align 8
  %75 = bitcast %struct.inode* %74 to %struct.jffs2_full_dnode*
  %76 = call i32 @set_nlink(%struct.jffs2_full_dnode* %75, i32 2)
  %77 = load %struct.inode*, %struct.inode** %5, align 8
  %78 = getelementptr inbounds %struct.inode, %struct.inode* %77, i32 0, i32 0
  %79 = load i32, i32* %78, align 8
  %80 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %81 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %80, i32 0, i32 4
  %82 = load %struct.TYPE_3__*, %struct.TYPE_3__** %81, align 8
  %83 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %82, i32 0, i32 0
  store i32 %79, i32* %83, align 4
  %84 = call i8* @cpu_to_je32(i32 0)
  %85 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %86 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %85, i32 0, i32 12
  store i8* %84, i8** %86, align 8
  %87 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %88 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %87, i32 96)
  %89 = call i8* @cpu_to_je32(i32 %88)
  %90 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %91 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %90, i32 0, i32 3
  store i8* %89, i8** %91, align 8
  %92 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %93 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %94 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %95 = load i32, i32* @ALLOC_NORMAL, align 4
  %96 = call %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info* %92, %struct.jffs2_inode_info* %93, %struct.jffs2_raw_inode* %94, i32* null, i32 0, i32 %95)
  store %struct.jffs2_full_dnode* %96, %struct.jffs2_full_dnode** %14, align 8
  %97 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %12, align 8
  %98 = call i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode* %97)
  %99 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %100 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %99)
  %101 = icmp ne i64 %100, 0
  br i1 %101, label %102, label %110

102:                                              ; preds = %66
  %103 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %104 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %103, i32 0, i32 1
  %105 = call i32 @mutex_unlock(i32* %104)
  %106 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %107 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %106)
  %108 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %109 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %108)
  store i32 %109, i32* %18, align 4
  br label %290

110:                                              ; preds = %66
  %111 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %14, align 8
  %112 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %113 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %112, i32 0, i32 3
  store %struct.jffs2_full_dnode* %111, %struct.jffs2_full_dnode** %113, align 8
  %114 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %8, align 8
  %115 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %114, i32 0, i32 1
  %116 = call i32 @mutex_unlock(i32* %115)
  %117 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %118 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %117)
  %119 = load %struct.inode*, %struct.inode** %11, align 8
  %120 = bitcast %struct.inode* %119 to %struct.jffs2_full_dnode*
  %121 = load %struct.inode*, %struct.inode** %5, align 8
  %122 = bitcast %struct.inode* %121 to %struct.jffs2_full_dnode*
  %123 = load %struct.dentry*, %struct.dentry** %6, align 8
  %124 = getelementptr inbounds %struct.dentry, %struct.dentry* %123, i32 0, i32 0
  %125 = call i32 @jffs2_init_security(%struct.jffs2_full_dnode* %120, %struct.jffs2_full_dnode* %122, %struct.TYPE_4__* %124)
  store i32 %125, i32* %18, align 4
  %126 = load i32, i32* %18, align 4
  %127 = icmp ne i32 %126, 0
  br i1 %127, label %128, label %129

128:                                              ; preds = %110
  br label %290

129:                                              ; preds = %110
  %130 = load %struct.inode*, %struct.inode** %11, align 8
  %131 = bitcast %struct.inode* %130 to %struct.jffs2_full_dnode*
  %132 = call i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode* %131)
  store i32 %132, i32* %18, align 4
  %133 = load i32, i32* %18, align 4
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %135, label %136

135:                                              ; preds = %129
  br label %290

136:                                              ; preds = %129
  %137 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %138 = load i32, i32* %16, align 4
  %139 = sext i32 %138 to i64
  %140 = add i64 104, %139
  %141 = trunc i64 %140 to i32
  %142 = load i32, i32* @ALLOC_NORMAL, align 4
  %143 = load i32, i32* %16, align 4
  %144 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %143)
  %145 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %137, i32 %141, i32* %17, i32 %142, i32 %144)
  store i32 %145, i32* %18, align 4
  %146 = load i32, i32* %18, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %136
  br label %290

149:                                              ; preds = %136
  %150 = call %struct.jffs2_raw_inode* (...) @jffs2_alloc_raw_dirent()
  %151 = bitcast %struct.jffs2_raw_inode* %150 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %151, %struct.jffs2_raw_dirent** %13, align 8
  %152 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %153 = icmp ne %struct.jffs2_raw_dirent* %152, null
  br i1 %153, label %159, label %154

154:                                              ; preds = %149
  %155 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %156 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %155)
  %157 = load i32, i32* @ENOMEM, align 4
  %158 = sub nsw i32 0, %157
  store i32 %158, i32* %18, align 4
  br label %290

159:                                              ; preds = %149
  %160 = load %struct.inode*, %struct.inode** %5, align 8
  %161 = bitcast %struct.inode* %160 to %struct.jffs2_full_dnode*
  %162 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %161)
  store %struct.jffs2_inode_info* %162, %struct.jffs2_inode_info** %9, align 8
  %163 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %164 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %163, i32 0, i32 1
  %165 = call i32 @mutex_lock(i32* %164)
  %166 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %167 = call i8* @cpu_to_je16(i32 %166)
  %168 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %169 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %168, i32 0, i32 11
  store i8* %167, i8** %169, align 8
  %170 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %171 = call i8* @cpu_to_je16(i32 %170)
  %172 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %173 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %172, i32 0, i32 10
  store i8* %171, i8** %173, align 8
  %174 = load i32, i32* %16, align 4
  %175 = sext i32 %174 to i64
  %176 = add i64 104, %175
  %177 = trunc i64 %176 to i32
  %178 = call i8* @cpu_to_je32(i32 %177)
  %179 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %180 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %179, i32 0, i32 9
  store i8* %178, i8** %180, align 8
  %181 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %182 = bitcast %struct.jffs2_raw_dirent* %181 to %struct.jffs2_raw_inode*
  %183 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %182, i32 0)
  %184 = call i8* @cpu_to_je32(i32 %183)
  %185 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %186 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %185, i32 0, i32 8
  store i8* %184, i8** %186, align 8
  %187 = load %struct.inode*, %struct.inode** %5, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 0
  %189 = load i32, i32* %188, align 8
  %190 = call i8* @cpu_to_je32(i32 %189)
  %191 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %192 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %191, i32 0, i32 7
  store i8* %190, i8** %192, align 8
  %193 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %194 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %193, i32 0, i32 0
  %195 = load i32, i32* %194, align 8
  %196 = add nsw i32 %195, 1
  store i32 %196, i32* %194, align 8
  %197 = call i8* @cpu_to_je32(i32 %196)
  %198 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %199 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %198, i32 0, i32 6
  store i8* %197, i8** %199, align 8
  %200 = load %struct.inode*, %struct.inode** %11, align 8
  %201 = getelementptr inbounds %struct.inode, %struct.inode* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = call i8* @cpu_to_je32(i32 %202)
  %204 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %205 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %204, i32 0, i32 5
  store i8* %203, i8** %205, align 8
  %206 = call i32 (...) @JFFS2_NOW()
  %207 = call i8* @cpu_to_je32(i32 %206)
  %208 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %209 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %208, i32 0, i32 1
  store i8* %207, i8** %209, align 8
  %210 = load i32, i32* %16, align 4
  %211 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %212 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load i32, i32* @DT_DIR, align 4
  %214 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %215 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %214, i32 0, i32 4
  store i32 %213, i32* %215, align 8
  %216 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %217 = bitcast %struct.jffs2_raw_dirent* %216 to %struct.jffs2_raw_inode*
  %218 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %217, i32 96)
  %219 = call i8* @cpu_to_je32(i32 %218)
  %220 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %221 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %220, i32 0, i32 3
  store i8* %219, i8** %221, align 8
  %222 = load %struct.dentry*, %struct.dentry** %6, align 8
  %223 = getelementptr inbounds %struct.dentry, %struct.dentry* %222, i32 0, i32 0
  %224 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %223, i32 0, i32 1
  %225 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %224, align 8
  %226 = load i32, i32* %16, align 4
  %227 = call i32 @crc32(i32 0, %struct.jffs2_raw_inode* %225, i32 %226)
  %228 = call i8* @cpu_to_je32(i32 %227)
  %229 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %230 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %229, i32 0, i32 2
  store i8* %228, i8** %230, align 8
  %231 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %232 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %233 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %234 = bitcast %struct.jffs2_raw_dirent* %233 to %struct.jffs2_raw_inode*
  %235 = load %struct.dentry*, %struct.dentry** %6, align 8
  %236 = getelementptr inbounds %struct.dentry, %struct.dentry* %235, i32 0, i32 0
  %237 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %236, i32 0, i32 1
  %238 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %237, align 8
  %239 = load i32, i32* %16, align 4
  %240 = load i32, i32* @ALLOC_NORMAL, align 4
  %241 = call %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info* %231, %struct.jffs2_inode_info* %232, %struct.jffs2_raw_inode* %234, %struct.jffs2_raw_inode* %238, i32 %239, i32 %240)
  %242 = bitcast %struct.jffs2_full_dnode* %241 to %struct.jffs2_full_dirent*
  store %struct.jffs2_full_dirent* %242, %struct.jffs2_full_dirent** %15, align 8
  %243 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %244 = bitcast %struct.jffs2_full_dirent* %243 to %struct.jffs2_full_dnode*
  %245 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %244)
  %246 = icmp ne i64 %245, 0
  br i1 %246, label %247, label %259

247:                                              ; preds = %159
  %248 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %249 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %248)
  %250 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %251 = bitcast %struct.jffs2_raw_dirent* %250 to %struct.jffs2_raw_inode*
  %252 = call i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode* %251)
  %253 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %254 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %253, i32 0, i32 1
  %255 = call i32 @mutex_unlock(i32* %254)
  %256 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %257 = bitcast %struct.jffs2_full_dirent* %256 to %struct.jffs2_full_dnode*
  %258 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %257)
  store i32 %258, i32* %18, align 4
  br label %290

259:                                              ; preds = %159
  %260 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %261 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %260, i32 0, i32 1
  %262 = load i8*, i8** %261, align 8
  %263 = call i32 @je32_to_cpu(i8* %262)
  %264 = call i32 @ITIME(i32 %263)
  %265 = load %struct.inode*, %struct.inode** %5, align 8
  %266 = getelementptr inbounds %struct.inode, %struct.inode* %265, i32 0, i32 1
  store i32 %264, i32* %266, align 4
  %267 = load %struct.inode*, %struct.inode** %5, align 8
  %268 = getelementptr inbounds %struct.inode, %struct.inode* %267, i32 0, i32 2
  store i32 %264, i32* %268, align 8
  %269 = load %struct.inode*, %struct.inode** %5, align 8
  %270 = bitcast %struct.inode* %269 to %struct.jffs2_full_dnode*
  %271 = call i32 @inc_nlink(%struct.jffs2_full_dnode* %270)
  %272 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %13, align 8
  %273 = bitcast %struct.jffs2_raw_dirent* %272 to %struct.jffs2_raw_inode*
  %274 = call i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode* %273)
  %275 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %276 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %15, align 8
  %277 = bitcast %struct.jffs2_full_dirent* %276 to %struct.jffs2_full_dnode*
  %278 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %279 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %278, i32 0, i32 2
  %280 = call i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %275, %struct.jffs2_full_dnode* %277, i32* %279)
  %281 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %9, align 8
  %282 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %281, i32 0, i32 1
  %283 = call i32 @mutex_unlock(i32* %282)
  %284 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %10, align 8
  %285 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %284)
  %286 = load %struct.dentry*, %struct.dentry** %6, align 8
  %287 = load %struct.inode*, %struct.inode** %11, align 8
  %288 = bitcast %struct.inode* %287 to %struct.jffs2_full_dnode*
  %289 = call i32 @d_instantiate_new(%struct.dentry* %286, %struct.jffs2_full_dnode* %288)
  store i32 0, i32* %4, align 4
  br label %295

290:                                              ; preds = %247, %154, %148, %135, %128, %102
  %291 = load %struct.inode*, %struct.inode** %11, align 8
  %292 = bitcast %struct.inode* %291 to %struct.jffs2_full_dnode*
  %293 = call i32 @iget_failed(%struct.jffs2_full_dnode* %292)
  %294 = load i32, i32* %18, align 4
  store i32 %294, i32* %4, align 4
  br label %295

295:                                              ; preds = %290, %259, %58, %43, %25
  %296 = load i32, i32* %4, align 4
  ret i32 %296
}

declare dso_local %struct.jffs2_raw_inode* @jffs2_alloc_raw_inode(...) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i32 @jffs2_reserve_space(%struct.jffs2_sb_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_inode(%struct.jffs2_raw_inode*) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode*, i32, %struct.jffs2_raw_inode*) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_complete_reservation(%struct.jffs2_sb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @set_nlink(%struct.jffs2_full_dnode*, i32) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @crc32(i32, %struct.jffs2_raw_inode*, i32) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*, i32*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_init_security(%struct.jffs2_full_dnode*, %struct.jffs2_full_dnode*, %struct.TYPE_4__*) #1

declare dso_local i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local %struct.jffs2_raw_inode* @jffs2_alloc_raw_dirent(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @JFFS2_NOW(...) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_dirent(%struct.jffs2_raw_inode*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @je32_to_cpu(i8*) #1

declare dso_local i32 @inc_nlink(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info*, %struct.jffs2_full_dnode*, i32*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.jffs2_full_dnode*) #1

declare dso_local i32 @iget_failed(%struct.jffs2_full_dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
