; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_from_disk.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_buf.c_xfs_inode_from_disk.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_inode = type { %struct.xfs_icdinode }
%struct.xfs_icdinode = type { i32, i8*, i8*, %struct.TYPE_15__, i8*, i8*, i8*, i32, i32, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i8*, i32, i8*, i8* }
%struct.TYPE_15__ = type { i8*, i8* }
%struct.xfs_dinode = type { i32, i32, i32, %struct.TYPE_16__, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, %struct.TYPE_14__, %struct.TYPE_12__, %struct.TYPE_10__, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_16__ = type { i32, i32 }
%struct.TYPE_14__ = type { i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.inode = type { i8*, i8*, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__ }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_inode_from_disk(%struct.xfs_inode* %0, %struct.xfs_dinode* %1) #0 {
  %3 = alloca %struct.xfs_inode*, align 8
  %4 = alloca %struct.xfs_dinode*, align 8
  %5 = alloca %struct.xfs_icdinode*, align 8
  %6 = alloca %struct.inode*, align 8
  store %struct.xfs_inode* %0, %struct.xfs_inode** %3, align 8
  store %struct.xfs_dinode* %1, %struct.xfs_dinode** %4, align 8
  %7 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %8 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %7, i32 0, i32 0
  store %struct.xfs_icdinode* %8, %struct.xfs_icdinode** %5, align 8
  %9 = load %struct.xfs_inode*, %struct.xfs_inode** %3, align 8
  %10 = call %struct.inode* @VFS_I(%struct.xfs_inode* %9)
  store %struct.inode* %10, %struct.inode** %6, align 8
  %11 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %11, i32 0, i32 0
  %13 = load i32, i32* %12, align 4
  %14 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %14, i32 0, i32 0
  store i32 %13, i32* %15, align 8
  %16 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %17 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %16, i32 0, i32 0
  %18 = load i32, i32* %17, align 8
  %19 = icmp eq i32 %18, 1
  br i1 %19, label %20, label %33

20:                                               ; preds = %2
  %21 = load %struct.inode*, %struct.inode** %6, align 8
  %22 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %23 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %22, i32 0, i32 27
  %24 = load i32, i32* %23, align 4
  %25 = call i8* @be16_to_cpu(i32 %24)
  %26 = call i32 @set_nlink(%struct.inode* %21, i8* %25)
  %27 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %27, i32 0, i32 19
  store i8* null, i8** %28, align 8
  %29 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %30 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %29, i32 0, i32 18
  store i8* null, i8** %30, align 8
  %31 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %32 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %31, i32 0, i32 0
  store i32 2, i32* %32, align 8
  br label %52

33:                                               ; preds = %2
  %34 = load %struct.inode*, %struct.inode** %6, align 8
  %35 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %36 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %35, i32 0, i32 26
  %37 = load i32, i32* %36, align 4
  %38 = call i8* @be32_to_cpu(i32 %37)
  %39 = call i32 @set_nlink(%struct.inode* %34, i8* %38)
  %40 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %41 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %40, i32 0, i32 25
  %42 = load i32, i32* %41, align 4
  %43 = call i8* @be16_to_cpu(i32 %42)
  %44 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %45 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %44, i32 0, i32 19
  store i8* %43, i8** %45, align 8
  %46 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %47 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %46, i32 0, i32 24
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @be16_to_cpu(i32 %48)
  %50 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %51 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %50, i32 0, i32 18
  store i8* %49, i8** %51, align 8
  br label %52

52:                                               ; preds = %33, %20
  %53 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %54 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %53, i32 0, i32 23
  %55 = load i32, i32* %54, align 4
  %56 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %56, i32 0, i32 17
  store i32 %55, i32* %57, align 8
  %58 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %59 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %58, i32 0, i32 22
  %60 = load i32, i32* %59, align 4
  %61 = call i8* @be32_to_cpu(i32 %60)
  %62 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %63 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %62, i32 0, i32 16
  store i8* %61, i8** %63, align 8
  %64 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %65 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %64, i32 0, i32 21
  %66 = load i32, i32* %65, align 4
  %67 = call i8* @be32_to_cpu(i32 %66)
  %68 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %69 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %68, i32 0, i32 15
  store i8* %67, i8** %69, align 8
  %70 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %71 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %70, i32 0, i32 20
  %72 = load i32, i32* %71, align 4
  %73 = call i8* @be16_to_cpu(i32 %72)
  %74 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %75 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %74, i32 0, i32 14
  store i8* %73, i8** %75, align 8
  %76 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %77 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %76, i32 0, i32 19
  %78 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %77, i32 0, i32 1
  %79 = load i32, i32* %78, align 4
  %80 = call i8* @be32_to_cpu(i32 %79)
  %81 = ptrtoint i8* %80 to i32
  %82 = load %struct.inode*, %struct.inode** %6, align 8
  %83 = getelementptr inbounds %struct.inode, %struct.inode* %82, i32 0, i32 4
  %84 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %83, i32 0, i32 0
  store i32 %81, i32* %84, align 8
  %85 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %86 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %85, i32 0, i32 19
  %87 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %86, i32 0, i32 0
  %88 = load i32, i32* %87, align 4
  %89 = call i8* @be32_to_cpu(i32 %88)
  %90 = ptrtoint i8* %89 to i32
  %91 = load %struct.inode*, %struct.inode** %6, align 8
  %92 = getelementptr inbounds %struct.inode, %struct.inode* %91, i32 0, i32 4
  %93 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %92, i32 0, i32 1
  store i32 %90, i32* %93, align 4
  %94 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %95 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %94, i32 0, i32 18
  %96 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %95, i32 0, i32 1
  %97 = load i32, i32* %96, align 4
  %98 = call i8* @be32_to_cpu(i32 %97)
  %99 = ptrtoint i8* %98 to i32
  %100 = load %struct.inode*, %struct.inode** %6, align 8
  %101 = getelementptr inbounds %struct.inode, %struct.inode* %100, i32 0, i32 3
  %102 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %101, i32 0, i32 0
  store i32 %99, i32* %102, align 8
  %103 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %104 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %103, i32 0, i32 18
  %105 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %104, i32 0, i32 0
  %106 = load i32, i32* %105, align 4
  %107 = call i8* @be32_to_cpu(i32 %106)
  %108 = ptrtoint i8* %107 to i32
  %109 = load %struct.inode*, %struct.inode** %6, align 8
  %110 = getelementptr inbounds %struct.inode, %struct.inode* %109, i32 0, i32 3
  %111 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %110, i32 0, i32 1
  store i32 %108, i32* %111, align 4
  %112 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %113 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %112, i32 0, i32 17
  %114 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %113, i32 0, i32 1
  %115 = load i32, i32* %114, align 4
  %116 = call i8* @be32_to_cpu(i32 %115)
  %117 = ptrtoint i8* %116 to i32
  %118 = load %struct.inode*, %struct.inode** %6, align 8
  %119 = getelementptr inbounds %struct.inode, %struct.inode* %118, i32 0, i32 2
  %120 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %119, i32 0, i32 0
  store i32 %117, i32* %120, align 8
  %121 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %122 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %121, i32 0, i32 17
  %123 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %122, i32 0, i32 0
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @be32_to_cpu(i32 %124)
  %126 = ptrtoint i8* %125 to i32
  %127 = load %struct.inode*, %struct.inode** %6, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 2
  %129 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %128, i32 0, i32 1
  store i32 %126, i32* %129, align 4
  %130 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %130, i32 0, i32 16
  %132 = load i32, i32* %131, align 4
  %133 = call i8* @be32_to_cpu(i32 %132)
  %134 = load %struct.inode*, %struct.inode** %6, align 8
  %135 = getelementptr inbounds %struct.inode, %struct.inode* %134, i32 0, i32 1
  store i8* %133, i8** %135, align 8
  %136 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %137 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %136, i32 0, i32 15
  %138 = load i32, i32* %137, align 4
  %139 = call i8* @be16_to_cpu(i32 %138)
  %140 = load %struct.inode*, %struct.inode** %6, align 8
  %141 = getelementptr inbounds %struct.inode, %struct.inode* %140, i32 0, i32 0
  store i8* %139, i8** %141, align 8
  %142 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %143 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %142, i32 0, i32 14
  %144 = load i32, i32* %143, align 4
  %145 = call i8* @be64_to_cpu(i32 %144)
  %146 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %147 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %146, i32 0, i32 13
  store i8* %145, i8** %147, align 8
  %148 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %149 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %148, i32 0, i32 13
  %150 = load i32, i32* %149, align 4
  %151 = call i8* @be64_to_cpu(i32 %150)
  %152 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %153 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %152, i32 0, i32 12
  store i8* %151, i8** %153, align 8
  %154 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %155 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %154, i32 0, i32 12
  %156 = load i32, i32* %155, align 4
  %157 = call i8* @be32_to_cpu(i32 %156)
  %158 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %159 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %158, i32 0, i32 11
  store i8* %157, i8** %159, align 8
  %160 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %161 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %160, i32 0, i32 11
  %162 = load i32, i32* %161, align 4
  %163 = call i8* @be32_to_cpu(i32 %162)
  %164 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %165 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %164, i32 0, i32 10
  store i8* %163, i8** %165, align 8
  %166 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %167 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %166, i32 0, i32 10
  %168 = load i32, i32* %167, align 4
  %169 = call i8* @be16_to_cpu(i32 %168)
  %170 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %171 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %170, i32 0, i32 9
  store i8* %169, i8** %171, align 8
  %172 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %173 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %172, i32 0, i32 9
  %174 = load i32, i32* %173, align 4
  %175 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %176 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %175, i32 0, i32 8
  store i32 %174, i32* %176, align 4
  %177 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %178 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %177, i32 0, i32 8
  %179 = load i32, i32* %178, align 4
  %180 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %181 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %180, i32 0, i32 7
  store i32 %179, i32* %181, align 8
  %182 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %183 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %182, i32 0, i32 7
  %184 = load i32, i32* %183, align 4
  %185 = call i8* @be32_to_cpu(i32 %184)
  %186 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %187 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %186, i32 0, i32 6
  store i8* %185, i8** %187, align 8
  %188 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %189 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %188, i32 0, i32 6
  %190 = load i32, i32* %189, align 4
  %191 = call i8* @be16_to_cpu(i32 %190)
  %192 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %193 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %192, i32 0, i32 5
  store i8* %191, i8** %193, align 8
  %194 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %195 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %194, i32 0, i32 5
  %196 = load i32, i32* %195, align 4
  %197 = call i8* @be16_to_cpu(i32 %196)
  %198 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %199 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %198, i32 0, i32 4
  store i8* %197, i8** %199, align 8
  %200 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %201 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %200, i32 0, i32 0
  %202 = load i32, i32* %201, align 8
  %203 = icmp eq i32 %202, 3
  br i1 %203, label %204, label %239

204:                                              ; preds = %52
  %205 = load %struct.inode*, %struct.inode** %6, align 8
  %206 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %207 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %206, i32 0, i32 4
  %208 = load i32, i32* %207, align 4
  %209 = call i8* @be64_to_cpu(i32 %208)
  %210 = call i32 @inode_set_iversion_queried(%struct.inode* %205, i8* %209)
  %211 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %212 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %211, i32 0, i32 3
  %213 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %212, i32 0, i32 1
  %214 = load i32, i32* %213, align 4
  %215 = call i8* @be32_to_cpu(i32 %214)
  %216 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %217 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %216, i32 0, i32 3
  %218 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %217, i32 0, i32 1
  store i8* %215, i8** %218, align 8
  %219 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %220 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %219, i32 0, i32 3
  %221 = getelementptr inbounds %struct.TYPE_16__, %struct.TYPE_16__* %220, i32 0, i32 0
  %222 = load i32, i32* %221, align 4
  %223 = call i8* @be32_to_cpu(i32 %222)
  %224 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %225 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %224, i32 0, i32 3
  %226 = getelementptr inbounds %struct.TYPE_15__, %struct.TYPE_15__* %225, i32 0, i32 0
  store i8* %223, i8** %226, align 8
  %227 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %228 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %227, i32 0, i32 2
  %229 = load i32, i32* %228, align 4
  %230 = call i8* @be64_to_cpu(i32 %229)
  %231 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %232 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %231, i32 0, i32 2
  store i8* %230, i8** %232, align 8
  %233 = load %struct.xfs_dinode*, %struct.xfs_dinode** %4, align 8
  %234 = getelementptr inbounds %struct.xfs_dinode, %struct.xfs_dinode* %233, i32 0, i32 1
  %235 = load i32, i32* %234, align 4
  %236 = call i8* @be32_to_cpu(i32 %235)
  %237 = load %struct.xfs_icdinode*, %struct.xfs_icdinode** %5, align 8
  %238 = getelementptr inbounds %struct.xfs_icdinode, %struct.xfs_icdinode* %237, i32 0, i32 1
  store i8* %236, i8** %238, align 8
  br label %239

239:                                              ; preds = %204, %52
  ret void
}

declare dso_local %struct.inode* @VFS_I(%struct.xfs_inode*) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i8* @be64_to_cpu(i32) #1

declare dso_local i32 @inode_set_iversion_queried(%struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
