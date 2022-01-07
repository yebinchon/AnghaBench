; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_mknod.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_dir.c_jffs2_mknod.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i32, i32, i32*, i32 }
%struct.dentry = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i32, %union.jffs2_device_node* }
%union.jffs2_device_node = type { i8* }
%struct.jffs2_inode_info = type { i32, i32, i32, %struct.jffs2_full_dnode* }
%struct.jffs2_full_dnode = type { i32, i32, i32, i32, i32*, i32 }
%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_raw_inode = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.jffs2_raw_dirent = type { i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.jffs2_full_dirent = type { i32, i32, i32, i32, i32*, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@ALLOC_NORMAL = common dso_local global i32 0, align 4
@JFFS2_SUMMARY_INODE_SIZE = common dso_local global i32 0, align 4
@jffs2_file_inode_operations = common dso_local global i32 0, align 4
@JFFS2_COMPR_NONE = common dso_local global i32 0, align 4
@JFFS2_MAGIC_BITMASK = common dso_local global i32 0, align 4
@JFFS2_NODETYPE_DIRENT = common dso_local global i32 0, align 4
@S_IFMT = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.dentry*, i32, i32)* @jffs2_mknod to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @jffs2_mknod(%struct.inode* %0, %struct.dentry* %1, i32 %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.inode*, align 8
  %7 = alloca %struct.dentry*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca %struct.jffs2_inode_info*, align 8
  %11 = alloca %struct.jffs2_inode_info*, align 8
  %12 = alloca %struct.jffs2_sb_info*, align 8
  %13 = alloca %struct.inode*, align 8
  %14 = alloca %struct.jffs2_raw_inode*, align 8
  %15 = alloca %struct.jffs2_raw_dirent*, align 8
  %16 = alloca %struct.jffs2_full_dnode*, align 8
  %17 = alloca %struct.jffs2_full_dirent*, align 8
  %18 = alloca i32, align 4
  %19 = alloca %union.jffs2_device_node, align 8
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %6, align 8
  store %struct.dentry* %1, %struct.dentry** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32 %3, i32* %9, align 4
  store i32 0, i32* %20, align 4
  %23 = call %union.jffs2_device_node* (...) @jffs2_alloc_raw_inode()
  %24 = bitcast %union.jffs2_device_node* %23 to %struct.jffs2_raw_inode*
  store %struct.jffs2_raw_inode* %24, %struct.jffs2_raw_inode** %14, align 8
  %25 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %26 = icmp ne %struct.jffs2_raw_inode* %25, null
  br i1 %26, label %30, label %27

27:                                               ; preds = %4
  %28 = load i32, i32* @ENOMEM, align 4
  %29 = sub nsw i32 0, %28
  store i32 %29, i32* %5, align 4
  br label %339

30:                                               ; preds = %4
  %31 = load %struct.inode*, %struct.inode** %6, align 8
  %32 = getelementptr inbounds %struct.inode, %struct.inode* %31, i32 0, i32 5
  %33 = load i32, i32* %32, align 8
  %34 = call %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32 %33)
  store %struct.jffs2_sb_info* %34, %struct.jffs2_sb_info** %12, align 8
  %35 = load i32, i32* %8, align 4
  %36 = call i64 @S_ISBLK(i32 %35)
  %37 = icmp ne i64 %36, 0
  br i1 %37, label %42, label %38

38:                                               ; preds = %30
  %39 = load i32, i32* %8, align 4
  %40 = call i64 @S_ISCHR(i32 %39)
  %41 = icmp ne i64 %40, 0
  br i1 %41, label %42, label %45

42:                                               ; preds = %38, %30
  %43 = load i32, i32* %9, align 4
  %44 = call i32 @jffs2_encode_dev(%union.jffs2_device_node* %19, i32 %43)
  store i32 %44, i32* %20, align 4
  br label %45

45:                                               ; preds = %42, %38
  %46 = load %struct.dentry*, %struct.dentry** %7, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 0
  %48 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  store i32 %49, i32* %18, align 4
  %50 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %51 = load i32, i32* %20, align 4
  %52 = sext i32 %51 to i64
  %53 = add i64 120, %52
  %54 = trunc i64 %53 to i32
  %55 = load i32, i32* @ALLOC_NORMAL, align 4
  %56 = load i32, i32* @JFFS2_SUMMARY_INODE_SIZE, align 4
  %57 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %50, i32 %54, i32* %21, i32 %55, i32 %56)
  store i32 %57, i32* %22, align 4
  %58 = load i32, i32* %22, align 4
  %59 = icmp ne i32 %58, 0
  br i1 %59, label %60, label %65

