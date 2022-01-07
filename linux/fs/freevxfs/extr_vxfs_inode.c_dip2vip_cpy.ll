; ModuleID = '/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_inode.c_dip2vip_cpy.c'
source_filename = "/home/carl/AnghaBench/linux/fs/freevxfs/extr_vxfs_inode.c_dip2vip_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.vxfs_sb_info = type { i32 }
%struct.vxfs_inode_info = type { i8*, i8*, i8*, i8*, i8*, i32, i8*, i8*, i8*, i32, i8*, i8*, i32, i8*, i8*, i8*, i8*, %struct.inode }
%struct.inode = type { i8*, i8*, %struct.TYPE_6__, %struct.TYPE_5__, %struct.TYPE_4__, i32, i32 }
%struct.TYPE_6__ = type { i64, i8* }
%struct.TYPE_5__ = type { i64, i8* }
%struct.TYPE_4__ = type { i64, i8* }
%struct.vxfs_dinode = type { i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.vxfs_sb_info*, %struct.vxfs_inode_info*, %struct.vxfs_dinode*)* @dip2vip_cpy to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @dip2vip_cpy(%struct.vxfs_sb_info* %0, %struct.vxfs_inode_info* %1, %struct.vxfs_dinode* %2) #0 {
  %4 = alloca %struct.vxfs_sb_info*, align 8
  %5 = alloca %struct.vxfs_inode_info*, align 8
  %6 = alloca %struct.vxfs_dinode*, align 8
  %7 = alloca %struct.inode*, align 8
  store %struct.vxfs_sb_info* %0, %struct.vxfs_sb_info** %4, align 8
  store %struct.vxfs_inode_info* %1, %struct.vxfs_inode_info** %5, align 8
  store %struct.vxfs_dinode* %2, %struct.vxfs_dinode** %6, align 8
  %8 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %9 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %8, i32 0, i32 17
  store %struct.inode* %9, %struct.inode** %7, align 8
  %10 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %11 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %12 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %11, i32 0, i32 16
  %13 = load i32, i32* %12, align 4
  %14 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %10, i32 %13)
  %15 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %16 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %15, i32 0, i32 16
  store i8* %14, i8** %16, align 8
  %17 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %18 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %19 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %18, i32 0, i32 15
  %20 = load i32, i32* %19, align 4
  %21 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %17, i32 %20)
  %22 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %23 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %22, i32 0, i32 6
  store i8* %21, i8** %23, align 8
  %24 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %25 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %26 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %25, i32 0, i32 14
  %27 = load i32, i32* %26, align 4
  %28 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %24, i32 %27)
  %29 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %30 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %29, i32 0, i32 8
  store i8* %28, i8** %30, align 8
  %31 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %32 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %33 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %32, i32 0, i32 13
  %34 = load i32, i32* %33, align 4
  %35 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %31, i32 %34)
  %36 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %37 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %36, i32 0, i32 7
  store i8* %35, i8** %37, align 8
  %38 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %39 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %40 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %39, i32 0, i32 12
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @fs64_to_cpu(%struct.vxfs_sb_info* %38, i32 %41)
  %43 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %44 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %43, i32 0, i32 5
  store i32 %42, i32* %44, align 8
  %45 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %46 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %47 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %46, i32 0, i32 11
  %48 = load i32, i32* %47, align 4
  %49 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %45, i32 %48)
  %50 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %51 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %50, i32 0, i32 4
  store i8* %49, i8** %51, align 8
  %52 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %53 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %54 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %53, i32 0, i32 10
  %55 = load i32, i32* %54, align 4
  %56 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %52, i32 %55)
  %57 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %58 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %57, i32 0, i32 15
  store i8* %56, i8** %58, align 8
  %59 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %60 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %61 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %60, i32 0, i32 9
  %62 = load i32, i32* %61, align 4
  %63 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %59, i32 %62)
  %64 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %65 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %64, i32 0, i32 2
  store i8* %63, i8** %65, align 8
  %66 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %67 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %68 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %67, i32 0, i32 8
  %69 = load i32, i32* %68, align 4
  %70 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %66, i32 %69)
  %71 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %72 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %71, i32 0, i32 14
  store i8* %70, i8** %72, align 8
  %73 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %74 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %75 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %74, i32 0, i32 7
  %76 = load i32, i32* %75, align 4
  %77 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %73, i32 %76)
  %78 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %79 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %78, i32 0, i32 3
  store i8* %77, i8** %79, align 8
  %80 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %81 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %82 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %81, i32 0, i32 6
  %83 = load i32, i32* %82, align 4
  %84 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %80, i32 %83)
  %85 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %86 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %85, i32 0, i32 13
  store i8* %84, i8** %86, align 8
  %87 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %88 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %87, i32 0, i32 5
  %89 = load i32, i32* %88, align 4
  %90 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %91 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %90, i32 0, i32 12
  store i32 %89, i32* %91, align 8
  %92 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %93 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %94 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %93, i32 0, i32 4
  %95 = load i32, i32* %94, align 4
  %96 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %92, i32 %95)
  %97 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %98 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %97, i32 0, i32 1
  store i8* %96, i8** %98, align 8
  %99 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %100 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %101 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %100, i32 0, i32 3
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %99, i32 %102)
  %104 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %105 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %104, i32 0, i32 0
  store i8* %103, i8** %105, align 8
  %106 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %107 = call i64 @VXFS_ISDIR(%struct.vxfs_inode_info* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %109, label %117

109:                                              ; preds = %3
  %110 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %111 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %112 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %111, i32 0, i32 2
  %113 = load i32, i32* %112, align 4
  %114 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %110, i32 %113)
  %115 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %116 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %115, i32 0, i32 11
  store i8* %114, i8** %116, align 8
  br label %134

