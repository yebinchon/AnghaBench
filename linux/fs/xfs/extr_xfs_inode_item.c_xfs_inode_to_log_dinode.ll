; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_to_log_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/extr_xfs_inode_item.c_xfs_inode_to_log_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.TYPE_11__*, i32, %struct.xfs_icdinode }
%struct.TYPE_11__ = type { %struct.TYPE_20__ }
%struct.TYPE_20__ = type { i32 }
%struct.xfs_icdinode = type { i32, i32, i32, i32, %struct.TYPE_19__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_19__ = type { i32, i32 }
%struct.xfs_log_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_18__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, %struct.TYPE_14__, %struct.TYPE_12__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_18__ = type { i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, %struct.TYPE_17__, %struct.TYPE_15__, %struct.TYPE_13__ }
%struct.TYPE_17__ = type { i32, i32 }
%struct.TYPE_15__ = type { i32, i32 }
%struct.TYPE_13__ = type { i32, i32 }

@XFS_DINODE_MAGIC = common dso_local global i32 0, align 4
@NULLAGINO = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.xfs_inode*, %struct.xfs_log_dinode*, i32)* @xfs_inode_to_log_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_inode_to_log_dinode(%struct.xfs_inode* %0, %struct.xfs_log_dinode* %1, i32 %2) #0 {
  %4 = alloca %struct.xfs_inode*, align 8
  %5 = alloca %struct.xfs_log_dinode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_icdinode*, align 8
  %8 = alloca %struct.inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %4, align 8
  store %struct.xfs_log_dinode* %1, %struct.xfs_log_dinode** %5, align 8
  store i32 %2, i32* %6, align 4
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %9, i32 0, i32 2
  store %struct.xfs_icdinode* %10, %struct.xfs_icdinode** %7, align 8
  %11 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %12 = call %struct.inode* @VFS_I(%struct.xfs_inode* %11)
  store %struct.inode* %12, %struct.inode** %8, align 8
  %13 = load i32, i32* @XFS_DINODE_MAGIC, align 4
  %14 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %14, i32 0, i32 34
  store i32 %13, i32* %15, align 4
  %16 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %17 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 4
  %19 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %20 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %19, i32 0, i32 0
  store i32 %18, i32* %20, align 4
  %21 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %22 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %21, i32 0, i32 19
  %23 = load i32, i32* %22, align 4
  %24 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %24, i32 0, i32 33
  store i32 %23, i32* %25, align 4
  %26 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %27 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %26, i32 0, i32 18
  %28 = load i32, i32* %27, align 4
  %29 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %29, i32 0, i32 32
  store i32 %28, i32* %30, align 4
  %31 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %32 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %31, i32 0, i32 17
  %33 = load i32, i32* %32, align 4
  %34 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %35 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %34, i32 0, i32 31
  store i32 %33, i32* %35, align 4
  %36 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %37 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %36, i32 0, i32 16
  %38 = load i32, i32* %37, align 4
  %39 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %40 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %39, i32 0, i32 30
  store i32 %38, i32* %40, align 4
  %41 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %42 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %41, i32 0, i32 15
  %43 = load i32, i32* %42, align 4
  %44 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %44, i32 0, i32 29
  store i32 %43, i32* %45, align 4
  %46 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %47 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %46, i32 0, i32 28
  %48 = load i32, i32* %47, align 4
  %49 = call i32 @memset(i32 %48, i32 0, i32 4)
  %50 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %50, i32 0, i32 27
  %52 = load i32, i32* %51, align 4
  %53 = call i32 @memset(i32 %52, i32 0, i32 4)
  %54 = load %struct.inode*, %struct.inode** %8, align 8
  %55 = getelementptr inbounds %struct.inode, %struct.inode* %54, i32 0, i32 5
  %56 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %55, i32 0, i32 1
  %57 = load i32, i32* %56, align 4
  %58 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %59 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %58, i32 0, i32 26
  %60 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %59, i32 0, i32 1
  store i32 %57, i32* %60, align 4
  %61 = load %struct.inode*, %struct.inode** %8, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 5
  %63 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %62, i32 0, i32 0
  %64 = load i32, i32* %63, align 4
  %65 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %66 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %65, i32 0, i32 26
  %67 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %66, i32 0, i32 0
  store i32 %64, i32* %67, align 4
  %68 = load %struct.inode*, %struct.inode** %8, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 4
  %70 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 4
  %72 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %72, i32 0, i32 25
  %74 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %73, i32 0, i32 1
  store i32 %71, i32* %74, align 4
  %75 = load %struct.inode*, %struct.inode** %8, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 4
  %77 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %76, i32 0, i32 0
  %78 = load i32, i32* %77, align 4
  %79 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %80 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %79, i32 0, i32 25
  %81 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %80, i32 0, i32 0
  store i32 %78, i32* %81, align 4
  %82 = load %struct.inode*, %struct.inode** %8, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 3
  %84 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %87 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %86, i32 0, i32 24
  %88 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %87, i32 0, i32 1
  store i32 %85, i32* %88, align 4
  %89 = load %struct.inode*, %struct.inode** %8, align 8
  %90 = getelementptr inbounds %struct.inode, %struct.inode* %89, i32 0, i32 3
  %91 = getelementptr inbounds %struct.TYPE_17__, %struct.TYPE_17__* %90, i32 0, i32 0
  %92 = load i32, i32* %91, align 4
  %93 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %94 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %93, i32 0, i32 24
  %95 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %94, i32 0, i32 0
  store i32 %92, i32* %95, align 4
  %96 = load %struct.inode*, %struct.inode** %8, align 8
  %97 = getelementptr inbounds %struct.inode, %struct.inode* %96, i32 0, i32 2
  %98 = load i32, i32* %97, align 4
  %99 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %100 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %99, i32 0, i32 23
  store i32 %98, i32* %100, align 4
  %101 = load %struct.inode*, %struct.inode** %8, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %105 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %104, i32 0, i32 22
  store i32 %103, i32* %105, align 4
  %106 = load %struct.inode*, %struct.inode** %8, align 8
  %107 = getelementptr inbounds %struct.inode, %struct.inode* %106, i32 0, i32 0
  %108 = load i32, i32* %107, align 4
  %109 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %109, i32 0, i32 21
  store i32 %108, i32* %110, align 4
  %111 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %112 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %111, i32 0, i32 14
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %115 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %114, i32 0, i32 20
  store i32 %113, i32* %115, align 4
  %116 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %117 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %116, i32 0, i32 13
  %118 = load i32, i32* %117, align 4
  %119 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %120 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %119, i32 0, i32 19
  store i32 %118, i32* %120, align 4
  %121 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %122 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %121, i32 0, i32 12
  %123 = load i32, i32* %122, align 4
  %124 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %125 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %124, i32 0, i32 18
  store i32 %123, i32* %125, align 4
  %126 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %127 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %126, i32 0, i32 11
  %128 = load i32, i32* %127, align 4
  %129 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %130 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %129, i32 0, i32 17
  store i32 %128, i32* %130, align 4
  %131 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %132 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %131, i32 0, i32 10
  %133 = load i32, i32* %132, align 4
  %134 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %135 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %134, i32 0, i32 16
  store i32 %133, i32* %135, align 4
  %136 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %137 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %136, i32 0, i32 9
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %140 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %139, i32 0, i32 15
  store i32 %138, i32* %140, align 4
  %141 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %142 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %141, i32 0, i32 8
  %143 = load i32, i32* %142, align 4
  %144 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %145 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %144, i32 0, i32 14
  store i32 %143, i32* %145, align 4
  %146 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %147 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %146, i32 0, i32 7
  %148 = load i32, i32* %147, align 4
  %149 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %150 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %149, i32 0, i32 13
  store i32 %148, i32* %150, align 4
  %151 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %152 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %151, i32 0, i32 6
  %153 = load i32, i32* %152, align 4
  %154 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %155 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %154, i32 0, i32 12
  store i32 %153, i32* %155, align 4
  %156 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %157 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %156, i32 0, i32 5
  %158 = load i32, i32* %157, align 4
  %159 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %160 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %159, i32 0, i32 11
  store i32 %158, i32* %160, align 4
  %161 = load i32, i32* @NULLAGINO, align 4
  %162 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %163 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %162, i32 0, i32 10
  store i32 %161, i32* %163, align 4
  %164 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %165 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %164, i32 0, i32 0
  %166 = load i32, i32* %165, align 4
  %167 = icmp eq i32 %166, 3
  br i1 %167, label %168, label %219

