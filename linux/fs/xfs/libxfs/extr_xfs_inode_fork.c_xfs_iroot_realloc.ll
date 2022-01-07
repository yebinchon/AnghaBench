; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iroot_realloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_inode_fork.c_xfs_iroot_realloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_5__ = type { %struct.xfs_mount* }
%struct.xfs_mount = type { i32 }
%struct.xfs_ifork = type { i32, i8*, i32 }
%struct.xfs_btree_block = type opaque

@KM_NOFS = common dso_local global i32 0, align 4
@XFS_IFBROOT = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_iroot_realloc(%struct.TYPE_5__* %0, i32 %1, i32 %2) #0 {
  %4 = alloca %struct.TYPE_5__*, align 8
  %5 = alloca i32, align 4
  %6 = alloca i32, align 4
  %7 = alloca %struct.xfs_mount*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.xfs_ifork*, align 8
  %10 = alloca %struct.xfs_btree_block*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i64, align 8
  %13 = alloca i8*, align 8
  %14 = alloca i8*, align 8
  store %struct.TYPE_5__* %0, %struct.TYPE_5__** %4, align 8
  store i32 %1, i32* %5, align 4
  store i32 %2, i32* %6, align 4
  %15 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %15, i32 0, i32 0
  %17 = load %struct.xfs_mount*, %struct.xfs_mount** %16, align 8
  store %struct.xfs_mount* %17, %struct.xfs_mount** %7, align 8
  %18 = load i32, i32* %5, align 4
  %19 = icmp eq i32 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  br label %229

21:                                               ; preds = %3
  %22 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %23 = load i32, i32* %6, align 4
  %24 = call %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_5__* %22, i32 %23)
  store %struct.xfs_ifork* %24, %struct.xfs_ifork** %9, align 8
  %25 = load i32, i32* %5, align 4
  %26 = icmp sgt i32 %25, 0
  br i1 %26, label %27, label %101

27:                                               ; preds = %21
  %28 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %29 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = icmp eq i32 %30, 0
  br i1 %31, label %32, label %45

32:                                               ; preds = %27
  %33 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %34 = load i32, i32* %5, align 4
  %35 = call i64 @XFS_BMAP_BROOT_SPACE_CALC(%struct.xfs_mount* %33, i32 %34)
  store i64 %35, i64* %12, align 8
  %36 = load i64, i64* %12, align 8
  %37 = load i32, i32* @KM_NOFS, align 4
  %38 = call i8* @kmem_alloc(i64 %36, i32 %37)
  %39 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %40 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %39, i32 0, i32 1
  store i8* %38, i8** %40, align 8
  %41 = load i64, i64* %12, align 8
  %42 = trunc i64 %41 to i32
  %43 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %44 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %43, i32 0, i32 0
  store i32 %42, i32* %44, align 8
  br label %229

45:                                               ; preds = %27
  %46 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %47 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %48 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %47, i32 0, i32 0
  %49 = load i32, i32* %48, align 8
  %50 = call i32 @xfs_bmbt_maxrecs(%struct.xfs_mount* %46, i32 %49, i32 0)
  store i32 %50, i32* %8, align 4
  %51 = load i32, i32* %8, align 4
  %52 = load i32, i32* %5, align 4
  %53 = add nsw i32 %51, %52
  store i32 %53, i32* %11, align 4
  %54 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %55 = load i32, i32* %11, align 4
  %56 = call i64 @XFS_BMAP_BROOT_SPACE_CALC(%struct.xfs_mount* %54, i32 %55)
  store i64 %56, i64* %12, align 8
  %57 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %58 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %57, i32 0, i32 1
  %59 = load i8*, i8** %58, align 8
  %60 = load i64, i64* %12, align 8
  %61 = load i32, i32* @KM_NOFS, align 4
  %62 = call i8* @kmem_realloc(i8* %59, i64 %60, i32 %61)
  %63 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %64 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %63, i32 0, i32 1
  store i8* %62, i8** %64, align 8
  %65 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %66 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %67 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %66, i32 0, i32 1
  %68 = load i8*, i8** %67, align 8
  %69 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %70 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %69, i32 0, i32 0
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %65, i8* %68, i32 1, i32 %71)
  %73 = inttoptr i64 %72 to i8*
  store i8* %73, i8** %14, align 8
  %74 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %75 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %76 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %75, i32 0, i32 1
  %77 = load i8*, i8** %76, align 8
  %78 = load i64, i64* %12, align 8
  %79 = trunc i64 %78 to i32
  %80 = call i64 @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %74, i8* %77, i32 1, i32 %79)
  %81 = inttoptr i64 %80 to i8*
  store i8* %81, i8** %13, align 8
  %82 = load i64, i64* %12, align 8
  %83 = trunc i64 %82 to i32
  %84 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %85 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %84, i32 0, i32 0
  store i32 %83, i32* %85, align 8
  %86 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %87 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %86, i32 0, i32 1
  %88 = load i8*, i8** %87, align 8
  %89 = call i64 @XFS_BMAP_BMDR_SPACE(i8* %88)
  %90 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %91 = load i32, i32* %6, align 4
  %92 = call i64 @XFS_IFORK_SIZE(%struct.TYPE_5__* %90, i32 %91)
  %93 = icmp sle i64 %89, %92
  %94 = zext i1 %93 to i32
  %95 = call i32 @ASSERT(i32 %94)
  %96 = load i8*, i8** %13, align 8
  %97 = load i8*, i8** %14, align 8
  %98 = load i32, i32* %8, align 4
  %99 = mul nsw i32 %98, 4
  %100 = call i32 @memmove(i8* %96, i8* %97, i32 %99)
  br label %229

