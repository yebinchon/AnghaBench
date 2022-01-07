; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_new_iroot.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_btree.c_xfs_btree_new_iroot.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_btree_cur = type { i32, i32, i32*, %struct.TYPE_12__, %struct.TYPE_7__* }
%struct.TYPE_12__ = type { %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_7__ = type { i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %union.xfs_btree_ptr*, i32*)* }
%union.xfs_btree_ptr = type { i32 }
%struct.xfs_buf = type { i32 }
%struct.xfs_btree_block = type { i32, i32, %struct.TYPE_10__ }
%struct.TYPE_10__ = type { %struct.TYPE_9__, %struct.TYPE_8__ }
%struct.TYPE_9__ = type { i8* }
%struct.TYPE_8__ = type { i8* }
%union.xfs_btree_key = type { i32 }

@newroot = common dso_local global i32 0, align 4
@XFS_BTREE_ROOT_IN_INODE = common dso_local global i32 0, align 4
@alloc = common dso_local global i32 0, align 4
@XFS_BTREE_CRC_BLOCKS = common dso_local global i32 0, align 4
@XFS_BTREE_LONG_PTRS = common dso_local global i32 0, align 4
@XFS_BB_ALL_BITS = common dso_local global i32 0, align 4
@XFS_ILOG_CORE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_btree_new_iroot(%struct.xfs_btree_cur* %0, i32* %1, i32* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_btree_cur*, align 8
  %6 = alloca i32*, align 8
  %7 = alloca i32*, align 8
  %8 = alloca %struct.xfs_buf*, align 8
  %9 = alloca %struct.xfs_btree_block*, align 8
  %10 = alloca %struct.xfs_btree_block*, align 8
  %11 = alloca %union.xfs_btree_key*, align 8
  %12 = alloca %union.xfs_btree_ptr*, align 8
  %13 = alloca %union.xfs_btree_key*, align 8
  %14 = alloca %union.xfs_btree_ptr*, align 8
  %15 = alloca %union.xfs_btree_ptr, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  store %struct.xfs_btree_cur* %0, %struct.xfs_btree_cur** %5, align 8
  store i32* %1, i32** %6, align 8
  store i32* %2, i32** %7, align 8
  %19 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %20 = load i32, i32* @newroot, align 4
  %21 = call i32 @XFS_BTREE_STATS_INC(%struct.xfs_btree_cur* %19, i32 %20)
  %22 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %22, i32 0, i32 0
  %24 = load i32, i32* %23, align 8
  %25 = load i32, i32* @XFS_BTREE_ROOT_IN_INODE, align 4
  %26 = and i32 %24, %25
  %27 = call i32 @ASSERT(i32 %26)
  %28 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %28, i32 0, i32 1
  %30 = load i32, i32* %29, align 4
  %31 = sub nsw i32 %30, 1
  store i32 %31, i32* %16, align 4
  %32 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %33 = call %struct.xfs_btree_block* @xfs_btree_get_iroot(%struct.xfs_btree_cur* %32)
  store %struct.xfs_btree_block* %33, %struct.xfs_btree_block** %9, align 8
  %34 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %35 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %36 = call %union.xfs_btree_ptr* @xfs_btree_ptr_addr(%struct.xfs_btree_cur* %34, i32 1, %struct.xfs_btree_block* %35)
  store %union.xfs_btree_ptr* %36, %union.xfs_btree_ptr** %14, align 8
  %37 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %38 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %37, i32 0, i32 4
  %39 = load %struct.TYPE_7__*, %struct.TYPE_7__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %39, i32 0, i32 0
  %41 = load i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %union.xfs_btree_ptr*, i32*)*, i32 (%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %union.xfs_btree_ptr*, i32*)** %40, align 8
  %42 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %43 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %14, align 8
  %44 = load i32*, i32** %7, align 8
  %45 = call i32 %41(%struct.xfs_btree_cur* %42, %union.xfs_btree_ptr* %43, %union.xfs_btree_ptr* %15, i32* %44)
  store i32 %45, i32* %17, align 4
  %46 = load i32, i32* %17, align 4
  %47 = icmp ne i32 %46, 0
  br i1 %47, label %48, label %49

