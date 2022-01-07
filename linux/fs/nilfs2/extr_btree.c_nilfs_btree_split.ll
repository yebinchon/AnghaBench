; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_split.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_split.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32*, %struct.TYPE_2__, i32* }
%struct.TYPE_2__ = type { i32 }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_split to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_split(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
  %6 = alloca %struct.nilfs_bmap*, align 8
  %7 = alloca %struct.nilfs_btree_path*, align 8
  %8 = alloca i32, align 4
  %9 = alloca i32*, align 8
  %10 = alloca i32*, align 8
  %11 = alloca %struct.nilfs_btree_node*, align 8
  %12 = alloca %struct.nilfs_btree_node*, align 8
  %13 = alloca i32, align 4
  %14 = alloca i32, align 4
  %15 = alloca i32, align 4
  %16 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %17 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %18 = load i32, i32* %8, align 4
  %19 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %17, i32 %18)
  store %struct.nilfs_btree_node* %19, %struct.nilfs_btree_node** %11, align 8
  %20 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %21 = load i32, i32* %8, align 4
  %22 = call %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path* %20, i32 %21)
  store %struct.nilfs_btree_node* %22, %struct.nilfs_btree_node** %12, align 8
  %23 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %24 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %23)
  store i32 %24, i32* %13, align 4
  %25 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %26 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %25)
  store i32 %26, i32* %16, align 4
  store i32 0, i32* %15, align 4
  %27 = load i32, i32* %13, align 4
  %28 = add nsw i32 %27, 1
  %29 = sdiv i32 %28, 2
  store i32 %29, i32* %14, align 4
  %30 = load i32, i32* %14, align 4
  %31 = load i32, i32* %13, align 4
  %32 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %33 = load i32, i32* %8, align 4
  %34 = sext i32 %33 to i64
  %35 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %32, i64 %34
  %36 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %35, i32 0, i32 0
  %37 = load i32, i32* %36, align 8
  %38 = sub nsw i32 %31, %37
  %39 = icmp sgt i32 %30, %38
  br i1 %39, label %40, label %43

40:                                               ; preds = %5
  %41 = load i32, i32* %14, align 4
  %42 = add nsw i32 %41, -1
  store i32 %42, i32* %14, align 4
  store i32 1, i32* %15, align 4
  br label %43

43:                                               ; preds = %40, %5
  %44 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %45 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %46 = load i32, i32* %14, align 4
  %47 = load i32, i32* %16, align 4
  %48 = load i32, i32* %16, align 4
  %49 = call i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node* %44, %struct.nilfs_btree_node* %45, i32 %46, i32 %47, i32 %48)
  %50 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %51 = load i32, i32* %8, align 4
  %52 = sext i32 %51 to i64
  %53 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %50, i64 %52
  %54 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %53, i32 0, i32 3
  %55 = load i32*, i32** %54, align 8
  %56 = call i32 @buffer_dirty(i32* %55)
  %57 = icmp ne i32 %56, 0
  br i1 %57, label %66, label %58

58:                                               ; preds = %43
  %59 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %60 = load i32, i32* %8, align 4
  %61 = sext i32 %60 to i64
  %62 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %59, i64 %61
  %63 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %62, i32 0, i32 3
  %64 = load i32*, i32** %63, align 8
  %65 = call i32 @mark_buffer_dirty(i32* %64)
  br label %66

66:                                               ; preds = %58, %43
  %67 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %68 = load i32, i32* %8, align 4
  %69 = sext i32 %68 to i64
  %70 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %67, i64 %69
  %71 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %70, i32 0, i32 1
  %72 = load i32*, i32** %71, align 8
  %73 = call i32 @buffer_dirty(i32* %72)
  %74 = icmp ne i32 %73, 0
  br i1 %74, label %83, label %75

75:                                               ; preds = %66
  %76 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %77 = load i32, i32* %8, align 4
  %78 = sext i32 %77 to i64
  %79 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %76, i64 %78
  %80 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %79, i32 0, i32 1
  %81 = load i32*, i32** %80, align 8
  %82 = call i32 @mark_buffer_dirty(i32* %81)
  br label %83

83:                                               ; preds = %75, %66
  %84 = load i32, i32* %15, align 4
  %85 = icmp ne i32 %84, 0
  br i1 %85, label %86, label %143

