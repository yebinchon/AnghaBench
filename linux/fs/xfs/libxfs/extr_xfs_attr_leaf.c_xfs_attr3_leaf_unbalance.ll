; ModuleID = '/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_unbalance.c'
source_filename = "/home/carl/AnghaBench/linux/fs/xfs/libxfs/extr_xfs_attr_leaf.c_xfs_attr3_leaf_unbalance.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.xfs_da_state = type { %struct.TYPE_9__* }
%struct.TYPE_9__ = type { %struct.TYPE_10__*, i32 }
%struct.TYPE_10__ = type { i64 }
%struct.xfs_da_state_blk = type { i8*, %struct.TYPE_8__* }
%struct.TYPE_8__ = type { %struct.xfs_attr_leafblock* }
%struct.xfs_attr_leafblock = type { i32 }
%struct.xfs_attr3_icleaf_hdr = type { i32, i64, i64, i32, i32, i32 }
%struct.xfs_attr_leaf_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @xfs_attr3_leaf_unbalance(%struct.xfs_da_state* %0, %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk* %2) #0 {
  %4 = alloca %struct.xfs_da_state*, align 8
  %5 = alloca %struct.xfs_da_state_blk*, align 8
  %6 = alloca %struct.xfs_da_state_blk*, align 8
  %7 = alloca %struct.xfs_attr_leafblock*, align 8
  %8 = alloca %struct.xfs_attr_leafblock*, align 8
  %9 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %10 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  %11 = alloca %struct.xfs_attr_leaf_entry*, align 8
  %12 = alloca %struct.xfs_attr_leafblock*, align 8
  %13 = alloca %struct.xfs_attr3_icleaf_hdr, align 8
  store %struct.xfs_da_state* %0, %struct.xfs_da_state** %4, align 8
  store %struct.xfs_da_state_blk* %1, %struct.xfs_da_state_blk** %5, align 8
  store %struct.xfs_da_state_blk* %2, %struct.xfs_da_state_blk** %6, align 8
  %14 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %15 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %14, i32 0, i32 1
  %16 = load %struct.TYPE_8__*, %struct.TYPE_8__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %16, i32 0, i32 0
  %18 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %17, align 8
  store %struct.xfs_attr_leafblock* %18, %struct.xfs_attr_leafblock** %7, align 8
  %19 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %20 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %19, i32 0, i32 1
  %21 = load %struct.TYPE_8__*, %struct.TYPE_8__** %20, align 8
  %22 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %21, i32 0, i32 0
  %23 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %22, align 8
  store %struct.xfs_attr_leafblock* %23, %struct.xfs_attr_leafblock** %8, align 8
  %24 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %25 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %24, i32 0, i32 0
  %26 = load %struct.TYPE_9__*, %struct.TYPE_9__** %25, align 8
  %27 = call i32 @trace_xfs_attr_leaf_unbalance(%struct.TYPE_9__* %26)
  %28 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %29 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %28, i32 0, i32 1
  %30 = load %struct.TYPE_8__*, %struct.TYPE_8__** %29, align 8
  %31 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %30, i32 0, i32 0
  %32 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %31, align 8
  store %struct.xfs_attr_leafblock* %32, %struct.xfs_attr_leafblock** %7, align 8
  %33 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %34 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %33, i32 0, i32 1
  %35 = load %struct.TYPE_8__*, %struct.TYPE_8__** %34, align 8
  %36 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %35, i32 0, i32 0
  %37 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %36, align 8
  store %struct.xfs_attr_leafblock* %37, %struct.xfs_attr_leafblock** %8, align 8
  %38 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %39 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %38, i32 0, i32 0
  %40 = load %struct.TYPE_9__*, %struct.TYPE_9__** %39, align 8
  %41 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %40, i32 0, i32 0
  %42 = load %struct.TYPE_10__*, %struct.TYPE_10__** %41, align 8
  %43 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %44 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_10__* %42, %struct.xfs_attr3_icleaf_hdr* %9, %struct.xfs_attr_leafblock* %43)
  %45 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %46 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %45, i32 0, i32 0
  %47 = load %struct.TYPE_9__*, %struct.TYPE_9__** %46, align 8
  %48 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %47, i32 0, i32 0
  %49 = load %struct.TYPE_10__*, %struct.TYPE_10__** %48, align 8
  %50 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %51 = call i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_10__* %49, %struct.xfs_attr3_icleaf_hdr* %10, %struct.xfs_attr_leafblock* %50)
  %52 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %53 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %52)
  store %struct.xfs_attr_leaf_entry* %53, %struct.xfs_attr_leaf_entry** %11, align 8
  %54 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %11, align 8
  %55 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = sub nsw i32 %56, 1
  %58 = sext i32 %57 to i64
  %59 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %54, i64 %58
  %60 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %59, i32 0, i32 0
  %61 = load i32, i32* %60, align 4
  %62 = call i8* @be32_to_cpu(i32 %61)
  %63 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %64 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %63, i32 0, i32 0
  store i8* %62, i8** %64, align 8
  %65 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 1
  %66 = load i64, i64* %65, align 8
  %67 = icmp eq i64 %66, 0
  br i1 %67, label %68, label %98