60:                                               ; preds = %45
  %61 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %62 = bitcast %struct.jffs2_raw_inode* %61 to %union.jffs2_device_node*
  %63 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %62)
  %64 = load i32, i32* %22, align 4
  store i32 %64, i32* %5, align 4
  br label %339

65:                                               ; preds = %45
  %66 = load %struct.inode*, %struct.inode** %6, align 8
  %67 = bitcast %struct.inode* %66 to %struct.jffs2_full_dnode*
  %68 = load i32, i32* %8, align 4
  %69 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %70 = bitcast %struct.jffs2_raw_inode* %69 to %union.jffs2_device_node*
  %71 = call %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode* %67, i32 %68, %union.jffs2_device_node* %70)
  %72 = bitcast %struct.jffs2_full_dnode* %71 to %struct.inode*
  store %struct.inode* %72, %struct.inode** %13, align 8
  %73 = load %struct.inode*, %struct.inode** %13, align 8
  %74 = bitcast %struct.inode* %73 to %struct.jffs2_full_dnode*
  %75 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %74)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %65
  %78 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %79 = bitcast %struct.jffs2_raw_inode* %78 to %union.jffs2_device_node*
  %80 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %79)
  %81 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %82 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %81)
  %83 = load %struct.inode*, %struct.inode** %13, align 8
  %84 = bitcast %struct.inode* %83 to %struct.jffs2_full_dnode*
  %85 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %84)
  store i32 %85, i32* %5, align 4
  br label %339

86:                                               ; preds = %65
  %87 = load %struct.inode*, %struct.inode** %13, align 8
  %88 = getelementptr inbounds %struct.inode, %struct.inode* %87, i32 0, i32 4
  store i32* @jffs2_file_inode_operations, i32** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %13, align 8
  %90 = bitcast %struct.inode* %89 to %struct.jffs2_full_dnode*
  %91 = load %struct.inode*, %struct.inode** %13, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 3
  %93 = load i32, i32* %92, align 4
  %94 = load i32, i32* %9, align 4
  %95 = call i32 @init_special_inode(%struct.jffs2_full_dnode* %90, i32 %93, i32 %94)
  %96 = load %struct.inode*, %struct.inode** %13, align 8
  %97 = bitcast %struct.inode* %96 to %struct.jffs2_full_dnode*
  %98 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %97)
  store %struct.jffs2_inode_info* %98, %struct.jffs2_inode_info** %10, align 8
  %99 = load i32, i32* %20, align 4
  %100 = call i8* @cpu_to_je32(i32 %99)
  %101 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %102 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %101, i32 0, i32 14
  store i8* %100, i8** %102, align 8
  %103 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %104 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %103, i32 0, i32 15
  store i8* %100, i8** %104, align 8
  %105 = load i32, i32* %20, align 4
  %106 = sext i32 %105 to i64
  %107 = add i64 120, %106
  %108 = trunc i64 %107 to i32
  %109 = call i8* @cpu_to_je32(i32 %108)
  %110 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %111 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %110, i32 0, i32 9
  store i8* %109, i8** %111, align 8
  %112 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %113 = bitcast %struct.jffs2_raw_inode* %112 to %union.jffs2_device_node*
  %114 = call i32 @crc32(i32 0, %union.jffs2_device_node* %113, i32 0)
  %115 = call i8* @cpu_to_je32(i32 %114)
  %116 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %117 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %116, i32 0, i32 8
  store i8* %115, i8** %117, align 8
  %118 = load i32, i32* @JFFS2_COMPR_NONE, align 4
  %119 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %120 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %119, i32 0, i32 13
  store i32 %118, i32* %120, align 8
  %121 = load i32, i32* %20, align 4
  %122 = call i32 @crc32(i32 0, %union.jffs2_device_node* %19, i32 %121)
  %123 = call i8* @cpu_to_je32(i32 %122)
  %124 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %125 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %124, i32 0, i32 12
  store i8* %123, i8** %125, align 8
  %126 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %127 = bitcast %struct.jffs2_raw_inode* %126 to %union.jffs2_device_node*
  %128 = call i32 @crc32(i32 0, %union.jffs2_device_node* %127, i32 112)
  %129 = call i8* @cpu_to_je32(i32 %128)
  %130 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %131 = getelementptr inbounds %struct.jffs2_raw_inode, %struct.jffs2_raw_inode* %130, i32 0, i32 4
  store i8* %129, i8** %131, align 8
  %132 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %133 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %134 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %135 = bitcast %struct.jffs2_raw_inode* %134 to %union.jffs2_device_node*
  %136 = bitcast %union.jffs2_device_node* %19 to i8*
  %137 = load i32, i32* %20, align 4
  %138 = load i32, i32* @ALLOC_NORMAL, align 4
  %139 = call %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info* %132, %struct.jffs2_inode_info* %133, %union.jffs2_device_node* %135, i8* %136, i32 %137, i32 %138)
  store %struct.jffs2_full_dnode* %139, %struct.jffs2_full_dnode** %16, align 8
  %140 = load %struct.jffs2_raw_inode*, %struct.jffs2_raw_inode** %14, align 8
  %141 = bitcast %struct.jffs2_raw_inode* %140 to %union.jffs2_device_node*
  %142 = call i32 @jffs2_free_raw_inode(%union.jffs2_device_node* %141)
  %143 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %144 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %143)
  %145 = icmp ne i64 %144, 0
  br i1 %145, label %146, label %154

