; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_destroy.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_avtab.c_avtab_destroy.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.avtab = type { i32, i64, %struct.avtab_node** }
%struct.avtab_node = type { %struct.TYPE_6__, %struct.TYPE_4__, %struct.avtab_node* }
%struct.TYPE_6__ = type { %struct.TYPE_5__ }
%struct.TYPE_5__ = type { %struct.avtab_node* }
%struct.TYPE_4__ = type { i32 }

@AVTAB_XPERMS = common dso_local global i32 0, align 4
@avtab_xperms_cachep = common dso_local global i32 0, align 4
@avtab_node_cachep = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @avtab_destroy(%struct.avtab* %0) #0 {
  %2 = alloca %struct.avtab*, align 8
  %3 = alloca i32, align 4
  %4 = alloca %struct.avtab_node*, align 8
  %5 = alloca %struct.avtab_node*, align 8
  store %struct.avtab* %0, %struct.avtab** %2, align 8
  %6 = load %struct.avtab*, %struct.avtab** %2, align 8
  %7 = icmp ne %struct.avtab* %6, null
  br i1 %7, label %9, label %8

8:                                                ; preds = %1
  br label %66

9:                                                ; preds = %1
  store i32 0, i32* %3, align 4
  br label %10

10:                                               ; preds = %52, %9
  %11 = load i32, i32* %3, align 4
  %12 = load %struct.avtab*, %struct.avtab** %2, align 8
  %13 = getelementptr inbounds %struct.avtab, %struct.avtab* %12, i32 0, i32 0
  %14 = load i32, i32* %13, align 8
  %15 = icmp slt i32 %11, %14
  br i1 %15, label %16, label %55

16:                                               ; preds = %10
  %17 = load %struct.avtab*, %struct.avtab** %2, align 8
  %18 = getelementptr inbounds %struct.avtab, %struct.avtab* %17, i32 0, i32 2
  %19 = load %struct.avtab_node**, %struct.avtab_node*** %18, align 8
  %20 = load i32, i32* %3, align 4
  %21 = sext i32 %20 to i64
  %22 = getelementptr inbounds %struct.avtab_node*, %struct.avtab_node** %19, i64 %21
  %23 = load %struct.avtab_node*, %struct.avtab_node** %22, align 8
  store %struct.avtab_node* %23, %struct.avtab_node** %4, align 8
  br label %24

24:                                               ; preds = %47, %16
  %25 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %26 = icmp ne %struct.avtab_node* %25, null
  br i1 %26, label %27, label %51

27:                                               ; preds = %24
  %28 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  store %struct.avtab_node* %28, %struct.avtab_node** %5, align 8
  %29 = load %struct.avtab_node*, %struct.avtab_node** %4, align 8
  %30 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %29, i32 0, i32 2
  %31 = load %struct.avtab_node*, %struct.avtab_node** %30, align 8
  store %struct.avtab_node* %31, %struct.avtab_node** %4, align 8
  %32 = load %struct.avtab_node*, %struct.avtab_node** %5, align 8
  %33 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %32, i32 0, i32 1
  %34 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %33, i32 0, i32 0
  %35 = load i32, i32* %34, align 8
  %36 = load i32, i32* @AVTAB_XPERMS, align 4
  %37 = and i32 %35, %36
  %38 = icmp ne i32 %37, 0
  br i1 %38, label %39, label %47

39:                                               ; preds = %27
  %40 = load i32, i32* @avtab_xperms_cachep, align 4
  %41 = load %struct.avtab_node*, %struct.avtab_node** %5, align 8
  %42 = getelementptr inbounds %struct.avtab_node, %struct.avtab_node* %41, i32 0, i32 0
  %43 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %42, i32 0, i32 0
  %44 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %43, i32 0, i32 0
  %45 = load %struct.avtab_node*, %struct.avtab_node** %44, align 8
  %46 = call i32 @kmem_cache_free(i32 %40, %struct.avtab_node* %45)
  br label %47

47:                                               ; preds = %39, %27
  %48 = load i32, i32* @avtab_node_cachep, align 4
  %49 = load %struct.avtab_node*, %struct.avtab_node** %5, align 8
  %50 = call i32 @kmem_cache_free(i32 %48, %struct.avtab_node* %49)
  br label %24

51:                                               ; preds = %24
  br label %52

52:                                               ; preds = %51
  %53 = load i32, i32* %3, align 4
  %54 = add nsw i32 %53, 1
  store i32 %54, i32* %3, align 4
  br label %10

55:                                               ; preds = %10
  %56 = load %struct.avtab*, %struct.avtab** %2, align 8
  %57 = getelementptr inbounds %struct.avtab, %struct.avtab* %56, i32 0, i32 2
  %58 = load %struct.avtab_node**, %struct.avtab_node*** %57, align 8
  %59 = call i32 @kvfree(%struct.avtab_node** %58)
  %60 = load %struct.avtab*, %struct.avtab** %2, align 8
  %61 = getelementptr inbounds %struct.avtab, %struct.avtab* %60, i32 0, i32 2
  store %struct.avtab_node** null, %struct.avtab_node*** %61, align 8
  %62 = load %struct.avtab*, %struct.avtab** %2, align 8
  %63 = getelementptr inbounds %struct.avtab, %struct.avtab* %62, i32 0, i32 0
  store i32 0, i32* %63, align 8
  %64 = load %struct.avtab*, %struct.avtab** %2, align 8
  %65 = getelementptr inbounds %struct.avtab, %struct.avtab* %64, i32 0, i32 1
  store i64 0, i64* %65, align 8
  br label %66

66:                                               ; preds = %55, %8
  ret void
}

declare dso_local i32 @kmem_cache_free(i32, %struct.avtab_node*) #1

declare dso_local i32 @kvfree(%struct.avtab_node**) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
