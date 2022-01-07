; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c___rblist__findnew.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c___rblist__findnew.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.rblist = type { i32 (%struct.rb_node*, i8*)*, i32, %struct.TYPE_4__, %struct.rb_node* (%struct.rblist*, i8*)* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rb_node* (%struct.rblist*, i8*, i32)* @__rblist__findnew to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rb_node* @__rblist__findnew(%struct.rblist* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rblist*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_node**, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node*, align 8
  %11 = alloca i32, align 4
  %12 = alloca i32, align 4
  store %struct.rblist* %0, %struct.rblist** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %13 = load %struct.rblist*, %struct.rblist** %5, align 8
  %14 = getelementptr inbounds %struct.rblist, %struct.rblist* %13, i32 0, i32 2
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 0
  %16 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %15, i32 0, i32 0
  store %struct.rb_node** %16, %struct.rb_node*** %8, align 8
  store %struct.rb_node* null, %struct.rb_node** %9, align 8
  store %struct.rb_node* null, %struct.rb_node** %10, align 8
  store i32 1, i32* %11, align 4
  br label %17

17:                                               ; preds = %46, %3
  %18 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %19 = load %struct.rb_node*, %struct.rb_node** %18, align 8
  %20 = icmp ne %struct.rb_node* %19, null
  br i1 %20, label %21, label %47

21:                                               ; preds = %17
  %22 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %22, align 8
  store %struct.rb_node* %23, %struct.rb_node** %9, align 8
  %24 = load %struct.rblist*, %struct.rblist** %5, align 8
  %25 = getelementptr inbounds %struct.rblist, %struct.rblist* %24, i32 0, i32 0
  %26 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %25, align 8
  %27 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %28 = load i8*, i8** %6, align 8
  %29 = call i32 %26(%struct.rb_node* %27, i8* %28)
  store i32 %29, i32* %12, align 4
  %30 = load i32, i32* %12, align 4
  %31 = icmp sgt i32 %30, 0
  br i1 %31, label %32, label %36

32:                                               ; preds = %21
  %33 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %34 = load %struct.rb_node*, %struct.rb_node** %33, align 8
  %35 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %34, i32 0, i32 1
  store %struct.rb_node** %35, %struct.rb_node*** %8, align 8
  br label %46

36:                                               ; preds = %21
  %37 = load i32, i32* %12, align 4
  %38 = icmp slt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %36
  %40 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %41 = load %struct.rb_node*, %struct.rb_node** %40, align 8
  %42 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %41, i32 0, i32 0
  store %struct.rb_node** %42, %struct.rb_node*** %8, align 8
  store i32 0, i32* %11, align 4
  br label %45

43:                                               ; preds = %36
  %44 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  store %struct.rb_node* %44, %struct.rb_node** %4, align 8
  br label %76

45:                                               ; preds = %39
  br label %46

46:                                               ; preds = %45, %32
  br label %17

47:                                               ; preds = %17
  %48 = load i32, i32* %7, align 4
  %49 = icmp ne i32 %48, 0
  br i1 %49, label %50, label %74

50:                                               ; preds = %47
  %51 = load %struct.rblist*, %struct.rblist** %5, align 8
  %52 = getelementptr inbounds %struct.rblist, %struct.rblist* %51, i32 0, i32 3
  %53 = load %struct.rb_node* (%struct.rblist*, i8*)*, %struct.rb_node* (%struct.rblist*, i8*)** %52, align 8
  %54 = load %struct.rblist*, %struct.rblist** %5, align 8
  %55 = load i8*, i8** %6, align 8
  %56 = call %struct.rb_node* %53(%struct.rblist* %54, i8* %55)
  store %struct.rb_node* %56, %struct.rb_node** %10, align 8
  %57 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %58 = icmp ne %struct.rb_node* %57, null
  br i1 %58, label %59, label %73

59:                                               ; preds = %50
  %60 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %61 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %62 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  %63 = call i32 @rb_link_node(%struct.rb_node* %60, %struct.rb_node* %61, %struct.rb_node** %62)
  %64 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  %65 = load %struct.rblist*, %struct.rblist** %5, align 8
  %66 = getelementptr inbounds %struct.rblist, %struct.rblist* %65, i32 0, i32 2
  %67 = load i32, i32* %11, align 4
  %68 = call i32 @rb_insert_color_cached(%struct.rb_node* %64, %struct.TYPE_4__* %66, i32 %67)
  %69 = load %struct.rblist*, %struct.rblist** %5, align 8
  %70 = getelementptr inbounds %struct.rblist, %struct.rblist* %69, i32 0, i32 1
  %71 = load i32, i32* %70, align 8
  %72 = add nsw i32 %71, 1
  store i32 %72, i32* %70, align 8
  br label %73

73:                                               ; preds = %59, %50
  br label %74

74:                                               ; preds = %73, %47
  %75 = load %struct.rb_node*, %struct.rb_node** %10, align 8
  store %struct.rb_node* %75, %struct.rb_node** %4, align 8
  br label %76

76:                                               ; preds = %74, %43
  %77 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  ret %struct.rb_node* %77
}

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(%struct.rb_node*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
