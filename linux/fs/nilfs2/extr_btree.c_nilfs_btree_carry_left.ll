; ModuleID = '/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_carry_left.c'
source_filename = "/home/carl/AnghaBench/linux/fs/nilfs2/extr_btree.c_nilfs_btree_carry_left.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.nilfs_bmap = type { i32 }
%struct.nilfs_btree_path = type { i32, i32*, i32* }
%struct.nilfs_btree_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.nilfs_bmap*, %struct.nilfs_btree_path*, i32, i32*, i32*)* @nilfs_btree_carry_left to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @nilfs_btree_carry_left(%struct.nilfs_bmap* %0, %struct.nilfs_btree_path* %1, i32 %2, i32* %3, i32* %4) #0 {
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
  %38 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %39 = load i32, i32* %8, align 4
  %40 = sext i32 %39 to i64
  %41 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %38, i64 %40
  %42 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %41, i32 0, i32 0
  %43 = load i32, i32* %42, align 8
  %44 = icmp sgt i32 %37, %43
  br i1 %44, label %45, label %48

45:                                               ; preds = %5
  %46 = load i32, i32* %15, align 4
  %47 = add nsw i32 %46, -1
  store i32 %47, i32* %15, align 4
  store i32 1, i32* %16, align 4
  br label %48

48:                                               ; preds = %45, %5
  %49 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %12, align 8
  %50 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %51 = load i32, i32* %15, align 4
  %52 = load i32, i32* %17, align 4
  %53 = load i32, i32* %17, align 4
  %54 = call i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node* %49, %struct.nilfs_btree_node* %50, i32 %51, i32 %52, i32 %53)
  %55 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %56 = load i32, i32* %8, align 4
  %57 = sext i32 %56 to i64
  %58 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %55, i64 %57
  %59 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %58, i32 0, i32 2
  %60 = load i32*, i32** %59, align 8
  %61 = call i32 @buffer_dirty(i32* %60)
  %62 = icmp ne i32 %61, 0
  br i1 %62, label %71, label %63

63:                                               ; preds = %48
  %64 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %65 = load i32, i32* %8, align 4
  %66 = sext i32 %65 to i64
  %67 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %64, i64 %66
  %68 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %67, i32 0, i32 2
  %69 = load i32*, i32** %68, align 8
  %70 = call i32 @mark_buffer_dirty(i32* %69)
  br label %71

71:                                               ; preds = %63, %48
  %72 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %73 = load i32, i32* %8, align 4
  %74 = sext i32 %73 to i64
  %75 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %72, i64 %74
  %76 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %75, i32 0, i32 1
  %77 = load i32*, i32** %76, align 8
  %78 = call i32 @buffer_dirty(i32* %77)
  %79 = icmp ne i32 %78, 0
  br i1 %79, label %88, label %80

80:                                               ; preds = %71
  %81 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %82 = load i32, i32* %8, align 4
  %83 = sext i32 %82 to i64
  %84 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %81, i64 %83
  %85 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %84, i32 0, i32 1
  %86 = load i32*, i32** %85, align 8
  %87 = call i32 @mark_buffer_dirty(i32* %86)
  br label %88

88:                                               ; preds = %80, %71
  %89 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %90 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %91 = load i32, i32* %8, align 4
  %92 = add nsw i32 %91, 1
  %93 = load %struct.nilfs_btree_node*, %struct.nilfs_btree_node** %11, align 8
  %94 = call i32 @nilfs_btree_node_get_key(%struct.nilfs_btree_node* %93, i32 0)
  %95 = call i32 @nilfs_btree_promote_key(%struct.nilfs_bmap* %89, %struct.nilfs_btree_path* %90, i32 %92, i32 %94)
  %96 = load i32, i32* %16, align 4
  %97 = icmp ne i32 %96, 0
  br i1 %97, label %98, label %138

