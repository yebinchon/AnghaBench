; ModuleID = '/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c_rblist__add_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/perf/util/extr_rblist.c_rblist__add_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rblist = type { i32 (%struct.rb_node*, i8*)*, i32, %struct.TYPE_4__, %struct.rb_node* (%struct.rblist*, i8*)* }
%struct.rb_node = type { %struct.rb_node*, %struct.rb_node* }
%struct.TYPE_4__ = type { %struct.TYPE_3__ }
%struct.TYPE_3__ = type { %struct.rb_node* }

@EEXIST = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @rblist__add_node(%struct.rblist* %0, i8* %1) #0 {
  %3 = alloca i32, align 4
  %4 = alloca %struct.rblist*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.rb_node**, align 8
  %7 = alloca %struct.rb_node*, align 8
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  store %struct.rblist* %0, %struct.rblist** %4, align 8
  store i8* %1, i8** %5, align 8
  %11 = load %struct.rblist*, %struct.rblist** %4, align 8
  %12 = getelementptr inbounds %struct.rblist, %struct.rblist* %11, i32 0, i32 2
  %13 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %12, i32 0, i32 0
  %14 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %13, i32 0, i32 0
  store %struct.rb_node** %14, %struct.rb_node*** %6, align 8
  store %struct.rb_node* null, %struct.rb_node** %7, align 8
  store i32 1, i32* %9, align 4
  br label %15

15:                                               ; preds = %45, %2
  %16 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %17 = load %struct.rb_node*, %struct.rb_node** %16, align 8
  %18 = icmp ne %struct.rb_node* %17, null
  br i1 %18, label %19, label %46

19:                                               ; preds = %15
  %20 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %21 = load %struct.rb_node*, %struct.rb_node** %20, align 8
  store %struct.rb_node* %21, %struct.rb_node** %7, align 8
  %22 = load %struct.rblist*, %struct.rblist** %4, align 8
  %23 = getelementptr inbounds %struct.rblist, %struct.rblist* %22, i32 0, i32 0
  %24 = load i32 (%struct.rb_node*, i8*)*, i32 (%struct.rb_node*, i8*)** %23, align 8
  %25 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %26 = load i8*, i8** %5, align 8
  %27 = call i32 %24(%struct.rb_node* %25, i8* %26)
  store i32 %27, i32* %10, align 4
  %28 = load i32, i32* %10, align 4
  %29 = icmp sgt i32 %28, 0
  br i1 %29, label %30, label %34

30:                                               ; preds = %19
  %31 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %32 = load %struct.rb_node*, %struct.rb_node** %31, align 8
  %33 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %32, i32 0, i32 1
  store %struct.rb_node** %33, %struct.rb_node*** %6, align 8
  br label %45

34:                                               ; preds = %19
  %35 = load i32, i32* %10, align 4
  %36 = icmp slt i32 %35, 0
  br i1 %36, label %37, label %41

37:                                               ; preds = %34
  %38 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %39 = load %struct.rb_node*, %struct.rb_node** %38, align 8
  %40 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %39, i32 0, i32 0
  store %struct.rb_node** %40, %struct.rb_node*** %6, align 8
  store i32 0, i32* %9, align 4
  br label %44

41:                                               ; preds = %34
  %42 = load i32, i32* @EEXIST, align 4
  %43 = sub nsw i32 0, %42
  store i32 %43, i32* %3, align 4
  br label %72

44:                                               ; preds = %37
  br label %45

45:                                               ; preds = %44, %30
  br label %15

46:                                               ; preds = %15
  %47 = load %struct.rblist*, %struct.rblist** %4, align 8
  %48 = getelementptr inbounds %struct.rblist, %struct.rblist* %47, i32 0, i32 3
  %49 = load %struct.rb_node* (%struct.rblist*, i8*)*, %struct.rb_node* (%struct.rblist*, i8*)** %48, align 8
  %50 = load %struct.rblist*, %struct.rblist** %4, align 8
  %51 = load i8*, i8** %5, align 8
  %52 = call %struct.rb_node* %49(%struct.rblist* %50, i8* %51)
  store %struct.rb_node* %52, %struct.rb_node** %8, align 8
  %53 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %54 = icmp eq %struct.rb_node* %53, null
  br i1 %54, label %55, label %58

55:                                               ; preds = %46
  %56 = load i32, i32* @ENOMEM, align 4
  %57 = sub nsw i32 0, %56
  store i32 %57, i32* %3, align 4
  br label %72

58:                                               ; preds = %46
  %59 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %60 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %61 = load %struct.rb_node**, %struct.rb_node*** %6, align 8
  %62 = call i32 @rb_link_node(%struct.rb_node* %59, %struct.rb_node* %60, %struct.rb_node** %61)
  %63 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %64 = load %struct.rblist*, %struct.rblist** %4, align 8
  %65 = getelementptr inbounds %struct.rblist, %struct.rblist* %64, i32 0, i32 2
  %66 = load i32, i32* %9, align 4
  %67 = call i32 @rb_insert_color_cached(%struct.rb_node* %63, %struct.TYPE_4__* %65, i32 %66)
  %68 = load %struct.rblist*, %struct.rblist** %4, align 8
  %69 = getelementptr inbounds %struct.rblist, %struct.rblist* %68, i32 0, i32 1
  %70 = load i32, i32* %69, align 8
  %71 = add nsw i32 %70, 1
  store i32 %71, i32* %69, align 8
  store i32 0, i32* %3, align 4
  br label %72

72:                                               ; preds = %58, %55, %41
  %73 = load i32, i32* %3, align 4
  ret i32 %73
}

declare dso_local i32 @rb_link_node(%struct.rb_node*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color_cached(%struct.rb_node*, %struct.TYPE_4__*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
