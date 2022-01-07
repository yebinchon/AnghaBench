; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_getvalue.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_getvalue.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_buf = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_da_args = type { i32, i64, i8*, %struct.TYPE_3__*, i32, i8*, i32, %struct.TYPE_4__* }
%struct.TYPE_3__ = type { i32 }
%struct.TYPE_4__ = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32 }
%struct.xfs_attr_leaf_entry = type { i32 }
%struct.xfs_attr_leaf_name_local = type { i64, i32, i32* }
%struct.xfs_attr_leaf_name_remote = type { i64, i32, i32, i32* }

@XFS_ATTR_LOCAL = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @xfs_attr3_leaf_getvalue(%struct.xfs_buf* %0, %struct.xfs_da_args* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.xfs_buf*, align 8
  %5 = alloca %struct.xfs_da_args*, align 8
  %6 = alloca %struct.xfs_attr_leafblock*, align 8
  %7 = alloca %struct.xfs_attr3_icleaf_hdr, align 4
  %8 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %9 = alloca %struct.xfs_attr_leaf_name_local*, align 8
  %10 = alloca %struct.xfs_attr_leaf_name_remote*, align 8
  store %struct.xfs_buf* %0, %struct.xfs_buf** %4, align 8
  store %struct.xfs_da_args* %1, %struct.xfs_da_args** %5, align 8
  %11 = load %struct.xfs_buf*, %struct.xfs_buf** %4, align 8
  %12 = getelementptr inbounds %struct.xfs_buf, %struct.xfs_buf* %11, i32 0, i32 0
  %13 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  store %struct.xfs_attr_leafblock* %13, %struct.xfs_attr_leafblock** %6, align 8
  %14 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %14, i32 0, i32 7
  %16 = load %struct.TYPE_4__*, %struct.TYPE_4__** %15, align 8
  %17 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %18 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__* %16, %struct.xfs_attr3_icleaf_hdr* %7, %struct.xfs_attr_leafblock* %17)
  %19 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %20 = load i32, i32* %19, align 4
  %21 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %22 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %21, i32 0, i32 7
  %23 = load %struct.TYPE_4__*, %struct.TYPE_4__** %22, align 8
  %24 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %23, i32 0, i32 0
  %25 = load i32, i32* %24, align 4
  %26 = sdiv i32 %25, 8
  %27 = icmp slt i32 %20, %26
  %28 = zext i1 %27 to i32
  %29 = call i32 @ASSERT(i32 %28)
  %30 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %31 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %30, i32 0, i32 0
  %32 = load i32, i32* %31, align 8
  %33 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %7, i32 0, i32 0
  %34 = load i32, i32* %33, align 4
  %35 = icmp slt i32 %32, %34
  %36 = zext i1 %35 to i32
  %37 = call i32 @ASSERT(i32 %36)
  %38 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %39 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %38)
  %40 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %41 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %40, i32 0, i32 0
  %42 = load i32, i32* %41, align 8
  %43 = sext i32 %42 to i64
  %44 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %39, i64 %43
  store %struct.xfs_attr_leaf_entry* %44, %struct.xfs_attr_leaf_entry** %8, align 8
  %45 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %8, align 8
  %46 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %45, i32 0, i32 0
  %47 = load i32, i32* %46, align 4
  %48 = load i32, i32* @XFS_ATTR_LOCAL, align 4
  %49 = and i32 %47, %48
  %50 = icmp ne i32 %49, 0
  br i1 %50, label %51, label %93

51:                                               ; preds = %2
  %52 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %53 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %54 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %53, i32 0, i32 0
  %55 = load i32, i32* %54, align 8
  %56 = sext i32 %55 to i64
  %57 = call %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock* %52, i64 %56)
  store %struct.xfs_attr_leaf_name_local* %57, %struct.xfs_attr_leaf_name_local** %9, align 8
  %58 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %9, align 8
  %59 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %58, i32 0, i32 0
  %60 = load i64, i64* %59, align 8
  %61 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %62 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %61, i32 0, i32 1
  %63 = load i64, i64* %62, align 8
  %64 = icmp eq i64 %60, %63
  %65 = zext i1 %64 to i32
  %66 = call i32 @ASSERT(i32 %65)
  %67 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %68 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %67, i32 0, i32 6
  %69 = load i32, i32* %68, align 8
  %70 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %9, align 8
  %71 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %70, i32 0, i32 2
  %72 = load i32*, i32** %71, align 8
  %73 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %74 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %73, i32 0, i32 1
  %75 = load i64, i64* %74, align 8
  %76 = call i64 @memcmp(i32 %69, i32* %72, i64 %75)
  %77 = icmp eq i64 %76, 0
  %78 = zext i1 %77 to i32
  %79 = call i32 @ASSERT(i32 %78)
  %80 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %81 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %9, align 8
  %82 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %81, i32 0, i32 2
  %83 = load i32*, i32** %82, align 8
  %84 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %85 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %84, i32 0, i32 1
  %86 = load i64, i64* %85, align 8
  %87 = getelementptr inbounds i32, i32* %83, i64 %86
  %88 = load %struct.xfs_attr_leaf_name_local*, %struct.xfs_attr_leaf_name_local** %9, align 8
  %89 = getelementptr inbounds %struct.xfs_attr_leaf_name_local, %struct.xfs_attr_leaf_name_local* %88, i32 0, i32 1
  %90 = load i32, i32* %89, align 8
  %91 = call i8* @be16_to_cpu(i32 %90)
  %92 = call i32 @xfs_attr_copy_value(%struct.xfs_da_args* %80, i32* %87, i8* %91)
  store i32 %92, i32* %3, align 4
  br label %150

