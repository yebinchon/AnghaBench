; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_11__*, i32, %struct.xfs_icdinode }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.xfs_icdinode = type { i32, i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.xfs_dinode = type { i32, i8*, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_18__, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, i32, i8*, i8*, i8*, i8*, i32, i64, i8* }
%struct.TYPE_18__ = type { i8*, i8* }
%struct.TYPE_16__ = type { i8*, i8* }
%struct.TYPE_14__ = type { i8*, i8* }
%struct.TYPE_12__ = type { i8*, i8* }
%struct.inode = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@XFS_DINODE_MAGIC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_to_disk(%struct.xfs_inode* %0, %struct.xfs_dinode* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_icdinode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_dinode* %1, %struct.xfs_dinode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 2
  store %struct.xfs_icdinode* %10, %struct.xfs_icdinode** %7, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call %struct.inode* @VFS_I(%struct.xfs_inode* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load i32, i32* @XFS_DINODE_MAGIC, align 4
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %16 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %15, i32 0, i32 33
  store i8* %14, i8** %16, align 8
  %17 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %18 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %17, i32 0, i32 32
  store i64 0, i64* %18, align 8
  %19 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %20 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %19, i32 0, i32 0
  %21 = load i32, i32* %20, align 4
  %22 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %23 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %22, i32 0, i32 0
  store i32 %21, i32* %23, align 8
  %24 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %25 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %24, i32 0, i32 19
  %26 = load i32, i32* %25, align 4
  %27 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %27, i32 0, i32 31
  store i32 %26, i32* %28, align 8
  %29 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %30 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %29, i32 0, i32 18
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %34 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %33, i32 0, i32 30
  store i8* %32, i8** %34, align 8
  %35 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %36 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %35, i32 0, i32 17
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %39, i32 0, i32 29
  store i8* %38, i8** %40, align 8
  %41 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %42 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %41, i32 0, i32 16
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_be16(i32 %43)
  %45 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %46 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %45, i32 0, i32 28
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %48 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %47, i32 0, i32 15
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %52 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %51, i32 0, i32 27
  store i8* %50, i8** %52, align 8
  %53 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %53, i32 0, i32 26
  %55 = load i32, i32* %54, align 8
  %56 = call i32 @memset(i32 %55, i32 0, i32 4)
  %57 = load %struct.inode*, %struct.inode** %8, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 5
  %59 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %58, i32 0, i32 1
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @cpu_to_be32(i32 %60)
  %62 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %62, i32 0, i32 25
  %64 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %63, i32 0, i32 1
  store i8* %61, i8** %64, align 8
  %65 = load %struct.inode*, %struct.inode** %8, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 5
  %67 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %66, i32 0, i32 0
  %68 = load i32, i32* %67, align 4
  %69 = call i8* @cpu_to_be32(i32 %68)
  %70 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %71 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %70, i32 0, i32 25
  %72 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %71, i32 0, i32 0
  store i8* %69, i8** %72, align 8
  %73 = load %struct.inode*, %struct.inode** %8, align 8
  %74 = getelementptr inbounds %struct.inode, %struct.inode* %73, i32 0, i32 4
  %75 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %74, i32 0, i32 1
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @cpu_to_be32(i32 %76)
  %78 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %79 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %78, i32 0, i32 24
  %80 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %79, i32 0, i32 1
  store i8* %77, i8** %80, align 8
  %81 = load %struct.inode*, %struct.inode** %8, align 8
  %82 = getelementptr inbounds %struct.inode, %struct.inode* %81, i32 0, i32 4
  %83 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %82, i32 0, i32 0
  %84 = load i32, i32* %83, align 4
  %85 = call i8* @cpu_to_be32(i32 %84)
  %86 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %87 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %86, i32 0, i32 24
  %88 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %87, i32 0, i32 0
  store i8* %85, i8** %88, align 8
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 1
  %92 = load i32, i32* %91, align 4
  %93 = call i8* @cpu_to_be32(i32 %92)
  %94 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %95 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %94, i32 0, i32 23
  %96 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %95, i32 0, i32 1
  store i8* %93, i8** %96, align 8
  %97 = load %struct.inode*, %struct.inode** %8, align 8
  %98 = getelementptr inbounds %struct.inode, %struct.inode* %97, i32 0, i32 3
  %99 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 4
  %101 = call i8* @cpu_to_be32(i32 %100)
  %102 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %103 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %102, i32 0, i32 23
  %104 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %103, i32 0, i32 0
  store i8* %101, i8** %104, align 8
  %105 = load %struct.inode*, %struct.inode** %8, align 8
  %106 = getelementptr inbounds %struct.inode, %struct.inode* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i8* @cpu_to_be32(i32 %107)
  %109 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %109, i32 0, i32 22
  store i8* %108, i8** %110, align 8
  %111 = load %struct.inode*, %struct.inode** %8, align 8
  %112 = getelementptr inbounds %struct.inode, %struct.inode* %111, i32 0, i32 1
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @cpu_to_be32(i32 %113)
  %115 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %116 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %115, i32 0, i32 21
  store i8* %114, i8** %116, align 8
  %117 = load %struct.inode*, %struct.inode** %8, align 8
  %118 = getelementptr inbounds %struct.inode, %struct.inode* %117, i32 0, i32 0
  %119 = load i32, i32* %118, align 4
  %120 = call i8* @cpu_to_be16(i32 %119)
  %121 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %122 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %121, i32 0, i32 20
  store i8* %120, i8** %122, align 8
  %123 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %124 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %123, i32 0, i32 14
  %125 = load i32, i32* %124, align 4
  %126 = call i8* @cpu_to_be64(i32 %125)
  %127 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %128 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %127, i32 0, i32 19
  store i8* %126, i8** %128, align 8
  %129 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %130 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %129, i32 0, i32 13
  %131 = load i32, i32* %130, align 4
  %132 = call i8* @cpu_to_be64(i32 %131)
  %133 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %134 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %133, i32 0, i32 18
  store i8* %132, i8** %134, align 8
  %135 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %136 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %135, i32 0, i32 12
  %137 = load i32, i32* %136, align 4
  %138 = call i8* @cpu_to_be32(i32 %137)
  %139 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %140 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %139, i32 0, i32 17
  store i8* %138, i8** %140, align 8
  %141 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %142 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %141, i32 0, i32 11
  %143 = load i32, i32* %142, align 4
  %144 = call i8* @cpu_to_be32(i32 %143)
  %145 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %146 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %145, i32 0, i32 16
  store i8* %144, i8** %146, align 8
  %147 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %148 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %147, i32 0, i32 10
  %149 = load i32, i32* %148, align 4
  %150 = call i8* @cpu_to_be16(i32 %149)
  %151 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %152 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %151, i32 0, i32 15
  store i8* %150, i8** %152, align 8
  %153 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %154 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %153, i32 0, i32 9
  %155 = load i32, i32* %154, align 4
  %156 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %157 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %156, i32 0, i32 14
  store i32 %155, i32* %157, align 4
  %158 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %159 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %158, i32 0, i32 8
  %160 = load i32, i32* %159, align 4
  %161 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %162 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %161, i32 0, i32 13
  store i32 %160, i32* %162, align 8
  %163 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %164 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %163, i32 0, i32 7
  %165 = load i32, i32* %164, align 4
  %166 = call i8* @cpu_to_be32(i32 %165)
  %167 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %168 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %167, i32 0, i32 12
  store i8* %166, i8** %168, align 8
  %169 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %170 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %169, i32 0, i32 6
  %171 = load i32, i32* %170, align 4
  %172 = call i8* @cpu_to_be16(i32 %171)
  %173 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %174 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %173, i32 0, i32 11
  store i8* %172, i8** %174, align 8
  %175 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %176 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %175, i32 0, i32 5
  %177 = load i32, i32* %176, align 4
  %178 = call i8* @cpu_to_be16(i32 %177)
  %179 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %180 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %179, i32 0, i32 10
  store i8* %178, i8** %180, align 8
  %181 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %182 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = icmp eq i32 %183, 3
  br i1 %184, label %185, label %243

185:                                              ; preds = %3
  %186 = load %struct.inode*, %struct.inode** %8, align 8
  %187 = call i32 @inode_peek_iversion(%struct.inode* %186)
  %188 = call i8* @cpu_to_be64(i32 %187)
  %189 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %190 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %189, i32 0, i32 9
  store i8* %188, i8** %190, align 8
  %191 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %192 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %191, i32 0, i32 4
  %193 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %192, i32 0, i32 1
  %194 = load i32, i32* %193, align 4
  %195 = call i8* @cpu_to_be32(i32 %194)
  %196 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %197 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %196, i32 0, i32 8
  %198 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %197, i32 0, i32 1
  store i8* %195, i8** %198, align 8
  %199 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %200 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %199, i32 0, i32 4
  %201 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 4
  %203 = call i8* @cpu_to_be32(i32 %202)
  %204 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %205 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %204, i32 0, i32 8
  %206 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %205, i32 0, i32 0
  store i8* %203, i8** %206, align 8
  %207 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %208 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %207, i32 0, i32 3
  %209 = load i32, i32* %208, align 4
  %210 = call i8* @cpu_to_be64(i32 %209)
  %211 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %212 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %211, i32 0, i32 7
  store i8* %210, i8** %212, align 8
  %213 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %214 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %213, i32 0, i32 2
  %215 = load i32, i32* %214, align 4
  %216 = call i8* @cpu_to_be32(i32 %215)
  %217 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %218 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %217, i32 0, i32 6
  store i8* %216, i8** %218, align 8
  %219 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %220 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %219, i32 0, i32 1
  %221 = load i32, i32* %220, align 8
  %222 = call i8* @cpu_to_be64(i32 %221)
  %223 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %224 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %223, i32 0, i32 5
  store i8* %222, i8** %224, align 8
  %225 = load i32, i32* %6, align 4
  %226 = call i8* @cpu_to_be64(i32 %225)
  %227 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %228 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %230 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = call i32 @memset(i32 %231, i32 0, i32 4)
  %233 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %234 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %233, i32 0, i32 2
  %235 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %236 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %235, i32 0, i32 0
  %237 = load %struct.TYPE_11__*, %struct.TYPE_11__** %236, align 8
  %238 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %237, i32 0, i32 0
  %239 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %238, i32 0, i32 0
  %240 = call i32 @uuid_copy(i32* %234, i32* %239)
  %241 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %242 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %241, i32 0, i32 1
  store i8* null, i8** %242, align 8
  br label %250

243:                                              ; preds = %3
  %244 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %245 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @cpu_to_be16(i32 %246)
  %248 = load %struct.xfs_dinode*, %struct.xfs_dinode** %5, align 8
  %249 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %243, %185
  ret void
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @inode_peek_iversion(%struct.inode*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
