; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_add_rb.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_add_rb.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_readdir_data = type { i32, %struct.TYPE_2__*, i32 }
%struct.TYPE_2__ = type { %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.ovl_cache_entry = type { i32, i32 }

@ENOMEM = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.ovl_readdir_data*, i8*, i32, i32, i32)* @ovl_cache_entry_add_rb to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @ovl_cache_entry_add_rb(%struct.ovl_readdir_data* %0, i8* %1, i32 %2, i32 %3, i32 %4) #0 {
  %6 = alloca i32, align 4
  %7 = alloca %struct.ovl_readdir_data*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca i32, align 4
  %11 = alloca i32, align 4
  %12 = alloca %struct.rb_node**, align 8
  %13 = alloca %struct.rb_node*, align 8
  %14 = alloca %struct.ovl_cache_entry*, align 8
  store %struct.ovl_readdir_data* %0, %struct.ovl_readdir_data** %7, align 8
  store i8* %1, i8** %8, align 8
  store i32 %2, i32* %9, align 4
  store i32 %3, i32* %10, align 4
  store i32 %4, i32* %11, align 4
  %15 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %16 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %15, i32 0, i32 1
  %17 = load %struct.TYPE_2__*, %struct.TYPE_2__** %16, align 8
  %18 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %17, i32 0, i32 0
  store %struct.rb_node** %18, %struct.rb_node*** %12, align 8
  store %struct.rb_node* null, %struct.rb_node** %13, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call i64 @ovl_cache_entry_find_link(i8* %19, i32 %20, %struct.rb_node*** %12, %struct.rb_node** %13)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %24

23:                                               ; preds = %5
  store i32 0, i32* %6, align 4
  br label %58

24:                                               ; preds = %5
  %25 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %26 = load i8*, i8** %8, align 8
  %27 = load i32, i32* %9, align 4
  %28 = load i32, i32* %10, align 4
  %29 = load i32, i32* %11, align 4
  %30 = call %struct.ovl_cache_entry* @ovl_cache_entry_new(%struct.ovl_readdir_data* %25, i8* %26, i32 %27, i32 %28, i32 %29)
  store %struct.ovl_cache_entry* %30, %struct.ovl_cache_entry** %14, align 8
  %31 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %14, align 8
  %32 = icmp eq %struct.ovl_cache_entry* %31, null
  br i1 %32, label %33, label %40

33:                                               ; preds = %24
  %34 = load i32, i32* @ENOMEM, align 4
  %35 = sub nsw i32 0, %34
  %36 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %37 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %36, i32 0, i32 0
  store i32 %35, i32* %37, align 8
  %38 = load i32, i32* @ENOMEM, align 4
  %39 = sub nsw i32 0, %38
  store i32 %39, i32* %6, align 4
  br label %58

40:                                               ; preds = %24
  %41 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %14, align 8
  %42 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %41, i32 0, i32 1
  %43 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %44 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %43, i32 0, i32 2
  %45 = load i32, i32* %44, align 8
  %46 = call i32 @list_add_tail(i32* %42, i32 %45)
  %47 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %14, align 8
  %48 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %47, i32 0, i32 0
  %49 = load %struct.rb_node*, %struct.rb_node** %13, align 8
  %50 = load %struct.rb_node**, %struct.rb_node*** %12, align 8
  %51 = call i32 @rb_link_node(i32* %48, %struct.rb_node* %49, %struct.rb_node** %50)
  %52 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %14, align 8
  %53 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %52, i32 0, i32 0
  %54 = load %struct.ovl_readdir_data*, %struct.ovl_readdir_data** %7, align 8
  %55 = getelementptr inbounds %struct.ovl_readdir_data, %struct.ovl_readdir_data* %54, i32 0, i32 1
  %56 = load %struct.TYPE_2__*, %struct.TYPE_2__** %55, align 8
  %57 = call i32 @rb_insert_color(i32* %53, %struct.TYPE_2__* %56)
  store i32 0, i32* %6, align 4
  br label %58

58:                                               ; preds = %40, %33, %23
  %59 = load i32, i32* %6, align 4
  ret i32 %59
}

declare dso_local i64 @ovl_cache_entry_find_link(i8*, i32, %struct.rb_node***, %struct.rb_node**) #1

declare dso_local %struct.ovl_cache_entry* @ovl_cache_entry_new(%struct.ovl_readdir_data*, i8*, i32, i32, i32) #1

declare dso_local i32 @list_add_tail(i32*, i32) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, %struct.TYPE_2__*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
