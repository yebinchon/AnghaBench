; ModuleID = '/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_get_bit.c'
source_filename = "/home/carl/AnghaBench/linux/security/selinux/ss/extr_ebitmap.c_ebitmap_get_bit.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ebitmap = type { i64, %struct.ebitmap_node* }
%struct.ebitmap_node = type { i64, %struct.ebitmap_node* }

@EBITMAP_SIZE = common dso_local global i64 0, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @ebitmap_get_bit(%struct.ebitmap* %0, i64 %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.ebitmap*, align 8
  %5 = alloca i64, align 8
  %6 = alloca %struct.ebitmap_node*, align 8
  store %struct.ebitmap* %0, %struct.ebitmap** %4, align 8
  store i64 %1, i64* %5, align 8
  %7 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %8 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %7, i32 0, i32 0
  %9 = load i64, i64* %8, align 8
  %10 = load i64, i64* %5, align 8
  %11 = icmp ult i64 %9, %10
  br i1 %11, label %12, label %13

12:                                               ; preds = %2
  store i32 0, i32* %3, align 4
  br label %45

13:                                               ; preds = %2
  %14 = load %struct.ebitmap*, %struct.ebitmap** %4, align 8
  %15 = getelementptr inbounds %struct.ebitmap, %struct.ebitmap* %14, i32 0, i32 1
  %16 = load %struct.ebitmap_node*, %struct.ebitmap_node** %15, align 8
  store %struct.ebitmap_node* %16, %struct.ebitmap_node** %6, align 8
  br label %17

17:                                               ; preds = %40, %13
  %18 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %19 = icmp ne %struct.ebitmap_node* %18, null
  br i1 %19, label %20, label %26

20:                                               ; preds = %17
  %21 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %22 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %21, i32 0, i32 0
  %23 = load i64, i64* %22, align 8
  %24 = load i64, i64* %5, align 8
  %25 = icmp ule i64 %23, %24
  br label %26

26:                                               ; preds = %20, %17
  %27 = phi i1 [ false, %17 ], [ %25, %20 ]
  br i1 %27, label %28, label %44

28:                                               ; preds = %26
  %29 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %30 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %29, i32 0, i32 0
  %31 = load i64, i64* %30, align 8
  %32 = load i64, i64* @EBITMAP_SIZE, align 8
  %33 = add i64 %31, %32
  %34 = load i64, i64* %5, align 8
  %35 = icmp ugt i64 %33, %34
  br i1 %35, label %36, label %40

36:                                               ; preds = %28
  %37 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %38 = load i64, i64* %5, align 8
  %39 = call i32 @ebitmap_node_get_bit(%struct.ebitmap_node* %37, i64 %38)
  store i32 %39, i32* %3, align 4
  br label %45

40:                                               ; preds = %28
  %41 = load %struct.ebitmap_node*, %struct.ebitmap_node** %6, align 8
  %42 = getelementptr inbounds %struct.ebitmap_node, %struct.ebitmap_node* %41, i32 0, i32 1
  %43 = load %struct.ebitmap_node*, %struct.ebitmap_node** %42, align 8
  store %struct.ebitmap_node* %43, %struct.ebitmap_node** %6, align 8
  br label %17

44:                                               ; preds = %26
  store i32 0, i32* %3, align 4
  br label %45

45:                                               ; preds = %44, %36, %12
  %46 = load i32, i32* %3, align 4
  ret i32 %46
}

declare dso_local i32 @ebitmap_node_get_bit(%struct.ebitmap_node*, i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
