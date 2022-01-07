; ModuleID = '/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___lookup_rb_tree_fast.c'
source_filename = "/home/carl/AnghaBench/linux/fs/f2fs/extr_extent_cache.c___lookup_rb_tree_fast.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_entry = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.rb_entry* (%struct.rb_entry*, i32)* @__lookup_rb_tree_fast to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.rb_entry* @__lookup_rb_tree_fast(%struct.rb_entry* %0, i32 %1) #0 {
  %3 = alloca %struct.rb_entry*, align 8
  %4 = alloca %struct.rb_entry*, align 8
  %5 = alloca i32, align 4
  store %struct.rb_entry* %0, %struct.rb_entry** %4, align 8
  store i32 %1, i32* %5, align 4
  %6 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  %7 = icmp ne %struct.rb_entry* %6, null
  br i1 %7, label %8, label %27

8:                                                ; preds = %2
  %9 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  %10 = getelementptr inbounds %struct.rb_entry, %struct.rb_entry* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 4
  %12 = load i32, i32* %5, align 4
  %13 = icmp ule i32 %11, %12
  br i1 %13, label %14, label %26

14:                                               ; preds = %8
  %15 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  %16 = getelementptr inbounds %struct.rb_entry, %struct.rb_entry* %15, i32 0, i32 0
  %17 = load i32, i32* %16, align 4
  %18 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  %19 = getelementptr inbounds %struct.rb_entry, %struct.rb_entry* %18, i32 0, i32 1
  %20 = load i32, i32* %19, align 4
  %21 = add i32 %17, %20
  %22 = load i32, i32* %5, align 4
  %23 = icmp ugt i32 %21, %22
  br i1 %23, label %24, label %26

24:                                               ; preds = %14
  %25 = load %struct.rb_entry*, %struct.rb_entry** %4, align 8
  store %struct.rb_entry* %25, %struct.rb_entry** %3, align 8
  br label %28

26:                                               ; preds = %14, %8
  br label %27

27:                                               ; preds = %26, %2
  store %struct.rb_entry* null, %struct.rb_entry** %3, align 8
  br label %28

28:                                               ; preds = %27, %24
  %29 = load %struct.rb_entry*, %struct.rb_entry** %3, align 8
  ret %struct.rb_entry* %29
}

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
