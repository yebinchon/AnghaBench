; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_find_link.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_find_link.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i32 }
%struct.ovl_cache_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.rb_node*, %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (i8*, i32, %struct.rb_node***, %struct.rb_node**)* @ovl_cache_entry_find_link to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_cache_entry_find_link(i8* %0, i32 %1, %struct.rb_node*** %2, %struct.rb_node** %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca i32, align 4
  %7 = alloca %struct.rb_node***, align 8
  %8 = alloca %struct.rb_node**, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.rb_node**, align 8
  %11 = alloca i32, align 4
  %12 = alloca %struct.ovl_cache_entry*, align 8
  store i8* %0, i8** %5, align 8
  store i32 %1, i32* %6, align 4
  store %struct.rb_node*** %2, %struct.rb_node**** %7, align 8
  store %struct.rb_node** %3, %struct.rb_node*** %8, align 8
  store i32 0, i32* %9, align 4
  %13 = load %struct.rb_node***, %struct.rb_node**** %7, align 8
  %14 = load %struct.rb_node**, %struct.rb_node*** %13, align 8
  store %struct.rb_node** %14, %struct.rb_node*** %10, align 8
  br label %15

15:                                               ; preds = %58, %4
  %16 = load i32, i32* %9, align 4
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %22, label %18

18:                                               ; preds = %15
  %19 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %20 = load %struct.rb_node*, %struct.rb_node** %19, align 8
  %21 = icmp ne %struct.rb_node* %20, null
  br label %22

22:                                               ; preds = %18, %15
  %23 = phi i1 [ false, %15 ], [ %21, %18 ]
  br i1 %23, label %24, label %59

24:                                               ; preds = %22
  %25 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %26 = load %struct.rb_node*, %struct.rb_node** %25, align 8
  %27 = load %struct.rb_node**, %struct.rb_node*** %8, align 8
  store %struct.rb_node* %26, %struct.rb_node** %27, align 8
  %28 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %29 = load %struct.rb_node*, %struct.rb_node** %28, align 8
  %30 = call %struct.ovl_cache_entry* @ovl_cache_entry_from_node(%struct.rb_node* %29)
  store %struct.ovl_cache_entry* %30, %struct.ovl_cache_entry** %12, align 8
  %31 = load i8*, i8** %5, align 8
  %32 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %12, align 8
  %33 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %32, i32 0, i32 2
  %34 = load i32, i32* %33, align 8
  %35 = load i32, i32* %6, align 4
  %36 = call i32 @strncmp(i8* %31, i32 %34, i32 %35)
  store i32 %36, i32* %11, align 4
  %37 = load i32, i32* %11, align 4
  %38 = icmp sgt i32 %37, 0
  br i1 %38, label %39, label %43

39:                                               ; preds = %24
  %40 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %12, align 8
  %41 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %40, i32 0, i32 1
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 1
  store %struct.rb_node** %42, %struct.rb_node*** %10, align 8
  br label %58

43:                                               ; preds = %24
  %44 = load i32, i32* %11, align 4
  %45 = icmp slt i32 %44, 0
  br i1 %45, label %52, label %46

46:                                               ; preds = %43
  %47 = load i32, i32* %6, align 4
  %48 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %12, align 8
  %49 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %48, i32 0, i32 0
  %50 = load i32, i32* %49, align 8
  %51 = icmp slt i32 %47, %50
  br i1 %51, label %52, label %56

52:                                               ; preds = %46, %43
  %53 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %12, align 8
  %54 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %53, i32 0, i32 1
  %55 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %54, i32 0, i32 0
  store %struct.rb_node** %55, %struct.rb_node*** %10, align 8
  br label %57

56:                                               ; preds = %46
  store i32 1, i32* %9, align 4
  br label %57

57:                                               ; preds = %56, %52
  br label %58

58:                                               ; preds = %57, %39
  br label %15

59:                                               ; preds = %22
  %60 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %61 = load %struct.rb_node***, %struct.rb_node**** %7, align 8
  store %struct.rb_node** %60, %struct.rb_node*** %61, align 8
  %62 = load i32, i32* %9, align 4
  ret i32 %62
}

declare dso_local %struct.ovl_cache_entry* @ovl_cache_entry_from_node(%struct.rb_node*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
