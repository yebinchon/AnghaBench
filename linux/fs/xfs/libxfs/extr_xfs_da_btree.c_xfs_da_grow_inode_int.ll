; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_grow_inode_int.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_da_btree.c_xfs_da_grow_inode_int.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_args = type { i32, i32, %struct.xfs_inode*, %struct.xfs_trans* }
%struct.xfs_inode = type { %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.xfs_trans = type { i32 }
%struct.xfs_bmbt_irec = type { i64, i64 }

@XFS_BMAPI_METADATA = common dso_local global i32 0, align 4
@XFS_BMAPI_CONTIG = common dso_local global i32 0, align 4
@XFS_BMAP_MAX_NMAP = common dso_local global i32 0, align 4
@ENOSPC = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_da_grow_inode_int(%struct.xfs_da_args* %0, i64* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca i64*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.xfs_trans*, align 8
  %9 = alloca %struct.xfs_inode*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i64, align 8
  %12 = alloca %struct.xfs_bmbt_irec, align 8
  %13 = alloca %struct.xfs_bmbt_irec*, align 8
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  %17 = alloca i32, align 4
  %18 = alloca i32, align 4
  %19 = alloca i64, align 8
  %20 = alloca i32, align 4
  store %struct.xfs_da_args* %0, %struct.xfs_da_args** %5, align 8
  store i64* %1, i64** %6, align 8
  store i32 %2, i32* %7, align 4
  %21 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %21, i32 0, i32 3
  %23 = load %struct.xfs_trans*, %struct.xfs_trans** %22, align 8
  store %struct.xfs_trans* %23, %struct.xfs_trans** %8, align 8
  %24 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %25 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %24, i32 0, i32 2
  %26 = load %struct.xfs_inode*, %struct.xfs_inode** %25, align 8
  store %struct.xfs_inode* %26, %struct.xfs_inode** %9, align 8
  %27 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %28 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %27, i32 0, i32 0
  %29 = load i32, i32* %28, align 8
  store i32 %29, i32* %10, align 4
  %30 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %31 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %30, i32 0, i32 0
  %32 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %31, i32 0, i32 0
  %33 = load i64, i64* %32, align 8
  store i64 %33, i64* %11, align 8
  %34 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %35 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %36 = load i32, i32* %7, align 4
  %37 = load i64*, i64** %6, align 8
  %38 = load i32, i32* %10, align 4
  %39 = call i32 @xfs_bmap_first_unused(%struct.xfs_trans* %34, %struct.xfs_inode* %35, i32 %36, i64* %37, i32 %38)
  store i32 %39, i32* %15, align 4
  %40 = load i32, i32* %15, align 4
  %41 = icmp ne i32 %40, 0
  br i1 %41, label %42, label %44

42:                                               ; preds = %3
  %43 = load i32, i32* %15, align 4
  store i32 %43, i32* %4, align 4
  br label %228

44:                                               ; preds = %3
  store i32 1, i32* %14, align 4
  %45 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %46 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %47 = load i64*, i64** %6, align 8
  %48 = load i64, i64* %47, align 8
  %49 = load i32, i32* %7, align 4
  %50 = load i32, i32* %10, align 4
  %51 = call i32 @xfs_bmapi_aflag(i32 %50)
  %52 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %53 = or i32 %51, %52
  %54 = load i32, i32* @XFS_BMAPI_CONTIG, align 4
  %55 = or i32 %53, %54
  %56 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %57 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %56, i32 0, i32 1
  %58 = load i32, i32* %57, align 4
  %59 = call i32 @xfs_bmapi_write(%struct.xfs_trans* %45, %struct.xfs_inode* %46, i64 %48, i32 %49, i32 %55, i32 %58, %struct.xfs_bmbt_irec* %12, i32* %14)
  store i32 %59, i32* %15, align 4
  %60 = load i32, i32* %15, align 4
  %61 = icmp ne i32 %60, 0
  br i1 %61, label %62, label %64

62:                                               ; preds = %44
  %63 = load i32, i32* %15, align 4
  store i32 %63, i32* %4, align 4
  br label %228

64:                                               ; preds = %44
  %65 = load i32, i32* %14, align 4
  %66 = icmp sle i32 %65, 1
  %67 = zext i1 %66 to i32
  %68 = call i32 @ASSERT(i32 %67)
  %69 = load i32, i32* %14, align 4
  %70 = icmp eq i32 %69, 1
  br i1 %70, label %71, label %72

71:                                               ; preds = %64
  store %struct.xfs_bmbt_irec* %12, %struct.xfs_bmbt_irec** %13, align 8
  store i32 1, i32* %18, align 4
  br label %151

72:                                               ; preds = %64
  %73 = load i32, i32* %14, align 4
  %74 = icmp eq i32 %73, 0
  br i1 %74, label %75, label %149

75:                                               ; preds = %72
  %76 = load i32, i32* %7, align 4
  %77 = icmp sgt i32 %76, 1
  br i1 %77, label %78, label %149

78:                                               ; preds = %75
  %79 = load i32, i32* %7, align 4
  %80 = sext i32 %79 to i64
  %81 = mul i64 16, %80
  %82 = trunc i64 %81 to i32
  %83 = call %struct.xfs_bmbt_irec* @kmem_alloc(i32 %82, i32 0)
  store %struct.xfs_bmbt_irec* %83, %struct.xfs_bmbt_irec** %13, align 8
  %84 = load i64*, i64** %6, align 8
  %85 = load i64, i64* %84, align 8
  store i64 %85, i64* %19, align 8
  store i32 0, i32* %18, align 4
  br label %86

86:                                               ; preds = %129, %78
  %87 = load i64, i64* %19, align 8
  %88 = load i64*, i64** %6, align 8
  %89 = load i64, i64* %88, align 8
  %90 = load i32, i32* %7, align 4
  %91 = sext i32 %90 to i64
  %92 = add nsw i64 %89, %91
  %93 = icmp slt i64 %87, %92
  br i1 %93, label %94, label %148

94:                                               ; preds = %86
  %95 = load i32, i32* @XFS_BMAP_MAX_NMAP, align 4
  %96 = load i32, i32* %7, align 4
  %97 = call i32 @min(i32 %95, i32 %96)
  store i32 %97, i32* %14, align 4
  %98 = load i64*, i64** %6, align 8
  %99 = load i64, i64* %98, align 8
  %100 = load i32, i32* %7, align 4
  %101 = sext i32 %100 to i64
  %102 = add nsw i64 %99, %101
  %103 = load i64, i64* %19, align 8
  %104 = sub nsw i64 %102, %103
  %105 = trunc i64 %104 to i32
  store i32 %105, i32* %20, align 4
  %106 = load %struct.xfs_trans*, %struct.xfs_trans** %8, align 8
  %107 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %108 = load i64, i64* %19, align 8
  %109 = load i32, i32* %20, align 4
  %110 = load i32, i32* %10, align 4
  %111 = call i32 @xfs_bmapi_aflag(i32 %110)
  %112 = load i32, i32* @XFS_BMAPI_METADATA, align 4
  %113 = or i32 %111, %112
  %114 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %115 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %114, i32 0, i32 1
  %116 = load i32, i32* %115, align 4
  %117 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %118 = load i32, i32* %18, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %117, i64 %119
  %121 = call i32 @xfs_bmapi_write(%struct.xfs_trans* %106, %struct.xfs_inode* %107, i64 %108, i32 %109, i32 %113, i32 %116, %struct.xfs_bmbt_irec* %120, i32* %14)
  store i32 %121, i32* %15, align 4
  %122 = load i32, i32* %15, align 4
  %123 = icmp ne i32 %122, 0
  br i1 %123, label %124, label %125

124:                                              ; preds = %94
  br label %220

125:                                              ; preds = %94
  %126 = load i32, i32* %14, align 4
  %127 = icmp slt i32 %126, 1
  br i1 %127, label %128, label %129

128:                                              ; preds = %125
  br label %148

129:                                              ; preds = %125
  %130 = load i32, i32* %14, align 4
  %131 = load i32, i32* %18, align 4
  %132 = add nsw i32 %131, %130
  store i32 %132, i32* %18, align 4
  %133 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %134 = load i32, i32* %18, align 4
  %135 = sub nsw i32 %134, 1
  %136 = sext i32 %135 to i64
  %137 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %133, i64 %136
  %138 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %137, i32 0, i32 0
  %139 = load i64, i64* %138, align 8
  %140 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %141 = load i32, i32* %18, align 4
  %142 = sub nsw i32 %141, 1
  %143 = sext i32 %142 to i64
  %144 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %140, i64 %143
  %145 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %144, i32 0, i32 1
  %146 = load i64, i64* %145, align 8
  %147 = add nsw i64 %139, %146
  store i64 %147, i64* %19, align 8
  br label %86

148:                                              ; preds = %128, %86
  br label %150

149:                                              ; preds = %75, %72
  store i32 0, i32* %18, align 4
  store %struct.xfs_bmbt_irec* null, %struct.xfs_bmbt_irec** %13, align 8
  br label %150

150:                                              ; preds = %149, %148
  br label %151

151:                                              ; preds = %150, %71
  store i32 0, i32* %17, align 4
  store i32 0, i32* %16, align 4
  br label %152

152:                                              ; preds = %167, %151
  %153 = load i32, i32* %17, align 4
  %154 = load i32, i32* %18, align 4
  %155 = icmp slt i32 %153, %154
  br i1 %155, label %156, label %170

156:                                              ; preds = %152
  %157 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %158 = load i32, i32* %17, align 4
  %159 = sext i32 %158 to i64
  %160 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %157, i64 %159
  %161 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %160, i32 0, i32 1
  %162 = load i64, i64* %161, align 8
  %163 = load i32, i32* %16, align 4
  %164 = sext i32 %163 to i64
  %165 = add nsw i64 %164, %162
  %166 = trunc i64 %165 to i32
  store i32 %166, i32* %16, align 4
  br label %167

167:                                              ; preds = %156
  %168 = load i32, i32* %17, align 4
  %169 = add nsw i32 %168, 1
  store i32 %169, i32* %17, align 4
  br label %152

170:                                              ; preds = %152
  %171 = load i32, i32* %16, align 4
  %172 = load i32, i32* %7, align 4
  %173 = icmp ne i32 %171, %172
  br i1 %173, label %204, label %174

174:                                              ; preds = %170
  %175 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %176 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %175, i64 0
  %177 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %176, i32 0, i32 0
  %178 = load i64, i64* %177, align 8
  %179 = load i64*, i64** %6, align 8
  %180 = load i64, i64* %179, align 8
  %181 = icmp ne i64 %178, %180
  br i1 %181, label %204, label %182

182:                                              ; preds = %174
  %183 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %184 = load i32, i32* %18, align 4
  %185 = sub nsw i32 %184, 1
  %186 = sext i32 %185 to i64
  %187 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %183, i64 %186
  %188 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %187, i32 0, i32 0
  %189 = load i64, i64* %188, align 8
  %190 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %191 = load i32, i32* %18, align 4
  %192 = sub nsw i32 %191, 1
  %193 = sext i32 %192 to i64
  %194 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %190, i64 %193
  %195 = getelementptr inbounds %struct.xfs_bmbt_irec, %struct.xfs_bmbt_irec* %194, i32 0, i32 1
  %196 = load i64, i64* %195, align 8
  %197 = add nsw i64 %189, %196
  %198 = load i64*, i64** %6, align 8
  %199 = load i64, i64* %198, align 8
  %200 = load i32, i32* %7, align 4
  %201 = sext i32 %200 to i64
  %202 = add nsw i64 %199, %201
  %203 = icmp ne i64 %197, %202
  br i1 %203, label %204, label %207

204:                                              ; preds = %182, %174, %170
  %205 = load i32, i32* @ENOSPC, align 4
  %206 = sub nsw i32 0, %205
  store i32 %206, i32* %15, align 4
  br label %220

207:                                              ; preds = %182
  %208 = load %struct.xfs_inode*, %struct.xfs_inode** %9, align 8
  %209 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %208, i32 0, i32 0
  %210 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %209, i32 0, i32 0
  %211 = load i64, i64* %210, align 8
  %212 = load i64, i64* %11, align 8
  %213 = sub nsw i64 %211, %212
  %214 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %215 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %214, i32 0, i32 1
  %216 = load i32, i32* %215, align 4
  %217 = sext i32 %216 to i64
  %218 = sub nsw i64 %217, %213
  %219 = trunc i64 %218 to i32
  store i32 %219, i32* %215, align 4
  br label %220

220:                                              ; preds = %207, %204, %124
  %221 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %222 = icmp ne %struct.xfs_bmbt_irec* %221, %12
  br i1 %222, label %223, label %226

223:                                              ; preds = %220
  %224 = load %struct.xfs_bmbt_irec*, %struct.xfs_bmbt_irec** %13, align 8
  %225 = call i32 @kmem_free(%struct.xfs_bmbt_irec* %224)
  br label %226

226:                                              ; preds = %223, %220
  %227 = load i32, i32* %15, align 4
  store i32 %227, i32* %4, align 4
  br label %228

228:                                              ; preds = %226, %62, %42
  %229 = load i32, i32* %4, align 4
  ret i32 %229
}

declare dso_local i32 @xfs_bmap_first_unused(%struct.xfs_trans*, %struct.xfs_inode*, i32, i64*, i32) #1

declare dso_local i32 @xfs_bmapi_write(%struct.xfs_trans*, %struct.xfs_inode*, i64, i32, i32, i32, %struct.xfs_bmbt_irec*, i32*) #1

declare dso_local i32 @xfs_bmapi_aflag(i32) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_bmbt_irec* @kmem_alloc(i32, i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @kmem_free(%struct.xfs_bmbt_irec*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
