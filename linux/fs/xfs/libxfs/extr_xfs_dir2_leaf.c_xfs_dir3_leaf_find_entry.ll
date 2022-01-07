; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_find_entry.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_leaf.c_xfs_dir3_leaf_find_entry.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i64 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.xfs_dir2_leaf_entry* @xfs_dir3_leaf_find_entry(%struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir2_leaf_entry* %1, i32 %2, i32 %3, i32 %4, i32 %5, i32* %6, i32* %7) #0 {
  %9 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %10 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %11 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32*, align 8
  %17 = alloca i32*, align 8
  %18 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  store %struct.xfs_dir3_icleaf_hdr* %0, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  store %struct.xfs_dir2_leaf_entry* %1, %struct.xfs_dir2_leaf_entry** %11, align 8
  store i32 %2, i32* %12, align 4
  store i32 %3, i32* %13, align 4
  store i32 %4, i32* %14, align 4
  store i32 %5, i32* %15, align 4
  store i32* %6, i32** %16, align 8
  store i32* %7, i32** %17, align 8
  %19 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %20 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %19, i32 0, i32 1
  %21 = load i32, i32* %20, align 4
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %55, label %23

23:                                               ; preds = %8
  %24 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %25 = load i32, i32* %12, align 4
  %26 = sext i32 %25 to i64
  %27 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %24, i64 %26
  store %struct.xfs_dir2_leaf_entry* %27, %struct.xfs_dir2_leaf_entry** %18, align 8
  %28 = load i32, i32* %12, align 4
  %29 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %30 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = icmp slt i32 %28, %31
  br i1 %32, label %33, label %46

33:                                               ; preds = %23
  %34 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %35 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %34, i64 1
  %36 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %37 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %38 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  %40 = load i32, i32* %12, align 4
  %41 = sub nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = mul i64 %42, 8
  %44 = trunc i64 %43 to i32
  %45 = call i32 @memmove(%struct.xfs_dir2_leaf_entry* %35, %struct.xfs_dir2_leaf_entry* %36, i32 %44)
  br label %46

46:                                               ; preds = %33, %23
  %47 = load i32, i32* %12, align 4
  %48 = load i32*, i32** %16, align 8
  store i32 %47, i32* %48, align 4
  %49 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %50 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %49, i32 0, i32 0
  %51 = load i32, i32* %50, align 4
  %52 = add nsw i32 %51, 1
  store i32 %52, i32* %50, align 4
  %53 = load i32*, i32** %17, align 8
  store i32 %51, i32* %53, align 4
  %54 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  store %struct.xfs_dir2_leaf_entry* %54, %struct.xfs_dir2_leaf_entry** %9, align 8
  br label %202

55:                                               ; preds = %8
  %56 = load i32, i32* %13, align 4
  %57 = icmp eq i32 %56, 0
  br i1 %57, label %58, label %63

58:                                               ; preds = %55
  %59 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %60 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %61 = load i32, i32* %12, align 4
  %62 = call i32 @xfs_dir3_leaf_find_stale(%struct.xfs_dir3_icleaf_hdr* %59, %struct.xfs_dir2_leaf_entry* %60, i32 %61, i32* %14, i32* %15)
  br label %63

63:                                               ; preds = %58, %55
  %64 = load i32, i32* %14, align 4
  %65 = icmp sge i32 %64, 0
  br i1 %65, label %66, label %144

66:                                               ; preds = %63
  %67 = load i32, i32* %15, align 4
  %68 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %69 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 4
  %71 = icmp eq i32 %67, %70
  br i1 %71, label %81, label %72

72:                                               ; preds = %66
  %73 = load i32, i32* %12, align 4
  %74 = load i32, i32* %14, align 4
  %75 = sub nsw i32 %73, %74
  %76 = sub nsw i32 %75, 1
  %77 = load i32, i32* %15, align 4
  %78 = load i32, i32* %12, align 4
  %79 = sub nsw i32 %77, %78
  %80 = icmp slt i32 %76, %79
  br i1 %80, label %81, label %144

81:                                               ; preds = %72, %66
  %82 = load i32, i32* %12, align 4
  %83 = load i32, i32* %14, align 4
  %84 = sub nsw i32 %82, %83
  %85 = sub nsw i32 %84, 1
  %86 = icmp sge i32 %85, 0
  %87 = zext i1 %86 to i32
  %88 = call i32 @ASSERT(i32 %87)
  %89 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %90 = load i32, i32* %14, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %89, i64 %91
  %93 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %92, i32 0, i32 0
  %94 = load i64, i64* %93, align 8
  %95 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %96 = call i64 @cpu_to_be32(i32 %95)
  %97 = icmp eq i64 %94, %96
  %98 = zext i1 %97 to i32
  %99 = call i32 @ASSERT(i32 %98)
  %100 = load i32, i32* %12, align 4
  %101 = load i32, i32* %14, align 4
  %102 = sub nsw i32 %100, %101
  %103 = sub nsw i32 %102, 1
  %104 = icmp sgt i32 %103, 0
  br i1 %104, label %105, label %123