68:                                               ; preds = %3
  %69 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %70 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %69, i32 0, i32 1
  %71 = load %struct.TYPE_8__*, %struct.TYPE_8__** %70, align 8
  %72 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %73 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %72, i32 0, i32 1
  %74 = load %struct.TYPE_8__*, %struct.TYPE_8__** %73, align 8
  %75 = call i64 @xfs_attr3_leaf_order(%struct.TYPE_8__* %71, %struct.xfs_attr3_icleaf_hdr* %10, %struct.TYPE_8__* %74, %struct.xfs_attr3_icleaf_hdr* %9)
  %76 = icmp ne i64 %75, 0
  br i1 %76, label %77, label %86

77:                                               ; preds = %68
  %78 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %79 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %78, i32 0, i32 0
  %80 = load %struct.TYPE_9__*, %struct.TYPE_9__** %79, align 8
  %81 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %82 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %83 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %84 = load i32, i32* %83, align 8
  %85 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %80, %struct.xfs_attr_leafblock* %81, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, %struct.xfs_attr_leafblock* %82, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 %84)
  br label %97

86:                                               ; preds = %68
  %87 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %88 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %87, i32 0, i32 0
  %89 = load %struct.TYPE_9__*, %struct.TYPE_9__** %88, align 8
  %90 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %91 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %92 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 0
  %93 = load i32, i32* %92, align 8
  %94 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %95 = load i32, i32* %94, align 8
  %96 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %89, %struct.xfs_attr_leafblock* %90, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, %struct.xfs_attr_leafblock* %91, %struct.xfs_attr3_icleaf_hdr* %10, i32 %93, i32 %95)
  br label %97

97:                                               ; preds = %86, %77
  br label %198

98:                                               ; preds = %3
  %99 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %100 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %99, i32 0, i32 0
  %101 = load %struct.TYPE_9__*, %struct.TYPE_9__** %100, align 8
  %102 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %101, i32 0, i32 0
  %103 = load %struct.TYPE_10__*, %struct.TYPE_10__** %102, align 8
  %104 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %103, i32 0, i32 0
  %105 = load i64, i64* %104, align 8
  %106 = call %struct.xfs_attr_leafblock* @kmem_zalloc(i64 %105, i32 0)
  store %struct.xfs_attr_leafblock* %106, %struct.xfs_attr_leafblock** %12, align 8
  %107 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %108 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %109 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %110 = call i64 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock* %109)
  %111 = call i32 @memcpy(%struct.xfs_attr_leafblock* %107, %struct.xfs_attr_leafblock* %108, i64 %110)
  %112 = call i32 @memset(%struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 40)
  %113 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 5
  %114 = load i32, i32* %113, align 8
  %115 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 5
  store i32 %114, i32* %115, align 8
  %116 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 4
  %117 = load i32, i32* %116, align 4
  %118 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 4
  store i32 %117, i32* %118, align 4
  %119 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 3
  %120 = load i32, i32* %119, align 8
  %121 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 3
  store i32 %120, i32* %121, align 8
  %122 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %123 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %122, i32 0, i32 0
  %124 = load %struct.TYPE_9__*, %struct.TYPE_9__** %123, align 8
  %125 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %124, i32 0, i32 0
  %126 = load %struct.TYPE_10__*, %struct.TYPE_10__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %126, i32 0, i32 0
  %128 = load i64, i64* %127, align 8
  %129 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 2
  store i64 %128, i64* %129, align 8
  %130 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %131 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %130, i32 0, i32 0
  %132 = load %struct.TYPE_9__*, %struct.TYPE_9__** %131, align 8
  %133 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %132, i32 0, i32 0
  %134 = load %struct.TYPE_10__*, %struct.TYPE_10__** %133, align 8
  %135 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %136 = call i32 @xfs_attr3_leaf_hdr_to_disk(%struct.TYPE_10__* %134, %struct.xfs_attr_leafblock* %135, %struct.xfs_attr3_icleaf_hdr* %13)
  %137 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %138 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %137, i32 0, i32 1
  %139 = load %struct.TYPE_8__*, %struct.TYPE_8__** %138, align 8
  %140 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %5, align 8
  %141 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %140, i32 0, i32 1
  %142 = load %struct.TYPE_8__*, %struct.TYPE_8__** %141, align 8
  %143 = call i64 @xfs_attr3_leaf_order(%struct.TYPE_8__* %139, %struct.xfs_attr3_icleaf_hdr* %10, %struct.TYPE_8__* %142, %struct.xfs_attr3_icleaf_hdr* %9)
  %144 = icmp ne i64 %143, 0
  br i1 %144, label %145, label %164