146:                                              ; preds = %86
  %147 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %148 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %147, i32 0, i32 1
  %149 = call i32 @mutex_unlock(i32* %148)
  %150 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %151 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %150)
  %152 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %153 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %152)
  store i32 %153, i32* %22, align 4
  br label %334

154:                                              ; preds = %86
  %155 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %16, align 8
  %156 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %157 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %156, i32 0, i32 3
  store %struct.jffs2_full_dnode* %155, %struct.jffs2_full_dnode** %157, align 8
  %158 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %10, align 8
  %159 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %158, i32 0, i32 1
  %160 = call i32 @mutex_unlock(i32* %159)
  %161 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %162 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %161)
  %163 = load %struct.inode*, %struct.inode** %13, align 8
  %164 = bitcast %struct.inode* %163 to %struct.jffs2_full_dnode*
  %165 = load %struct.inode*, %struct.inode** %6, align 8
  %166 = bitcast %struct.inode* %165 to %struct.jffs2_full_dnode*
  %167 = load %struct.dentry*, %struct.dentry** %7, align 8
  %168 = getelementptr inbounds %struct.dentry, %struct.dentry* %167, i32 0, i32 0
  %169 = call i32 @jffs2_init_security(%struct.jffs2_full_dnode* %164, %struct.jffs2_full_dnode* %166, %struct.TYPE_2__* %168)
  store i32 %169, i32* %22, align 4
  %170 = load i32, i32* %22, align 4
  %171 = icmp ne i32 %170, 0
  br i1 %171, label %172, label %173

172:                                              ; preds = %154
  br label %334

173:                                              ; preds = %154
  %174 = load %struct.inode*, %struct.inode** %13, align 8
  %175 = bitcast %struct.inode* %174 to %struct.jffs2_full_dnode*
  %176 = call i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode* %175)
  store i32 %176, i32* %22, align 4
  %177 = load i32, i32* %22, align 4
  %178 = icmp ne i32 %177, 0
  br i1 %178, label %179, label %180

179:                                              ; preds = %173
  br label %334

180:                                              ; preds = %173
  %181 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %182 = load i32, i32* %18, align 4
  %183 = sext i32 %182 to i64
  %184 = add i64 120, %183
  %185 = trunc i64 %184 to i32
  %186 = load i32, i32* @ALLOC_NORMAL, align 4
  %187 = load i32, i32* %18, align 4
  %188 = call i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32 %187)
  %189 = call i32 @jffs2_reserve_space(%struct.jffs2_sb_info* %181, i32 %185, i32* %21, i32 %186, i32 %188)
  store i32 %189, i32* %22, align 4
  %190 = load i32, i32* %22, align 4
  %191 = icmp ne i32 %190, 0
  br i1 %191, label %192, label %193

