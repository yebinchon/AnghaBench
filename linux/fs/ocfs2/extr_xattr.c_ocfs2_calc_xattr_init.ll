; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_calc_xattr_init.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/extr_xattr.c_ocfs2_calc_xattr_init.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { %struct.TYPE_6__* }
%struct.TYPE_6__ = type { i64 }
%struct.buffer_head = type { i32 }
%struct.ocfs2_security_xattr_info = type { i32, i64, i32 }
%struct.ocfs2_super = type { i32 }
%struct.TYPE_7__ = type { i32 }

@OCFS2_MOUNT_POSIX_ACL = common dso_local global i32 0, align 4
@OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [1 x i8] zeroinitializer, align 1
@ENODATA = common dso_local global i32 0, align 4
@OCFS2_MIN_BLOCKSIZE = common dso_local global i64 0, align 8
@OCFS2_XATTR_FREE_IN_IBODY = common dso_local global i32 0, align 4
@OCFS2_XATTR_BLOCK_CREATE_CREDITS = common dso_local global i64 0, align 8
@OCFS2_XATTR_INLINE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ocfs2_calc_xattr_init(%struct.inode* %0, %struct.buffer_head* %1, i32 %2, %struct.ocfs2_security_xattr_info* %3, i32* %4, i32* %5, i32* %6) #0 {
  %8 = alloca i32, align 4
  %9 = alloca %struct.inode*, align 8
  %10 = alloca %struct.buffer_head*, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ocfs2_security_xattr_info*, align 8
  %13 = alloca i32*, align 8
  %14 = alloca i32*, align 8
  %15 = alloca i32*, align 8
  %16 = alloca i32, align 4
  %17 = alloca %struct.ocfs2_super*, align 8
  %18 = alloca i32, align 4
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  store %struct.inode* %0, %struct.inode** %9, align 8
  store %struct.buffer_head* %1, %struct.buffer_head** %10, align 8
  store i32 %2, i32* %11, align 4
  store %struct.ocfs2_security_xattr_info* %3, %struct.ocfs2_security_xattr_info** %12, align 8
  store i32* %4, i32** %13, align 8
  store i32* %5, i32** %14, align 8
  store i32* %6, i32** %15, align 8
  store i32 0, i32* %16, align 4
  %22 = load %struct.inode*, %struct.inode** %9, align 8
  %23 = getelementptr inbounds %struct.inode, %struct.inode* %22, i32 0, i32 0
  %24 = load %struct.TYPE_6__*, %struct.TYPE_6__** %23, align 8
  %25 = call %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_6__* %24)
  store %struct.ocfs2_super* %25, %struct.ocfs2_super** %17, align 8
  store i32 0, i32* %18, align 4
  store i32 0, i32* %19, align 4
  store i32 0, i32* %20, align 4
  %26 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %27 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = icmp ne i64 %28, 0
  br i1 %29, label %30, label %39

30:                                               ; preds = %7
  %31 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %32 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %31, i32 0, i32 2
  %33 = load i32, i32* %32, align 8
  %34 = call i32 @strlen(i32 %33)
  %35 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %36 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = call i32 @ocfs2_xattr_entry_real_size(i32 %34, i32 %37)
  store i32 %38, i32* %18, align 4
  br label %39

39:                                               ; preds = %30, %7
  %40 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %41 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 4
  %43 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %44 = and i32 %42, %43
  %45 = icmp ne i32 %44, 0
  br i1 %45, label %46, label %86

46:                                               ; preds = %39
  %47 = load %struct.inode*, %struct.inode** %9, align 8
  %48 = call %struct.TYPE_7__* @OCFS2_I(%struct.inode* %47)
  %49 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %48, i32 0, i32 0
  %50 = call i32 @down_read(i32* %49)
  %51 = load %struct.inode*, %struct.inode** %9, align 8
  %52 = load %struct.buffer_head*, %struct.buffer_head** %10, align 8
  %53 = load i32, i32* @OCFS2_XATTR_INDEX_POSIX_ACL_DEFAULT, align 4
  %54 = call i32 @ocfs2_xattr_get_nolock(%struct.inode* %51, %struct.buffer_head* %52, i32 %53, i8* getelementptr inbounds ([1 x i8], [1 x i8]* @.str, i64 0, i64 0), i32* null, i32 0)
  store i32 %54, i32* %20, align 4
  %55 = load %struct.inode*, %struct.inode** %9, align 8
  %56 = call %struct.TYPE_7__* @OCFS2_I(%struct.inode* %55)
  %57 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %56, i32 0, i32 0
  %58 = call i32 @up_read(i32* %57)
  %59 = load i32, i32* %20, align 4
  %60 = icmp sgt i32 %59, 0
  br i1 %60, label %61, label %71

