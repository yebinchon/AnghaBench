; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_link_sibling.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_link_sibling.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.TYPE_7__*, %struct.TYPE_8__ }
%struct.TYPE_7__ = type { %struct.TYPE_6__ }
%struct.TYPE_6__ = type { i32, %struct.TYPE_9__ }
%struct.TYPE_9__ = type { %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.TYPE_8__ = type { %struct.rb_node*, %struct.rb_node* }

@EEXIST = common dso_local global i32 0, align 4
@KERNFS_DIR = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.kernfs_node*)* @kernfs_link_sibling to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @kernfs_link_sibling(%struct.kernfs_node* %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.rb_node**, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i32, align 4
  store %struct.kernfs_node* %0, %struct.kernfs_node** %3, align 8
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %9 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %8, i32 0, i32 0
  %10 = load %struct.TYPE_7__*, %struct.TYPE_7__** %9, align 8
  %11 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %10, i32 0, i32 0
  %12 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %11, i32 0, i32 1
  %13 = getelementptr inbounds %struct.TYPE_9__, %struct.TYPE_9__* %12, i32 0, i32 0
  store %struct.rb_node** %13, %struct.rb_node*** %4, align 8
  store %struct.rb_node* null, %struct.rb_node** %5, align 8
  br label %14

14:                                               ; preds = %44, %1
  %15 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %16 = load %struct.rb_node*, %struct.rb_node** %15, align 8
  %17 = icmp ne %struct.rb_node* %16, null
  br i1 %17, label %18, label %45

18:                                               ; preds = %14
  %19 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %21 = call %struct.kernfs_node* @rb_to_kn(%struct.rb_node* %20)
  store %struct.kernfs_node* %21, %struct.kernfs_node** %6, align 8
  %22 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %23 = load %struct.rb_node*, %struct.rb_node** %22, align 8
  store %struct.rb_node* %23, %struct.rb_node** %5, align 8
  %24 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %25 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %26 = call i32 @kernfs_sd_compare(%struct.kernfs_node* %24, %struct.kernfs_node* %25)
  store i32 %26, i32* %7, align 4
  %27 = load i32, i32* %7, align 4
  %28 = icmp slt i32 %27, 0
  br i1 %28, label %29, label %33

29:                                               ; preds = %18
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %31 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %30, i32 0, i32 1
  %32 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %31, i32 0, i32 1
  store %struct.rb_node** %32, %struct.rb_node*** %4, align 8
  br label %44

33:                                               ; preds = %18
  %34 = load i32, i32* %7, align 4
  %35 = icmp sgt i32 %34, 0
  br i1 %35, label %36, label %40

36:                                               ; preds = %33
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 1
  %39 = getelementptr inbounds %struct.TYPE_8__, %struct.TYPE_8__* %38, i32 0, i32 0
  store %struct.rb_node** %39, %struct.rb_node*** %4, align 8
  br label %43

40:                                               ; preds = %33
  %41 = load i32, i32* @EEXIST, align 4
  %42 = sub nsw i32 0, %41
  store i32 %42, i32* %2, align 4
  br label %72

43:                                               ; preds = %36
  br label %44

44:                                               ; preds = %43, %29
  br label %14

45:                                               ; preds = %14
  %46 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %47 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %46, i32 0, i32 1
  %48 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %49 = load %struct.rb_node**, %struct.rb_node*** %4, align 8
  %50 = call i32 @rb_link_node(%struct.TYPE_8__* %47, %struct.rb_node* %48, %struct.rb_node** %49)
  %51 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %52 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %51, i32 0, i32 1
  %53 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %54 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %53, i32 0, i32 0
  %55 = load %struct.TYPE_7__*, %struct.TYPE_7__** %54, align 8
  %56 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %55, i32 0, i32 0
  %57 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %56, i32 0, i32 1
  %58 = call i32 @rb_insert_color(%struct.TYPE_8__* %52, %struct.TYPE_9__* %57)
  %59 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %60 = call i64 @kernfs_type(%struct.kernfs_node* %59)
  %61 = load i64, i64* @KERNFS_DIR, align 8
  %62 = icmp eq i64 %60, %61
  br i1 %62, label %63, label %71

63:                                               ; preds = %45
  %64 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  %65 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %64, i32 0, i32 0
  %66 = load %struct.TYPE_7__*, %struct.TYPE_7__** %65, align 8
  %67 = getelementptr inbounds %struct.TYPE_7__, %struct.TYPE_7__* %66, i32 0, i32 0
  %68 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %67, i32 0, i32 0
  %69 = load i32, i32* %68, align 8
  %70 = add nsw i32 %69, 1
  store i32 %70, i32* %68, align 8
  br label %71

71:                                               ; preds = %63, %45
  store i32 0, i32* %2, align 4
  br label %72

72:                                               ; preds = %71, %40
  %73 = load i32, i32* %2, align 4
  ret i32 %73
}

declare dso_local %struct.kernfs_node* @rb_to_kn(%struct.rb_node*) #1

declare dso_local i32 @kernfs_sd_compare(%struct.kernfs_node*, %struct.kernfs_node*) #1

declare dso_local i32 @rb_link_node(%struct.TYPE_8__*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(%struct.TYPE_8__*, %struct.TYPE_9__*) #1

declare dso_local i64 @kernfs_type(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
