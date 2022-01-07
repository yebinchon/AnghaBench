; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___try_update_largest_extent.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_f2fs.h___try_update_largest_extent.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.extent_tree = type { i32, %struct.TYPE_2__ }
%struct.TYPE_2__ = type { i64 }
%struct.extent_node = type { %struct.TYPE_2__ }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.extent_tree*, %struct.extent_node*)* @__try_update_largest_extent to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__try_update_largest_extent(%struct.extent_tree* %0, %struct.extent_node* %1) #0 {
  %3 = alloca %struct.extent_tree*, align 8
  %4 = alloca %struct.extent_node*, align 8
  store %struct.extent_tree* %0, %struct.extent_tree** %3, align 8
  store %struct.extent_node* %1, %struct.extent_node** %4, align 8
  %5 = load %struct.extent_node*, %struct.extent_node** %4, align 8
  %6 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %5, i32 0, i32 0
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load i64, i64* %7, align 8
  %9 = load %struct.extent_tree*, %struct.extent_tree** %3, align 8
  %10 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %9, i32 0, i32 1
  %11 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %10, i32 0, i32 0
  %12 = load i64, i64* %11, align 8
  %13 = icmp sgt i64 %8, %12
  br i1 %13, label %14, label %23

14:                                               ; preds = %2
  %15 = load %struct.extent_tree*, %struct.extent_tree** %3, align 8
  %16 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %15, i32 0, i32 1
  %17 = load %struct.extent_node*, %struct.extent_node** %4, align 8
  %18 = getelementptr inbounds %struct.extent_node, %struct.extent_node* %17, i32 0, i32 0
  %19 = bitcast %struct.TYPE_2__* %16 to i8*
  %20 = bitcast %struct.TYPE_2__* %18 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %19, i8* align 8 %20, i64 8, i1 false)
  %21 = load %struct.extent_tree*, %struct.extent_tree** %3, align 8
  %22 = getelementptr inbounds %struct.extent_tree, %struct.extent_tree* %21, i32 0, i32 0
  store i32 1, i32* %22, align 8
  br label %23

23:                                               ; preds = %14, %2
  ret void
}

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