61:                                               ; preds = %46
  %62 = load i32, i32* %20, align 4
  %63 = call i32 @ocfs2_xattr_entry_real_size(i32 0, i32 %62)
  store i32 %63, i32* %19, align 4
  %64 = load i32, i32* %11, align 4
  %65 = call i64 @S_ISDIR(i32 %64)
  %66 = icmp ne i64 %65, 0
  br i1 %66, label %67, label %70

67:                                               ; preds = %61
  %68 = load i32, i32* %19, align 4
  %69 = shl i32 %68, 1
  store i32 %69, i32* %19, align 4
  br label %70

70:                                               ; preds = %67, %61
  br label %85

71:                                               ; preds = %46
  %72 = load i32, i32* %20, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %84

74:                                               ; preds = %71
  %75 = load i32, i32* %20, align 4
  %76 = load i32, i32* @ENODATA, align 4
  %77 = sub nsw i32 0, %76
  %78 = icmp ne i32 %75, %77
  br i1 %78, label %79, label %84

79:                                               ; preds = %74
  %80 = load i32, i32* %20, align 4
  store i32 %80, i32* %16, align 4
  %81 = load i32, i32* %16, align 4
  %82 = call i32 @mlog_errno(i32 %81)
  %83 = load i32, i32* %16, align 4
  store i32 %83, i32* %8, align 4
  br label %226

84:                                               ; preds = %74, %71
  br label %85

85:                                               ; preds = %84, %70
  br label %86

86:                                               ; preds = %85, %39
  %87 = load i32, i32* %18, align 4
  %88 = load i32, i32* %19, align 4
  %89 = add nsw i32 %87, %88
  %90 = icmp ne i32 %89, 0
  br i1 %90, label %93, label %91

91:                                               ; preds = %86
  %92 = load i32, i32* %16, align 4
  store i32 %92, i32* %8, align 4
  br label %226

93:                                               ; preds = %86
  %94 = load %struct.inode*, %struct.inode** %9, align 8
  %95 = getelementptr inbounds %struct.inode, %struct.inode* %94, i32 0, i32 0
  %96 = load %struct.TYPE_6__*, %struct.TYPE_6__** %95, align 8
  %97 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %96, i32 0, i32 0
  %98 = load i64, i64* %97, align 8
  %99 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %100 = icmp eq i64 %98, %99
  br i1 %100, label %115, label %101

101:                                              ; preds = %93
  %102 = load i32, i32* %11, align 4
  %103 = call i64 @S_ISDIR(i32 %102)
  %104 = icmp ne i64 %103, 0
  br i1 %104, label %105, label %109

105:                                              ; preds = %101
  %106 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %107 = call i64 @ocfs2_supports_inline_data(%struct.ocfs2_super* %106)
  %108 = icmp ne i64 %107, 0
  br i1 %108, label %115, label %109

109:                                              ; preds = %105, %101
  %110 = load i32, i32* %18, align 4
  %111 = load i32, i32* %19, align 4
  %112 = add nsw i32 %110, %111
  %113 = load i32, i32* @OCFS2_XATTR_FREE_IN_IBODY, align 4
  %114 = icmp sgt i32 %112, %113
  br i1 %114, label %115, label %126

