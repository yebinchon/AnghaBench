; ModuleID = '/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_dinode_in.c'
source_filename = "/home/carl/AnghaBench/linux/fs/gfs2/extr_glops.c_gfs2_dinode_in.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.gfs2_inode = type { i64, %struct.TYPE_14__, i8*, i8*, i8*, i64, i8*, i64, i64, i64 }
%struct.TYPE_14__ = type { i32, %struct.TYPE_13__, %struct.TYPE_12__, %struct.timespec64, i64 }
%struct.TYPE_13__ = type { i8*, i64 }
%struct.TYPE_12__ = type { i8*, i64 }
%struct.timespec64 = type { i8*, i64 }
%struct.gfs2_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_11__ }
%struct.TYPE_11__ = type { i32, i32 }

@S_IFMT = common dso_local global i32 0, align 4
@GFS2_MAX_META_HEIGHT = common dso_local global i64 0, align 8
@GFS2_DIR_MAX_DEPTH = common dso_local global i64 0, align 8
@EIO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.gfs2_inode*, i8*)* @gfs2_dinode_in to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @gfs2_dinode_in(%struct.gfs2_inode* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.gfs2_inode*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.gfs2_dinode*, align 8
  %7 = alloca %struct.timespec64, align 8
  %8 = alloca i64, align 8
  %9 = alloca i64, align 8
  store %struct.gfs2_inode* %0, %struct.gfs2_inode** %4, align 8
  store i8* %1, i8** %5, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = bitcast i8* %10 to %struct.gfs2_dinode*
  store %struct.gfs2_dinode* %11, %struct.gfs2_dinode** %6, align 8
  %12 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %13 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %12, i32 0, i32 0
  %14 = load i64, i64* %13, align 8
  %15 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %16 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %15, i32 0, i32 21
  %17 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %16, i32 0, i32 1
  %18 = load i32, i32* %17, align 4
  %19 = call i64 @be64_to_cpu(i32 %18)
  %20 = icmp ne i64 %14, %19
  %21 = zext i1 %20 to i32
  %22 = call i64 @unlikely(i32 %21)
  %23 = icmp ne i64 %22, 0
  br i1 %23, label %24, label %25

24:                                               ; preds = %2
  br label %229

25:                                               ; preds = %2
  %26 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %27 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %26, i32 0, i32 21
  %28 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 4
  %30 = call i64 @be64_to_cpu(i32 %29)
  %31 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %32 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %31, i32 0, i32 9
  store i64 %30, i64* %32, align 8
  %33 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %34 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %33, i32 0, i32 20
  %35 = load i32, i32* %34, align 4
  %36 = call i8* @be32_to_cpu(i32 %35)
  %37 = ptrtoint i8* %36 to i32
  %38 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %39 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %38, i32 0, i32 1
  %40 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %39, i32 0, i32 0
  store i32 %37, i32* %40, align 8
  %41 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %42 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %41, i32 0, i32 1
  %43 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %42, i32 0, i32 4
  store i64 0, i64* %43, align 8
  %44 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %45 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %44, i32 0, i32 1
  %46 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 8
  %48 = load i32, i32* @S_IFMT, align 4
  %49 = and i32 %47, %48
  switch i32 %49, label %63 [
    i32 129, label %50
    i32 128, label %50
  ]

50:                                               ; preds = %25, %25
  %51 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %52 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %51, i32 0, i32 19
  %53 = load i32, i32* %52, align 4
  %54 = call i8* @be32_to_cpu(i32 %53)
  %55 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %56 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %55, i32 0, i32 18
  %57 = load i32, i32* %56, align 4
  %58 = call i8* @be32_to_cpu(i32 %57)
  %59 = call i64 @MKDEV(i8* %54, i8* %58)
  %60 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %61 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %60, i32 0, i32 1
  %62 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %61, i32 0, i32 4
  store i64 %59, i64* %62, align 8
  br label %63

63:                                               ; preds = %25, %50
  %64 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %65 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %64, i32 0, i32 1
  %66 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %67 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %66, i32 0, i32 17
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @be32_to_cpu(i32 %68)
  %70 = call i32 @i_uid_write(%struct.TYPE_14__* %65, i8* %69)
  %71 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %72 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %71, i32 0, i32 1
  %73 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %74 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %73, i32 0, i32 16
  %75 = load i32, i32* %74, align 4
  %76 = call i8* @be32_to_cpu(i32 %75)
  %77 = call i32 @i_gid_write(%struct.TYPE_14__* %72, i8* %76)
  %78 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %79 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %78, i32 0, i32 1
  %80 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %81 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %80, i32 0, i32 15
  %82 = load i32, i32* %81, align 4
  %83 = call i8* @be32_to_cpu(i32 %82)
  %84 = call i32 @set_nlink(%struct.TYPE_14__* %79, i8* %83)
  %85 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %86 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %85, i32 0, i32 1
  %87 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %88 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %87, i32 0, i32 14
  %89 = load i32, i32* %88, align 4
  %90 = call i64 @be64_to_cpu(i32 %89)
  %91 = call i32 @i_size_write(%struct.TYPE_14__* %86, i64 %90)
  %92 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %93 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %92, i32 0, i32 1
  %94 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %95 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %94, i32 0, i32 13
  %96 = load i32, i32* %95, align 4
  %97 = call i64 @be64_to_cpu(i32 %96)
  %98 = call i32 @gfs2_set_inode_blocks(%struct.TYPE_14__* %93, i64 %97)
  %99 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %100 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %99, i32 0, i32 12
  %101 = load i32, i32* %100, align 4
  %102 = call i64 @be64_to_cpu(i32 %101)
  %103 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 1
  store i64 %102, i64* %103, align 8
  %104 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %105 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %104, i32 0, i32 11
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be32_to_cpu(i32 %106)
  %108 = getelementptr inbounds %struct.timespec64, %struct.timespec64* %7, i32 0, i32 0
  store i8* %107, i8** %108, align 8
  %109 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %110 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %109, i32 0, i32 1
  %111 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %110, i32 0, i32 3
  %112 = call i64 @timespec64_compare(%struct.timespec64* %111, %struct.timespec64* %7)
  %113 = icmp slt i64 %112, 0
  br i1 %113, label %114, label %120

114:                                              ; preds = %63
  %115 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %116 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %115, i32 0, i32 1
  %117 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %116, i32 0, i32 3
  %118 = bitcast %struct.timespec64* %117 to i8*
  %119 = bitcast %struct.timespec64* %7 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %118, i8* align 8 %119, i64 16, i1 false)
  br label %120

