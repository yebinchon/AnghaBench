; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_carry_right.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_carry_right.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32*, i32* }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_carry_right to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_carry_right(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
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
  %17 = alloca i32, align 4
  store %struct.nilfs_bmap* %0, %struct.nilfs_bmap** %6, align 8
  store %struct.nilfs_btree_path* %1, %struct.nilfs_btree_path** %7, align 8
  store i32 %2, i32* %8, align 4
  store i32* %3, i32** %9, align 8
  store i32* %4, i32** %10, align 8
  %18 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %19 = load i32, i32* %8, align 4
  %20 = call %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path* %18, i32 %19)
  store %struct.nilfs_btree_node* %20, %struct.nilfs_btree_node** %11, align 8
  %21 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %22 = load i32, i32* %8, align 4
  %23 = call %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path* %21, i32 %22)
  store %struct.nilfs_btree_node* %23, %struct.nilfs_btree_node** %12, align 8
  %24 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %25 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %24)
  store i32 %25, i32* %13, align 4
  %26 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %27 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %26)
  store i32 %27, i32* %14, align 4
  %28 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %29 = call i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap* %28)
  store i32 %29, i32* %17, align 4
  store i32 0, i32* %16, align 4
  %30 = load i32, i32* %13, align 4
  %31 = load i32, i32* %14, align 4
  %32 = add nsw i32 %30, %31
  %33 = add nsw i32 %32, 1
  %34 = sdiv i32 %33, 2
  %35 = load i32, i32* %14, align 4
  %36 = sub nsw i32 %34, %35
  store i32 %36, i32* %15, align 4
  %37 = load i32, i32* %15, align 4
  %38 = load i32, i32* %13, align 4
  %39 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %40 = load i32, i32* %8, align 4
  %41 = sext i32 %40 to i64
  %42 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %39, i64 %41
  %43 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %42, i32 0, i32 0
  %44 = load i32, i32* %43, align 8
  %45 = sub nsw i32 %38, %44
  %46 = icmp sgt i32 %37, %45
  br i1 %46, label %47, label %50

47:                                               ; preds = %5
  %48 = load i32, i32* %15, align 4
  %49 = add nsw i32 %48, -1
  store i32 %49, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %50

50:                                               ; preds = %47, %5
  %51 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %52 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %53 = load i32, i32* %15, align 4
  %54 = load i32, i32* %17, align 4
  %55 = load i32, i32* %17, align 4
  %56 = call i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node* %51, %struct.nilfs_btree_node* %52, i32 %53, i32 %54, i32 %55)
  %57 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %58 = load i32, i32* %8, align 4
  %59 = sext i32 %58 to i64
  %60 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %57, i64 %59
  %61 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %60, i32 0, i32 2
  %62 = load i32*, i32** %61, align 8
  %63 = call i32 @buffer_dirty(i32* %62)
  %64 = icmp ne i32 %63, 0
  br i1 %64, label %73, label %65

65:                                               ; preds = %50
  %66 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %67 = load i32, i32* %8, align 4
  %68 = sext i32 %67 to i64
  %69 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %66, i64 %68
  %70 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %69, i32 0, i32 2
  %71 = load i32*, i32** %70, align 8
  %72 = call i32 @mark_buffer_dirty(i32* %71)
  br label %73

73:                                               ; preds = %65, %50
  %74 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %75 = load i32, i32* %8, align 4
  %76 = sext i32 %75 to i64
  %77 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %74, i64 %76
  %78 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %77, i32 0, i32 1
  %79 = load i32*, i32** %78, align 8
  %80 = call i32 @buffer_dirty(i32* %79)
  %81 = icmp ne i32 %80, 0
  br i1 %81, label %90, label %82

82:                                               ; preds = %73
  %83 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %84 = load i32, i32* %8, align 4
  %85 = sext i32 %84 to i64
  %86 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %83, i64 %85
  %87 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %86, i32 0, i32 1
  %88 = load i32*, i32** %87, align 8
  %89 = call i32 @mark_buffer_dirty(i32* %88)
  br label %90

