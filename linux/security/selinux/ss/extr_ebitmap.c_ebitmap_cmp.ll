; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_cmp.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_cmp.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i64, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i64, %struct.ebitmap_node*, i32 }

@EBITMAP_SIZE = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_cmp(%struct.ebitmap* %0, %struct.ebitmap* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca %struct.ebitmap*, align 8
  %6 = alloca %struct.ebitmap_node*, align 8
  %7 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store %struct.ebitmap* %1, %struct.ebitmap** %5, align 8
  %8 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %9 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %12 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %15, label %16

15:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %66

16:                                               ; preds = %2
  %17 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %18 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %17, i32 0, i32 1
  %19 = load %struct.ebitmap_node*, %struct.ebitmap_node** %18, align 8
  store %struct.ebitmap_node* %19, %struct.ebitmap_node** %6, align 8
  %20 = load %struct.ebitmap*, %struct.ebitmap** %5, align 8
  %21 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %20, i32 0, i32 1
  %22 = load %struct.ebitmap_node*, %struct.ebitmap_node** %21, align 8
  store %struct.ebitmap_node* %22, %struct.ebitmap_node** %7, align 8
  br label %23

23:                                               ; preds = %51, %16
  %24 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %25 = icmp ne %struct.ebitmap_node* %24, null
  br i1 %25, label %26, label %49

26:                                               ; preds = %23
  %27 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %28 = icmp ne %struct.ebitmap_node* %27, null
  br i1 %28, label %29, label %49

29:                                               ; preds = %26
  %30 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %31 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %34 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %33, i32 0, i32 0
  %35 = load i64, i64* %34, align 8
  %36 = icmp eq i64 %32, %35
  br i1 %36, label %37, label %49

37:                                               ; preds = %29
  %38 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %39 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %38, i32 0, i32 2
  %40 = load i32, i32* %39, align 8
  %41 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %42 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %41, i32 0, i32 2
  %43 = load i32, i32* %42, align 8
  %44 = load i32, i32* @EBITMAP_SIZE, align 4
  %45 = sdiv i32 %44, 8
  %46 = call i32 @memcmp(i32 %40, i32 %43, i32 %45)
  %47 = icmp ne i32 %46, 0
  %48 = xor i1 %47, true
  br label %49

49:                                               ; preds = %37, %29, %26, %23
  %50 = phi i1 [ false, %29 ], [ false, %26 ], [ false, %23 ], [ %48, %37 ]
  br i1 %50, label %51, label %58

51:                                               ; preds = %49
  %52 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %53 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %52, i32 0, i32 1
  %54 = load %struct.ebitmap_node*, %struct.ebitmap_node** %53, align 8
  store %struct.ebitmap_node* %54, %struct.ebitmap_node** %6, align 8
  %55 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %56 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %55, i32 0, i32 1
  %57 = load %struct.ebitmap_node*, %struct.ebitmap_node** %56, align 8
  store %struct.ebitmap_node* %57, %struct.ebitmap_node** %7, align 8
  br label %23

58:                                               ; preds = %49
  %59 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %60 = icmp ne %struct.ebitmap_node* %59, null
  br i1 %60, label %64, label %61

61:                                               ; preds = %58
  %62 = load %struct.ebitmap_node*, %struct.ebitmap_node** %7, align 8
  %63 = icmp ne %struct.ebitmap_node* %62, null
  br i1 %63, label %64, label %65

64:                                               ; preds = %61, %58
  store i32 0, i32* %3, align 4
  br label %66

65:                                               ; preds = %61
  store i32 1, i32* %3, align 4
  br label %66

66:                                               ; preds = %65, %64, %15
  %67 = load i32, i32* %3, align 4
  ret i32 %67
}

declare dso_local i32 @memcmp(i32, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