192:                                              ; preds = %180
  br label %334

193:                                              ; preds = %180
  %194 = call %union.jffs2_device_node* (...) @jffs2_alloc_raw_dirent()
  %195 = bitcast %union.jffs2_device_node* %194 to %struct.jffs2_raw_dirent*
  store %struct.jffs2_raw_dirent* %195, %struct.jffs2_raw_dirent** %15, align 8
  %196 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %197 = icmp ne %struct.jffs2_raw_dirent* %196, null
  br i1 %197, label %203, label %198

198:                                              ; preds = %193
  %199 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %200 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %199)
  %201 = load i32, i32* @ENOMEM, align 4
  %202 = sub nsw i32 0, %201
  store i32 %202, i32* %22, align 4
  br label %334

203:                                              ; preds = %193
  %204 = load %struct.inode*, %struct.inode** %6, align 8
  %205 = bitcast %struct.inode* %204 to %struct.jffs2_full_dnode*
  %206 = call %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode* %205)
  store %struct.jffs2_inode_info* %206, %struct.jffs2_inode_info** %11, align 8
  %207 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %208 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %207, i32 0, i32 1
  %209 = call i32 @mutex_lock(i32* %208)
  %210 = load i32, i32* @JFFS2_MAGIC_BITMASK, align 4
  %211 = call i8* @cpu_to_je16(i32 %210)
  %212 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %213 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %212, i32 0, i32 11
  store i8* %211, i8** %213, align 8
  %214 = load i32, i32* @JFFS2_NODETYPE_DIRENT, align 4
  %215 = call i8* @cpu_to_je16(i32 %214)
  %216 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %217 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %216, i32 0, i32 10
  store i8* %215, i8** %217, align 8
  %218 = load i32, i32* %18, align 4
  %219 = sext i32 %218 to i64
  %220 = add i64 120, %219
  %221 = trunc i64 %220 to i32
  %222 = call i8* @cpu_to_je32(i32 %221)
  %223 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %224 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %223, i32 0, i32 9
  store i8* %222, i8** %224, align 8
  %225 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %226 = bitcast %struct.jffs2_raw_dirent* %225 to %union.jffs2_device_node*
  %227 = call i32 @crc32(i32 0, %union.jffs2_device_node* %226, i32 0)
  %228 = call i8* @cpu_to_je32(i32 %227)
  %229 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %230 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %229, i32 0, i32 8
  store i8* %228, i8** %230, align 8
  %231 = load %struct.inode*, %struct.inode** %6, align 8
  %232 = getelementptr inbounds %struct.inode, %struct.inode* %231, i32 0, i32 0
  %233 = load i32, i32* %232, align 8
  %234 = call i8* @cpu_to_je32(i32 %233)
  %235 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %236 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %235, i32 0, i32 7
  store i8* %234, i8** %236, align 8
  %237 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %238 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %237, i32 0, i32 0
  %239 = load i32, i32* %238, align 8
  %240 = add nsw i32 %239, 1
  store i32 %240, i32* %238, align 8
  %241 = call i8* @cpu_to_je32(i32 %240)
  %242 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %243 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %242, i32 0, i32 6
  store i8* %241, i8** %243, align 8
  %244 = load %struct.inode*, %struct.inode** %13, align 8
  %245 = getelementptr inbounds %struct.inode, %struct.inode* %244, i32 0, i32 0
  %246 = load i32, i32* %245, align 8
  %247 = call i8* @cpu_to_je32(i32 %246)
  %248 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %249 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %248, i32 0, i32 5
  store i8* %247, i8** %249, align 8
  %250 = call i32 (...) @JFFS2_NOW()
  %251 = call i8* @cpu_to_je32(i32 %250)
  %252 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %253 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %252, i32 0, i32 2
  store i8* %251, i8** %253, align 8
  %254 = load i32, i32* %18, align 4
  %255 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %256 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %255, i32 0, i32 0
  store i32 %254, i32* %256, align 8
  %257 = load i32, i32* %8, align 4
  %258 = load i32, i32* @S_IFMT, align 4
  %259 = and i32 %257, %258
  %260 = ashr i32 %259, 12
  %261 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %262 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %261, i32 0, i32 1
  store i32 %260, i32* %262, align 4
  %263 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %264 = bitcast %struct.jffs2_raw_dirent* %263 to %union.jffs2_device_node*
  %265 = call i32 @crc32(i32 0, %union.jffs2_device_node* %264, i32 112)
  %266 = call i8* @cpu_to_je32(i32 %265)
  %267 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %268 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %267, i32 0, i32 4
  store i8* %266, i8** %268, align 8
  %269 = load %struct.dentry*, %struct.dentry** %7, align 8
  %270 = getelementptr inbounds %struct.dentry, %struct.dentry* %269, i32 0, i32 0
  %271 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %270, i32 0, i32 1
  %272 = load %union.jffs2_device_node*, %union.jffs2_device_node** %271, align 8
  %273 = load i32, i32* %18, align 4
  %274 = call i32 @crc32(i32 0, %union.jffs2_device_node* %272, i32 %273)
  %275 = call i8* @cpu_to_je32(i32 %274)
  %276 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %277 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %276, i32 0, i32 3
  store i8* %275, i8** %277, align 8
  %278 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %279 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %280 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %281 = bitcast %struct.jffs2_raw_dirent* %280 to %union.jffs2_device_node*
  %282 = load %struct.dentry*, %struct.dentry** %7, align 8
  %283 = getelementptr inbounds %struct.dentry, %struct.dentry* %282, i32 0, i32 0
  %284 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %283, i32 0, i32 1
  %285 = load %union.jffs2_device_node*, %union.jffs2_device_node** %284, align 8
  %286 = load i32, i32* %18, align 4
  %287 = load i32, i32* @ALLOC_NORMAL, align 4
  %288 = call %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info* %278, %struct.jffs2_inode_info* %279, %union.jffs2_device_node* %281, %union.jffs2_device_node* %285, i32 %286, i32 %287)
  %289 = bitcast %struct.jffs2_full_dnode* %288 to %struct.jffs2_full_dirent*
  store %struct.jffs2_full_dirent* %289, %struct.jffs2_full_dirent** %17, align 8
  %290 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %291 = bitcast %struct.jffs2_full_dirent* %290 to %struct.jffs2_full_dnode*
  %292 = call i64 @IS_ERR(%struct.jffs2_full_dnode* %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %294, label %306

294:                                              ; preds = %203
  %295 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %296 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %295)
  %297 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %298 = bitcast %struct.jffs2_raw_dirent* %297 to %union.jffs2_device_node*
  %299 = call i32 @jffs2_free_raw_dirent(%union.jffs2_device_node* %298)
  %300 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %301 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %300, i32 0, i32 1
  %302 = call i32 @mutex_unlock(i32* %301)
  %303 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %304 = bitcast %struct.jffs2_full_dirent* %303 to %struct.jffs2_full_dnode*
  %305 = call i32 @PTR_ERR(%struct.jffs2_full_dnode* %304)
  store i32 %305, i32* %22, align 4
  br label %334

