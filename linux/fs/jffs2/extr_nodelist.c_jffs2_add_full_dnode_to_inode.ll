; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_add_full_dnode_to_inode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_jffs2_add_full_dnode_to_inode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.jffs2_inode_info = type { i32 }
%struct.jffs2_full_dnode = type { i32, i64, i64 }
%struct.jffs2_node_frag = type { i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [55 x i8] c"adding node %#04x-%#04x @0x%08x on flash, newfrag *%p\0A\00", align 1
@PAGE_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @jffs2_add_full_dnode_to_inode(%struct.jffs2_sb_info* %0, %struct.jffs2_inode_info* %1, %struct.jffs2_full_dnode* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.jffs2_sb_info*, align 8
  %6 = alloca %struct.jffs2_inode_info*, align 8
  %7 = alloca %struct.jffs2_full_dnode*, align 8
  %8 = alloca i32, align 4
  %9 = alloca %struct.jffs2_node_frag*, align 8
  %10 = alloca %struct.jffs2_node_frag*, align 8
  %11 = alloca %struct.jffs2_node_frag*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %5, align 8
  store %struct.jffs2_inode_info* %1, %struct.jffs2_inode_info** %6, align 8
  store %struct.jffs2_full_dnode* %2, %struct.jffs2_full_dnode** %7, align 8
  %12 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %13 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %12, i32 0, i32 1
  %14 = load i64, i64* %13, align 8
  %15 = icmp ne i64 %14, 0
  %16 = xor i1 %15, true
  %17 = zext i1 %16 to i32
  %18 = call i64 @unlikely(i32 %17)
  %19 = icmp ne i64 %18, 0
  br i1 %19, label %20, label %21

20:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %135

21:                                               ; preds = %3
  %22 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %23 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %24 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %23, i32 0, i32 2
  %25 = load i64, i64* %24, align 8
  %26 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %27 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %26, i32 0, i32 1
  %28 = load i64, i64* %27, align 8
  %29 = call %struct.jffs2_node_frag* @new_fragment(%struct.jffs2_full_dnode* %22, i64 %25, i64 %28)
  store %struct.jffs2_node_frag* %29, %struct.jffs2_node_frag** %9, align 8
  %30 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %31 = icmp ne %struct.jffs2_node_frag* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %39

36:                                               ; preds = %21
  %37 = load i32, i32* @ENOMEM, align 4
  %38 = sub nsw i32 0, %37
  store i32 %38, i32* %4, align 4
  br label %135

39:                                               ; preds = %21
  %40 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %41 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %40, i32 0, i32 2
  %42 = load %struct.TYPE_2__*, %struct.TYPE_2__** %41, align 8
  %43 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %42, i32 0, i32 0
  store i32 1, i32* %43, align 4
  %44 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %45 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %44, i32 0, i32 2
  %46 = load i64, i64* %45, align 8
  %47 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %48 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %47, i32 0, i32 2
  %49 = load i64, i64* %48, align 8
  %50 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %51 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %50, i32 0, i32 1
  %52 = load i64, i64* %51, align 8
  %53 = add nsw i64 %49, %52
  %54 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %55 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %54, i32 0, i32 0
  %56 = load i32, i32* %55, align 8
  %57 = call i32 @ref_offset(i32 %56)
  %58 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %59 = call i32 @dbg_fragtree(i8* getelementptr inbounds ([55 x i8], [55 x i8]* @.str, i64 0, i64 0), i64 %46, i64 %53, i32 %57, %struct.jffs2_node_frag* %58)
  %60 = load %struct.jffs2_sb_info*, %struct.jffs2_sb_info** %5, align 8
  %61 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %62 = getelementptr inbounds %struct.jffs2_inode_info, %struct.jffs2_inode_info* %61, i32 0, i32 0
  %63 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %64 = call i32 @jffs2_add_frag_to_fragtree(%struct.jffs2_sb_info* %60, i32* %62, %struct.jffs2_node_frag* %63)
  store i32 %64, i32* %8, align 4
  %65 = load i32, i32* %8, align 4
  %66 = call i64 @unlikely(i32 %65)
  %67 = icmp ne i64 %66, 0
  br i1 %67, label %68, label %70

68:                                               ; preds = %39
  %69 = load i32, i32* %8, align 4
  store i32 %69, i32* %4, align 4
  br label %135

70:                                               ; preds = %39
  %71 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %72 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %71, i32 0, i32 0
  %73 = load i32, i32* %72, align 8
  %74 = load i32, i32* @PAGE_SIZE, align 4
  %75 = sub nsw i32 %74, 1
  %76 = and i32 %73, %75
  %77 = icmp ne i32 %76, 0
  br i1 %77, label %78, label %97

78:                                               ; preds = %70
  %79 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %80 = call %struct.jffs2_node_frag* @frag_prev(%struct.jffs2_node_frag* %79)
  store %struct.jffs2_node_frag* %80, %struct.jffs2_node_frag** %10, align 8
  %81 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %82 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %81, i32 0, i32 0
  %83 = load i32, i32* %82, align 8
  %84 = call i32 @mark_ref_normal(i32 %83)
  %85 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %86 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %85, i32 0, i32 2
  %87 = load %struct.TYPE_2__*, %struct.TYPE_2__** %86, align 8
  %88 = icmp ne %struct.TYPE_2__* %87, null
  br i1 %88, label %89, label %96

89:                                               ; preds = %78
  %90 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %91 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %90, i32 0, i32 2
  %92 = load %struct.TYPE_2__*, %struct.TYPE_2__** %91, align 8
  %93 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %92, i32 0, i32 1
  %94 = load i32, i32* %93, align 4
  %95 = call i32 @mark_ref_normal(i32 %94)
  br label %96

96:                                               ; preds = %89, %78
  br label %97

97:                                               ; preds = %96, %70
  %98 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %99 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %98, i32 0, i32 0
  %100 = load i32, i32* %99, align 8
  %101 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %102 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %101, i32 0, i32 1
  %103 = load i32, i32* %102, align 4
  %104 = add nsw i32 %100, %103
  %105 = load i32, i32* @PAGE_SIZE, align 4
  %106 = sub nsw i32 %105, 1
  %107 = and i32 %104, %106
  %108 = icmp ne i32 %107, 0
  br i1 %108, label %109, label %132

109:                                              ; preds = %97
  %110 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %111 = call %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag* %110)
  store %struct.jffs2_node_frag* %111, %struct.jffs2_node_frag** %11, align 8
  %112 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %11, align 8
  %113 = icmp ne %struct.jffs2_node_frag* %112, null
  br i1 %113, label %114, label %131

114:                                              ; preds = %109
  %115 = load %struct.jffs2_full_dnode*, %struct.jffs2_full_dnode** %7, align 8
  %116 = getelementptr inbounds %struct.jffs2_full_dnode, %struct.jffs2_full_dnode* %115, i32 0, i32 0
  %117 = load i32, i32* %116, align 8
  %118 = call i32 @mark_ref_normal(i32 %117)
  %119 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %11, align 8
  %120 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %119, i32 0, i32 2
  %121 = load %struct.TYPE_2__*, %struct.TYPE_2__** %120, align 8
  %122 = icmp ne %struct.TYPE_2__* %121, null
  br i1 %122, label %123, label %130

123:                                              ; preds = %114
  %124 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %11, align 8
  %125 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %124, i32 0, i32 2
  %126 = load %struct.TYPE_2__*, %struct.TYPE_2__** %125, align 8
  %127 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %126, i32 0, i32 1
  %128 = load i32, i32* %127, align 4
  %129 = call i32 @mark_ref_normal(i32 %128)
  br label %130

130:                                              ; preds = %123, %114
  br label %131

131:                                              ; preds = %130, %109
  br label %132

132:                                              ; preds = %131, %97
  %133 = load %struct.jffs2_inode_info*, %struct.jffs2_inode_info** %6, align 8
  %134 = call i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info* %133)
  store i32 0, i32* %4, align 4
  br label %135

135:                                              ; preds = %132, %68, %36, %20
  %136 = load i32, i32* %4, align 4
  ret i32 %136
}

declare dso_local i64 @unlikely(i32) #1

declare dso_local %struct.jffs2_node_frag* @new_fragment(%struct.jffs2_full_dnode*, i64, i64) #1

declare dso_local i32 @dbg_fragtree(i8*, i64, i64, i32, %struct.jffs2_node_frag*) #1

declare dso_local i32 @ref_offset(i32) #1

declare dso_local i32 @jffs2_add_frag_to_fragtree(%struct.jffs2_sb_info*, i32*, %struct.jffs2_node_frag*) #1

declare dso_local %struct.jffs2_node_frag* @frag_prev(%struct.jffs2_node_frag*) #1

declare dso_local i32 @mark_ref_normal(i32) #1

declare dso_local %struct.jffs2_node_frag* @frag_next(%struct.jffs2_node_frag*) #1

declare dso_local i32 @jffs2_dbg_fragtree_paranoia_check_nolock(%struct.jffs2_inode_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
