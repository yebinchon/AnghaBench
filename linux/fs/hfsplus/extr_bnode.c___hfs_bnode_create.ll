; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c___hfs_bnode_create.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_bnode.c___hfs_bnode_create.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, i32, %struct.page**, i32, %struct.hfs_bnode*, i64, %struct.hfs_btree*, i32 }
%struct.page = type { i32 }
%struct.hfs_btree = type { i64, i32, i32, %struct.TYPE_2__*, i32, i32, %struct.hfs_bnode**, i32 }
%struct.TYPE_2__ = type { %struct.address_space* }
%struct.address_space = type { i32 }

@.str = private unnamed_addr constant [44 x i8] c"request for non-existent node %d in B*Tree\0A\00", align 1
@GFP_KERNEL = common dso_local global i32 0, align 4
@HFS_BNODE_NEW = common dso_local global i32 0, align 4
@BNODE_REFS = common dso_local global i32 0, align 4
@.str.1 = private unnamed_addr constant [20 x i8] c"new_node(%d:%d): 1\0A\00", align 1
@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@HFS_BNODE_ERROR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.hfs_bnode* (%struct.hfs_btree*, i64)* @__hfs_bnode_create to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.hfs_bnode* @__hfs_bnode_create(%struct.hfs_btree* %0, i64 %1) #0 {
  %3 = alloca %struct.hfs_bnode*, align 8
  %4 = alloca %struct.hfs_btree*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.hfs_bnode*, align 8
  %7 = alloca %struct.hfs_bnode*, align 8
  %8 = alloca %struct.address_space*, align 8
  %9 = alloca %struct.page*, align 8
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %4, align 8
  store i64 %1, i64* %5, align 8
  %15 = load i64, i64* %5, align 8
  %16 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %17 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp sge i64 %15, %18
  br i1 %19, label %20, label %23

20:                                               ; preds = %2
  %21 = load i64, i64* %5, align 8
  %22 = call i32 @pr_err(i8* getelementptr inbounds ([44 x i8], [44 x i8]* @.str, i64 0, i64 0), i64 %21)
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %3, align 8
  br label %179

23:                                               ; preds = %2
  %24 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %25 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %24, i32 0, i32 1
  %26 = load i32, i32* %25, align 8
  %27 = sext i32 %26 to i64
  %28 = mul i64 %27, 8
  %29 = add i64 56, %28
  %30 = trunc i64 %29 to i32
  store i32 %30, i32* %10, align 4
  %31 = load i32, i32* %10, align 4
  %32 = load i32, i32* @GFP_KERNEL, align 4
  %33 = call %struct.hfs_bnode* @kzalloc(i32 %31, i32 %32)
  store %struct.hfs_bnode* %33, %struct.hfs_bnode** %6, align 8
  %34 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %35 = icmp ne %struct.hfs_bnode* %34, null
  br i1 %35, label %37, label %36

36:                                               ; preds = %23
  store %struct.hfs_bnode* null, %struct.hfs_bnode** %3, align 8
  br label %179

37:                                               ; preds = %23
  %38 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %39 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %40 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %39, i32 0, i32 6
  store %struct.hfs_btree* %38, %struct.hfs_btree** %40, align 8
  %41 = load i64, i64* %5, align 8
  %42 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %43 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %42, i32 0, i32 5
  store i64 %41, i64* %43, align 8
  %44 = load i32, i32* @HFS_BNODE_NEW, align 4
  %45 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %46 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %45, i32 0, i32 1
  %47 = call i32 @set_bit(i32 %44, i32* %46)
  %48 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %49 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %48, i32 0, i32 7
  %50 = call i32 @atomic_set(i32* %49, i32 1)
  %51 = load i32, i32* @BNODE_REFS, align 4
  %52 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %53 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %52, i32 0, i32 6
  %54 = load %struct.hfs_btree*, %struct.hfs_btree** %53, align 8
  %55 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %54, i32 0, i32 7
  %56 = load i32, i32* %55, align 8
  %57 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %58 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %57, i32 0, i32 5
  %59 = load i64, i64* %58, align 8
  %60 = call i32 @hfs_dbg(i32 %51, i8* getelementptr inbounds ([20 x i8], [20 x i8]* @.str.1, i64 0, i64 0), i32 %56, i64 %59)
  %61 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %62 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %61, i32 0, i32 3
  %63 = call i32 @init_waitqueue_head(i32* %62)
  %64 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %65 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %64, i32 0, i32 4
  %66 = call i32 @spin_lock(i32* %65)
  %67 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %68 = load i64, i64* %5, align 8
  %69 = call %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree* %67, i64 %68)
  store %struct.hfs_bnode* %69, %struct.hfs_bnode** %7, align 8
  %70 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %71 = icmp ne %struct.hfs_bnode* %70, null
  br i1 %71, label %95, label %72