145:                                              ; preds = %98
  %146 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %147 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %146, i32 0, i32 0
  %148 = load %struct.TYPE_9__*, %struct.TYPE_9__** %147, align 8
  %149 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %150 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %151 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %152 = load i32, i32* %151, align 8
  %153 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %148, %struct.xfs_attr_leafblock* %149, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, %struct.xfs_attr_leafblock* %150, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 %152)
  %154 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %155 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %154, i32 0, i32 0
  %156 = load %struct.TYPE_9__*, %struct.TYPE_9__** %155, align 8
  %157 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %158 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %159 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 0
  %160 = load i32, i32* %159, align 8
  %161 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 0
  %162 = load i32, i32* %161, align 8
  %163 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %156, %struct.xfs_attr_leafblock* %157, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, %struct.xfs_attr_leafblock* %158, %struct.xfs_attr3_icleaf_hdr* %13, i32 %160, i32 %162)
  br label %183

164:                                              ; preds = %98
  %165 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %166 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %165, i32 0, i32 0
  %167 = load %struct.TYPE_9__*, %struct.TYPE_9__** %166, align 8
  %168 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %169 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %170 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 0
  %171 = load i32, i32* %170, align 8
  %172 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %167, %struct.xfs_attr_leafblock* %168, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, %struct.xfs_attr_leafblock* %169, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 %171)
  %173 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %174 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %173, i32 0, i32 0
  %175 = load %struct.TYPE_9__*, %struct.TYPE_9__** %174, align 8
  %176 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %7, align 8
  %177 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %178 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %13, i32 0, i32 0
  %179 = load i32, i32* %178, align 8
  %180 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, i32 0
  %181 = load i32, i32* %180, align 8
  %182 = call i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__* %175, %struct.xfs_attr_leafblock* %176, %struct.xfs_attr3_icleaf_hdr* %9, i32 0, %struct.xfs_attr_leafblock* %177, %struct.xfs_attr3_icleaf_hdr* %13, i32 %179, i32 %181)
  br label %183

183:                                              ; preds = %164, %145
  %184 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %185 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %186 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %187 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %186, i32 0, i32 0
  %188 = load %struct.TYPE_9__*, %struct.TYPE_9__** %187, align 8
  %189 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %188, i32 0, i32 0
  %190 = load %struct.TYPE_10__*, %struct.TYPE_10__** %189, align 8
  %191 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %190, i32 0, i32 0
  %192 = load i64, i64* %191, align 8
  %193 = call i32 @memcpy(%struct.xfs_attr_leafblock* %184, %struct.xfs_attr_leafblock* %185, i64 %192)
  %194 = bitcast %struct.xfs_attr3_icleaf_hdr* %10 to i8*
  %195 = bitcast %struct.xfs_attr3_icleaf_hdr* %13 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %194, i8* align 8 %195, i64 40, i1 false)
  %196 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %12, align 8
  %197 = call i32 @kmem_free(%struct.xfs_attr_leafblock* %196)
  br label %198

