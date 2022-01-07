; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_leafn_moveents.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir3_leafn_moveents.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { i32 }
%struct.xfs_dir3_icleaf_hdr = type { i32, i32 }
%struct.xfs_dir2_leaf_entry = type { i64 }

@XFS_DIR2_NULL_DATAPTR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (i32*, %struct.xfs_buf*, %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, %struct.xfs_buf*, %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32)* @xfs_dir3_leafn_moveents to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @xfs_dir3_leafn_moveents(i32* %0, %struct.xfs_buf* %1, %struct.xfs_dir3_icleaf_hdr* %2, %struct.xfs_dir2_leaf_entry* %3, i32 %4, %struct.xfs_buf* %5, %struct.xfs_dir3_icleaf_hdr* %6, %struct.xfs_dir2_leaf_entry* %7, i32 %8, i32 %9) #0 {
  %11 = alloca i32*, align 8
  %12 = alloca %struct.xfs_buf*, align 8
  %13 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %14 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %15 = alloca i32, align 4
  %16 = alloca %struct.xfs_buf*, align 8
  %17 = alloca %struct.xfs_dir3_icleaf_hdr*, align 8
  %18 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %19 = alloca i32, align 4
  %20 = alloca i32, align 4
  %21 = alloca i32, align 4
  %22 = alloca i32, align 4
  store i32* %0, i32** %11, align 8
  store %struct.xfs_buf* %1, %struct.xfs_buf** %12, align 8
  store %struct.xfs_dir3_icleaf_hdr* %2, %struct.xfs_dir3_icleaf_hdr** %13, align 8
  store %struct.xfs_dir2_leaf_entry* %3, %struct.xfs_dir2_leaf_entry** %14, align 8
  store i32 %4, i32* %15, align 4
  store %struct.xfs_buf* %5, %struct.xfs_buf** %16, align 8
  store %struct.xfs_dir3_icleaf_hdr* %6, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  store %struct.xfs_dir2_leaf_entry* %7, %struct.xfs_dir2_leaf_entry** %18, align 8
  store i32 %8, i32* %19, align 4
  store i32 %9, i32* %20, align 4
  %23 = load i32*, i32** %11, align 8
  %24 = load i32, i32* %15, align 4
  %25 = load i32, i32* %19, align 4
  %26 = load i32, i32* %20, align 4
  %27 = call i32 @trace_xfs_dir2_leafn_moveents(i32* %23, i32 %24, i32 %25, i32 %26)
  %28 = load i32, i32* %20, align 4
  %29 = icmp eq i32 %28, 0
  br i1 %29, label %30, label %31

30:                                               ; preds = %10
  br label %175

31:                                               ; preds = %10
  %32 = load i32, i32* %19, align 4
  %33 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  %34 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 4
  %36 = icmp slt i32 %32, %35
  br i1 %36, label %37, label %69

37:                                               ; preds = %31
  %38 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %39 = load i32, i32* %19, align 4
  %40 = load i32, i32* %20, align 4
  %41 = add nsw i32 %39, %40
  %42 = sext i32 %41 to i64
  %43 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %38, i64 %42
  %44 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %45 = load i32, i32* %19, align 4
  %46 = sext i32 %45 to i64
  %47 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %44, i64 %46
  %48 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  %49 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 4
  %51 = load i32, i32* %19, align 4
  %52 = sub nsw i32 %50, %51
  %53 = sext i32 %52 to i64
  %54 = mul i64 %53, 4
  %55 = trunc i64 %54 to i32
  %56 = call i32 @memmove(%struct.xfs_dir2_leaf_entry* %43, %struct.xfs_dir2_leaf_entry* %47, i32 %55)
  %57 = load i32*, i32** %11, align 8
  %58 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %59 = load i32, i32* %19, align 4
  %60 = load i32, i32* %20, align 4
  %61 = add nsw i32 %59, %60
  %62 = load i32, i32* %20, align 4
  %63 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  %64 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %63, i32 0, i32 0
  %65 = load i32, i32* %64, align 4
  %66 = add nsw i32 %62, %65
  %67 = sub nsw i32 %66, 1
  %68 = call i32 @xfs_dir3_leaf_log_ents(i32* %57, %struct.xfs_buf* %58, i32 %61, i32 %67)
  br label %69

69:                                               ; preds = %37, %31
  %70 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %13, align 8
  %71 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %70, i32 0, i32 1
  %72 = load i32, i32* %71, align 4
  %73 = icmp ne i32 %72, 0
  br i1 %73, label %74, label %100

74:                                               ; preds = %69
  %75 = load i32, i32* %15, align 4
  store i32 %75, i32* %22, align 4
  store i32 0, i32* %21, align 4
  br label %76

76:                                               ; preds = %96, %74
  %77 = load i32, i32* %22, align 4
  %78 = load i32, i32* %15, align 4
  %79 = load i32, i32* %20, align 4
  %80 = add nsw i32 %78, %79
  %81 = icmp slt i32 %77, %80
  br i1 %81, label %82, label %99

