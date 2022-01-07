; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { %struct.ebitmap_node*, i64 }
%struct.ebitmap_node = type { %struct.ebitmap_node* }

@ebitmap_node_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @ebitmap_destroy(%struct.ebitmap* %0) #0 {
  %2 = alloca %struct.ebitmap*, align 8
  %3 = alloca %struct.ebitmap_node*, align 8
  %4 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %2, align 8
  %5 = load %struct.ebitmap*, %struct.ebitmap** %2, align 8
  %6 = icmp ne %struct.ebitmap* %5, null
  br i1 %6, label %8, label %7

7:                                                ; preds = %1
  br label %28

8:                                                ; preds = %1
  %9 = load %struct.ebitmap*, %struct.ebitmap** %2, align 8
  %10 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %9, i32 0, i32 0
  %11 = load %struct.ebitmap_node*, %struct.ebitmap_node** %10, align 8
  store %struct.ebitmap_node* %11, %struct.ebitmap_node** %3, align 8
  br label %12

12:                                               ; preds = %15, %8
  %13 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  %14 = icmp ne %struct.ebitmap_node* %13, null
  br i1 %14, label %15, label %23

15:                                               ; preds = %12
  %16 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  store %struct.ebitmap_node* %16, %struct.ebitmap_node** %4, align 8
  %17 = load %struct.ebitmap_node*, %struct.ebitmap_node** %3, align 8
  %18 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %17, i32 0, i32 0
  %19 = load %struct.ebitmap_node*, %struct.ebitmap_node** %18, align 8
  store %struct.ebitmap_node* %19, %struct.ebitmap_node** %3, align 8
  %20 = load i32, i32* @ebitmap_node_cachep, align 4
  %21 = load %struct.ebitmap_node*, %struct.ebitmap_node** %4, align 8
  %22 = call i32 @kmem_cache_free(i32 %20, %struct.ebitmap_node* %21)
  br label %12

23:                                               ; preds = %12
  %24 = load %struct.ebitmap*, %struct.ebitmap** %2, align 8
  %25 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %24, i32 0, i32 1
  store i64 0, i64* %25, align 8
  %26 = load %struct.ebitmap*, %struct.ebitmap** %2, align 8
  %27 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %26, i32 0, i32 0
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %27, align 8
  br label %28

28:                                               ; preds = %23, %7
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.ebitmap_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