98:                                               ; preds = %88
  %99 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %100 = load i32, i32* %8, align 4
  %101 = sext i32 %100 to i64
  %102 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %99, i64 %101
  %103 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %102, i32 0, i32 2
  %104 = load i32*, i32** %103, align 8
  %105 = call i32 @brelse(i32* %104)
  %106 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %107 = load i32, i32* %8, align 4
  %108 = sext i32 %107 to i64
  %109 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %106, i64 %108
  %110 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %109, i32 0, i32 1
  %111 = load i32*, i32** %110, align 8
  %112 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %113 = load i32, i32* %8, align 4
  %114 = sext i32 %113 to i64
  %115 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %112, i64 %114
  %116 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %115, i32 0, i32 2
  store i32* %111, i32** %116, align 8
  %117 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %118 = load i32, i32* %8, align 4
  %119 = sext i32 %118 to i64
  %120 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %117, i64 %119
  %121 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %120, i32 0, i32 1
  store i32* null, i32** %121, align 8
  %122 = load i32, i32* %14, align 4
  %123 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %124 = load i32, i32* %8, align 4
  %125 = sext i32 %124 to i64
  %126 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %123, i64 %125
  %127 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %126, i32 0, i32 0
  %128 = load i32, i32* %127, align 8
  %129 = add nsw i32 %128, %122
  store i32 %129, i32* %127, align 8
  %130 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %131 = load i32, i32* %8, align 4
  %132 = add nsw i32 %131, 1
  %133 = sext i32 %132 to i64
  %134 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %130, i64 %133
  %135 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %134, i32 0, i32 0
  %136 = load i32, i32* %135, align 8
  %137 = add nsw i32 %136, -1
  store i32 %137, i32* %135, align 8
  br label %159

138:                                              ; preds = %88
  %139 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %140 = load i32, i32* %8, align 4
  %141 = sext i32 %140 to i64
  %142 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %139, i64 %141
  %143 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %142, i32 0, i32 1
  %144 = load i32*, i32** %143, align 8
  %145 = call i32 @brelse(i32* %144)
  %146 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %147 = load i32, i32* %8, align 4
  %148 = sext i32 %147 to i64
  %149 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %146, i64 %148
  %150 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %149, i32 0, i32 1
  store i32* null, i32** %150, align 8
  %151 = load i32, i32* %15, align 4
  %152 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %153 = load i32, i32* %8, align 4
  %154 = sext i32 %153 to i64
  %155 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %152, i64 %154
  %156 = getelementptr inbounds %struct.nilfs_btree_path, %struct.nilfs_btree_path* %155, i32 0, i32 0
  %157 = load i32, i32* %156, align 8
  %158 = sub nsw i32 %157, %151
  store i32 %158, i32* %156, align 8
  br label %159

159:                                              ; preds = %138, %98
  %160 = load %struct.nilfs_bmap*, %struct.nilfs_bmap** %6, align 8
  %161 = load %struct.nilfs_btree_path*, %struct.nilfs_btree_path** %7, align 8
  %162 = load i32, i32* %8, align 4
  %163 = load i32*, i32** %9, align 8
  %164 = load i32*, i32** %10, align 8
  %165 = call i32 @nilfs_btree_do_insert(%struct.nilfs_bmap* %160, %struct.nilfs_btree_path* %161, i32 %162, i32* %163, i32* %164)
  ret void
}

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_nonroot_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local %struct.nilfs_btree_node* @nilfs_btree_get_sib_node(%struct.nilfs_btree_path*, i32) #1

declare dso_local i32 @nilfs_btree_node_get_nchildren(%struct.nilfs_btree_node*) #1

declare dso_local i32 @nilfs_btree_nchildren_per_block(%struct.nilfs_bmap*) #1

declare dso_local i32 @nilfs_btree_node_move_left(%struct.nilfs_btree_node*, %struct.nilfs_btree_node*, i32, i32, i32) #1

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
