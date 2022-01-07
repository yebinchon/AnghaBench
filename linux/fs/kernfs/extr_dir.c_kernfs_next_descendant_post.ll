; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_next_descendant_post.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_next_descendant_post.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { %struct.kernfs_node*, i32 }
%struct.rb_node = type { i32 }

@kernfs_mutex = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (%struct.kernfs_node*, %struct.kernfs_node*)* @kernfs_next_descendant_post to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @kernfs_next_descendant_post(%struct.kernfs_node* %0, %struct.kernfs_node* %1) #0 {
  %3 = alloca %struct.kernfs_node*, align 8
  %4 = alloca %struct.kernfs_node*, align 8
  %5 = alloca %struct.kernfs_node*, align 8
  %6 = alloca %struct.rb_node*, align 8
  store %struct.kernfs_node* %0, %struct.kernfs_node** %4, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %5, align 8
  %7 = call i32 @lockdep_assert_held(i32* @kernfs_mutex)
  %8 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %9 = icmp ne %struct.kernfs_node* %8, null
  br i1 %9, label %13, label %10

10:                                               ; preds = %2
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %12 = call %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* %11)
  store %struct.kernfs_node* %12, %struct.kernfs_node** %3, align 8
  br label %32

13:                                               ; preds = %2
  %14 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %5, align 8
  %16 = icmp eq %struct.kernfs_node* %14, %15
  br i1 %16, label %17, label %18

17:                                               ; preds = %13
  store %struct.kernfs_node* null, %struct.kernfs_node** %3, align 8
  br label %32

18:                                               ; preds = %13
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 1
  %21 = call %struct.rb_node* @rb_next(i32* %20)
  store %struct.rb_node* %21, %struct.rb_node** %6, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %23 = icmp ne %struct.rb_node* %22, null
  br i1 %23, label %24, label %28

24:                                               ; preds = %18
  %25 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %26 = call %struct.kernfs_node* @rb_to_kn(%struct.rb_node* %25)
  %27 = call %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node* %26)
  store %struct.kernfs_node* %27, %struct.kernfs_node** %3, align 8
  br label %32

28:                                               ; preds = %18
  %29 = load %struct.kernfs_node*, %struct.kernfs_node** %4, align 8
  %30 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %29, i32 0, i32 0
  %31 = load %struct.kernfs_node*, %struct.kernfs_node** %30, align 8
  store %struct.kernfs_node* %31, %struct.kernfs_node** %3, align 8
  br label %32

32:                                               ; preds = %28, %24, %17, %10
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %3, align 8
  ret %struct.kernfs_node* %33
}

declare dso_local i32 @lockdep_assert_held(i32*) #1

declare dso_local %struct.kernfs_node* @kernfs_leftmost_descendant(%struct.kernfs_node*) #1

declare dso_local %struct.rb_node* @rb_next(i32*) #1

declare dso_local %struct.kernfs_node* @rb_to_kn(%struct.rb_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
