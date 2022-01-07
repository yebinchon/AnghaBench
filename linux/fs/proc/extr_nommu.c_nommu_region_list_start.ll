; ModuleID = '/home/carl/AnghaBench/linux/fs/proc/extr_nommu.c_nommu_region_list_start.c'
source_filename = "/home/carl/AnghaBench/linux/fs/proc/extr_nommu.c_nommu_region_list_start.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.seq_file = type { i32 }
%struct.rb_node = type opaque

@nommu_region_sem = common dso_local global i32 0, align 4
@nommu_region_tree = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i8* (%struct.seq_file*, i32*)* @nommu_region_list_start to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i8* @nommu_region_list_start(%struct.seq_file* %0, i32* %1) #0 {
  %3 = alloca i8*, align 8
  %4 = alloca %struct.seq_file*, align 8
  %5 = alloca i32*, align 8
  %6 = alloca %struct.rb_node*, align 8
  %7 = alloca i32, align 4
  store %struct.seq_file* %0, %struct.seq_file** %4, align 8
  store i32* %1, i32** %5, align 8
  %8 = load i32*, i32** %5, align 8
  %9 = load i32, i32* %8, align 4
  store i32 %9, i32* %7, align 4
  %10 = call i32 @down_read(i32* @nommu_region_sem)
  %11 = call i8* @rb_first(i32* @nommu_region_tree)
  %12 = bitcast i8* %11 to %struct.rb_node*
  store %struct.rb_node* %12, %struct.rb_node** %6, align 8
  br label %13

13:                                               ; preds = %24, %2
  %14 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %15 = icmp ne %struct.rb_node* %14, null
  br i1 %15, label %16, label %29

16:                                               ; preds = %13
  %17 = load i32, i32* %7, align 4
  %18 = add nsw i32 %17, -1
  store i32 %18, i32* %7, align 4
  %19 = icmp eq i32 %17, 0
  br i1 %19, label %20, label %23

20:                                               ; preds = %16
  %21 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %22 = bitcast %struct.rb_node* %21 to i8*
  store i8* %22, i8** %3, align 8
  br label %30

23:                                               ; preds = %16
  br label %24

24:                                               ; preds = %23
  %25 = load %struct.rb_node*, %struct.rb_node** %6, align 8
  %26 = bitcast %struct.rb_node* %25 to i8*
  %27 = call i8* @rb_next(i8* %26)
  %28 = bitcast i8* %27 to %struct.rb_node*
  store %struct.rb_node* %28, %struct.rb_node** %6, align 8
  br label %13

29:                                               ; preds = %13
  store i8* null, i8** %3, align 8
  br label %30

30:                                               ; preds = %29, %20
  %31 = load i8*, i8** %3, align 8
  ret i8* %31
}

declare dso_local i32 @down_read(i32*) #1

declare dso_local i8* @rb_first(i32*) #1

declare dso_local i8* @rb_next(i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
