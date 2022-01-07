; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_alloc.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_btree.c_hfsplus_bmap_alloc.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hfs_bnode = type { i32, %struct.page**, i64 }
%struct.page = type { i32 }
%struct.hfs_btree = type { i32, i32 }

@PAGE_SHIFT = common dso_local global i32 0, align 4
@PAGE_MASK = common dso_local global i32 0, align 4
@PAGE_SIZE = common dso_local global i32 0, align 4
@BNODE_MOD = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [22 x i8] c"create new bmap node\0A\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.hfs_bnode* @hfs_bmap_alloc(%struct.hfs_btree* %0) #0 {
  %2 = alloca %struct.hfs_bnode*, align 8
  %3 = alloca %struct.hfs_btree*, align 8
  %4 = alloca %struct.hfs_bnode*, align 8
  %5 = alloca %struct.hfs_bnode*, align 8
  %6 = alloca %struct.page**, align 8
  %7 = alloca i32, align 4
  %8 = alloca i32, align 4
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca i32*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.hfs_btree* %0, %struct.hfs_btree** %3, align 8
  %17 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %18 = call i32 @hfs_bmap_reserve(%struct.hfs_btree* %17, i32 1)
  store i32 %18, i32* %16, align 4
  %19 = load i32, i32* %16, align 4
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %24

21:                                               ; preds = %1
  %22 = load i32, i32* %16, align 4
  %23 = call %struct.hfs_bnode* @ERR_PTR(i32 %22)
  store %struct.hfs_bnode* %23, %struct.hfs_bnode** %2, align 8
  br label %189

24:                                               ; preds = %1
  store i32 0, i32* %7, align 4
  %25 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %26 = load i32, i32* %7, align 4
  %27 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %25, i32 %26)
  store %struct.hfs_bnode* %27, %struct.hfs_bnode** %4, align 8
  %28 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %29 = call i64 @IS_ERR(%struct.hfs_bnode* %28)
  %30 = icmp ne i64 %29, 0
  br i1 %30, label %31, label %33

31:                                               ; preds = %24
  %32 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  store %struct.hfs_bnode* %32, %struct.hfs_bnode** %2, align 8
  br label %189

33:                                               ; preds = %24
  %34 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %35 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %34, i32 2, i32* %10)
  store i32 %35, i32* %11, align 4
  %36 = load i32, i32* %10, align 4
  store i32 %36, i32* %9, align 4
  %37 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %38 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %37, i32 0, i32 2
  %39 = load i64, i64* %38, align 8
  %40 = load i32, i32* %9, align 4
  %41 = zext i32 %40 to i64
  %42 = add nsw i64 %41, %39
  %43 = trunc i64 %42 to i32
  store i32 %43, i32* %9, align 4
  %44 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %45 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %44, i32 0, i32 1
  %46 = load %struct.page**, %struct.page*** %45, align 8
  %47 = load i32, i32* %9, align 4
  %48 = load i32, i32* @PAGE_SHIFT, align 4
  %49 = lshr i32 %47, %48
  %50 = zext i32 %49 to i64
  %51 = getelementptr inbounds %struct.page*, %struct.page** %46, i64 %50
  store %struct.page** %51, %struct.page*** %6, align 8
  %52 = load %struct.page**, %struct.page*** %6, align 8
  %53 = load %struct.page*, %struct.page** %52, align 8
  %54 = call i32* @kmap(%struct.page* %53)
  store i32* %54, i32** %12, align 8
  %55 = load i32, i32* @PAGE_MASK, align 4
  %56 = xor i32 %55, -1
  %57 = load i32, i32* %9, align 4
  %58 = and i32 %57, %56
  store i32 %58, i32* %9, align 4
  store i32 0, i32* %8, align 4
  br label %59

59:                                               ; preds = %162, %33
  br label %60

60:                                               ; preds = %130, %59
  %61 = load i32, i32* %11, align 4
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %63, label %135

63:                                               ; preds = %60
  %64 = load i32*, i32** %12, align 8
  %65 = load i32, i32* %9, align 4
  %66 = zext i32 %65 to i64
  %67 = getelementptr inbounds i32, i32* %64, i64 %66
  %68 = load i32, i32* %67, align 4
  store i32 %68, i32* %13, align 4
  %69 = load i32, i32* %13, align 4
  %70 = icmp ne i32 %69, 255
  br i1 %70, label %71, label %117

71:                                               ; preds = %63
  store i32 128, i32* %14, align 4
  store i32 0, i32* %15, align 4
  br label %72

