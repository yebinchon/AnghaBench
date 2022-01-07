; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_unbalance.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_dir2_node.c_xfs_dir2_leafn_unbalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.TYPE_19__ = type { %struct.TYPE_21__* }
%struct.TYPE_21__ = type { %struct.xfs_inode* }
%struct.xfs_inode = type { %struct.TYPE_18__* }
%struct.TYPE_18__ = type { i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, %struct.xfs_dir2_leaf_entry* (i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)* }
%struct.xfs_dir3_icleaf_hdr = type { i32, i64 }
%struct.xfs_dir2_leaf_entry = type { i32 }
%struct.TYPE_20__ = type { i64, %struct.TYPE_22__*, i8* }
%struct.TYPE_22__ = type { i32* }

@XFS_DIR2_LEAFN_MAGIC = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_dir2_leafn_unbalance(%struct.TYPE_19__* %0, %struct.TYPE_20__* %1, %struct.TYPE_20__* %2) #0 {
  %4 = alloca %struct.TYPE_19__*, align 8
  %5 = alloca %struct.TYPE_20__*, align 8
  %6 = alloca %struct.TYPE_20__*, align 8
  %7 = alloca %struct.TYPE_21__*, align 8
  %8 = alloca i32*, align 8
  %9 = alloca i32*, align 8
  %10 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %11 = alloca %struct.xfs_dir3_icleaf_hdr, align 8
  %12 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %13 = alloca %struct.xfs_dir2_leaf_entry*, align 8
  %14 = alloca %struct.xfs_inode*, align 8
  store %struct.TYPE_19__* %0, %struct.TYPE_19__** %4, align 8
  store %struct.TYPE_20__* %1, %struct.TYPE_20__** %5, align 8
  store %struct.TYPE_20__* %2, %struct.TYPE_20__** %6, align 8
  %15 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %16 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %15, i32 0, i32 0
  %17 = load %struct.TYPE_21__*, %struct.TYPE_21__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_21__, %struct.TYPE_21__* %17, i32 0, i32 0
  %19 = load %struct.xfs_inode*, %struct.xfs_inode** %18, align 8
  store %struct.xfs_inode* %19, %struct.xfs_inode** %14, align 8
  %20 = load %struct.TYPE_19__*, %struct.TYPE_19__** %4, align 8
  %21 = getelementptr inbounds %struct.TYPE_19__, %struct.TYPE_19__* %20, i32 0, i32 0
  %22 = load %struct.TYPE_21__*, %struct.TYPE_21__** %21, align 8
  store %struct.TYPE_21__* %22, %struct.TYPE_21__** %7, align 8
  %23 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %24 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %23, i32 0, i32 0
  %25 = load i64, i64* %24, align 8
  %26 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %27 = icmp eq i64 %25, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %31 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load i64, i64* @XFS_DIR2_LEAFN_MAGIC, align 8
  %34 = icmp eq i64 %32, %33
  %35 = zext i1 %34 to i32
  %36 = call i32 @ASSERT(i32 %35)
  %37 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %38 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %37, i32 0, i32 1
  %39 = load %struct.TYPE_22__*, %struct.TYPE_22__** %38, align 8
  %40 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %39, i32 0, i32 0
  %41 = load i32*, i32** %40, align 8
  store i32* %41, i32** %8, align 8
  %42 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %43 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %42, i32 0, i32 1
  %44 = load %struct.TYPE_22__*, %struct.TYPE_22__** %43, align 8
  %45 = getelementptr inbounds %struct.TYPE_22__, %struct.TYPE_22__* %44, i32 0, i32 0
  %46 = load i32*, i32** %45, align 8
  store i32* %46, i32** %9, align 8
  %47 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %48 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %47, i32 0, i32 0
  %49 = load %struct.TYPE_18__*, %struct.TYPE_18__** %48, align 8
  %50 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %49, i32 0, i32 2
  %51 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %50, align 8
  %52 = load i32*, i32** %9, align 8
  %53 = call i32 %51(%struct.xfs_dir3_icleaf_hdr* %10, i32* %52)
  %54 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %55 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %54, i32 0, i32 0
  %56 = load %struct.TYPE_18__*, %struct.TYPE_18__** %55, align 8
  %57 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %56, i32 0, i32 2
  %58 = load i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)*, i32 (%struct.xfs_dir3_icleaf_hdr*, i32*)** %57, align 8
  %59 = load i32*, i32** %8, align 8
  %60 = call i32 %58(%struct.xfs_dir3_icleaf_hdr* %11, i32* %59)
  %61 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %62 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %61, i32 0, i32 0
  %63 = load %struct.TYPE_18__*, %struct.TYPE_18__** %62, align 8
  %64 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %63, i32 0, i32 1
  %65 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %64, align 8
  %66 = load i32*, i32** %9, align 8
  %67 = call %struct.xfs_dir2_leaf_entry* %65(i32* %66)
  store %struct.xfs_dir2_leaf_entry* %67, %struct.xfs_dir2_leaf_entry** %12, align 8
  %68 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %69 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %68, i32 0, i32 0
  %70 = load %struct.TYPE_18__*, %struct.TYPE_18__** %69, align 8
  %71 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %70, i32 0, i32 1
  %72 = load %struct.xfs_dir2_leaf_entry* (i32*)*, %struct.xfs_dir2_leaf_entry* (i32*)** %71, align 8
  %73 = load i32*, i32** %8, align 8
  %74 = call %struct.xfs_dir2_leaf_entry* %72(i32* %73)
  store %struct.xfs_dir2_leaf_entry* %74, %struct.xfs_dir2_leaf_entry** %13, align 8
  %75 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 1
  %76 = load i64, i64* %75, align 8
  %77 = icmp ne i64 %76, 0
  br i1 %77, label %78, label %84