115:                                              ; preds = %109, %105, %93
  %116 = load i32*, i32** %15, align 8
  %117 = load i32, i32* %116, align 4
  %118 = add nsw i32 %117, 1
  %119 = load i32*, i32** %15, align 8
  store i32 %118, i32* %119, align 4
  %120 = load i64, i64* @OCFS2_XATTR_BLOCK_CREATE_CREDITS, align 8
  %121 = load i32*, i32** %14, align 8
  %122 = load i32, i32* %121, align 4
  %123 = sext i32 %122 to i64
  %124 = add nsw i64 %123, %120
  %125 = trunc i64 %124 to i32
  store i32 %125, i32* %121, align 4
  br label %126

126:                                              ; preds = %115, %109
  %127 = load %struct.inode*, %struct.inode** %9, align 8
  %128 = getelementptr inbounds %struct.inode, %struct.inode* %127, i32 0, i32 0
  %129 = load %struct.TYPE_6__*, %struct.TYPE_6__** %128, align 8
  %130 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %129, i32 0, i32 0
  %131 = load i64, i64* %130, align 8
  %132 = load i64, i64* @OCFS2_MIN_BLOCKSIZE, align 8
  %133 = icmp eq i64 %131, %132
  br i1 %133, label %134, label %154

134:                                              ; preds = %126
  %135 = load i32, i32* %18, align 4
  %136 = load i32, i32* %19, align 4
  %137 = add nsw i32 %135, %136
  %138 = load %struct.inode*, %struct.inode** %9, align 8
  %139 = call i32 @OCFS2_XATTR_FREE_IN_BLOCK(%struct.inode* %138)
  %140 = icmp sgt i32 %137, %139
  br i1 %140, label %141, label %154

141:                                              ; preds = %134
  %142 = load i32*, i32** %13, align 8
  %143 = load i32, i32* %142, align 4
  %144 = add nsw i32 %143, 1
  store i32 %144, i32* %142, align 4
  %145 = load %struct.inode*, %struct.inode** %9, align 8
  %146 = getelementptr inbounds %struct.inode, %struct.inode* %145, i32 0, i32 0
  %147 = load %struct.TYPE_6__*, %struct.TYPE_6__** %146, align 8
  %148 = call i64 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_6__* %147)
  %149 = load i32*, i32** %14, align 8
  %150 = load i32, i32* %149, align 4
  %151 = sext i32 %150 to i64
  %152 = add nsw i64 %151, %148
  %153 = trunc i64 %152 to i32
  store i32 %153, i32* %149, align 4
  br label %154

154:                                              ; preds = %141, %134, %126
  %155 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %156 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %155, i32 0, i32 1
  %157 = load i64, i64* %156, align 8
  %158 = icmp ne i64 %157, 0
  br i1 %158, label %159, label %187

159:                                              ; preds = %154
  %160 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %161 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %160, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = load i32, i32* @OCFS2_XATTR_INLINE_SIZE, align 4
  %164 = icmp sgt i32 %162, %163
  br i1 %164, label %165, label %187

165:                                              ; preds = %159
  %166 = load %struct.inode*, %struct.inode** %9, align 8
  %167 = getelementptr inbounds %struct.inode, %struct.inode* %166, i32 0, i32 0
  %168 = load %struct.TYPE_6__*, %struct.TYPE_6__** %167, align 8
  %169 = load %struct.ocfs2_security_xattr_info*, %struct.ocfs2_security_xattr_info** %12, align 8
  %170 = getelementptr inbounds %struct.ocfs2_security_xattr_info, %struct.ocfs2_security_xattr_info* %169, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @ocfs2_clusters_for_bytes(%struct.TYPE_6__* %168, i32 %171)
  store i32 %172, i32* %21, align 4
  %173 = load %struct.inode*, %struct.inode** %9, align 8
  %174 = getelementptr inbounds %struct.inode, %struct.inode* %173, i32 0, i32 0
  %175 = load %struct.TYPE_6__*, %struct.TYPE_6__** %174, align 8
  %176 = load i32, i32* %21, align 4
  %177 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_6__* %175, i32 %176)
  %178 = load i32*, i32** %14, align 8
  %179 = load i32, i32* %178, align 4
  %180 = sext i32 %179 to i64
  %181 = add nsw i64 %180, %177
  %182 = trunc i64 %181 to i32
  store i32 %182, i32* %178, align 4
  %183 = load i32, i32* %21, align 4
  %184 = load i32*, i32** %13, align 8
  %185 = load i32, i32* %184, align 4
  %186 = add nsw i32 %185, %183
  store i32 %186, i32* %184, align 4
  br label %187