120:                                              ; preds = %114, %63
  %121 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %122 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %121, i32 0, i32 10
  %123 = load i32, i32* %122, align 4
  %124 = call i64 @be64_to_cpu(i32 %123)
  %125 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %126 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %125, i32 0, i32 1
  %127 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %126, i32 0, i32 2
  %128 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %127, i32 0, i32 1
  store i64 %124, i64* %128, align 8
  %129 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %130 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %129, i32 0, i32 9
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @be32_to_cpu(i32 %131)
  %133 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %134 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %133, i32 0, i32 1
  %135 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %134, i32 0, i32 2
  %136 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %135, i32 0, i32 0
  store i8* %132, i8** %136, align 8
  %137 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %138 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %137, i32 0, i32 8
  %139 = load i32, i32* %138, align 4
  %140 = call i64 @be64_to_cpu(i32 %139)
  %141 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %142 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %141, i32 0, i32 1
  %143 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %142, i32 0, i32 1
  %144 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %143, i32 0, i32 1
  store i64 %140, i64* %144, align 8
  %145 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %146 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %145, i32 0, i32 7
  %147 = load i32, i32* %146, align 4
  %148 = call i8* @be32_to_cpu(i32 %147)
  %149 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %150 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %149, i32 0, i32 1
  %151 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %150, i32 0, i32 1
  %152 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %151, i32 0, i32 0
  store i8* %148, i8** %152, align 8
  %153 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %154 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %153, i32 0, i32 6
  %155 = load i32, i32* %154, align 4
  %156 = call i64 @be64_to_cpu(i32 %155)
  %157 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %158 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %157, i32 0, i32 8
  store i64 %156, i64* %158, align 8
  %159 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %160 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %159, i32 0, i32 5
  %161 = load i32, i32* %160, align 4
  %162 = call i64 @be64_to_cpu(i32 %161)
  %163 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %164 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %163, i32 0, i32 7
  store i64 %162, i64* %164, align 8
  %165 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %166 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %165, i32 0, i32 4
  %167 = load i32, i32* %166, align 4
  %168 = call i8* @be32_to_cpu(i32 %167)
  %169 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %170 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %169, i32 0, i32 6
  store i8* %168, i8** %170, align 8
  %171 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %172 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %171, i32 0, i32 3
  %173 = load i32, i32* %172, align 4
  %174 = call i64 @be64_to_cpu(i32 %173)
  %175 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %176 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %175, i32 0, i32 5
  store i64 %174, i64* %176, align 8
  %177 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %178 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %177, i32 0, i32 1
  %179 = call i32 @gfs2_set_inode_flags(%struct.TYPE_14__* %178)
  %180 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %181 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %180, i32 0, i32 2
  %182 = load i32, i32* %181, align 4
  %183 = call i64 @be16_to_cpu(i32 %182)
  store i64 %183, i64* %8, align 8
  %184 = load i64, i64* %8, align 8
  %185 = load i64, i64* @GFS2_MAX_META_HEIGHT, align 8
  %186 = icmp sgt i64 %184, %185
  %187 = zext i1 %186 to i32
  %188 = call i64 @unlikely(i32 %187)
  %189 = icmp ne i64 %188, 0
  br i1 %189, label %190, label %191