48:                                               ; preds = %3
  br label %218

49:                                               ; preds = %3
  %50 = load i32*, i32** %7, align 8
  %51 = load i32, i32* %50, align 4
  %52 = icmp eq i32 %51, 0
  br i1 %52, label %53, label %54

53:                                               ; preds = %49
  store i32 0, i32* %4, align 4
  br label %220

54:                                               ; preds = %49
  %55 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %56 = load i32, i32* @alloc, align 4
  %57 = call i32 @XFS_BTREE_STATS_INC(%struct.xfs_btree_cur* %55, i32 %56)
  %58 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %59 = call i32 @xfs_btree_get_buf_block(%struct.xfs_btree_cur* %58, %union.xfs_btree_ptr* %15, %struct.xfs_btree_block** %10, %struct.xfs_buf** %8)
  store i32 %59, i32* %17, align 4
  %60 = load i32, i32* %17, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %63

62:                                               ; preds = %54
  br label %218

63:                                               ; preds = %54
  %64 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %65 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %66 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %67 = call i32 @xfs_btree_block_len(%struct.xfs_btree_cur* %66)
  %68 = call i32 @memcpy(%struct.xfs_btree_block* %64, %struct.xfs_btree_block* %65, i32 %67)
  %69 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %70 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = load i32, i32* @XFS_BTREE_CRC_BLOCKS, align 4
  %73 = and i32 %71, %72
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %75, label %101

75:                                               ; preds = %63
  %76 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %77 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 8
  %79 = load i32, i32* @XFS_BTREE_LONG_PTRS, align 4
  %80 = and i32 %78, %79
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %82, label %91

82:                                               ; preds = %75
  %83 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %84 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %83, i32 0, i32 0
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be64(i32 %85)
  %87 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %88 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %87, i32 0, i32 2
  %89 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %88, i32 0, i32 1
  %90 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %89, i32 0, i32 0
  store i8* %86, i8** %90, align 8
  br label %100

91:                                               ; preds = %75
  %92 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %93 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 4
  %95 = call i8* @cpu_to_be64(i32 %94)
  %96 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %97 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %96, i32 0, i32 2
  %98 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %97, i32 0, i32 0
  %99 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %98, i32 0, i32 0
  store i8* %95, i8** %99, align 8
  br label %100

100:                                              ; preds = %91, %82
  br label %101

101:                                              ; preds = %100, %63
  %102 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %103 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %102, i32 0, i32 1
  %104 = call i32 @be16_add_cpu(i32* %103, i32 1)
  %105 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %106 = call i32 @xfs_btree_set_numrecs(%struct.xfs_btree_block* %105, i32 1)
  %107 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %108 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %107, i32 0, i32 1
  %109 = load i32, i32* %108, align 4
  %110 = add nsw i32 %109, 1
  store i32 %110, i32* %108, align 4
  %111 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %112 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %111, i32 0, i32 2
  %113 = load i32*, i32** %112, align 8
  %114 = load i32, i32* %16, align 4
  %115 = add nsw i32 %114, 1
  %116 = sext i32 %115 to i64
  %117 = getelementptr inbounds i32, i32* %113, i64 %116
  store i32 1, i32* %117, align 4
  %118 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %119 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %9, align 8
  %120 = call %union.xfs_btree_key* @xfs_btree_key_addr(%struct.xfs_btree_cur* %118, i32 1, %struct.xfs_btree_block* %119)
  store %union.xfs_btree_key* %120, %union.xfs_btree_key** %13, align 8
  %121 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %122 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %123 = call %union.xfs_btree_key* @xfs_btree_key_addr(%struct.xfs_btree_cur* %121, i32 1, %struct.xfs_btree_block* %122)
  store %union.xfs_btree_key* %123, %union.xfs_btree_key** %11, align 8
  %124 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %125 = load %union.xfs_btree_key*, %union.xfs_btree_key** %11, align 8
  %126 = load %union.xfs_btree_key*, %union.xfs_btree_key** %13, align 8
  %127 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %128 = call i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block* %127)
  %129 = call i32 @xfs_btree_copy_keys(%struct.xfs_btree_cur* %124, %union.xfs_btree_key* %125, %union.xfs_btree_key* %126, i32 %128)
  %130 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %131 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %132 = call %union.xfs_btree_ptr* @xfs_btree_ptr_addr(%struct.xfs_btree_cur* %130, i32 1, %struct.xfs_btree_block* %131)
  store %union.xfs_btree_ptr* %132, %union.xfs_btree_ptr** %12, align 8
  store i32 0, i32* %18, align 4
  br label %133