101:                                              ; preds = %21
  %102 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %103 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %102, i32 0, i32 1
  %104 = load i8*, i8** %103, align 8
  %105 = icmp ne i8* %104, null
  br i1 %105, label %106, label %111

106:                                              ; preds = %101
  %107 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %108 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %107, i32 0, i32 0
  %109 = load i32, i32* %108, align 8
  %110 = icmp sgt i32 %109, 0
  br label %111

111:                                              ; preds = %106, %101
  %112 = phi i1 [ false, %101 ], [ %110, %106 ]
  %113 = zext i1 %112 to i32
  %114 = call i32 @ASSERT(i32 %113)
  %115 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %116 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %117 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = call i32 @xfs_bmbt_maxrecs(%struct.xfs_mount* %115, i32 %118, i32 0)
  store i32 %119, i32* %8, align 4
  %120 = load i32, i32* %8, align 4
  %121 = load i32, i32* %5, align 4
  %122 = add nsw i32 %120, %121
  store i32 %122, i32* %11, align 4
  %123 = load i32, i32* %11, align 4
  %124 = icmp sge i32 %123, 0
  %125 = zext i1 %124 to i32
  %126 = call i32 @ASSERT(i32 %125)
  %127 = load i32, i32* %11, align 4
  %128 = icmp sgt i32 %127, 0
  br i1 %128, label %129, label %133

129:                                              ; preds = %111
  %130 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %131 = load i32, i32* %11, align 4
  %132 = call i64 @XFS_BMAP_BROOT_SPACE_CALC(%struct.xfs_mount* %130, i32 %131)
  store i64 %132, i64* %12, align 8
  br label %134

133:                                              ; preds = %111
  store i64 0, i64* %12, align 8
  br label %134

134:                                              ; preds = %133, %129
  %135 = load i64, i64* %12, align 8
  %136 = icmp ugt i64 %135, 0
  br i1 %136, label %137, label %152

137:                                              ; preds = %134
  %138 = load i64, i64* %12, align 8
  %139 = load i32, i32* @KM_NOFS, align 4
  %140 = call i8* @kmem_alloc(i64 %138, i32 %139)
  %141 = bitcast i8* %140 to %struct.xfs_btree_block*
  store %struct.xfs_btree_block* %141, %struct.xfs_btree_block** %10, align 8
  %142 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %143 = bitcast %struct.xfs_btree_block* %142 to i8*
  %144 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %145 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %144, i32 0, i32 1
  %146 = load i8*, i8** %145, align 8
  %147 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %148 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %147, i32 0, i32 0
  %149 = load %struct.xfs_mount*, %struct.xfs_mount** %148, align 8
  %150 = call i32 @XFS_BMBT_BLOCK_LEN(%struct.xfs_mount* %149)
  %151 = call i32 @memcpy(i8* %143, i8* %146, i32 %150)
  br label %159

152:                                              ; preds = %134
  store %struct.xfs_btree_block* null, %struct.xfs_btree_block** %10, align 8
  %153 = load i32, i32* @XFS_IFBROOT, align 4
  %154 = xor i32 %153, -1
  %155 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %156 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %155, i32 0, i32 2
  %157 = load i32, i32* %156, align 8
  %158 = and i32 %157, %154
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %152, %137
  %160 = load i32, i32* %11, align 4
  %161 = icmp sgt i32 %160, 0
  br i1 %161, label %162, label %200