72:                                               ; preds = %37
  %73 = load i64, i64* %5, align 8
  %74 = call i32 @hfs_bnode_hash(i64 %73)
  store i32 %74, i32* %13, align 4
  %75 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %76 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %75, i32 0, i32 6
  %77 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %76, align 8
  %78 = load i32, i32* %13, align 4
  %79 = sext i32 %78 to i64
  %80 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %77, i64 %79
  %81 = load %struct.hfs_bnode*, %struct.hfs_bnode** %80, align 8
  %82 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %83 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %82, i32 0, i32 4
  store %struct.hfs_bnode* %81, %struct.hfs_bnode** %83, align 8
  %84 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %85 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %86 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %85, i32 0, i32 6
  %87 = load %struct.hfs_bnode**, %struct.hfs_bnode*** %86, align 8
  %88 = load i32, i32* %13, align 4
  %89 = sext i32 %88 to i64
  %90 = getelementptr inbounds %struct.hfs_bnode*, %struct.hfs_bnode** %87, i64 %89
  store %struct.hfs_bnode* %84, %struct.hfs_bnode** %90, align 8
  %91 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %92 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %91, i32 0, i32 5
  %93 = load i32, i32* %92, align 4
  %94 = add nsw i32 %93, 1
  store i32 %94, i32* %92, align 4
  br label %113

95:                                               ; preds = %37
  %96 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %97 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %96, i32 0, i32 4
  %98 = call i32 @spin_unlock(i32* %97)
  %99 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %100 = call i32 @kfree(%struct.hfs_bnode* %99)
  %101 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %102 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %101, i32 0, i32 3
  %103 = load i32, i32* %102, align 8
  %104 = load i32, i32* @HFS_BNODE_NEW, align 4
  %105 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  %106 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %105, i32 0, i32 1
  %107 = call i32 @test_bit(i32 %104, i32* %106)
  %108 = icmp ne i32 %107, 0
  %109 = xor i1 %108, true
  %110 = zext i1 %109 to i32
  %111 = call i32 @wait_event(i32 %103, i32 %110)
  %112 = load %struct.hfs_bnode*, %struct.hfs_bnode** %7, align 8
  store %struct.hfs_bnode* %112, %struct.hfs_bnode** %3, align 8
  br label %179

113:                                              ; preds = %72
  %114 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %115 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %114, i32 0, i32 4
  %116 = call i32 @spin_unlock(i32* %115)
  %117 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %118 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %117, i32 0, i32 3
  %119 = load %struct.TYPE_2__*, %struct.TYPE_2__** %118, align 8
  %120 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %119, i32 0, i32 0
  %121 = load %struct.address_space*, %struct.address_space** %120, align 8
  store %struct.address_space* %121, %struct.address_space** %8, align 8
  %122 = load i64, i64* %5, align 8
  %123 = trunc i64 %122 to i32
  %124 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %125 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %124, i32 0, i32 2
  %126 = load i32, i32* %125, align 4
  %127 = shl i32 %123, %126
  store i32 %127, i32* %14, align 4
  %128 = load i32, i32* %14, align 4
  %129 = load i32, i32* @PAGE_SHIFT, align 4
  %130 = ashr i32 %128, %129
  store i32 %130, i32* %11, align 4
  %131 = load i32, i32* %14, align 4
  %132 = load i32, i32* @PAGE_MASK, align 4
  %133 = xor i32 %132, -1
  %134 = and i32 %131, %133
  %135 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %136 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %135, i32 0, i32 0
  store i32 %134, i32* %136, align 8
  store i32 0, i32* %12, align 4
  br label %137

