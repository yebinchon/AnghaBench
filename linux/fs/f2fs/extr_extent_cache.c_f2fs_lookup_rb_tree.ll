; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_lookup_rb_tree.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c_f2fs_lookup_rb_tree.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_root_cached = type { i32 }
%struct.rb_entry = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local %struct.rb_entry* @f2fs_lookup_rb_tree(%struct.rb_root_cached* %0, %struct.rb_entry* %1, i32 %2) #0 {
  %4 = alloca %struct.rb_entry*, align 8
  %5 = alloca %struct.rb_root_cached*, align 8
  %6 = alloca %struct.rb_entry*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.rb_entry*, align 8
  store %struct.rb_root_cached* %0, %struct.rb_root_cached** %5, align 8
  store %struct.rb_entry* %1, %struct.rb_entry** %6, align 8
  store i32 %2, i32* %7, align 4
  %9 = load %struct.rb_entry*, %struct.rb_entry** %6, align 8
  %10 = load i32, i32* %7, align 4
  %11 = call %struct.rb_entry* @__lookup_rb_tree_fast(%struct.rb_entry* %9, i32 %10)
  store %struct.rb_entry* %11, %struct.rb_entry** %8, align 8
  %12 = load %struct.rb_entry*, %struct.rb_entry** %8, align 8
  %13 = icmp ne %struct.rb_entry* %12, null
  br i1 %13, label %18, label %14

14:                                               ; preds = %3
  %15 = load %struct.rb_root_cached*, %struct.rb_root_cached** %5, align 8
  %16 = load i32, i32* %7, align 4
  %17 = call %struct.rb_entry* @__lookup_rb_tree_slow(%struct.rb_root_cached* %15, i32 %16)
  store %struct.rb_entry* %17, %struct.rb_entry** %4, align 8
  br label %20

18:                                               ; preds = %3
  %19 = load %struct.rb_entry*, %struct.rb_entry** %8, align 8
  store %struct.rb_entry* %19, %struct.rb_entry** %4, align 8
  br label %20

20:                                               ; preds = %18, %14
  %21 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  ret %struct.rb_entry* %21
}

declare dso_local %struct.rb_entry* @__lookup_rb_tree_fast(%struct.rb_entry*, i32) #1

declare dso_local %struct.rb_entry* @__lookup_rb_tree_slow(%struct.rb_root_cached*, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