72:                                               ; preds = %111, %71
  %73 = load i32, i32* %15, align 4
  %74 = icmp slt i32 %73, 8
  br i1 %74, label %75, label %116

75:                                               ; preds = %72
  %76 = load i32, i32* %13, align 4
  %77 = load i32, i32* %14, align 4
  %78 = and i32 %76, %77
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %110, label %80

80:                                               ; preds = %75
  %81 = load i32, i32* %15, align 4
  %82 = load i32, i32* %8, align 4
  %83 = add nsw i32 %82, %81
  store i32 %83, i32* %8, align 4
  %84 = load i32, i32* %14, align 4
  %85 = load i32*, i32** %12, align 8
  %86 = load i32, i32* %9, align 4
  %87 = zext i32 %86 to i64
  %88 = getelementptr inbounds i32, i32* %85, i64 %87
  %89 = load i32, i32* %88, align 4
  %90 = or i32 %89, %84
  store i32 %90, i32* %88, align 4
  %91 = load %struct.page**, %struct.page*** %6, align 8
  %92 = load %struct.page*, %struct.page** %91, align 8
  %93 = call i32 @set_page_dirty(%struct.page* %92)
  %94 = load %struct.page**, %struct.page*** %6, align 8
  %95 = load %struct.page*, %struct.page** %94, align 8
  %96 = call i32 @kunmap(%struct.page* %95)
  %97 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %98 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %97, i32 0, i32 1
  %99 = load i32, i32* %98, align 4
  %100 = add nsw i32 %99, -1
  store i32 %100, i32* %98, align 4
  %101 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %102 = getelementptr inbounds %struct.hfs_btree, %struct.hfs_btree* %101, i32 0, i32 0
  %103 = load i32, i32* %102, align 4
  %104 = call i32 @mark_inode_dirty(i32 %103)
  %105 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %106 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %105)
  %107 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %108 = load i32, i32* %8, align 4
  %109 = call %struct.hfs_bnode* @hfs_bnode_create(%struct.hfs_btree* %107, i32 %108)
  store %struct.hfs_bnode* %109, %struct.hfs_bnode** %2, align 8
  br label %189

110:                                              ; preds = %75
  br label %111

111:                                              ; preds = %110
  %112 = load i32, i32* %14, align 4
  %113 = ashr i32 %112, 1
  store i32 %113, i32* %14, align 4
  %114 = load i32, i32* %15, align 4
  %115 = add nsw i32 %114, 1
  store i32 %115, i32* %15, align 4
  br label %72

116:                                              ; preds = %72
  br label %117

117:                                              ; preds = %116, %63
  %118 = load i32, i32* %9, align 4
  %119 = add i32 %118, 1
  store i32 %119, i32* %9, align 4
  %120 = load i32, i32* @PAGE_SIZE, align 4
  %121 = icmp uge i32 %119, %120
  br i1 %121, label %122, label %130

122:                                              ; preds = %117
  %123 = load %struct.page**, %struct.page*** %6, align 8
  %124 = load %struct.page*, %struct.page** %123, align 8
  %125 = call i32 @kunmap(%struct.page* %124)
  %126 = load %struct.page**, %struct.page*** %6, align 8
  %127 = getelementptr inbounds %struct.page*, %struct.page** %126, i32 1
  store %struct.page** %127, %struct.page*** %6, align 8
  %128 = load %struct.page*, %struct.page** %127, align 8
  %129 = call i32* @kmap(%struct.page* %128)
  store i32* %129, i32** %12, align 8
  store i32 0, i32* %9, align 4
  br label %130

130:                                              ; preds = %122, %117
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 8
  store i32 %132, i32* %8, align 4
  %133 = load i32, i32* %11, align 4
  %134 = add i32 %133, -1
  store i32 %134, i32* %11, align 4
  br label %60

135:                                              ; preds = %60
  %136 = load %struct.page**, %struct.page*** %6, align 8
  %137 = load %struct.page*, %struct.page** %136, align 8
  %138 = call i32 @kunmap(%struct.page* %137)
  %139 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %140 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %139, i32 0, i32 0
  %141 = load i32, i32* %140, align 8
  store i32 %141, i32* %7, align 4
  %142 = load i32, i32* %7, align 4
  %143 = icmp ne i32 %142, 0
  br i1 %143, label %150, label %144

