; ModuleID = '/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_find.c'
source_filename = "/home/carl/AnghaBench/linux/fs/overlayfs/extr_readdir.c_ovl_cache_entry_find.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.ovl_cache_entry = type { i32, %struct.TYPE_2__, i32 }
%struct.TYPE_2__ = type { %struct.rb_node*, %struct.rb_node* }
%struct.rb_node = type { i32 }
%struct.rb_root = type { %struct.rb_node* }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.ovl_cache_entry* (%struct.rb_root*, i8*, i32)* @ovl_cache_entry_find to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.ovl_cache_entry* @ovl_cache_entry_find(%struct.rb_root* %0, i8* %1, i32 %2) #0 {
  %4 = alloca %struct.ovl_cache_entry*, align 8
  %5 = alloca %struct.rb_root*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_node*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.ovl_cache_entry*, align 8
  store %struct.rb_root* %0, %struct.rb_root** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.rb_root*, %struct.rb_root** %5, align 8
  %12 = getelementptr inbounds %struct.rb_root, %struct.rb_root* %11, i32 0, i32 0
  %13 = load %struct.rb_node*, %struct.rb_node** %12, align 8
  store %struct.rb_node* %13, %struct.rb_node** %8, align 8
  br label %14

14:                                               ; preds = %50, %3
  %15 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %16 = icmp ne %struct.rb_node* %15, null
  br i1 %16, label %17, label %51

17:                                               ; preds = %14
  %18 = load %struct.rb_node*, %struct.rb_node** %8, align 8
  %19 = call %struct.ovl_cache_entry* @ovl_cache_entry_from_node(%struct.rb_node* %18)
  store %struct.ovl_cache_entry* %19, %struct.ovl_cache_entry** %10, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %10, align 8
  %22 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %21, i32 0, i32 2
  %23 = load i32, i32* %22, align 8
  %24 = load i32, i32* %7, align 4
  %25 = call i32 @strncmp(i8* %20, i32 %23, i32 %24)
  store i32 %25, i32* %9, align 4
  %26 = load i32, i32* %9, align 4
  %27 = icmp sgt i32 %26, 0
  br i1 %27, label %28, label %33

28:                                               ; preds = %17
  %29 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %10, align 8
  %30 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %29, i32 0, i32 1
  %31 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %30, i32 0, i32 1
  %32 = load %struct.rb_node*, %struct.rb_node** %31, align 8
  store %struct.rb_node* %32, %struct.rb_node** %8, align 8
  br label %50

33:                                               ; preds = %17
  %34 = load i32, i32* %9, align 4
  %35 = icmp slt i32 %34, 0
  br i1 %35, label %42, label %36

36:                                               ; preds = %33
  %37 = load i32, i32* %7, align 4
  %38 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %10, align 8
  %39 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %38, i32 0, i32 0
  %40 = load i32, i32* %39, align 8
  %41 = icmp slt i32 %37, %40
  br i1 %41, label %42, label %47

42:                                               ; preds = %36, %33
  %43 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %10, align 8
  %44 = getelementptr inbounds %struct.ovl_cache_entry, %struct.ovl_cache_entry* %43, i32 0, i32 1
  %45 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %44, i32 0, i32 0
  %46 = load %struct.rb_node*, %struct.rb_node** %45, align 8
  store %struct.rb_node* %46, %struct.rb_node** %8, align 8
  br label %49

47:                                               ; preds = %36
  %48 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %10, align 8
  store %struct.ovl_cache_entry* %48, %struct.ovl_cache_entry** %4, align 8
  br label %52

49:                                               ; preds = %42
  br label %50

50:                                               ; preds = %49, %28
  br label %14

51:                                               ; preds = %14
  store %struct.ovl_cache_entry* null, %struct.ovl_cache_entry** %4, align 8
  br label %52

52:                                               ; preds = %51, %47
  %53 = load %struct.ovl_cache_entry*, %struct.ovl_cache_entry** %4, align 8
  ret %struct.ovl_cache_entry* %53
}

declare dso_local %struct.ovl_cache_entry* @ovl_cache_entry_from_node(%struct.rb_node*) #1

declare dso_local i32 @strncmp(i8*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