93:                                               ; preds = %2
  %94 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %6, align 8
  %95 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %96 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = sext i32 %97 to i64
  %99 = call %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock* %94, i64 %98)
  store %struct.xfs_attr_leaf_name_remote* %99, %struct.xfs_attr_leaf_name_remote** %10, align 8
  %100 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %10, align 8
  %101 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %100, i32 0, i32 0
  %102 = load i64, i64* %101, align 8
  %103 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %104 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %103, i32 0, i32 1
  %105 = load i64, i64* %104, align 8
  %106 = icmp eq i64 %102, %105
  %107 = zext i1 %106 to i32
  %108 = call i32 @ASSERT(i32 %107)
  %109 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %110 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %109, i32 0, i32 6
  %111 = load i32, i32* %110, align 8
  %112 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %10, align 8
  %113 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %112, i32 0, i32 3
  %114 = load i32*, i32** %113, align 8
  %115 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %116 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %115, i32 0, i32 1
  %117 = load i64, i64* %116, align 8
  %118 = call i64 @memcmp(i32 %111, i32* %114, i64 %117)
  %119 = icmp eq i64 %118, 0
  %120 = zext i1 %119 to i32
  %121 = call i32 @ASSERT(i32 %120)
  %122 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %10, align 8
  %123 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %122, i32 0, i32 2
  %124 = load i32, i32* %123, align 4
  %125 = call i8* @be32_to_cpu(i32 %124)
  %126 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %127 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %126, i32 0, i32 2
  store i8* %125, i8** %127, align 8
  %128 = load %struct.xfs_attr_leaf_name_remote*, %struct.xfs_attr_leaf_name_remote** %10, align 8
  %129 = getelementptr inbounds %struct.xfs_attr_leaf_name_remote, %struct.xfs_attr_leaf_name_remote* %128, i32 0, i32 1
  %130 = load i32, i32* %129, align 8
  %131 = call i8* @be32_to_cpu(i32 %130)
  %132 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %133 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %132, i32 0, i32 5
  store i8* %131, i8** %133, align 8
  %134 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %135 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %134, i32 0, i32 3
  %136 = load %struct.TYPE_3__*, %struct.TYPE_3__** %135, align 8
  %137 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %136, i32 0, i32 0
  %138 = load i32, i32* %137, align 4
  %139 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %140 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %139, i32 0, i32 2
  %141 = load i8*, i8** %140, align 8
  %142 = call i32 @xfs_attr3_rmt_blocks(i32 %138, i8* %141)
  %143 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %144 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %143, i32 0, i32 4
  store i32 %142, i32* %144, align 8
  %145 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %146 = load %struct.xfs_da_args*, %struct.xfs_da_args** %5, align 8
  %147 = getelementptr inbounds %struct.xfs_da_args, %struct.xfs_da_args* %146, i32 0, i32 2
  %148 = load i8*, i8** %147, align 8
  %149 = call i32 @xfs_attr_copy_value(%struct.xfs_da_args* %145, i32* null, i8* %148)
  store i32 %149, i32* %3, align 4
  br label %150

150:                                              ; preds = %93, %51
  %151 = load i32, i32* %3, align 4
  ret i32 %151
}

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_4__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local i32 @ASSERT(i32) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_name_local* @xfs_attr3_leaf_name_local(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i64 @memcmp(i32, i32*, i64) #1

declare dso_local i32 @xfs_attr_copy_value(%struct.xfs_da_args*, i32*, i8*) #1

declare dso_local i8* @be16_to_cpu(i32) #1

declare dso_local %struct.xfs_attr_leaf_name_remote* @xfs_attr3_leaf_name_remote(%struct.xfs_attr_leafblock*, i64) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i32 @xfs_attr3_rmt_blocks(i32, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