306:                                              ; preds = %203
  %307 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %308 = getelementptr inbounds %struct.jffs2_raw_dirent, %struct.jffs2_raw_dirent* %307, i32 0, i32 2
  %309 = load i8*, i8** %308, align 8
  %310 = call i32 @je32_to_cpu(i8* %309)
  %311 = call i32 @ITIME(i32 %310)
  %312 = load %struct.inode*, %struct.inode** %6, align 8
  %313 = getelementptr inbounds %struct.inode, %struct.inode* %312, i32 0, i32 1
  store i32 %311, i32* %313, align 4
  %314 = load %struct.inode*, %struct.inode** %6, align 8
  %315 = getelementptr inbounds %struct.inode, %struct.inode* %314, i32 0, i32 2
  store i32 %311, i32* %315, align 8
  %316 = load %struct.jffs2_raw_dirent*, %struct.jffs2_raw_dirent** %15, align 8
  %317 = bitcast %struct.jffs2_raw_dirent* %316 to %union.jffs2_device_node*
  %318 = call i32 @jffs2_free_raw_dirent(%union.jffs2_device_node* %317)
  %319 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %320 = load %struct.jffs2_full_dirent*, %struct.jffs2_full_dirent** %17, align 8
  %321 = bitcast %struct.jffs2_full_dirent* %320 to %struct.jffs2_full_dnode*
  %322 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %323 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %322, i32 0, i32 2
  %324 = call i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info* %319, %struct.jffs2_full_dnode* %321, i32* %323)
  %325 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %11, align 8
  %326 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %325, i32 0, i32 1
  %327 = call i32 @mutex_unlock(i32* %326)
  %328 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %12, align 8
  %329 = call i32 @jffs2_complete_reservation(%struct.jffs2_sb_info* %328)
  %330 = load %struct.dentry*, %struct.dentry** %7, align 8
  %331 = load %struct.inode*, %struct.inode** %13, align 8
  %332 = bitcast %struct.inode* %331 to %struct.jffs2_full_dnode*
  %333 = call i32 @d_instantiate_new(%struct.dentry* %330, %struct.jffs2_full_dnode* %332)
  store i32 0, i32* %5, align 4
  br label %339