168:                                              ; preds = %3
  %169 = load %struct.inode*, %struct.inode** %8, align 8
  %170 = call i32 @inode_peek_iversion(%struct.inode* %169)
  %171 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %172 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %171, i32 0, i32 9
  store i32 %170, i32* %172, align 4
  %173 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %174 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %173, i32 0, i32 4
  %175 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %174, i32 0, i32 1
  %176 = load i32, i32* %175, align 4
  %177 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %178 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %177, i32 0, i32 8
  %179 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %178, i32 0, i32 1
  store i32 %176, i32* %179, align 4
  %180 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %181 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %180, i32 0, i32 4
  %182 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %181, i32 0, i32 0
  %183 = load i32, i32* %182, align 4
  %184 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %185 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %184, i32 0, i32 8
  %186 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %185, i32 0, i32 0
  store i32 %183, i32* %186, align 4
  %187 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %188 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %187, i32 0, i32 3
  %189 = load i32, i32* %188, align 4
  %190 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %191 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %190, i32 0, i32 7
  store i32 %189, i32* %191, align 4
  %192 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %193 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %192, i32 0, i32 2
  %194 = load i32, i32* %193, align 4
  %195 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %196 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %195, i32 0, i32 6
  store i32 %194, i32* %196, align 4
  %197 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %198 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %197, i32 0, i32 1
  %199 = load i32, i32* %198, align 8
  %200 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %201 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %200, i32 0, i32 5
  store i32 %199, i32* %201, align 4
  %202 = load i32, i32* %6, align 4
  %203 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %204 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %203, i32 0, i32 4
  store i32 %202, i32* %204, align 4
  %205 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %206 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %205, i32 0, i32 3
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @memset(i32 %207, i32 0, i32 4)
  %209 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %210 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %209, i32 0, i32 2
  %211 = load %struct.xfs_inode*, %struct.xfs_inode** %4, align 8
  %212 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %211, i32 0, i32 0
  %213 = load %struct.TYPE_11__*, %struct.TYPE_11__** %212, align 8
  %214 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %213, i32 0, i32 0
  %215 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %214, i32 0, i32 0
  %216 = call i32 @uuid_copy(i32* %210, i32* %215)
  %217 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %218 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %217, i32 0, i32 1
  store i32 0, i32* %218, align 4
  br label %225

219:                                              ; preds = %3
  %220 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %7, align 8
  %221 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %220, i32 0, i32 1
  %222 = load i32, i32* %221, align 4
  %223 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %5, align 8
  %224 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %223, i32 0, i32 1
  store i32 %222, i32* %224, align 4
  br label %225

225:                                              ; preds = %219, %168
  ret void
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @memset(i32, i32, i32) #1

declare dso_local i32 @inode_peek_iversion(%struct.inode*) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
