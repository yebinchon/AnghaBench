; ModuleID = '/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_copy_from_dinode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jfs/extr_jfs_imap.c_copy_from_dinode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dinode = type { i32, i32, i32, i32, i32, %struct.TYPE_14__, i32, i32, i32, i32, i32, i32, %struct.TYPE_13__, %struct.TYPE_11__, %struct.TYPE_9__, i32, i32, i32, i32, i32, i32 }
%struct.TYPE_14__ = type { i32 }
%struct.TYPE_13__ = type { i32, i32 }
%struct.TYPE_11__ = type { i32, i32 }
%struct.TYPE_9__ = type { i32, i32 }
%struct.inode = type { i32, i32, i32, i32, i32, %struct.TYPE_12__, %struct.TYPE_10__, %struct.TYPE_8__, i32, i32, i32 }
%struct.TYPE_12__ = type { i32, i32 }
%struct.TYPE_10__ = type { i32, i32 }
%struct.TYPE_8__ = type { i32, i32 }
%struct.jfs_inode_info = type { i32, i32, i32, i32, i32, i32, i64, i64, i64, i64, i64, i64, i64, i64, i32, i32, i32, i32, i32, i32, i32, i32 }
%struct.jfs_sb_info = type { i32, i32, i32 }

@init_user_ns = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.dinode*, %struct.inode*)* @copy_from_dinode to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @copy_from_dinode(%struct.dinode* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dinode*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.jfs_inode_info*, align 8
  %6 = alloca %struct.jfs_sb_info*, align 8
  store %struct.dinode* %0, %struct.dinode** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %7 = load %struct.inode*, %struct.inode** %4, align 8
  %8 = call %struct.jfs_inode_info* @JFS_IP(%struct.inode* %7)
  store %struct.jfs_inode_info* %8, %struct.jfs_inode_info** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %4, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 3
  %11 = load i32, i32* %10, align 4
  %12 = call %struct.jfs_sb_info* @JFS_SBI(i32 %11)
  store %struct.jfs_sb_info* %12, %struct.jfs_sb_info** %6, align 8
  %13 = load %struct.dinode*, %struct.dinode** %3, align 8
  %14 = getelementptr inbounds %struct.dinode, %struct.dinode* %13, i32 0, i32 20
  %15 = load i32, i32* %14, align 4
  %16 = call i32 @le32_to_cpu(i32 %15)
  %17 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %18 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %17, i32 0, i32 0
  store i32 %16, i32* %18, align 8
  %19 = load %struct.dinode*, %struct.dinode** %3, align 8
  %20 = getelementptr inbounds %struct.dinode, %struct.dinode* %19, i32 0, i32 19
  %21 = load i32, i32* %20, align 4
  %22 = call i32 @le32_to_cpu(i32 %21)
  %23 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %24 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %23, i32 0, i32 1
  store i32 %22, i32* %24, align 4
  %25 = load %struct.inode*, %struct.inode** %4, align 8
  %26 = call i32 @jfs_set_inode_flags(%struct.inode* %25)
  %27 = load %struct.dinode*, %struct.dinode** %3, align 8
  %28 = getelementptr inbounds %struct.dinode, %struct.dinode* %27, i32 0, i32 19
  %29 = load i32, i32* %28, align 4
  %30 = call i32 @le32_to_cpu(i32 %29)
  %31 = and i32 %30, 65535
  %32 = load %struct.inode*, %struct.inode** %4, align 8
  %33 = getelementptr inbounds %struct.inode, %struct.inode* %32, i32 0, i32 0
  store i32 %31, i32* %33, align 4
  %34 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %35 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %34, i32 0, i32 0
  %36 = load i32, i32* %35, align 4
  %37 = icmp ne i32 %36, -1
  br i1 %37, label %38, label %91

38:                                               ; preds = %2
  %39 = load %struct.inode*, %struct.inode** %4, align 8
  %40 = getelementptr inbounds %struct.inode, %struct.inode* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = and i32 %41, -512
  %43 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %44 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  %46 = xor i32 %45, -1
  %47 = and i32 511, %46
  %48 = or i32 %42, %47
  %49 = load %struct.inode*, %struct.inode** %4, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 0
  store i32 %48, i32* %50, align 4
  %51 = load %struct.inode*, %struct.inode** %4, align 8
  %52 = getelementptr inbounds %struct.inode, %struct.inode* %51, i32 0, i32 0
  %53 = load i32, i32* %52, align 4
  %54 = call i64 @S_ISDIR(i32 %53)
  %55 = icmp ne i64 %54, 0
  br i1 %55, label %56, label %90

56:                                               ; preds = %38
  %57 = load %struct.inode*, %struct.inode** %4, align 8
  %58 = getelementptr inbounds %struct.inode, %struct.inode* %57, i32 0, i32 0
  %59 = load i32, i32* %58, align 4
  %60 = and i32 %59, 256
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %67

62:                                               ; preds = %56
  %63 = load %struct.inode*, %struct.inode** %4, align 8
  %64 = getelementptr inbounds %struct.inode, %struct.inode* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = or i32 %65, 64
  store i32 %66, i32* %64, align 4
  br label %67

67:                                               ; preds = %62, %56
  %68 = load %struct.inode*, %struct.inode** %4, align 8
  %69 = getelementptr inbounds %struct.inode, %struct.inode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = and i32 %70, 32
  %72 = icmp ne i32 %71, 0
  br i1 %72, label %73, label %78

73:                                               ; preds = %67
  %74 = load %struct.inode*, %struct.inode** %4, align 8
  %75 = getelementptr inbounds %struct.inode, %struct.inode* %74, i32 0, i32 0
  %76 = load i32, i32* %75, align 4
  %77 = or i32 %76, 8
  store i32 %77, i32* %75, align 4
  br label %78

78:                                               ; preds = %73, %67
  %79 = load %struct.inode*, %struct.inode** %4, align 8
  %80 = getelementptr inbounds %struct.inode, %struct.inode* %79, i32 0, i32 0
  %81 = load i32, i32* %80, align 4
  %82 = and i32 %81, 4
  %83 = icmp ne i32 %82, 0
  br i1 %83, label %84, label %89

84:                                               ; preds = %78
  %85 = load %struct.inode*, %struct.inode** %4, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 0
  %87 = load i32, i32* %86, align 4
  %88 = or i32 %87, 1
  store i32 %88, i32* %86, align 4
  br label %89

89:                                               ; preds = %84, %78
  br label %90

90:                                               ; preds = %89, %38
  br label %91

91:                                               ; preds = %90, %2
  %92 = load %struct.inode*, %struct.inode** %4, align 8
  %93 = load %struct.dinode*, %struct.dinode** %3, align 8
  %94 = getelementptr inbounds %struct.dinode, %struct.dinode* %93, i32 0, i32 18
  %95 = load i32, i32* %94, align 4
  %96 = call i32 @le32_to_cpu(i32 %95)
  %97 = call i32 @set_nlink(%struct.inode* %92, i32 %96)
  %98 = load %struct.dinode*, %struct.dinode** %3, align 8
  %99 = getelementptr inbounds %struct.dinode, %struct.dinode* %98, i32 0, i32 17
  %100 = load i32, i32* %99, align 4
  %101 = call i32 @le32_to_cpu(i32 %100)
  %102 = call i32 @make_kuid(i32* @init_user_ns, i32 %101)
  %103 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %104 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %103, i32 0, i32 21
  store i32 %102, i32* %104, align 4
  %105 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %106 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %105, i32 0, i32 2
  %107 = load i32, i32* %106, align 4
  %108 = call i32 @uid_valid(i32 %107)
  %109 = icmp ne i32 %108, 0
  br i1 %109, label %116, label %110

110:                                              ; preds = %91
  %111 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %112 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %111, i32 0, i32 21
  %113 = load i32, i32* %112, align 4
  %114 = load %struct.inode*, %struct.inode** %4, align 8
  %115 = getelementptr inbounds %struct.inode, %struct.inode* %114, i32 0, i32 10
  store i32 %113, i32* %115, align 4
  br label %122

116:                                              ; preds = %91
  %117 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %118 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %117, i32 0, i32 2
  %119 = load i32, i32* %118, align 4
  %120 = load %struct.inode*, %struct.inode** %4, align 8
  %121 = getelementptr inbounds %struct.inode, %struct.inode* %120, i32 0, i32 10
  store i32 %119, i32* %121, align 4
  br label %122

122:                                              ; preds = %116, %110
  %123 = load %struct.dinode*, %struct.dinode** %3, align 8
  %124 = getelementptr inbounds %struct.dinode, %struct.dinode* %123, i32 0, i32 16
  %125 = load i32, i32* %124, align 4
  %126 = call i32 @le32_to_cpu(i32 %125)
  %127 = call i32 @make_kgid(i32* @init_user_ns, i32 %126)
  %128 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %129 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %128, i32 0, i32 20
  store i32 %127, i32* %129, align 8
  %130 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %131 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %130, i32 0, i32 1
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @gid_valid(i32 %132)
  %134 = icmp ne i32 %133, 0
  br i1 %134, label %141, label %135

135:                                              ; preds = %122
  %136 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %137 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %136, i32 0, i32 20
  %138 = load i32, i32* %137, align 8
  %139 = load %struct.inode*, %struct.inode** %4, align 8
  %140 = getelementptr inbounds %struct.inode, %struct.inode* %139, i32 0, i32 9
  store i32 %138, i32* %140, align 4
  br label %147

141:                                              ; preds = %122
  %142 = load %struct.jfs_sb_info*, %struct.jfs_sb_info** %6, align 8
  %143 = getelementptr inbounds %struct.jfs_sb_info, %struct.jfs_sb_info* %142, i32 0, i32 1
  %144 = load i32, i32* %143, align 4
  %145 = load %struct.inode*, %struct.inode** %4, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 9
  store i32 %144, i32* %146, align 4
  br label %147

147:                                              ; preds = %141, %135
  %148 = load %struct.dinode*, %struct.dinode** %3, align 8
  %149 = getelementptr inbounds %struct.dinode, %struct.dinode* %148, i32 0, i32 15
  %150 = load i32, i32* %149, align 4
  %151 = call i32 @le64_to_cpu(i32 %150)
  %152 = load %struct.inode*, %struct.inode** %4, align 8
  %153 = getelementptr inbounds %struct.inode, %struct.inode* %152, i32 0, i32 8
  store i32 %151, i32* %153, align 4
  %154 = load %struct.dinode*, %struct.dinode** %3, align 8
  %155 = getelementptr inbounds %struct.dinode, %struct.dinode* %154, i32 0, i32 14
  %156 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %155, i32 0, i32 1
  %157 = load i32, i32* %156, align 4
  %158 = call i32 @le32_to_cpu(i32 %157)
  %159 = load %struct.inode*, %struct.inode** %4, align 8
  %160 = getelementptr inbounds %struct.inode, %struct.inode* %159, i32 0, i32 7
  %161 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %160, i32 0, i32 0
  store i32 %158, i32* %161, align 4
  %162 = load %struct.dinode*, %struct.dinode** %3, align 8
  %163 = getelementptr inbounds %struct.dinode, %struct.dinode* %162, i32 0, i32 14
  %164 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %163, i32 0, i32 0
  %165 = load i32, i32* %164, align 4
  %166 = call i32 @le32_to_cpu(i32 %165)
  %167 = load %struct.inode*, %struct.inode** %4, align 8
  %168 = getelementptr inbounds %struct.inode, %struct.inode* %167, i32 0, i32 7
  %169 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %168, i32 0, i32 1
  store i32 %166, i32* %169, align 4
  %170 = load %struct.dinode*, %struct.dinode** %3, align 8
  %171 = getelementptr inbounds %struct.dinode, %struct.dinode* %170, i32 0, i32 13
  %172 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = call i32 @le32_to_cpu(i32 %173)
  %175 = load %struct.inode*, %struct.inode** %4, align 8
  %176 = getelementptr inbounds %struct.inode, %struct.inode* %175, i32 0, i32 6
  %177 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %176, i32 0, i32 0
  store i32 %174, i32* %177, align 4
  %178 = load %struct.dinode*, %struct.dinode** %3, align 8
  %179 = getelementptr inbounds %struct.dinode, %struct.dinode* %178, i32 0, i32 13
  %180 = getelementptr inbounds %struct.TYPE_11__, %struct.TYPE_11__* %179, i32 0, i32 0
  %181 = load i32, i32* %180, align 4
  %182 = call i32 @le32_to_cpu(i32 %181)
  %183 = load %struct.inode*, %struct.inode** %4, align 8
  %184 = getelementptr inbounds %struct.inode, %struct.inode* %183, i32 0, i32 6
  %185 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %184, i32 0, i32 1
  store i32 %182, i32* %185, align 4
  %186 = load %struct.dinode*, %struct.dinode** %3, align 8
  %187 = getelementptr inbounds %struct.dinode, %struct.dinode* %186, i32 0, i32 12
  %188 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %187, i32 0, i32 1
  %189 = load i32, i32* %188, align 4
  %190 = call i32 @le32_to_cpu(i32 %189)
  %191 = load %struct.inode*, %struct.inode** %4, align 8
  %192 = getelementptr inbounds %struct.inode, %struct.inode* %191, i32 0, i32 5
  %193 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %192, i32 0, i32 0
  store i32 %190, i32* %193, align 4
  %194 = load %struct.dinode*, %struct.dinode** %3, align 8
  %195 = getelementptr inbounds %struct.dinode, %struct.dinode* %194, i32 0, i32 12
  %196 = getelementptr inbounds %struct.TYPE_13__, %struct.TYPE_13__* %195, i32 0, i32 0
  %197 = load i32, i32* %196, align 4
  %198 = call i32 @le32_to_cpu(i32 %197)
  %199 = load %struct.inode*, %struct.inode** %4, align 8
  %200 = getelementptr inbounds %struct.inode, %struct.inode* %199, i32 0, i32 5
  %201 = getelementptr inbounds %struct.TYPE_12__, %struct.TYPE_12__* %200, i32 0, i32 1
  store i32 %198, i32* %201, align 4
  %202 = load %struct.inode*, %struct.inode** %4, align 8
  %203 = getelementptr inbounds %struct.inode, %struct.inode* %202, i32 0, i32 3
  %204 = load i32, i32* %203, align 4
  %205 = load %struct.dinode*, %struct.dinode** %3, align 8
  %206 = getelementptr inbounds %struct.dinode, %struct.dinode* %205, i32 0, i32 11
  %207 = load i32, i32* %206, align 4
  %208 = call i32 @le64_to_cpu(i32 %207)
  %209 = call i32 @LBLK2PBLK(i32 %204, i32 %208)
  %210 = load %struct.inode*, %struct.inode** %4, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 4
  store i32 %209, i32* %211, align 4
  %212 = load %struct.dinode*, %struct.dinode** %3, align 8
  %213 = getelementptr inbounds %struct.dinode, %struct.dinode* %212, i32 0, i32 10
  %214 = load i32, i32* %213, align 4
  %215 = call i32 @le32_to_cpu(i32 %214)
  %216 = load %struct.inode*, %struct.inode** %4, align 8
  %217 = getelementptr inbounds %struct.inode, %struct.inode* %216, i32 0, i32 1
  store i32 %215, i32* %217, align 4
  %218 = load %struct.dinode*, %struct.dinode** %3, align 8
  %219 = getelementptr inbounds %struct.dinode, %struct.dinode* %218, i32 0, i32 9
  %220 = load i32, i32* %219, align 4
  %221 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %222 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %221, i32 0, i32 19
  store i32 %220, i32* %222, align 4
  %223 = load %struct.dinode*, %struct.dinode** %3, align 8
  %224 = getelementptr inbounds %struct.dinode, %struct.dinode* %223, i32 0, i32 8
  %225 = load i32, i32* %224, align 4
  %226 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %227 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %226, i32 0, i32 18
  store i32 %225, i32* %227, align 8
  %228 = load %struct.dinode*, %struct.dinode** %3, align 8
  %229 = getelementptr inbounds %struct.dinode, %struct.dinode* %228, i32 0, i32 7
  %230 = load i32, i32* %229, align 4
  %231 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %232 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %231, i32 0, i32 17
  store i32 %230, i32* %232, align 4
  %233 = load %struct.dinode*, %struct.dinode** %3, align 8
  %234 = getelementptr inbounds %struct.dinode, %struct.dinode* %233, i32 0, i32 6
  %235 = load i32, i32* %234, align 4
  %236 = call i32 @le32_to_cpu(i32 %235)
  %237 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %238 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %237, i32 0, i32 2
  store i32 %236, i32* %238, align 8
  %239 = load %struct.dinode*, %struct.dinode** %3, align 8
  %240 = getelementptr inbounds %struct.dinode, %struct.dinode* %239, i32 0, i32 5
  %241 = getelementptr inbounds %struct.TYPE_14__, %struct.TYPE_14__* %240, i32 0, i32 0
  %242 = load i32, i32* %241, align 4
  %243 = call i32 @le32_to_cpu(i32 %242)
  %244 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %245 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %244, i32 0, i32 3
  store i32 %243, i32* %245, align 4
  %246 = load %struct.dinode*, %struct.dinode** %3, align 8
  %247 = getelementptr inbounds %struct.dinode, %struct.dinode* %246, i32 0, i32 4
  %248 = load i32, i32* %247, align 4
  %249 = call i32 @le32_to_cpu(i32 %248)
  %250 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %251 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %250, i32 0, i32 4
  store i32 %249, i32* %251, align 8
  %252 = load %struct.inode*, %struct.inode** %4, align 8
  %253 = getelementptr inbounds %struct.inode, %struct.inode* %252, i32 0, i32 0
  %254 = load i32, i32* %253, align 4
  %255 = call i64 @S_ISCHR(i32 %254)
  %256 = icmp ne i64 %255, 0
  br i1 %256, label %263, label %257

257:                                              ; preds = %147
  %258 = load %struct.inode*, %struct.inode** %4, align 8
  %259 = getelementptr inbounds %struct.inode, %struct.inode* %258, i32 0, i32 0
  %260 = load i32, i32* %259, align 4
  %261 = call i64 @S_ISBLK(i32 %260)
  %262 = icmp ne i64 %261, 0
  br i1 %262, label %263, label %276

263:                                              ; preds = %257, %147
  %264 = load %struct.dinode*, %struct.dinode** %3, align 8
  %265 = getelementptr inbounds %struct.dinode, %struct.dinode* %264, i32 0, i32 3
  %266 = load i32, i32* %265, align 4
  %267 = call i32 @le32_to_cpu(i32 %266)
  %268 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %269 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %268, i32 0, i32 5
  store i32 %267, i32* %269, align 4
  %270 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %271 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %270, i32 0, i32 5
  %272 = load i32, i32* %271, align 4
  %273 = call i32 @new_decode_dev(i32 %272)
  %274 = load %struct.inode*, %struct.inode** %4, align 8
  %275 = getelementptr inbounds %struct.inode, %struct.inode* %274, i32 0, i32 2
  store i32 %273, i32* %275, align 4
  br label %276

276:                                              ; preds = %263, %257
  %277 = load %struct.inode*, %struct.inode** %4, align 8
  %278 = getelementptr inbounds %struct.inode, %struct.inode* %277, i32 0, i32 0
  %279 = load i32, i32* %278, align 4
  %280 = call i64 @S_ISDIR(i32 %279)
  %281 = icmp ne i64 %280, 0
  br i1 %281, label %282, label %288

282:                                              ; preds = %276
  %283 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %284 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %283, i32 0, i32 16
  %285 = load %struct.dinode*, %struct.dinode** %3, align 8
  %286 = getelementptr inbounds %struct.dinode, %struct.dinode* %285, i32 0, i32 2
  %287 = call i32 @memcpy(i32* %284, i32* %286, i32 384)
  br label %313

288:                                              ; preds = %276
  %289 = load %struct.inode*, %struct.inode** %4, align 8
  %290 = getelementptr inbounds %struct.inode, %struct.inode* %289, i32 0, i32 0
  %291 = load i32, i32* %290, align 4
  %292 = call i64 @S_ISREG(i32 %291)
  %293 = icmp ne i64 %292, 0
  br i1 %293, label %300, label %294

294:                                              ; preds = %288
  %295 = load %struct.inode*, %struct.inode** %4, align 8
  %296 = getelementptr inbounds %struct.inode, %struct.inode* %295, i32 0, i32 0
  %297 = load i32, i32* %296, align 4
  %298 = call i64 @S_ISLNK(i32 %297)
  %299 = icmp ne i64 %298, 0
  br i1 %299, label %300, label %306

300:                                              ; preds = %294, %288
  %301 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %302 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %301, i32 0, i32 15
  %303 = load %struct.dinode*, %struct.dinode** %3, align 8
  %304 = getelementptr inbounds %struct.dinode, %struct.dinode* %303, i32 0, i32 1
  %305 = call i32 @memcpy(i32* %302, i32* %304, i32 288)
  br label %312

306:                                              ; preds = %294
  %307 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %308 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %307, i32 0, i32 14
  %309 = load %struct.dinode*, %struct.dinode** %3, align 8
  %310 = getelementptr inbounds %struct.dinode, %struct.dinode* %309, i32 0, i32 0
  %311 = call i32 @memcpy(i32* %308, i32* %310, i32 128)
  br label %312

312:                                              ; preds = %306, %300
  br label %313

313:                                              ; preds = %312, %282
  %314 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %315 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %314, i32 0, i32 13
  store i64 0, i64* %315, align 8
  %316 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %317 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %316, i32 0, i32 12
  store i64 0, i64* %317, align 8
  %318 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %319 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %318, i32 0, i32 11
  store i64 0, i64* %319, align 8
  %320 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %321 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %320, i32 0, i32 10
  store i64 0, i64* %321, align 8
  %322 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %323 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %322, i32 0, i32 9
  store i64 0, i64* %323, align 8
  %324 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %325 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %324, i32 0, i32 8
  store i64 0, i64* %325, align 8
  %326 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %327 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %326, i32 0, i32 7
  store i64 0, i64* %327, align 8
  %328 = load %struct.jfs_inode_info*, %struct.jfs_inode_info** %5, align 8
  %329 = getelementptr inbounds %struct.jfs_inode_info, %struct.jfs_inode_info* %328, i32 0, i32 6
  store i64 0, i64* %329, align 8
  ret i32 0
}

declare dso_local %struct.jfs_inode_info* @JFS_IP(%struct.inode*) #1

declare dso_local %struct.jfs_sb_info* @JFS_SBI(i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local i32 @jfs_set_inode_flags(%struct.inode*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @set_nlink(%struct.inode*, i32) #1

declare dso_local i32 @make_kuid(i32*, i32) #1

declare dso_local i32 @uid_valid(i32) #1

declare dso_local i32 @make_kgid(i32*, i32) #1

declare dso_local i32 @gid_valid(i32) #1

declare dso_local i32 @le64_to_cpu(i32) #1

declare dso_local i32 @LBLK2PBLK(i32, i32) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @new_decode_dev(i32) #1

declare dso_local i32 @memcpy(i32*, i32*, i32) #1

declare dso_local i64 @S_ISREG(i32) #1

declare dso_local i64 @S_ISLNK(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