187:                                              ; preds = %165, %159, %154
  %188 = load %struct.ocfs2_super*, %struct.ocfs2_super** %17, align 8
  %189 = getelementptr inbounds %struct.ocfs2_super, %struct.ocfs2_super* %188, i32 0, i32 0
  %190 = load i32, i32* %189, align 4
  %191 = load i32, i32* @OCFS2_MOUNT_POSIX_ACL, align 4
  %192 = and i32 %190, %191
  %193 = icmp ne i32 %192, 0
  br i1 %193, label %194, label %224

194:                                              ; preds = %187
  %195 = load i32, i32* %20, align 4
  %196 = load i32, i32* @OCFS2_XATTR_INLINE_SIZE, align 4
  %197 = icmp sgt i32 %195, %196
  br i1 %197, label %198, label %224

198:                                              ; preds = %194
  %199 = load i32, i32* %11, align 4
  %200 = call i64 @S_ISDIR(i32 %199)
  %201 = icmp ne i64 %200, 0
  %202 = zext i1 %201 to i64
  %203 = select i1 %201, i32 2, i32 1
  %204 = load %struct.inode*, %struct.inode** %9, align 8
  %205 = getelementptr inbounds %struct.inode, %struct.inode* %204, i32 0, i32 0
  %206 = load %struct.TYPE_6__*, %struct.TYPE_6__** %205, align 8
  %207 = load i32, i32* %20, align 4
  %208 = call i32 @ocfs2_clusters_for_bytes(%struct.TYPE_6__* %206, i32 %207)
  %209 = mul nsw i32 %203, %208
  store i32 %209, i32* %21, align 4
  %210 = load %struct.inode*, %struct.inode** %9, align 8
  %211 = getelementptr inbounds %struct.inode, %struct.inode* %210, i32 0, i32 0
  %212 = load %struct.TYPE_6__*, %struct.TYPE_6__** %211, align 8
  %213 = load i32, i32* %21, align 4
  %214 = call i64 @ocfs2_clusters_to_blocks(%struct.TYPE_6__* %212, i32 %213)
  %215 = load i32*, i32** %14, align 8
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = add nsw i64 %217, %214
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  %220 = load i32, i32* %21, align 4
  %221 = load i32*, i32** %13, align 8
  %222 = load i32, i32* %221, align 4
  %223 = add nsw i32 %222, %220
  store i32 %223, i32* %221, align 4
  br label %224

224:                                              ; preds = %198, %194, %187
  %225 = load i32, i32* %16, align 4
  store i32 %225, i32* %8, align 4
  br label %226

226:                                              ; preds = %224, %91, %79
  %227 = load i32, i32* %8, align 4
  ret i32 %227
}

declare dso_local %struct.ocfs2_super* @OCFS2_SB(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_xattr_entry_real_size(i32, i32) #1

declare dso_local i32 @strlen(i32) #1

declare dso_local i32 @down_read(i32*) #1

declare dso_local %struct.TYPE_7__* @OCFS2_I(%struct.inode*) #1

declare dso_local i32 @ocfs2_xattr_get_nolock(%struct.inode*, %struct.buffer_head*, i32, i8*, i32*, i32) #1

declare dso_local i32 @up_read(i32*) #1

declare dso_local i64 @S_ISDIR(i32) #1

declare dso_local i32 @mlog_errno(i32) #1

declare dso_local i64 @ocfs2_supports_inline_data(%struct.ocfs2_super*) #1

declare dso_local i32 @OCFS2_XATTR_FREE_IN_BLOCK(%struct.inode*) #1

declare dso_local i64 @ocfs2_blocks_per_xattr_bucket(%struct.TYPE_6__*) #1

declare dso_local i32 @ocfs2_clusters_for_bytes(%struct.TYPE_6__*, i32) #1

declare dso_local i64 @ocfs2_clusters_to_blocks(%struct.TYPE_6__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