133:                                              ; preds = %150, %101
  %134 = load i32, i32* %18, align 4
  %135 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %136 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %135, i32 0, i32 0
  %137 = load i32, i32* %136, align 8
  %138 = call i32 @be16_to_cpu(i32 %137)
  %139 = icmp slt i32 %134, %138
  br i1 %139, label %140, label %153

140:                                              ; preds = %133
  %141 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %142 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %14, align 8
  %143 = load i32, i32* %18, align 4
  %144 = load i32, i32* %16, align 4
  %145 = call i32 @xfs_btree_debug_check_ptr(%struct.xfs_btree_cur* %141, %union.xfs_btree_ptr* %142, i32 %143, i32 %144)
  store i32 %145, i32* %17, align 4
  %146 = load i32, i32* %17, align 4
  %147 = icmp ne i32 %146, 0
  br i1 %147, label %148, label %149

148:                                              ; preds = %140
  br label %218

149:                                              ; preds = %140
  br label %150

150:                                              ; preds = %149
  %151 = load i32, i32* %18, align 4
  %152 = add nsw i32 %151, 1
  store i32 %152, i32* %18, align 4
  br label %133

153:                                              ; preds = %133
  %154 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %155 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %12, align 8
  %156 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %14, align 8
  %157 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %158 = call i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block* %157)
  %159 = call i32 @xfs_btree_copy_ptrs(%struct.xfs_btree_cur* %154, %union.xfs_btree_ptr* %155, %union.xfs_btree_ptr* %156, i32 %158)
  %160 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %161 = load i32, i32* %16, align 4
  %162 = call i32 @xfs_btree_debug_check_ptr(%struct.xfs_btree_cur* %160, %union.xfs_btree_ptr* %15, i32 0, i32 %161)
  store i32 %162, i32* %17, align 4
  %163 = load i32, i32* %17, align 4
  %164 = icmp ne i32 %163, 0
  br i1 %164, label %165, label %166

165:                                              ; preds = %153
  br label %218