190:                                              ; preds = %120
  br label %229

191:                                              ; preds = %120
  %192 = load i64, i64* %8, align 8
  %193 = inttoptr i64 %192 to i8*
  %194 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %195 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %194, i32 0, i32 4
  store i8* %193, i8** %195, align 8
  %196 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %197 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %196, i32 0, i32 1
  %198 = load i32, i32* %197, align 4
  %199 = call i64 @be16_to_cpu(i32 %198)
  store i64 %199, i64* %9, align 8
  %200 = load i64, i64* %9, align 8
  %201 = load i64, i64* @GFS2_DIR_MAX_DEPTH, align 8
  %202 = icmp sgt i64 %200, %201
  %203 = zext i1 %202 to i32
  %204 = call i64 @unlikely(i32 %203)
  %205 = icmp ne i64 %204, 0
  br i1 %205, label %206, label %207

206:                                              ; preds = %191
  br label %229

207:                                              ; preds = %191
  %208 = load i64, i64* %9, align 8
  %209 = inttoptr i64 %208 to i8*
  %210 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %211 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %210, i32 0, i32 3
  store i8* %209, i8** %211, align 8
  %212 = load %struct.gfs2_dinode*, %struct.gfs2_dinode** %6, align 8
  %213 = getelementptr inbounds %struct.gfs2_dinode, %struct.gfs2_dinode* %212, i32 0, i32 0
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @be32_to_cpu(i32 %214)
  %216 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %217 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %216, i32 0, i32 2
  store i8* %215, i8** %217, align 8
  %218 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %219 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %218, i32 0, i32 1
  %220 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %219, i32 0, i32 0
  %221 = load i32, i32* %220, align 8
  %222 = call i64 @S_ISREG(i32 %221)
  %223 = icmp ne i64 %222, 0
  br i1 %223, label %224, label %228

224:                                              ; preds = %207
  %225 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %226 = getelementptr inbounds %struct.gfs2_inode, %struct.gfs2_inode* %225, i32 0, i32 1
  %227 = call i32 @gfs2_set_aops(%struct.TYPE_14__* %226)
  br label %228

228:                                              ; preds = %224, %207
  store i32 0, i32* %3, align 4
  br label %234

229:                                              ; preds = %206, %190, %24
  %230 = load %struct.gfs2_inode*, %struct.gfs2_inode** %4, align 8
  %231 = call i32 @gfs2_consist_inode(%struct.gfs2_inode* %230)
  %232 = load i32, i32* @EIO, align 4
  %233 = sub nsw i32 0, %232
  store i32 %233, i32* %3, align 4
  br label %234

234:                                              ; preds = %229, %228
  %235 = load i32, i32* %3, align 4
  ret i32 %235
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local i64 @be64_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @MKDEV(i8*, i8*) #1

declare dso_local i32 @i_uid_write(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @i_gid_write(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @set_nlink(%struct.TYPE_14__*, i8*) #1

declare dso_local i32 @i_size_write(%struct.TYPE_14__*, i64) #1

declare dso_local i32 @gfs2_set_inode_blocks(%struct.TYPE_14__*, i64) #1

declare dso_local i64 @timespec64_compare(%struct.timespec64*, %struct.timespec64*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @gfs2_set_inode_flags(%struct.TYPE_14__*) #1

declare dso_local i64 @be16_to_cpu(i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i32 @gfs2_set_aops(%struct.TYPE_14__*) #1

declare dso_local i32 @gfs2_consist_inode(%struct.gfs2_inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
