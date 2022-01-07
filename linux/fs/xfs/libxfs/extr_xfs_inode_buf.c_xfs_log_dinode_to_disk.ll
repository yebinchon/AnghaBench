; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_log_dinode_to_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_log_dinode_to_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_log_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.xfs_dinode = type { i32, i8*, i32, i32, i8*, i8*, i8*, i8*, %struct.TYPE_15__, i8*, i8*, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i8*, i8*, i8*, i8*, i8*, i64, i32, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.TYPE_13__ = type { i8*, i8* }
%struct.TYPE_11__ = type { i8*, i8* }
%struct.TYPE_9__ = type { i8*, i8* }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_log_dinode_to_disk(%struct.xfs_log_dinode* %0, %struct.xfs_dinode* %1) #0 {
  %3 = alloca %struct.xfs_log_dinode*, align 8
  %4 = alloca %struct.xfs_dinode*, align 8
  store %struct.xfs_log_dinode* %0, %struct.xfs_log_dinode** %3, align 8
  store %struct.xfs_dinode* %1, %struct.xfs_dinode** %4, align 8
  %5 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %6 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %5, i32 0, i32 32
  %7 = load i32, i32* %6, align 4
  %8 = call i8* @cpu_to_be16(i32 %7)
  %9 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %10 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %9, i32 0, i32 33
  store i8* %8, i8** %10, align 8
  %11 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %12 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %11, i32 0, i32 31
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @cpu_to_be16(i32 %13)
  %15 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %16 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %15, i32 0, i32 32
  store i8* %14, i8** %16, align 8
  %17 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %18 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %17, i32 0, i32 0
  %19 = load i32, i32* %18, align 4
  %20 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %21 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %20, i32 0, i32 0
  store i32 %19, i32* %21, align 8
  %22 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %23 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %22, i32 0, i32 30
  %24 = load i32, i32* %23, align 4
  %25 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %26 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %25, i32 0, i32 31
  store i32 %24, i32* %26, align 8
  %27 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %28 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %27, i32 0, i32 30
  store i64 0, i64* %28, align 8
  %29 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %30 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %29, i32 0, i32 29
  %31 = load i32, i32* %30, align 4
  %32 = call i8* @cpu_to_be32(i32 %31)
  %33 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %34 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %33, i32 0, i32 29
  store i8* %32, i8** %34, align 8
  %35 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %36 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %35, i32 0, i32 28
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @cpu_to_be32(i32 %37)
  %39 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %40 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %39, i32 0, i32 28
  store i8* %38, i8** %40, align 8
  %41 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %42 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %41, i32 0, i32 27
  %43 = load i32, i32* %42, align 4
  %44 = call i8* @cpu_to_be32(i32 %43)
  %45 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %45, i32 0, i32 27
  store i8* %44, i8** %46, align 8
  %47 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %48 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %47, i32 0, i32 26
  %49 = load i32, i32* %48, align 4
  %50 = call i8* @cpu_to_be16(i32 %49)
  %51 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %52 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %51, i32 0, i32 26
  store i8* %50, i8** %52, align 8
  %53 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %54 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %53, i32 0, i32 25
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @cpu_to_be16(i32 %55)
  %57 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %58 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %57, i32 0, i32 25
  store i8* %56, i8** %58, align 8
  %59 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %60 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %59, i32 0, i32 24
  %61 = load i32, i32* %60, align 8
  %62 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %63 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %62, i32 0, i32 24
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @memcpy(i32 %61, i32 %64, i32 4)
  %66 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %67 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %66, i32 0, i32 23
  %68 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %67, i32 0, i32 1
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @cpu_to_be32(i32 %69)
  %71 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %72 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %71, i32 0, i32 23
  %73 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %72, i32 0, i32 1
  store i8* %70, i8** %73, align 8
  %74 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %75 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %74, i32 0, i32 23
  %76 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %75, i32 0, i32 0
  %77 = load i32, i32* %76, align 4
  %78 = call i8* @cpu_to_be32(i32 %77)
  %79 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %80 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %79, i32 0, i32 23
  %81 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %80, i32 0, i32 0
  store i8* %78, i8** %81, align 8
  %82 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %83 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %82, i32 0, i32 22
  %84 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %83, i32 0, i32 1
  %85 = load i32, i32* %84, align 4
  %86 = call i8* @cpu_to_be32(i32 %85)
  %87 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %88 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %87, i32 0, i32 22
  %89 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %88, i32 0, i32 1
  store i8* %86, i8** %89, align 8
  %90 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %91 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %90, i32 0, i32 22
  %92 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %91, i32 0, i32 0
  %93 = load i32, i32* %92, align 4
  %94 = call i8* @cpu_to_be32(i32 %93)
  %95 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %96 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %95, i32 0, i32 22
  %97 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %96, i32 0, i32 0
  store i8* %94, i8** %97, align 8
  %98 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %99 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %98, i32 0, i32 21
  %100 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %99, i32 0, i32 1
  %101 = load i32, i32* %100, align 4
  %102 = call i8* @cpu_to_be32(i32 %101)
  %103 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %104 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %103, i32 0, i32 21
  %105 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %104, i32 0, i32 1
  store i8* %102, i8** %105, align 8
  %106 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %107 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %106, i32 0, i32 21
  %108 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 4
  %110 = call i8* @cpu_to_be32(i32 %109)
  %111 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %112 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %111, i32 0, i32 21
  %113 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %112, i32 0, i32 0
  store i8* %110, i8** %113, align 8
  %114 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %115 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %114, i32 0, i32 20
  %116 = load i32, i32* %115, align 4
  %117 = call i8* @cpu_to_be64(i32 %116)
  %118 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %119 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %118, i32 0, i32 20
  store i8* %117, i8** %119, align 8
  %120 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %121 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %120, i32 0, i32 19
  %122 = load i32, i32* %121, align 4
  %123 = call i8* @cpu_to_be64(i32 %122)
  %124 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %125 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %124, i32 0, i32 19
  store i8* %123, i8** %125, align 8
  %126 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %127 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %126, i32 0, i32 18
  %128 = load i32, i32* %127, align 4
  %129 = call i8* @cpu_to_be32(i32 %128)
  %130 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %130, i32 0, i32 18
  store i8* %129, i8** %131, align 8
  %132 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %133 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %132, i32 0, i32 17
  %134 = load i32, i32* %133, align 4
  %135 = call i8* @cpu_to_be32(i32 %134)
  %136 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %137 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %136, i32 0, i32 17
  store i8* %135, i8** %137, align 8
  %138 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %139 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %138, i32 0, i32 16
  %140 = load i32, i32* %139, align 4
  %141 = call i8* @cpu_to_be16(i32 %140)
  %142 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %143 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %142, i32 0, i32 16
  store i8* %141, i8** %143, align 8
  %144 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %145 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %144, i32 0, i32 15
  %146 = load i32, i32* %145, align 4
  %147 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %148 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %147, i32 0, i32 15
  store i32 %146, i32* %148, align 4
  %149 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %150 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %149, i32 0, i32 14
  %151 = load i32, i32* %150, align 4
  %152 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %153 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %152, i32 0, i32 14
  store i32 %151, i32* %153, align 8
  %154 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %155 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %154, i32 0, i32 13
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @cpu_to_be32(i32 %156)
  %158 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %159 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %158, i32 0, i32 13
  store i8* %157, i8** %159, align 8
  %160 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %161 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %160, i32 0, i32 12
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @cpu_to_be16(i32 %162)
  %164 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %165 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %164, i32 0, i32 12
  store i8* %163, i8** %165, align 8
  %166 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %167 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %166, i32 0, i32 11
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @cpu_to_be16(i32 %168)
  %170 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %171 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %170, i32 0, i32 11
  store i8* %169, i8** %171, align 8
  %172 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %173 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %172, i32 0, i32 10
  %174 = load i32, i32* %173, align 4
  %175 = call i8* @cpu_to_be32(i32 %174)
  %176 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %177 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %176, i32 0, i32 10
  store i8* %175, i8** %177, align 8
  %178 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %179 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 4
  %181 = icmp eq i32 %180, 3
  br i1 %181, label %182, label %243

182:                                              ; preds = %2
  %183 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %184 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %183, i32 0, i32 9
  %185 = load i32, i32* %184, align 4
  %186 = call i8* @cpu_to_be64(i32 %185)
  %187 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %188 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %187, i32 0, i32 9
  store i8* %186, i8** %188, align 8
  %189 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %190 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %189, i32 0, i32 8
  %191 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %190, i32 0, i32 1
  %192 = load i32, i32* %191, align 4
  %193 = call i8* @cpu_to_be32(i32 %192)
  %194 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %195 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %194, i32 0, i32 8
  %196 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %195, i32 0, i32 1
  store i8* %193, i8** %196, align 8
  %197 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %198 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %197, i32 0, i32 8
  %199 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %198, i32 0, i32 0
  %200 = load i32, i32* %199, align 4
  %201 = call i8* @cpu_to_be32(i32 %200)
  %202 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %203 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %202, i32 0, i32 8
  %204 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %203, i32 0, i32 0
  store i8* %201, i8** %204, align 8
  %205 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %206 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %205, i32 0, i32 7
  %207 = load i32, i32* %206, align 4
  %208 = call i8* @cpu_to_be64(i32 %207)
  %209 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %210 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %209, i32 0, i32 7
  store i8* %208, i8** %210, align 8
  %211 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %212 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %211, i32 0, i32 6
  %213 = load i32, i32* %212, align 4
  %214 = call i8* @cpu_to_be32(i32 %213)
  %215 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %216 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %215, i32 0, i32 6
  store i8* %214, i8** %216, align 8
  %217 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %218 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %217, i32 0, i32 5
  %219 = load i32, i32* %218, align 4
  %220 = call i8* @cpu_to_be64(i32 %219)
  %221 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %222 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %221, i32 0, i32 5
  store i8* %220, i8** %222, align 8
  %223 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %224 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %223, i32 0, i32 4
  %225 = load i32, i32* %224, align 4
  %226 = call i8* @cpu_to_be64(i32 %225)
  %227 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %228 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %227, i32 0, i32 4
  store i8* %226, i8** %228, align 8
  %229 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %230 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %229, i32 0, i32 3
  %231 = load i32, i32* %230, align 4
  %232 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %233 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %232, i32 0, i32 3
  %234 = load i32, i32* %233, align 4
  %235 = call i32 @memcpy(i32 %231, i32 %234, i32 4)
  %236 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %237 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %236, i32 0, i32 2
  %238 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %239 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %238, i32 0, i32 2
  %240 = call i32 @uuid_copy(i32* %237, i32* %239)
  %241 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %242 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %241, i32 0, i32 1
  store i8* null, i8** %242, align 8
  br label %250

243:                                              ; preds = %2
  %244 = load %struct.xfs_log_dinode*, %struct.xfs_log_dinode** %3, align 8
  %245 = getelementptr inbounds %struct.xfs_log_dinode, %struct.xfs_log_dinode* %244, i32 0, i32 1
  %246 = load i32, i32* %245, align 4
  %247 = call i8* @cpu_to_be16(i32 %246)
  %248 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %249 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %248, i32 0, i32 1
  store i8* %247, i8** %249, align 8
  br label %250

250:                                              ; preds = %243, %182
  ret void
}

declare dso_local i8* @cpu_to_be16(i32) #1

declare dso_local i8* @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

declare dso_local i8* @cpu_to_be64(i32) #1

declare dso_local i32 @uuid_copy(i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