105:                                              ; preds = %81
  %106 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %107 = load i32, i32* %14, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %106, i64 %108
  %110 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %111 = load i32, i32* %14, align 4
  %112 = add nsw i32 %111, 1
  %113 = sext i32 %112 to i64
  %114 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %110, i64 %113
  %115 = load i32, i32* %12, align 4
  %116 = load i32, i32* %14, align 4
  %117 = sub nsw i32 %115, %116
  %118 = sub nsw i32 %117, 1
  %119 = sext i32 %118 to i64
  %120 = mul i64 %119, 8
  %121 = trunc i64 %120 to i32
  %122 = call i32 @memmove(%struct.xfs_dir2_leaf_entry* %109, %struct.xfs_dir2_leaf_entry* %114, i32 %121)
  br label %123

123:                                              ; preds = %105, %81
  %124 = load i32, i32* %14, align 4
  %125 = load i32*, i32** %16, align 8
  %126 = load i32, i32* %125, align 4
  %127 = call i32 @min(i32 %124, i32 %126)
  %128 = load i32*, i32** %16, align 8
  store i32 %127, i32* %128, align 4
  %129 = load i32, i32* %12, align 4
  %130 = sub nsw i32 %129, 1
  %131 = load i32*, i32** %17, align 8
  %132 = load i32, i32* %131, align 4
  %133 = call i32 @max(i32 %130, i32 %132)
  %134 = load i32*, i32** %17, align 8
  store i32 %133, i32* %134, align 4
  %135 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %136 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %135, i32 0, i32 1
  %137 = load i32, i32* %136, align 4
  %138 = add nsw i32 %137, -1
  store i32 %138, i32* %136, align 4
  %139 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %140 = load i32, i32* %12, align 4
  %141 = sub nsw i32 %140, 1
  %142 = sext i32 %141 to i64
  %143 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %139, i64 %142
  store %struct.xfs_dir2_leaf_entry* %143, %struct.xfs_dir2_leaf_entry** %9, align 8
  br label %202

144:                                              ; preds = %72, %63
  %145 = load i32, i32* %15, align 4
  %146 = load i32, i32* %12, align 4
  %147 = sub nsw i32 %145, %146
  %148 = icmp sge i32 %147, 0
  %149 = zext i1 %148 to i32
  %150 = call i32 @ASSERT(i32 %149)
  %151 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %152 = load i32, i32* %15, align 4
  %153 = sext i32 %152 to i64
  %154 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %151, i64 %153
  %155 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %154, i32 0, i32 0
  %156 = load i64, i64* %155, align 8
  %157 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %158 = call i64 @cpu_to_be32(i32 %157)
  %159 = icmp eq i64 %156, %158
  %160 = zext i1 %159 to i32
  %161 = call i32 @ASSERT(i32 %160)
  %162 = load i32, i32* %15, align 4
  %163 = load i32, i32* %12, align 4
  %164 = sub nsw i32 %162, %163
  %165 = icmp sgt i32 %164, 0
  br i1 %165, label %166, label %183

166:                                              ; preds = %144
  %167 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %168 = load i32, i32* %12, align 4
  %169 = add nsw i32 %168, 1
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %167, i64 %170
  %172 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %173 = load i32, i32* %12, align 4
  %174 = sext i32 %173 to i64
  %175 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %172, i64 %174
  %176 = load i32, i32* %15, align 4
  %177 = load i32, i32* %12, align 4
  %178 = sub nsw i32 %176, %177
  %179 = sext i32 %178 to i64
  %180 = mul i64 %179, 8
  %181 = trunc i64 %180 to i32
  %182 = call i32 @memmove(%struct.xfs_dir2_leaf_entry* %171, %struct.xfs_dir2_leaf_entry* %175, i32 %181)
  br label %183

183:                                              ; preds = %166, %144
  %184 = load i32, i32* %12, align 4
  %185 = load i32*, i32** %16, align 8
  %186 = load i32, i32* %185, align 4
  %187 = call i32 @min(i32 %184, i32 %186)
  %188 = load i32*, i32** %16, align 8
  store i32 %187, i32* %188, align 4
  %189 = load i32, i32* %15, align 4
  %190 = load i32*, i32** %17, align 8
  %191 = load i32, i32* %190, align 4
  %192 = call i32 @max(i32 %189, i32 %191)
  %193 = load i32*, i32** %17, align 8
  store i32 %192, i32* %193, align 4
  %194 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %10, align 8
  %195 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %194, i32 0, i32 1
  %196 = load i32, i32* %195, align 4
  %197 = add nsw i32 %196, -1
  store i32 %197, i32* %195, align 4
  %198 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %11, align 8
  %199 = load i32, i32* %12, align 4
  %200 = sext i32 %199 to i64
  %201 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %198, i64 %200
  store %struct.xfs_dir2_leaf_entry* %201, %struct.xfs_dir2_leaf_entry** %9, align 8
  br label %202

202:                                              ; preds = %183, %123, %46
  %203 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %9, align 8
  ret %struct.xfs_dir2_leaf_entry* %203
}

declare dso_local i32 @memmove(%struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_find_stale(%struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32*, i32*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @min(i32, i32) #1

declare dso_local i32 @max(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