117:                                              ; preds = %3
  %118 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %119 = call i32 @VXFS_ISREG(%struct.vxfs_inode_info* %118)
  %120 = icmp ne i32 %119, 0
  br i1 %120, label %133, label %121

121:                                              ; preds = %117
  %122 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %123 = call i32 @VXFS_ISLNK(%struct.vxfs_inode_info* %122)
  %124 = icmp ne i32 %123, 0
  br i1 %124, label %133, label %125

125:                                              ; preds = %121
  %126 = load %struct.vxfs_sb_info*, %struct.vxfs_sb_info** %4, align 8
  %127 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %128 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %127, i32 0, i32 1
  %129 = load i32, i32* %128, align 4
  %130 = call i8* @fs32_to_cpu(%struct.vxfs_sb_info* %126, i32 %129)
  %131 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %132 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %131, i32 0, i32 10
  store i8* %130, i8** %132, align 8
  br label %133

133:                                              ; preds = %125, %121, %117
  br label %134

134:                                              ; preds = %133, %109
  %135 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %136 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %135, i32 0, i32 9
  %137 = load %struct.vxfs_dinode*, %struct.vxfs_dinode** %6, align 8
  %138 = getelementptr inbounds %struct.vxfs_dinode, %struct.vxfs_dinode* %137, i32 0, i32 0
  %139 = call i32 @memcpy(i32* %136, i32* %138, i32 4)
  %140 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %141 = call i32 @vxfs_transmod(%struct.vxfs_inode_info* %140)
  %142 = load %struct.inode*, %struct.inode** %7, align 8
  %143 = getelementptr inbounds %struct.inode, %struct.inode* %142, i32 0, i32 6
  store i32 %141, i32* %143, align 4
  %144 = load %struct.inode*, %struct.inode** %7, align 8
  %145 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %146 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %145, i32 0, i32 8
  %147 = load i8*, i8** %146, align 8
  %148 = ptrtoint i8* %147 to i32
  %149 = call i32 @i_uid_write(%struct.inode* %144, i32 %148)
  %150 = load %struct.inode*, %struct.inode** %7, align 8
  %151 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %152 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %151, i32 0, i32 7
  %153 = load i8*, i8** %152, align 8
  %154 = ptrtoint i8* %153 to i32
  %155 = call i32 @i_gid_write(%struct.inode* %150, i32 %154)
  %156 = load %struct.inode*, %struct.inode** %7, align 8
  %157 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %158 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %157, i32 0, i32 6
  %159 = load i8*, i8** %158, align 8
  %160 = call i32 @set_nlink(%struct.inode* %156, i8* %159)
  %161 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %162 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %161, i32 0, i32 5
  %163 = load i32, i32* %162, align 8
  %164 = load %struct.inode*, %struct.inode** %7, align 8
  %165 = getelementptr inbounds %struct.inode, %struct.inode* %164, i32 0, i32 5
  store i32 %163, i32* %165, align 8
  %166 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %167 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %166, i32 0, i32 4
  %168 = load i8*, i8** %167, align 8
  %169 = load %struct.inode*, %struct.inode** %7, align 8
  %170 = getelementptr inbounds %struct.inode, %struct.inode* %169, i32 0, i32 4
  %171 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %170, i32 0, i32 1
  store i8* %168, i8** %171, align 8
  %172 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %173 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %172, i32 0, i32 3
  %174 = load i8*, i8** %173, align 8
  %175 = load %struct.inode*, %struct.inode** %7, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 3
  %177 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %176, i32 0, i32 1
  store i8* %174, i8** %177, align 8
  %178 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %179 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %178, i32 0, i32 2
  %180 = load i8*, i8** %179, align 8
  %181 = load %struct.inode*, %struct.inode** %7, align 8
  %182 = getelementptr inbounds %struct.inode, %struct.inode* %181, i32 0, i32 2
  %183 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %182, i32 0, i32 1
  store i8* %180, i8** %183, align 8
  %184 = load %struct.inode*, %struct.inode** %7, align 8
  %185 = getelementptr inbounds %struct.inode, %struct.inode* %184, i32 0, i32 4
  %186 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %185, i32 0, i32 0
  store i64 0, i64* %186, align 8
  %187 = load %struct.inode*, %struct.inode** %7, align 8
  %188 = getelementptr inbounds %struct.inode, %struct.inode* %187, i32 0, i32 3
  %189 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %188, i32 0, i32 0
  store i64 0, i64* %189, align 8
  %190 = load %struct.inode*, %struct.inode** %7, align 8
  %191 = getelementptr inbounds %struct.inode, %struct.inode* %190, i32 0, i32 2
  %192 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %191, i32 0, i32 0
  store i64 0, i64* %192, align 8
  %193 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %194 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %193, i32 0, i32 1
  %195 = load i8*, i8** %194, align 8
  %196 = load %struct.inode*, %struct.inode** %7, align 8
  %197 = getelementptr inbounds %struct.inode, %struct.inode* %196, i32 0, i32 1
  store i8* %195, i8** %197, align 8
  %198 = load %struct.vxfs_inode_info*, %struct.vxfs_inode_info** %5, align 8
  %199 = getelementptr inbounds %struct.vxfs_inode_info, %struct.vxfs_inode_info* %198, i32 0, i32 0
  %200 = load i8*, i8** %199, align 8
  %201 = load %struct.inode*, %struct.inode** %7, align 8
  %202 = getelementptr inbounds %struct.inode, %struct.inode* %201, i32 0, i32 0
  store i8* %200, i8** %202, align 8
  ret void
}

declare dso_local i8* @fs32_to_cpu(%struct.vxfs_sb_info*, i32) #1

declare dso_local i32 @fs64_to_cpu(%struct.vxfs_sb_info*, i32) #1

declare dso_local i64 @VXFS_ISDIR(%struct.vxfs_inode_info*) #1

declare dso_local i32 @VXFS_ISREG(%struct.vxfs_inode_info*) #1

declare dso_local i32 @VXFS_ISLNK(%struct.vxfs_inode_info*) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i32 @vxfs_transmod(%struct.vxfs_inode_info*) #1

declare dso_local i32 @i_uid_write(%struct.inode*, i32) #1

declare dso_local i32 @i_gid_write(%struct.inode*, i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
