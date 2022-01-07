; ModuleID = '/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_no_overlapping_node.c'
source_filename = "/home/carl/AnghaBench/linux/fs/jffs2/extr_nodelist.c_no_overlapping_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.jffs2_sb_info = type { i32 }
%struct.rb_root = type { i32 }
%struct.jffs2_node_frag = type { %struct.TYPE_6__, i64, i64, %struct.TYPE_5__* }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64 }

@ENOMEM = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [57 x i8] c"add hole frag %#04x-%#04x on the right of the new frag.\0A\00", align 1
@.str.1 = private unnamed_addr constant [52 x i8] c"Add hole frag %#04x-%#04x to the root of the tree.\0A\00", align 1
@.str.2 = private unnamed_addr constant [31 x i8] c"add the new node at the right\0A\00", align 1
@.str.3 = private unnamed_addr constant [45 x i8] c"insert the new node at the root of the tree\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.jffs2_sb_info*, %struct.rb_root*, %struct.jffs2_node_frag*, %struct.jffs2_node_frag*, i64)* @no_overlapping_node to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @no_overlapping_node(%struct.jffs2_sb_info* %0, %struct.rb_root* %1, %struct.jffs2_node_frag* %2, %struct.jffs2_node_frag* %3, i64 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.jffs2_sb_info*, align 8
  %8 = alloca %struct.rb_root*, align 8
  %9 = alloca %struct.jffs2_node_frag*, align 8
  %10 = alloca %struct.jffs2_node_frag*, align 8
  %11 = alloca i64, align 8
  %12 = alloca %struct.jffs2_node_frag*, align 8
  store %struct.jffs2_sb_info* %0, %struct.jffs2_sb_info** %7, align 8
  store %struct.rb_root* %1, %struct.rb_root** %8, align 8
  store %struct.jffs2_node_frag* %2, %struct.jffs2_node_frag** %9, align 8
  store %struct.jffs2_node_frag* %3, %struct.jffs2_node_frag** %10, align 8
  store i64 %4, i64* %11, align 8
  %13 = load i64, i64* %11, align 8
  %14 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %15 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %14, i32 0, i32 3
  %16 = load %struct.TYPE_5__*, %struct.TYPE_5__** %15, align 8
  %17 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = icmp slt i64 %13, %18
  br i1 %19, label %20, label %87

20:                                               ; preds = %5
  %21 = load i64, i64* %11, align 8
  %22 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %23 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %22, i32 0, i32 3
  %24 = load %struct.TYPE_5__*, %struct.TYPE_5__** %23, align 8
  %25 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %24, i32 0, i32 0
  %26 = load i64, i64* %25, align 8
  %27 = load i64, i64* %11, align 8
  %28 = sub nsw i64 %26, %27
  %29 = call %struct.jffs2_node_frag* @new_fragment(i32* null, i64 %21, i64 %28)
  store %struct.jffs2_node_frag* %29, %struct.jffs2_node_frag** %12, align 8
  %30 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %31 = icmp ne %struct.jffs2_node_frag* %30, null
  %32 = xor i1 %31, true
  %33 = zext i1 %32 to i32
  %34 = call i64 @unlikely(i32 %33)
  %35 = icmp ne i64 %34, 0
  br i1 %35, label %36, label %41

36:                                               ; preds = %20
  %37 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %38 = call i32 @jffs2_free_node_frag(%struct.jffs2_node_frag* %37)
  %39 = load i32, i32* @ENOMEM, align 4
  %40 = sub nsw i32 0, %39
  store i32 %40, i32* %6, align 4
  br label %112

41:                                               ; preds = %20
  %42 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %43 = icmp ne %struct.jffs2_node_frag* %42, null
  br i1 %43, label %44, label %64