137:                                              ; preds = %166, %113
  %138 = load i32, i32* %12, align 4
  %139 = load %struct.hfs_btree*, %struct.hfs_btree** %4, align 8
  %140 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %139, i32 0, i32 1
  %141 = load i32, i32* %140, align 8
  %142 = icmp slt i32 %138, %141
  br i1 %142, label %143, label %171

143:                                              ; preds = %137
  %144 = load %struct.address_space*, %struct.address_space** %8, align 8
  %145 = load i32, i32* %11, align 4
  %146 = call %struct.page* @read_mapping_page(%struct.address_space* %144, i32 %145, i32* null)
  store %struct.page* %146, %struct.page** %9, align 8
  %147 = load %struct.page*, %struct.page** %9, align 8
  %148 = call i64 @IS_ERR(%struct.page* %147)
  %149 = icmp ne i64 %148, 0
  br i1 %149, label %150, label %151

150:                                              ; preds = %143
  br label %173

151:                                              ; preds = %143
  %152 = load %struct.page*, %struct.page** %9, align 8
  %153 = call i64 @PageError(%struct.page* %152)
  %154 = icmp ne i64 %153, 0
  br i1 %154, label %155, label %158

155:                                              ; preds = %151
  %156 = load %struct.page*, %struct.page** %9, align 8
  %157 = call i32 @put_page(%struct.page* %156)
  br label %173

158:                                              ; preds = %151
  %159 = load %struct.page*, %struct.page** %9, align 8
  %160 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %161 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %160, i32 0, i32 2
  %162 = load %struct.page**, %struct.page*** %161, align 8
  %163 = load i32, i32* %12, align 4
  %164 = sext i32 %163 to i64
  %165 = getelementptr inbounds %struct.page*, %struct.page** %162, i64 %164
  store %struct.page* %159, %struct.page** %165, align 8
  br label %166

166:                                              ; preds = %158
  %167 = load i32, i32* %11, align 4
  %168 = add nsw i32 %167, 1
  store i32 %168, i32* %11, align 4
  %169 = load i32, i32* %12, align 4
  %170 = add nsw i32 %169, 1
  store i32 %170, i32* %12, align 4
  br label %137

171:                                              ; preds = %137
  %172 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %172, %struct.hfs_bnode** %3, align 8
  br label %179

173:                                              ; preds = %155, %150
  %174 = load i32, i32* @HFS_BNODE_ERROR, align 4
  %175 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  %176 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %175, i32 0, i32 1
  %177 = call i32 @set_bit(i32 %174, i32* %176)
  %178 = load %struct.hfs_bnode*, %struct.hfs_bnode** %6, align 8
  store %struct.hfs_bnode* %178, %struct.hfs_bnode** %3, align 8
  br label %179

179:                                              ; preds = %173, %171, %95, %36, %20
  %180 = load %struct.hfs_bnode*, %struct.hfs_bnode** %3, align 8
  ret %struct.hfs_bnode* %180
}

declare dso_local i32 @pr_err(i8*, i64) #1

declare dso_local %struct.hfs_bnode* @kzalloc(i32, i32) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @atomic_set(i32*, i32) #1

declare dso_local i32 @hfs_dbg(i32, i8*, i32, i64) #1

declare dso_local i32 @init_waitqueue_head(i32*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_findhash(%struct.hfs_btree*, i64) #1

declare dso_local i32 @hfs_bnode_hash(i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @kfree(%struct.hfs_bnode*) #1

declare dso_local i32 @wait_event(i32, i32) #1

declare dso_local i32 @test_bit(i32, i32*) #1

declare dso_local %struct.page* @read_mapping_page(%struct.address_space*, i32, i32*) #1

declare dso_local i64 @IS_ERR(%struct.page*) #1

declare dso_local i64 @PageError(%struct.page*) #1

declare dso_local i32 @put_page(%struct.page*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