78:                                               ; preds = %3
  %79 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %80 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %81 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %80, i32 0, i32 1
  %82 = load %struct.TYPE_22__*, %struct.TYPE_22__** %81, align 8
  %83 = call i32 @xfs_dir3_leaf_compact(%struct.TYPE_21__* %79, %struct.xfs_dir3_icleaf_hdr* %11, %struct.TYPE_22__* %82)
  br label %84

84:                                               ; preds = %78, %3
  %85 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = icmp ne i64 %86, 0
  br i1 %87, label %88, label %94

88:                                               ; preds = %84
  %89 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %90 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %91 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %90, i32 0, i32 1
  %92 = load %struct.TYPE_22__*, %struct.TYPE_22__** %91, align 8
  %93 = call i32 @xfs_dir3_leaf_compact(%struct.TYPE_21__* %89, %struct.xfs_dir3_icleaf_hdr* %10, %struct.TYPE_22__* %92)
  br label %94

94:                                               ; preds = %88, %84
  %95 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %96 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sub nsw i32 %97, 1
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %95, i64 %99
  %101 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 4
  %103 = call i8* @be32_to_cpu(i32 %102)
  %104 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %105 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %104, i32 0, i32 2
  store i8* %103, i8** %105, align 8
  %106 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %107 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %108 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %107, i32 0, i32 1
  %109 = load %struct.TYPE_22__*, %struct.TYPE_22__** %108, align 8
  %110 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %111 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %110, i32 0, i32 1
  %112 = load %struct.TYPE_22__*, %struct.TYPE_22__** %111, align 8
  %113 = call i64 @xfs_dir2_leafn_order(%struct.xfs_inode* %106, %struct.TYPE_22__* %109, %struct.TYPE_22__* %112)
  %114 = icmp ne i64 %113, 0
  br i1 %114, label %115, label %128

115:                                              ; preds = %94
  %116 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %117 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %118 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %117, i32 0, i32 1
  %119 = load %struct.TYPE_22__*, %struct.TYPE_22__** %118, align 8
  %120 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %121 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %122 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %121, i32 0, i32 1
  %123 = load %struct.TYPE_22__*, %struct.TYPE_22__** %122, align 8
  %124 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %125 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 0
  %126 = load i32, i32* %125, align 8
  %127 = call i32 @xfs_dir3_leafn_moveents(%struct.TYPE_21__* %116, %struct.TYPE_22__* %119, %struct.xfs_dir3_icleaf_hdr* %11, %struct.xfs_dir2_leaf_entry* %120, i32 0, %struct.TYPE_22__* %123, %struct.xfs_dir3_icleaf_hdr* %10, %struct.xfs_dir2_leaf_entry* %124, i32 0, i32 %126)
  br label %143

128:                                              ; preds = %94
  %129 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %130 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %131 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %130, i32 0, i32 1
  %132 = load %struct.TYPE_22__*, %struct.TYPE_22__** %131, align 8
  %133 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %13, align 8
  %134 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %135 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %134, i32 0, i32 1
  %136 = load %struct.TYPE_22__*, %struct.TYPE_22__** %135, align 8
  %137 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %138 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %139 = load i32, i32* %138, align 8
  %140 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %11, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  %142 = call i32 @xfs_dir3_leafn_moveents(%struct.TYPE_21__* %129, %struct.TYPE_22__* %132, %struct.xfs_dir3_icleaf_hdr* %11, %struct.xfs_dir2_leaf_entry* %133, i32 0, %struct.TYPE_22__* %136, %struct.xfs_dir3_icleaf_hdr* %10, %struct.xfs_dir2_leaf_entry* %137, i32 %139, i32 %141)
  br label %143

