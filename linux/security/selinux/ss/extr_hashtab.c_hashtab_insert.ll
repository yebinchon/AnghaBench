; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_hashtab.c_hashtab_insert.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_hashtab.c_hashtab_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.hashtab = type { i64, i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)*, %struct.hashtab_node** }
%struct.hashtab_node = type { %struct.hashtab_node*, i8*, i8* }

@HASHTAB_MAX_NODES = common dso_local global i64 0, align 8
@EINVAL = common dso_local global i32 0, align 4
@EEXIST = common dso_local global i32 0, align 4
@hashtab_node_cachep = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @hashtab_insert(%struct.hashtab* %0, i8* %1, i8* %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.hashtab*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i8*, align 8
  %8 = alloca i64, align 8
  %9 = alloca %struct.hashtab_node*, align 8
  %10 = alloca %struct.hashtab_node*, align 8
  %11 = alloca %struct.hashtab_node*, align 8
  store %struct.hashtab* %0, %struct.hashtab** %5, align 8
  store i8* %1, i8** %6, align 8
  store i8* %2, i8** %7, align 8
  %12 = call i32 (...) @cond_resched()
  %13 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %14 = icmp ne %struct.hashtab* %13, null
  br i1 %14, label %15, label %21

15:                                               ; preds = %3
  %16 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %17 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %16, i32 0, i32 0
  %18 = load i64, i64* %17, align 8
  %19 = load i64, i64* @HASHTAB_MAX_NODES, align 8
  %20 = icmp eq i64 %18, %19
  br i1 %20, label %21, label %24

21:                                               ; preds = %15, %3
  %22 = load i32, i32* @EINVAL, align 4
  %23 = sub nsw i32 0, %22
  store i32 %23, i32* %4, align 4
  br label %122

24:                                               ; preds = %15
  %25 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %26 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %25, i32 0, i32 1
  %27 = load i64 (%struct.hashtab*, i8*)*, i64 (%struct.hashtab*, i8*)** %26, align 8
  %28 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %29 = load i8*, i8** %6, align 8
  %30 = call i64 %27(%struct.hashtab* %28, i8* %29)
  store i64 %30, i64* %8, align 8
  store %struct.hashtab_node* null, %struct.hashtab_node** %9, align 8
  %31 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %32 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %31, i32 0, i32 3
  %33 = load %struct.hashtab_node**, %struct.hashtab_node*** %32, align 8
  %34 = load i64, i64* %8, align 8
  %35 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %33, i64 %34
  %36 = load %struct.hashtab_node*, %struct.hashtab_node** %35, align 8
  store %struct.hashtab_node* %36, %struct.hashtab_node** %10, align 8
  br label %37

37:                                               ; preds = %53, %24
  %38 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %39 = icmp ne %struct.hashtab_node* %38, null
  br i1 %39, label %40, label %51

40:                                               ; preds = %37
  %41 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %42 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %41, i32 0, i32 2
  %43 = load i64 (%struct.hashtab*, i8*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)** %42, align 8
  %44 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %45 = load i8*, i8** %6, align 8
  %46 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %47 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %46, i32 0, i32 2
  %48 = load i8*, i8** %47, align 8
  %49 = call i64 %43(%struct.hashtab* %44, i8* %45, i8* %48)
  %50 = icmp sgt i64 %49, 0
  br label %51

51:                                               ; preds = %40, %37
  %52 = phi i1 [ false, %37 ], [ %50, %40 ]
  br i1 %52, label %53, label %58

53:                                               ; preds = %51
  %54 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  store %struct.hashtab_node* %54, %struct.hashtab_node** %9, align 8
  %55 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %56 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %55, i32 0, i32 0
  %57 = load %struct.hashtab_node*, %struct.hashtab_node** %56, align 8
  store %struct.hashtab_node* %57, %struct.hashtab_node** %10, align 8
  br label %37

58:                                               ; preds = %51
  %59 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %60 = icmp ne %struct.hashtab_node* %59, null
  br i1 %60, label %61, label %75

61:                                               ; preds = %58
  %62 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %63 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %62, i32 0, i32 2
  %64 = load i64 (%struct.hashtab*, i8*, i8*)*, i64 (%struct.hashtab*, i8*, i8*)** %63, align 8
  %65 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %66 = load i8*, i8** %6, align 8
  %67 = load %struct.hashtab_node*, %struct.hashtab_node** %10, align 8
  %68 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %67, i32 0, i32 2
  %69 = load i8*, i8** %68, align 8
  %70 = call i64 %64(%struct.hashtab* %65, i8* %66, i8* %69)
  %71 = icmp eq i64 %70, 0
  br i1 %71, label %72, label %75

72:                                               ; preds = %61
  %73 = load i32, i32* @EEXIST, align 4
  %74 = sub nsw i32 0, %73
  store i32 %74, i32* %4, align 4
  br label %122

75:                                               ; preds = %61, %58
  %76 = load i32, i32* @hashtab_node_cachep, align 4
  %77 = load i32, i32* @GFP_KERNEL, align 4
  %78 = call %struct.hashtab_node* @kmem_cache_zalloc(i32 %76, i32 %77)
  store %struct.hashtab_node* %78, %struct.hashtab_node** %11, align 8
  %79 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %80 = icmp ne %struct.hashtab_node* %79, null
  br i1 %80, label %84, label %81

81:                                               ; preds = %75
  %82 = load i32, i32* @ENOMEM, align 4
  %83 = sub nsw i32 0, %82
  store i32 %83, i32* %4, align 4
  br label %122

84:                                               ; preds = %75
  %85 = load i8*, i8** %6, align 8
  %86 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %87 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %86, i32 0, i32 2
  store i8* %85, i8** %87, align 8
  %88 = load i8*, i8** %7, align 8
  %89 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %90 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %89, i32 0, i32 1
  store i8* %88, i8** %90, align 8
  %91 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %92 = icmp ne %struct.hashtab_node* %91, null
  br i1 %92, label %93, label %102

93:                                               ; preds = %84
  %94 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %95 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %94, i32 0, i32 0
  %96 = load %struct.hashtab_node*, %struct.hashtab_node** %95, align 8
  %97 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %98 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %97, i32 0, i32 0
  store %struct.hashtab_node* %96, %struct.hashtab_node** %98, align 8
  %99 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %100 = load %struct.hashtab_node*, %struct.hashtab_node** %9, align 8
  %101 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %100, i32 0, i32 0
  store %struct.hashtab_node* %99, %struct.hashtab_node** %101, align 8
  br label %117

102:                                              ; preds = %84
  %103 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %104 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %103, i32 0, i32 3
  %105 = load %struct.hashtab_node**, %struct.hashtab_node*** %104, align 8
  %106 = load i64, i64* %8, align 8
  %107 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %105, i64 %106
  %108 = load %struct.hashtab_node*, %struct.hashtab_node** %107, align 8
  %109 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %110 = getelementptr inbounds %struct.hashtab_node, %struct.hashtab_node* %109, i32 0, i32 0
  store %struct.hashtab_node* %108, %struct.hashtab_node** %110, align 8
  %111 = load %struct.hashtab_node*, %struct.hashtab_node** %11, align 8
  %112 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %113 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %112, i32 0, i32 3
  %114 = load %struct.hashtab_node**, %struct.hashtab_node*** %113, align 8
  %115 = load i64, i64* %8, align 8
  %116 = getelementptr inbounds %struct.hashtab_node*, %struct.hashtab_node** %114, i64 %115
  store %struct.hashtab_node* %111, %struct.hashtab_node** %116, align 8
  br label %117

117:                                              ; preds = %102, %93
  %118 = load %struct.hashtab*, %struct.hashtab** %5, align 8
  %119 = getelementptr inbounds %struct.hashtab, %struct.hashtab* %118, i32 0, i32 0
  %120 = load i64, i64* %119, align 8
  %121 = add nsw i64 %120, 1
  store i64 %121, i64* %119, align 8
  store i32 0, i32* %4, align 4
  br label %122

122:                                              ; preds = %117, %81, %72, %21
  %123 = load i32, i32* %4, align 4
  ret i32 %123
}

declare dso_local i32 @cond_resched(...) #1

declare dso_local %struct.hashtab_node* @kmem_cache_zalloc(i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