44:                                               ; preds = %41
  %45 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %46 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %45, i32 0, i32 2
  %47 = load i64, i64* %46, align 8
  %48 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %49 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %48, i32 0, i32 2
  %50 = load i64, i64* %49, align 8
  %51 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %52 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %51, i32 0, i32 1
  %53 = load i64, i64* %52, align 8
  %54 = add nsw i64 %50, %53
  %55 = call i32 (i8*, ...) @dbg_fragtree2(i8* getelementptr inbounds ([57 x i8], [57 x i8]* @.str, i64 0, i64 0), i64 %47, i64 %54)
  %56 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %57 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %56, i32 0, i32 0
  %58 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %59 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %58, i32 0, i32 0
  %60 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %61 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %60, i32 0, i32 0
  %62 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %61, i32 0, i32 0
  %63 = call i32 @rb_link_node(%struct.TYPE_6__* %57, %struct.TYPE_6__* %59, i32* %62)
  br label %81

64:                                               ; preds = %41
  %65 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %66 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %65, i32 0, i32 2
  %67 = load i64, i64* %66, align 8
  %68 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %69 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %68, i32 0, i32 2
  %70 = load i64, i64* %69, align 8
  %71 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %72 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %71, i32 0, i32 1
  %73 = load i64, i64* %72, align 8
  %74 = add nsw i64 %70, %73
  %75 = call i32 (i8*, ...) @dbg_fragtree2(i8* getelementptr inbounds ([52 x i8], [52 x i8]* @.str.1, i64 0, i64 0), i64 %67, i64 %74)
  %76 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %77 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %76, i32 0, i32 0
  %78 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %79 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %78, i32 0, i32 0
  %80 = call i32 @rb_link_node(%struct.TYPE_6__* %77, %struct.TYPE_6__* null, i32* %79)
  br label %81

81:                                               ; preds = %64, %44
  %82 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  %83 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %82, i32 0, i32 0
  %84 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %85 = call i32 @rb_insert_color(%struct.TYPE_6__* %83, %struct.rb_root* %84)
  %86 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %12, align 8
  store %struct.jffs2_node_frag* %86, %struct.jffs2_node_frag** %10, align 8
  br label %87

87:                                               ; preds = %81, %5
  %88 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %89 = icmp ne %struct.jffs2_node_frag* %88, null
  br i1 %89, label %90, label %100

90:                                               ; preds = %87
  %91 = call i32 (i8*, ...) @dbg_fragtree2(i8* getelementptr inbounds ([31 x i8], [31 x i8]* @.str.2, i64 0, i64 0))
  %92 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %93 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %92, i32 0, i32 0
  %94 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %95 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %94, i32 0, i32 0
  %96 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %10, align 8
  %97 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %96, i32 0, i32 0
  %98 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %97, i32 0, i32 0
  %99 = call i32 @rb_link_node(%struct.TYPE_6__* %93, %struct.TYPE_6__* %95, i32* %98)
  br label %107

100:                                              ; preds = %87
  %101 = call i32 (i8*, ...) @dbg_fragtree2(i8* getelementptr inbounds ([45 x i8], [45 x i8]* @.str.3, i64 0, i64 0))
  %102 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %103 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %102, i32 0, i32 0
  %104 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %105 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %104, i32 0, i32 0
  %106 = call i32 @rb_link_node(%struct.TYPE_6__* %103, %struct.TYPE_6__* null, i32* %105)
  br label %107

107:                                              ; preds = %100, %90
  %108 = load %struct.jffs2_node_frag*, %struct.jffs2_node_frag** %9, align 8
  %109 = getelementptr inbounds %struct.jffs2_node_frag, %struct.jffs2_node_frag* %108, i32 0, i32 0
  %110 = load %struct.rb_root*, %struct.rb_root** %8, align 8
  %111 = call i32 @rb_insert_color(%struct.TYPE_6__* %109, %struct.rb_root* %110)
  store i32 0, i32* %6, align 4
  br label %112

112:                                              ; preds = %107, %36
  %113 = load i32, i32* %6, align 4
  ret i32 %113
}

declare dso_local %struct.jffs2_node_frag* @new_fragment(i32*, i64, i64) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @jffs2_free_node_frag(%struct.jffs2_node_frag*) #1

declare dso_local i32 @dbg_fragtree2(i8*, ...) #1

declare dso_local i32 @rb_link_node(%struct.TYPE_6__*, %struct.TYPE_6__*, i32*) #1

declare dso_local i32 @rb_insert_color(%struct.TYPE_6__*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