166:                                              ; preds = %153
  %167 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %168 = load %union.xfs_btree_ptr*, %union.xfs_btree_ptr** %14, align 8
  %169 = call i32 @xfs_btree_copy_ptrs(%struct.xfs_btree_cur* %167, %union.xfs_btree_ptr* %168, %union.xfs_btree_ptr* %15, i32 1)
  %170 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %171 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %170, i32 0, i32 3
  %172 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %171, i32 0, i32 0
  %173 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %172, i32 0, i32 1
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %176 = call i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block* %175)
  %177 = sub nsw i32 1, %176
  %178 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %179 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %178, i32 0, i32 3
  %180 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %179, i32 0, i32 0
  %181 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %180, i32 0, i32 0
  %182 = load i32, i32* %181, align 8
  %183 = call i32 @xfs_iroot_realloc(i32 %174, i32 %177, i32 %182)
  %184 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %185 = load i32, i32* %16, align 4
  %186 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %187 = call i32 @xfs_btree_setbuf(%struct.xfs_btree_cur* %184, i32 %185, %struct.xfs_buf* %186)
  %188 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %189 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %190 = load i32, i32* @XFS_BB_ALL_BITS, align 4
  %191 = call i32 @xfs_btree_log_block(%struct.xfs_btree_cur* %188, %struct.xfs_buf* %189, i32 %190)
  %192 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %193 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %194 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %195 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %194, i32 0, i32 0
  %196 = load i32, i32* %195, align 8
  %197 = call i32 @be16_to_cpu(i32 %196)
  %198 = call i32 @xfs_btree_log_keys(%struct.xfs_btree_cur* %192, %struct.xfs_buf* %193, i32 1, i32 %197)
  %199 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %200 = load %struct.xfs_buf*, %struct.xfs_buf** %8, align 8
  %201 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %202 = getelementptr inbounds %struct.xfs_btree_block, %struct.xfs_btree_block* %201, i32 0, i32 0
  %203 = load i32, i32* %202, align 8
  %204 = call i32 @be16_to_cpu(i32 %203)
  %205 = call i32 @xfs_btree_log_ptrs(%struct.xfs_btree_cur* %199, %struct.xfs_buf* %200, i32 1, i32 %204)
  %206 = load i32, i32* @XFS_ILOG_CORE, align 4
  %207 = load %struct.xfs_btree_cur*, %struct.xfs_btree_cur** %5, align 8
  %208 = getelementptr inbounds %struct.xfs_btree_cur, %struct.xfs_btree_cur* %207, i32 0, i32 3
  %209 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %209, i32 0, i32 0
  %211 = load i32, i32* %210, align 8
  %212 = call i32 @xfs_ilog_fbroot(i32 %211)
  %213 = or i32 %206, %212
  %214 = load i32*, i32** %6, align 8
  %215 = load i32, i32* %214, align 4
  %216 = or i32 %215, %213
  store i32 %216, i32* %214, align 4
  %217 = load i32*, i32** %7, align 8
  store i32 1, i32* %217, align 4
  store i32 0, i32* %4, align 4
  br label %220

218:                                              ; preds = %165, %148, %62, %48
  %219 = load i32, i32* %17, align 4
  store i32 %219, i32* %4, align 4
  br label %220

220:                                              ; preds = %218, %166, %53
  %221 = load i32, i32* %4, align 4
  ret i32 %221
}

declare dso_local i32 @XFS_BTREE_STATS_INC(%struct.xfs_btree_cur*, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_btree_block* @xfs_btree_get_iroot(%struct.xfs_btree_cur*) #1

declare dso_local %union.xfs_btree_ptr* @xfs_btree_ptr_addr(%struct.xfs_btree_cur*, i32, %struct.xfs_btree_block*) #1

declare dso_local i32 @xfs_btree_get_buf_block(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %struct.xfs_btree_block**, %struct.xfs_buf**) #1

declare dso_local i32 @memcpy(%struct.xfs_btree_block*, %struct.xfs_btree_block*, i32) #1

declare dso_local i32 @xfs_btree_block_len(%struct.xfs_btree_cur*) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @be16_add_cpu(i32*, i32) #1

declare dso_local i32 @xfs_btree_set_numrecs(%struct.xfs_btree_block*, i32) #1

declare dso_local %union.xfs_btree_key* @xfs_btree_key_addr(%struct.xfs_btree_cur*, i32, %struct.xfs_btree_block*) #1

declare dso_local i32 @xfs_btree_copy_keys(%struct.xfs_btree_cur*, %union.xfs_btree_key*, %union.xfs_btree_key*, i32) #1

declare dso_local i32 @xfs_btree_get_numrecs(%struct.xfs_btree_block*) #1

declare dso_local i32 @be16_to_cpu(i32) #1

declare dso_local i32 @xfs_btree_debug_check_ptr(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, i32, i32) #1

declare dso_local i32 @xfs_btree_copy_ptrs(%struct.xfs_btree_cur*, %union.xfs_btree_ptr*, %union.xfs_btree_ptr*, i32) #1

declare dso_local i32 @xfs_iroot_realloc(i32, i32, i32) #1

declare dso_local i32 @xfs_btree_setbuf(%struct.xfs_btree_cur*, i32, %struct.xfs_buf*) #1

declare dso_local i32 @xfs_btree_log_block(%struct.xfs_btree_cur*, %struct.xfs_buf*, i32) #1

declare dso_local i32 @xfs_btree_log_keys(%struct.xfs_btree_cur*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_btree_log_ptrs(%struct.xfs_btree_cur*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i32 @xfs_ilog_fbroot(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
