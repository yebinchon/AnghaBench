; ModuleID = '/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dir_next_pos.c'
source_filename = "/home/carl/AnghaBench/linux/fs/kernfs/extr_dir.c_kernfs_dir_next_pos.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.kernfs_node = type { i8*, i32 }
%struct.rb_node = type { i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.kernfs_node* (i8*, %struct.kernfs_node*, i32, %struct.kernfs_node*)* @kernfs_dir_next_pos to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.kernfs_node* @kernfs_dir_next_pos(i8* %0, %struct.kernfs_node* %1, i32 %2, %struct.kernfs_node* %3) #0 {
  %5 = alloca i8*, align 8
  %6 = alloca %struct.kernfs_node*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.kernfs_node*, align 8
  %9 = alloca %struct.rb_node*, align 8
  store i8* %0, i8** %5, align 8
  store %struct.kernfs_node* %1, %struct.kernfs_node** %6, align 8
  store i32 %2, i32* %7, align 4
  store %struct.kernfs_node* %3, %struct.kernfs_node** %8, align 8
  %10 = load i8*, i8** %5, align 8
  %11 = load %struct.kernfs_node*, %struct.kernfs_node** %6, align 8
  %12 = load i32, i32* %7, align 4
  %13 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %14 = call %struct.kernfs_node* @kernfs_dir_pos(i8* %10, %struct.kernfs_node* %11, i32 %12, %struct.kernfs_node* %13)
  store %struct.kernfs_node* %14, %struct.kernfs_node** %8, align 8
  %15 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %16 = icmp ne %struct.kernfs_node* %15, null
  br i1 %16, label %17, label %47

17:                                               ; preds = %4
  br label %18

18:                                               ; preds = %44, %17
  %19 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %20 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %19, i32 0, i32 1
  %21 = call %struct.rb_node* @rb_next(i32* %20)
  store %struct.rb_node* %21, %struct.rb_node** %9, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %23 = icmp ne %struct.rb_node* %22, null
  br i1 %23, label %25, label %24

24:                                               ; preds = %18
  store %struct.kernfs_node* null, %struct.kernfs_node** %8, align 8
  br label %28

25:                                               ; preds = %18
  %26 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %27 = call %struct.kernfs_node* @rb_to_kn(%struct.rb_node* %26)
  store %struct.kernfs_node* %27, %struct.kernfs_node** %8, align 8
  br label %28

28:                                               ; preds = %25, %24
  br label %29

29:                                               ; preds = %28
  %30 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %31 = icmp ne %struct.kernfs_node* %30, null
  br i1 %31, label %32, label %44

32:                                               ; preds = %29
  %33 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %34 = call i32 @kernfs_active(%struct.kernfs_node* %33)
  %35 = icmp ne i32 %34, 0
  br i1 %35, label %36, label %42

36:                                               ; preds = %32
  %37 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  %38 = getelementptr inbounds %struct.kernfs_node, %struct.kernfs_node* %37, i32 0, i32 0
  %39 = load i8*, i8** %38, align 8
  %40 = load i8*, i8** %5, align 8
  %41 = icmp ne i8* %39, %40
  br label %42

42:                                               ; preds = %36, %32
  %43 = phi i1 [ true, %32 ], [ %41, %36 ]
  br label %44

44:                                               ; preds = %42, %29
  %45 = phi i1 [ false, %29 ], [ %43, %42 ]
  br i1 %45, label %18, label %46

46:                                               ; preds = %44
  br label %47

47:                                               ; preds = %46, %4
  %48 = load %struct.kernfs_node*, %struct.kernfs_node** %8, align 8
  ret %struct.kernfs_node* %48
}

declare dso_local %struct.kernfs_node* @kernfs_dir_pos(i8*, %struct.kernfs_node*, i32, %struct.kernfs_node*) #1

declare dso_local %struct.rb_node* @rb_next(i32*) #1

declare dso_local %struct.kernfs_node* @rb_to_kn(%struct.rb_node*) #1

declare dso_local i32 @kernfs_active(%struct.kernfs_node*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