90:                                               ; preds = %82, %73
  %91 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %92 = load i32, i32* %8, align 4
  %93 = add nsw i32 %92, 1
  %94 = sext i32 %93 to i64
  %95 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %91, i64 %94
  %96 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %95, i32 0, i32 0
  %97 = load i32, i32* %96, align 8
  %98 = add nsw i32 %97, 1
  store i32 %98, i32* %96, align 8
  %99 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %100 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %101 = load i32, i32* %8, align 4
  %102 = add nsw i32 %101, 1
  %103 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %104 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %103, i32 0)
  %105 = call i32 @nilfs_btree_promote_key(%struct.nilfs_bmap* %99, %struct.nilfs_btree_path* %100, i32 %102, i32 %104)
  %106 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = add nsw i32 %107, 1
  %109 = sext i32 %108 to i64
  %110 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %106, i64 %109
  %111 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %110, i32 0, i32 0
  %112 = load i32, i32* %111, align 8
  %113 = add nsw i32 %112, -1
  store i32 %113, i32* %111, align 8
  %114 = load i32, i32* %16, align 4
  %115 = icmp ne i32 %114, 0
  br i1 %115, label %116, label %157

116:                                              ; preds = %90
  %117 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %117, i64 %119
  %121 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %120, i32 0, i32 2
  %122 = load i32*, i32** %121, align 8
  %123 = call i32 @brelse(i32* %122)
  %124 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %125 = load i32, i32* %8, align 4
  %126 = sext i32 %125 to i64
  %127 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %124, i64 %126
  %128 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %127, i32 0, i32 1
  %129 = load i32*, i32** %128, align 8
  %130 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = sext i32 %131 to i64
  %133 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %130, i64 %132
  %134 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %133, i32 0, i32 2
  store i32* %129, i32** %134, align 8
  %135 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %136 = load i32, i32* %8, align 4
  %137 = sext i32 %136 to i64
  %138 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %135, i64 %137
  %139 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %138, i32 0, i32 1
  store i32* null, i32** %139, align 8
  %140 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %141 = call i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node* %140)
  %142 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %143 = load i32, i32* %8, align 4
  %144 = sext i32 %143 to i64
  %145 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %142, i64 %144
  %146 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %145, i32 0, i32 0
  %147 = load i32, i32* %146, align 8
  %148 = sub nsw i32 %147, %141
  store i32 %148, i32* %146, align 8
  %149 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %150 = load i32, i32* %8, align 4
  %151 = add nsw i32 %150, 1
  %152 = sext i32 %151 to i64
  %153 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %149, i64 %152
  %154 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %153, i32 0, i32 0
  %155 = load i32, i32* %154, align 8
  %156 = add nsw i32 %155, 1
  store i32 %156, i32* %154, align 8
  br label %170

157:                                              ; preds = %90
  %158 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %159 = load i32, i32* %8, align 4
  %160 = sext i32 %159 to i64
  %161 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %158, i64 %160
  %162 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %161, i32 0, i32 1
  %163 = load i32*, i32** %162, align 8
  %164 = call i32 @brelse(i32* %163)
  %165 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %166 = load i32, i32* %8, align 4
  %167 = sext i32 %166 to i64
  %168 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %165, i64 %167
  %169 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %168, i32 0, i32 1
  store i32* null, i32** %169, align 8
  br label %170

170:                                              ; preds = %157, %116
  %171 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %172 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %173 = load i32, i32* %8, align 4
  %174 = load i32*, i32** %9, align 8
  %175 = load i32*, i32** %10, align 8
  %176 = call i32 @nilfs_btree_do_insert(%struct.nilfs_bmap* %171, %struct.nilfs_btree_path* %172, i32 %173, i32* %174, i32* %175)
  ret void
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_move_right(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

declare dso_local i32 @buffer_dirty(i32*) #1

declare dso_local i32 @mark_buffer_dirty(i32*) #1

declare dso_local i32 @nilfs_btree_promote_key(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32) #1

declare dso_local i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node*, i32) #1

declare dso_local i32 @brelse(i32*) #1

declare dso_local i32 @nilfs_btree_do_insert(%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