143:                                              ; preds = %128, %115
  %144 = load %struct.xfs_dir2_leaf_entry*, %struct.xfs_dir2_leaf_entry** %12, align 8
  %145 = getelementptr inbounds %struct.xfs_dir3_icleaf_hdr, %struct.xfs_dir3_icleaf_hdr* %10, i32 0, i32 0
  %146 = load i32, i32* %145, align 8
  %147 = sub nsw i32 %146, 1
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %144, i64 %148
  %150 = getelementptr inbounds %struct.xfs_dir2_leaf_entry, %struct.xfs_dir2_leaf_entry* %149, i32 0, i32 0
  %151 = load i32, i32* %150, align 4
  %152 = call i8* @be32_to_cpu(i32 %151)
  %153 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %154 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %153, i32 0, i32 2
  store i8* %152, i8** %154, align 8
  %155 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %156 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %155, i32 0, i32 0
  %157 = load %struct.TYPE_18__*, %struct.TYPE_18__** %156, align 8
  %158 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %157, i32 0, i32 0
  %159 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %158, align 8
  %160 = load i32*, i32** %9, align 8
  %161 = call i32 %159(i32* %160, %struct.xfs_dir3_icleaf_hdr* %10)
  %162 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %163 = getelementptr inbounds %struct.xfs_inode, %struct.xfs_inode* %162, i32 0, i32 0
  %164 = load %struct.TYPE_18__*, %struct.TYPE_18__** %163, align 8
  %165 = getelementptr inbounds %struct.TYPE_18__, %struct.TYPE_18__* %164, i32 0, i32 0
  %166 = load i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)*, i32 (i32*, %struct.xfs_dir3_icleaf_hdr*)** %165, align 8
  %167 = load i32*, i32** %8, align 8
  %168 = call i32 %166(i32* %167, %struct.xfs_dir3_icleaf_hdr* %11)
  %169 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %170 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %171 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %170, i32 0, i32 1
  %172 = load %struct.TYPE_22__*, %struct.TYPE_22__** %171, align 8
  %173 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_21__* %169, %struct.TYPE_22__* %172)
  %174 = load %struct.TYPE_21__*, %struct.TYPE_21__** %7, align 8
  %175 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %176 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %175, i32 0, i32 1
  %177 = load %struct.TYPE_22__*, %struct.TYPE_22__** %176, align 8
  %178 = call i32 @xfs_dir3_leaf_log_header(%struct.TYPE_21__* %174, %struct.TYPE_22__* %177)
  %179 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %180 = load %struct.TYPE_20__*, %struct.TYPE_20__** %6, align 8
  %181 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %180, i32 0, i32 1
  %182 = load %struct.TYPE_22__*, %struct.TYPE_22__** %181, align 8
  %183 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %179, %struct.TYPE_22__* %182)
  %184 = load %struct.xfs_inode*, %struct.xfs_inode** %14, align 8
  %185 = load %struct.TYPE_20__*, %struct.TYPE_20__** %5, align 8
  %186 = getelementptr inbounds %struct.TYPE_20__, %struct.TYPE_20__* %185, i32 0, i32 1
  %187 = load %struct.TYPE_22__*, %struct.TYPE_22__** %186, align 8
  %188 = call i32 @xfs_dir3_leaf_check(%struct.xfs_inode* %184, %struct.TYPE_22__* %187)
  ret void
}

declare dso_local i32 @ASSERT(i32) #1

declare dso_local i32 @xfs_dir3_leaf_compact(%struct.TYPE_21__*, %struct.xfs_dir3_icleaf_hdr*, %struct.TYPE_22__*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_dir2_leafn_order(%struct.xfs_inode*, %struct.TYPE_22__*, %struct.TYPE_22__*) #1

declare dso_local i32 @xfs_dir3_leafn_moveents(%struct.TYPE_21__*, %struct.TYPE_22__*, %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, %struct.TYPE_22__*, %struct.xfs_dir3_icleaf_hdr*, %struct.xfs_dir2_leaf_entry*, i32, i32) #1

declare dso_local i32 @xfs_dir3_leaf_log_header(%struct.TYPE_21__*, %struct.TYPE_22__*) #1

declare dso_local i32 @xfs_dir3_leaf_check(%struct.xfs_inode*, %struct.TYPE_22__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