82:                                               ; preds = %76
  %83 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %84 = load i32, i32* %22, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %83, i64 %85
  %87 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %86, i32 0, i32 0
  %88 = load i64, i64* %87, align 8
  %89 = load i32, i32* @XFS_DIR2_NULL_DATAPTR, align 4
  %90 = call i64 @cpu_to_be32(i32 %89)
  %91 = icmp eq i64 %88, %90
  br i1 %91, label %92, label %95

92:                                               ; preds = %82
  %93 = load i32, i32* %21, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %21, align 4
  br label %95

95:                                               ; preds = %92, %82
  br label %96

96:                                               ; preds = %95
  %97 = load i32, i32* %22, align 4
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %22, align 4
  br label %76

99:                                               ; preds = %76
  br label %101

100:                                              ; preds = %69
  store i32 0, i32* %21, align 4
  br label %101

101:                                              ; preds = %100, %99
  %102 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %18, align 8
  %103 = load i32, i32* %19, align 4
  %104 = sext i32 %103 to i64
  %105 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %102, i64 %104
  %106 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %107 = load i32, i32* %15, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %106, i64 %108
  %110 = load i32, i32* %20, align 4
  %111 = sext i32 %110 to i64
  %112 = mul i64 %111, 4
  %113 = trunc i64 %112 to i32
  %114 = call i32 @memcpy(%struct.xfs_dir2_leaf_entry* %105, %struct.xfs_dir2_leaf_entry* %109, i32 %113)
  %115 = load i32*, i32** %11, align 8
  %116 = load %struct.xfs_buf*, %struct.xfs_buf** %16, align 8
  %117 = load i32, i32* %19, align 4
  %118 = load i32, i32* %19, align 4
  %119 = load i32, i32* %20, align 4
  %120 = add nsw i32 %118, %119
  %121 = sub nsw i32 %120, 1
  %122 = call i32 @xfs_dir3_leaf_log_ents(i32* %115, %struct.xfs_buf* %116, i32 %117, i32 %121)
  %123 = load i32, i32* %15, align 4
  %124 = load i32, i32* %20, align 4
  %125 = add nsw i32 %123, %124
  %126 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %13, align 8
  %127 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 4
  %129 = icmp slt i32 %125, %128
  br i1 %129, label %130, label %154

130:                                              ; preds = %101
  %131 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %132 = load i32, i32* %15, align 4
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %131, i64 %133
  %135 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %14, align 8
  %136 = load i32, i32* %15, align 4
  %137 = load i32, i32* %20, align 4
  %138 = add nsw i32 %136, %137
  %139 = sext i32 %138 to i64
  %140 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %135, i64 %139
  %141 = load i32, i32* %20, align 4
  %142 = sext i32 %141 to i64
  %143 = mul i64 %142, 4
  %144 = trunc i64 %143 to i32
  %145 = call i32 @memmove(%struct.xfs_dir2_leaf_entry* %134, %struct.xfs_dir2_leaf_entry* %140, i32 %144)
  %146 = load i32*, i32** %11, align 8
  %147 = load %struct.xfs_buf*, %struct.xfs_buf** %12, align 8
  %148 = load i32, i32* %15, align 4
  %149 = load i32, i32* %15, align 4
  %150 = load i32, i32* %20, align 4
  %151 = add nsw i32 %149, %150
  %152 = sub nsw i32 %151, 1
  %153 = call i32 @xfs_dir3_leaf_log_ents(i32* %146, %struct.xfs_buf* %147, i32 %148, i32 %152)
  br label %154

154:                                              ; preds = %130, %101
  %155 = load i32, i32* %20, align 4
  %156 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %13, align 8
  %157 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %156, i32 0, i32 0
  %158 = load i32, i32* %157, align 4
  %159 = sub nsw i32 %158, %155
  store i32 %159, i32* %157, align 4
  %160 = load i32, i32* %21, align 4
  %161 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %13, align 8
  %162 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %161, i32 0, i32 1
  %163 = load i32, i32* %162, align 4
  %164 = sub nsw i32 %163, %160
  store i32 %164, i32* %162, align 4
  %165 = load i32, i32* %20, align 4
  %166 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  %167 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %166, i32 0, i32 0
  %168 = load i32, i32* %167, align 4
  %169 = add nsw i32 %168, %165
  store i32 %169, i32* %167, align 4
  %170 = load i32, i32* %21, align 4
  %171 = load %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir3_icleaf_hdr** %17, align 8
  %172 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %171, i32 0, i32 1
  %173 = load i32, i32* %172, align 4
  %174 = add nsw i32 %173, %170
  store i32 %174, i32* %172, align 4
  br label %175

175:                                              ; preds = %154, %30
  ret void
}

declare dso_local i32 @trace_xfs_dir2_leafn_moveents(i32*, i32, i32, i32) #1

declare dso_local i32 @memmove(%struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry*, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_ents(i32*, %struct.xfs_buf*, i32, i32) #1

declare dso_local i64 @cpu_to_be32(i32) #1

declare dso_local i32 @memcpy(%struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