86:                                               ; preds = %83
  %87 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %88 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %87)
  %89 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %90 = load i32, i32* %8, align 4
  %91 = sext i32 %90 to i64
  %92 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %89, i64 %91
  %93 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = sub nsw i32 %94, %88
  store i32 %95, i32* %93, align 8
  %96 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %97 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %98 = load i32, i32* %8, align 4
  %99 = sext i32 %98 to i64
  %100 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %97, i64 %99
  %101 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %100, i32 0, i32 0
  %102 = load i32, i32* %101, align 8
  %103 = load i32*, i32** %9, align 8
  %104 = load i32, i32* %103, align 4
  %105 = load i32*, i32** %10, align 8
  %106 = load i32, i32* %105, align 4
  %107 = load i32, i32* %16, align 4
  %108 = call i32 @nilfs_btree_node_insert(%struct.nilfs_btree_node* %96, i32 %102, i32 %104, i32 %106, i32 %107)
  %109 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %110 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %109, i32 0)
  %111 = load i32*, i32** %9, align 8
  store i32 %110, i32* %111, align 4
  %112 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %112, i64 %114
  %116 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %115, i32 0, i32 2
  %117 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %116, i32 0, i32 0
  %118 = load i32, i32* %117, align 8
  %119 = load i32*, i32** %10, align 8
  store i32 %118, i32* %119, align 4
  %120 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %121 = load i32, i32* %8, align 4
  %122 = sext i32 %121 to i64
  %123 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %120, i64 %122
  %124 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %123, i32 0, i32 3
  %125 = load i32*, i32** %124, align 8
  %126 = call i32 @brelse(i32* %125)
  %127 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %128 = load i32, i32* %8, align 4
  %129 = sext i32 %128 to i64
  %130 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %127, i64 %129
  %131 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %130, i32 0, i32 1
  %132 = load i32*, i32** %131, align 8
  %133 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %134 = load i32, i32* %8, align 4
  %135 = sext i32 %134 to i64
  %136 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %133, i64 %135
  %137 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %136, i32 0, i32 3
  store i32* %132, i32** %137, align 8
  %138 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %139 = load i32, i32* %8, align 4
  %140 = sext i32 %139 to i64
  %141 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %138, i64 %140
  %142 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %141, i32 0, i32 1
  store i32* null, i32** %142, align 8
  br label %173

143:                                              ; preds = %83
  %144 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %145 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %146 = load i32, i32* %8, align 4
  %147 = load i32*, i32** %9, align 8
  %148 = load i32*, i32** %10, align 8
  %149 = call i32 @nilfs_btree_do_insert(%struct.nilfs_bmap* %144, %struct.nilfs_btree_path* %145, i32 %146, i32* %147, i32* %148)
  %150 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %151 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %150, i32 0)
  %152 = load i32*, i32** %9, align 8
  store i32 %151, i32* %152, align 4
  %153 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %154 = load i32, i32* %8, align 4
  %155 = sext i32 %154 to i64
  %156 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %153, i64 %155
  %157 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %156, i32 0, i32 2
  %158 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %157, i32 0, i32 0
  %159 = load i32, i32* %158, align 8
  %160 = load i32*, i32** %10, align 8
  store i32 %159, i32* %160, align 4
  %161 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = sext i32 %162 to i64
  %164 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %161, i64 %163
  %165 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %164, i32 0, i32 1
  %166 = load i32*, i32** %165, align 8
  %167 = call i32 @brelse(i32* %166)
  %168 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %169 = load i32, i32* %8, align 4
  %170 = sext i32 %169 to i64
  %171 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %168, i64 %170
  %172 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %171, i32 0, i32 1
  store i32* null, i32** %172, align 8
  br label %173

173:                                              ; preds = %143, %86
  %174 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %175 = load i32, i32* %8, align 4
  %176 = add nsw i32 %175, 1
  %177 = sext i32 %176 to i64
  %178 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %174, i64 %177
  %179 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %178, i32 0, i32 0
  %180 = load i32, i32* %179, align 8
  %181 = add nsw i32 %180, 1
  store i32 %181, i32* %179, align 8
  ret void
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @buffer_dirty(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32*) #1

declare dso_local i32 @nilfs_btree_node_insert(%struct.nilfs_btree_node*, i32, i32, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @nilfs_btree_do_insert(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
