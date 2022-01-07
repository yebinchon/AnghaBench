; ModuleID = '/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....librbtree.c_rb_replace_node.c'
source_filename = "/home/carl/AnghaBench/linux/tools/lib/lockdep/extr_....librbtree.c_rb_replace_node.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.rb_node = type { i64, i64 }
%struct.rb_root = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @rb_replace_node(%struct.rb_node* %0, %struct.rb_node* %1, %struct.rb_root* %2) #0 {
  %4 = alloca %struct.rb_node*, align 8
  %5 = alloca %struct.rb_node*, align 8
  %6 = alloca %struct.rb_root*, align 8
  %7 = alloca %struct.rb_node*, align 8
  store %struct.rb_node* %0, %struct.rb_node** %4, align 8
  store %struct.rb_node* %1, %struct.rb_node** %5, align 8
  store %struct.rb_root* %2, %struct.rb_root** %6, align 8
  %8 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %9 = call %struct.rb_node* @rb_parent(%struct.rb_node* %8)
  store %struct.rb_node* %9, %struct.rb_node** %7, align 8
  %10 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %11 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %12 = bitcast %struct.rb_node* %10 to i8*
  %13 = bitcast %struct.rb_node* %11 to i8*
  call void @llvm.memcpy.p0i8.p0i8.i64(i8* align 8 %12, i8* align 8 %13, i64 16, i1 false)
  %14 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %15 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %14, i32 0, i32 1
  %16 = load i64, i64* %15, align 8
  %17 = icmp ne i64 %16, 0
  br i1 %17, label %18, label %24

18:                                               ; preds = %3
  %19 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %20 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %19, i32 0, i32 1
  %21 = load i64, i64* %20, align 8
  %22 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %23 = call i32 @rb_set_parent(i64 %21, %struct.rb_node* %22)
  br label %24

24:                                               ; preds = %18, %3
  %25 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %26 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %35

29:                                               ; preds = %24
  %30 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %31 = getelementptr inbounds %struct.rb_node, %struct.rb_node* %30, i32 0, i32 0
  %32 = load i64, i64* %31, align 8
  %33 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %34 = call i32 @rb_set_parent(i64 %32, %struct.rb_node* %33)
  br label %35

35:                                               ; preds = %29, %24
  %36 = load %struct.rb_node*, %struct.rb_node** %4, align 8
  %37 = load %struct.rb_node*, %struct.rb_node** %5, align 8
  %38 = load %struct.rb_node*, %struct.rb_node** %7, align 8
  %39 = load %struct.rb_root*, %struct.rb_root** %6, align 8
  %40 = call i32 @__rb_change_child(%struct.rb_node* %36, %struct.rb_node* %37, %struct.rb_node* %38, %struct.rb_root* %39)
  ret void
}

declare dso_local %struct.rb_node* @rb_parent(%struct.rb_node*) #1

; Function Attrs: argmemonly nounwind willreturn
declare void @llvm.memcpy.p0i8.p0i8.i64(i8* noalias nocapture writeonly, i8* noalias nocapture readonly, i64, i1 immarg) #2

declare dso_local i32 @rb_set_parent(i64, %struct.rb_node*) #1

declare dso_local i32 @__rb_change_child(%struct.rb_node*, %struct.rb_node*, %struct.rb_node*, %struct.rb_root*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #2 = { argmemonly nounwind willreturn }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
