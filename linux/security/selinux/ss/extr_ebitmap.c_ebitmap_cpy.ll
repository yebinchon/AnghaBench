; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_cpy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_cpy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i32, %struct.ebitmap_node* }
%struct.ebitmap_node = type { %struct.ebitmap_node*, i32, i32 }

@ebitmap_node_cachep = common dso_local global i32 0, align 4
@GFP_ATOMIC = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@EBITMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_cpy(%struct.ebitmap* %0, %struct.ebitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap_node*, align 8
  %7 = alloca %struct.ebitmap_node*, align 8
  %8 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store %struct.ebitmap* %1, %struct.ebitmap** %5, align 8
  %9 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %10 = call i32 @ebitmap_init(%struct.ebitmap* %9)
  %11 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %12 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %11, i32 0, i32 1
  %13 = load %struct.ebitmap_node*, %struct.ebitmap_node** %12, align 8
  store %struct.ebitmap_node* %13, %struct.ebitmap_node** %6, align 8
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %8, align 8
  br label %14

14:                                               ; preds = %55, %2
  %15 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %16 = icmp ne %struct.ebitmap_node* %15, null
  br i1 %16, label %17, label %60

17:                                               ; preds = %14
  %18 = load i32, i32* @ebitmap_node_cachep, align 4
  %19 = load i32, i32* @GFP_ATOMIC, align 4
  %20 = call %struct.ebitmap_node* @kmem_cache_zalloc(i32 %18, i32 %19)
  store %struct.ebitmap_node* %20, %struct.ebitmap_node** %7, align 8
  %21 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %22 = icmp ne %struct.ebitmap_node* %21, null
  br i1 %22, label %28, label %23

23:                                               ; preds = %17
  %24 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %25 = call i32 @ebitmap_destroy(%struct.ebitmap* %24)
  %26 = load i32, i32* @ENOMEM, align 4
  %27 = sub nsw i32 0, %26
  store i32 %27, i32* %3, align 4
  br label %66

28:                                               ; preds = %17
  %29 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %30 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %29, i32 0, i32 2
  %31 = load i32, i32* %30, align 4
  %32 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %33 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %32, i32 0, i32 2
  store i32 %31, i32* %33, align 4
  %34 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %35 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %34, i32 0, i32 1
  %36 = load i32, i32* %35, align 8
  %37 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %38 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %37, i32 0, i32 1
  %39 = load i32, i32* %38, align 8
  %40 = load i32, i32* @EBITMAP_SIZE, align 4
  %41 = sdiv i32 %40, 8
  %42 = call i32 @memcpy(i32 %36, i32 %39, i32 %41)
  %43 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %44 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %43, i32 0, i32 0
  store %struct.ebitmap_node* null, %struct.ebitmap_node** %44, align 8
  %45 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %46 = icmp ne %struct.ebitmap_node* %45, null
  br i1 %46, label %47, label %51

47:                                               ; preds = %28
  %48 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %49 = load %struct.ebitmap_node*, %struct.ebitmap_node** %8, align 8
  %50 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %49, i32 0, i32 0
  store %struct.ebitmap_node* %48, %struct.ebitmap_node** %50, align 8
  br label %55

51:                                               ; preds = %28
  %52 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %53 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %54 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %53, i32 0, i32 1
  store %struct.ebitmap_node* %52, %struct.ebitmap_node** %54, align 8
  br label %55

55:                                               ; preds = %51, %47
  %56 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  store %struct.ebitmap_node* %56, %struct.ebitmap_node** %8, align 8
  %57 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %58 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %57, i32 0, i32 0
  %59 = load %struct.ebitmap_node*, %struct.ebitmap_node** %58, align 8
  store %struct.ebitmap_node* %59, %struct.ebitmap_node** %6, align 8
  br label %14

60:                                               ; preds = %14
  %61 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %62 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %61, i32 0, i32 0
  %63 = load i32, i32* %62, align 8
  %64 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %65 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %64, i32 0, i32 0
  store i32 %63, i32* %65, align 8
  store i32 0, i32* %3, align 4
  br label %66

66:                                               ; preds = %60, %23
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @ebitmap_init(%struct.ebitmap*) #1

declare dso_local %struct.ebitmap_node* @kmem_cache_zalloc(i32, i32) #1

declare dso_local i32 @ebitmap_destroy(%struct.ebitmap*) #1

declare dso_local i32 @memcpy(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