144:                                              ; preds = %135
  %145 = load i32, i32* @BNODE_MOD, align 4
  %146 = call i32 @hfs_dbg(i32 %145, i8* getelementptr inbounds ([22 x i8], [22 x i8]* @.str, i64 0, i64 0))
  %147 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %148 = load i32, i32* %8, align 4
  %149 = call %struct.hfs_bnode* @hfs_bmap_new_bmap(%struct.hfs_bnode* %147, i32 %148)
  store %struct.hfs_bnode* %149, %struct.hfs_bnode** %5, align 8
  br label %154

150:                                              ; preds = %135
  %151 = load %struct.hfs_btree*, %struct.hfs_btree** %3, align 8
  %152 = load i32, i32* %7, align 4
  %153 = call %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree* %151, i32 %152)
  store %struct.hfs_bnode* %153, %struct.hfs_bnode** %5, align 8
  br label %154

154:                                              ; preds = %150, %144
  %155 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %156 = call i32 @hfs_bnode_put(%struct.hfs_bnode* %155)
  %157 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  %158 = call i64 @IS_ERR(%struct.hfs_bnode* %157)
  %159 = icmp ne i64 %158, 0
  br i1 %159, label %160, label %162

160:                                              ; preds = %154
  %161 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  store %struct.hfs_bnode* %161, %struct.hfs_bnode** %2, align 8
  br label %189

162:                                              ; preds = %154
  %163 = load %struct.hfs_bnode*, %struct.hfs_bnode** %5, align 8
  store %struct.hfs_bnode* %163, %struct.hfs_bnode** %4, align 8
  %164 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %165 = call i32 @hfs_brec_lenoff(%struct.hfs_bnode* %164, i32 0, i32* %10)
  store i32 %165, i32* %11, align 4
  %166 = load i32, i32* %10, align 4
  store i32 %166, i32* %9, align 4
  %167 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %168 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %167, i32 0, i32 2
  %169 = load i64, i64* %168, align 8
  %170 = load i32, i32* %9, align 4
  %171 = zext i32 %170 to i64
  %172 = add nsw i64 %171, %169
  %173 = trunc i64 %172 to i32
  store i32 %173, i32* %9, align 4
  %174 = load %struct.hfs_bnode*, %struct.hfs_bnode** %4, align 8
  %175 = getelementptr inbounds %struct.hfs_bnode, %struct.hfs_bnode* %174, i32 0, i32 1
  %176 = load %struct.page**, %struct.page*** %175, align 8
  %177 = load i32, i32* %9, align 4
  %178 = load i32, i32* @PAGE_SHIFT, align 4
  %179 = lshr i32 %177, %178
  %180 = zext i32 %179 to i64
  %181 = getelementptr inbounds %struct.page*, %struct.page** %176, i64 %180
  store %struct.page** %181, %struct.page*** %6, align 8
  %182 = load %struct.page**, %struct.page*** %6, align 8
  %183 = load %struct.page*, %struct.page** %182, align 8
  %184 = call i32* @kmap(%struct.page* %183)
  store i32* %184, i32** %12, align 8
  %185 = load i32, i32* @PAGE_MASK, align 4
  %186 = xor i32 %185, -1
  %187 = load i32, i32* %9, align 4
  %188 = and i32 %187, %186
  store i32 %188, i32* %9, align 4
  br label %59

189:                                              ; preds = %160, %80, %31, %21
  %190 = load %struct.hfs_bnode*, %struct.hfs_bnode** %2, align 8
  ret %struct.hfs_bnode* %190
}

declare dso_local i32 @hfs_bmap_reserve(%struct.hfs_btree*, i32) #1

declare dso_local %struct.hfs_bnode* @ERR_PTR(i32) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_find(%struct.hfs_btree*, i32) #1

declare dso_local i64 @IS_ERR(%struct.hfs_bnode*) #1

declare dso_local i32 @hfs_brec_lenoff(%struct.hfs_bnode*, i32, i32*) #1

declare dso_local i32* @kmap(%struct.page*) #1

declare dso_local i32 @set_page_dirty(%struct.page*) #1

declare dso_local i32 @kunmap(%struct.page*) #1

declare dso_local i32 @mark_inode_dirty(i32) #1

declare dso_local i32 @hfs_bnode_put(%struct.hfs_bnode*) #1

declare dso_local %struct.hfs_bnode* @hfs_bnode_create(%struct.hfs_btree*, i32) #1

declare dso_local i32 @hfs_dbg(i32, i8*) #1

declare dso_local %struct.hfs_bnode* @hfs_bmap_new_bmap(%struct.hfs_bnode*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