162:                                              ; preds = %159
  %163 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %164 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %165 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %164, i32 0, i32 1
  %166 = load i8*, i8** %165, align 8
  %167 = call i64 @XFS_BMBT_REC_ADDR(%struct.xfs_mount* %163, i8* %166, i32 1)
  %168 = inttoptr i64 %167 to i8*
  store i8* %168, i8** %14, align 8
  %169 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %170 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %171 = bitcast %struct.xfs_btree_block* %170 to i8*
  %172 = call i64 @XFS_BMBT_REC_ADDR(%struct.xfs_mount* %169, i8* %171, i32 1)
  %173 = inttoptr i64 %172 to i8*
  store i8* %173, i8** %13, align 8
  %174 = load i8*, i8** %13, align 8
  %175 = load i8*, i8** %14, align 8
  %176 = load i32, i32* %11, align 4
  %177 = mul nsw i32 %176, 4
  %178 = call i32 @memcpy(i8* %174, i8* %175, i32 %177)
  %179 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %180 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %181 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %180, i32 0, i32 1
  %182 = load i8*, i8** %181, align 8
  %183 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %184 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %183, i32 0, i32 0
  %185 = load i32, i32* %184, align 8
  %186 = call i64 @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %179, i8* %182, i32 1, i32 %185)
  %187 = inttoptr i64 %186 to i8*
  store i8* %187, i8** %14, align 8
  %188 = load %struct.xfs_mount*, %struct.xfs_mount** %7, align 8
  %189 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %190 = bitcast %struct.xfs_btree_block* %189 to i8*
  %191 = load i64, i64* %12, align 8
  %192 = trunc i64 %191 to i32
  %193 = call i64 @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount* %188, i8* %190, i32 1, i32 %192)
  %194 = inttoptr i64 %193 to i8*
  store i8* %194, i8** %13, align 8
  %195 = load i8*, i8** %13, align 8
  %196 = load i8*, i8** %14, align 8
  %197 = load i32, i32* %11, align 4
  %198 = mul nsw i32 %197, 4
  %199 = call i32 @memcpy(i8* %195, i8* %196, i32 %198)
  br label %200

200:                                              ; preds = %162, %159
  %201 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %202 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %201, i32 0, i32 1
  %203 = load i8*, i8** %202, align 8
  %204 = call i32 @kmem_free(i8* %203)
  %205 = load %struct.xfs_btree_block*, %struct.xfs_btree_block** %10, align 8
  %206 = bitcast %struct.xfs_btree_block* %205 to i8*
  %207 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %208 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %207, i32 0, i32 1
  store i8* %206, i8** %208, align 8
  %209 = load i64, i64* %12, align 8
  %210 = trunc i64 %209 to i32
  %211 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %212 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %211, i32 0, i32 0
  store i32 %210, i32* %212, align 8
  %213 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %214 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %213, i32 0, i32 1
  %215 = load i8*, i8** %214, align 8
  %216 = icmp ne i8* %215, null
  br i1 %216, label %217, label %228

217:                                              ; preds = %200
  %218 = load %struct.xfs_ifork*, %struct.xfs_ifork** %9, align 8
  %219 = getelementptr inbounds %struct.xfs_ifork, %struct.xfs_ifork* %218, i32 0, i32 1
  %220 = load i8*, i8** %219, align 8
  %221 = call i64 @XFS_BMAP_BMDR_SPACE(i8* %220)
  %222 = load %struct.TYPE_5__*, %struct.TYPE_5__** %4, align 8
  %223 = load i32, i32* %6, align 4
  %224 = call i64 @XFS_IFORK_SIZE(%struct.TYPE_5__* %222, i32 %223)
  %225 = icmp sle i64 %221, %224
  %226 = zext i1 %225 to i32
  %227 = call i32 @ASSERT(i32 %226)
  br label %228

228:                                              ; preds = %217, %200
  br label %229

229:                                              ; preds = %228, %45, %32, %20
  ret void
}

declare dso_local %struct.xfs_ifork* @XFS_IFORK_PTR(%struct.TYPE_5__*, i32) #1

declare dso_local i64 @XFS_BMAP_BROOT_SPACE_CALC(%struct.xfs_mount*, i32) #1

declare dso_local i8* @kmem_alloc(i64, i32) #1

declare dso_local i32 @xfs_bmbt_maxrecs(%struct.xfs_mount*, i32, i32) #1

declare dso_local i8* @kmem_realloc(i8*, i64, i32) #1

declare dso_local i64 @XFS_BMAP_BROOT_PTR_ADDR(%struct.xfs_mount*, i8*, i32, i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @XFS_BMAP_BMDR_SPACE(i8*) #1

declare dso_local i64 @XFS_IFORK_SIZE(%struct.TYPE_5__*, i32) #1

declare dso_local i32 @memmove(i8*, i8*, i32) #1

declare dso_local i32 @memcpy(i8*, i8*, i32) #1

declare dso_local i32 @XFS_BMBT_BLOCK_LEN(%struct.xfs_mount*) #1

declare dso_local i64 @XFS_BMBT_REC_ADDR(%struct.xfs_mount*, i8*, i32) #1

declare dso_local i32 @kmem_free(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