198:                                              ; preds = %183, %97
  %199 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %200 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %199, i32 0, i32 0
  %201 = load %struct.TYPE_9__*, %struct.TYPE_9__** %200, align 8
  %202 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %201, i32 0, i32 0
  %203 = load %struct.TYPE_10__*, %struct.TYPE_10__** %202, align 8
  %204 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %205 = call i32 @xfs_attr3_leaf_hdr_to_disk(%struct.TYPE_10__* %203, %struct.xfs_attr_leafblock* %204, %struct.xfs_attr3_icleaf_hdr* %10)
  %206 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %207 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %206, i32 0, i32 0
  %208 = load %struct.TYPE_9__*, %struct.TYPE_9__** %207, align 8
  %209 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %208, i32 0, i32 1
  %210 = load i32, i32* %209, align 8
  %211 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %212 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %211, i32 0, i32 1
  %213 = load %struct.TYPE_8__*, %struct.TYPE_8__** %212, align 8
  %214 = load %struct.xfs_da_state*, %struct.xfs_da_state** %4, align 8
  %215 = getelementptr inbounds %struct.xfs_da_state, %struct.xfs_da_state* %214, i32 0, i32 0
  %216 = load %struct.TYPE_9__*, %struct.TYPE_9__** %215, align 8
  %217 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %216, i32 0, i32 0
  %218 = load %struct.TYPE_10__*, %struct.TYPE_10__** %217, align 8
  %219 = getelementptr inbounds %struct.TYPE_10__, %struct.TYPE_10__* %218, i32 0, i32 0
  %220 = load i64, i64* %219, align 8
  %221 = sub nsw i64 %220, 1
  %222 = call i32 @xfs_trans_log_buf(i32 %210, %struct.TYPE_8__* %213, i32 0, i64 %221)
  %223 = load %struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock** %8, align 8
  %224 = call %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock* %223)
  store %struct.xfs_attr_leaf_entry* %224, %struct.xfs_attr_leaf_entry** %11, align 8
  %225 = load %struct.xfs_attr_leaf_entry*, %struct.xfs_attr_leaf_entry** %11, align 8
  %226 = getelementptr inbounds %struct.xfs_attr3_icleaf_hdr, %struct.xfs_attr3_icleaf_hdr* %10, i32 0, i32 0
  %227 = load i32, i32* %226, align 8
  %228 = sub nsw i32 %227, 1
  %229 = sext i32 %228 to i64
  %230 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %225, i64 %229
  %231 = getelementptr inbounds %struct.xfs_attr_leaf_entry, %struct.xfs_attr_leaf_entry* %230, i32 0, i32 0
  %232 = load i32, i32* %231, align 4
  %233 = call i8* @be32_to_cpu(i32 %232)
  %234 = load %struct.xfs_da_state_blk*, %struct.xfs_da_state_blk** %6, align 8
  %235 = getelementptr inbounds %struct.xfs_da_state_blk, %struct.xfs_da_state_blk* %234, i32 0, i32 0
  store i8* %233, i8** %235, align 8
  ret void
}

declare dso_local i32 @trace_xfs_attr_leaf_unbalance(%struct.TYPE_9__*) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_from_disk(%struct.TYPE_10__*, %struct.xfs_attr3_icleaf_hdr*, %struct.xfs_attr_leafblock*) #1

declare dso_local %struct.xfs_attr_leaf_entry* @xfs_attr3_leaf_entryp(%struct.xfs_attr_leafblock*) #1

declare dso_local i8* @be32_to_cpu(i32) #1

declare dso_local i64 @xfs_attr3_leaf_order(%struct.TYPE_8__*, %struct.xfs_attr3_icleaf_hdr*, %struct.TYPE_8__*, %struct.xfs_attr3_icleaf_hdr*) #1

declare dso_local i32 @xfs_attr3_leaf_moveents(%struct.TYPE_9__*, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*, i32, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*, i32, i32) #1

declare dso_local %struct.xfs_attr_leafblock* @kmem_zalloc(i64, i32) #1

declare dso_local i32 @memcpy(%struct.xfs_attr_leafblock*, %struct.xfs_attr_leafblock*, i64) #1

declare dso_local i64 @xfs_attr3_leaf_hdr_size(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @memset(%struct.xfs_attr3_icleaf_hdr*, i32, i32) #1

declare dso_local i32 @xfs_attr3_leaf_hdr_to_disk(%struct.TYPE_10__*, %struct.xfs_attr_leafblock*, %struct.xfs_attr3_icleaf_hdr*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @kmem_free(%struct.xfs_attr_leafblock*) #1

declare dso_local i32 @xfs_trans_log_buf(i32, %struct.TYPE_8__*, i32, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