334:                                              ; preds = %294, %198, %192, %179, %172, %146
  %335 = load %struct.inode*, %struct.inode** %13, align 8
  %336 = bitcast %struct.inode* %335 to %struct.jffs2_full_dnode*
  %337 = call i32 @iget_failed(%struct.jffs2_full_dnode* %336)
  %338 = load i32, i32* %22, align 4
  store i32 %338, i32* %5, align 4
  br label %339

339:                                              ; preds = %334, %306, %77, %60, %27
  %340 = load i32, i32* %5, align 4
  ret i32 %340
}

declare dso_local %union.jffs2_device_node* @jffs2_alloc_raw_inode(...) #1

declare dso_local %struct.jffs2_sb_info* @JFFS2_SB_INFO(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @jffs2_encode_dev(%union.jffs2_device_node*, i32) #1

declare dso_local i32 @jffs2_reserve_space(%struct.jffs2_sb_info*, i32, i32*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_inode(%union.jffs2_device_node*) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_new_inode(%struct.jffs2_full_dnode*, i32, %union.jffs2_device_node*) #1

declare dso_local i64 @IS_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @jffs2_complete_reservation(%struct.jffs2_sb_info*) #1

declare dso_local i32 @PTR_ERR(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @init_special_inode(%struct.jffs2_full_dnode*, i32, i32) #1

declare dso_local %struct.jffs2_inode_info* @JFFS2_INODE_INFO(%struct.jffs2_full_dnode*) #1

declare dso_local i8* @cpu_to_je32(i32) #1

declare dso_local i32 @crc32(i32, %union.jffs2_device_node*, i32) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dnode(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %union.jffs2_device_node*, i8*, i32, i32) #1

declare dso_local i32 @mutex_unlock(i32*) #1

declare dso_local i32 @jffs2_init_security(%struct.jffs2_full_dnode*, %struct.jffs2_full_dnode*, %struct.TYPE_2__*) #1

declare dso_local i32 @jffs2_init_acl_post(%struct.jffs2_full_dnode*) #1

declare dso_local i32 @JFFS2_SUMMARY_DIRENT_SIZE(i32) #1

declare dso_local %union.jffs2_device_node* @jffs2_alloc_raw_dirent(...) #1

declare dso_local i32 @mutex_lock(i32*) #1

declare dso_local i8* @cpu_to_je16(i32) #1

declare dso_local i32 @JFFS2_NOW(...) #1

declare dso_local %struct.jffs2_full_dnode* @jffs2_write_dirent(%struct.jffs2_sb_info*, %struct.jffs2_inode_info*, %union.jffs2_device_node*, %union.jffs2_device_node*, i32, i32) #1

declare dso_local i32 @jffs2_free_raw_dirent(%union.jffs2_device_node*) #1

declare dso_local i32 @ITIME(i32) #1

declare dso_local i32 @je32_to_cpu(i8*) #1

declare dso_local i32 @jffs2_add_fd_to_list(%struct.jffs2_sb_info*, %struct.jffs2_full_dnode*, i32*) #1

declare dso_local i32 @d_instantiate_new(%struct.dentry*, %struct.jffs2_full_dnode*) #1

declare dso_local i32 @iget_failed(%struct.jffs2_full_dnode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
