; ModuleID = '/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_register_va.c'
source_filename = "/home/carl/AnghaBench/linux/mm/extr_backing-dev.c_bdi_register_va.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.backing_dev_info = type { i32, i32, i64, %struct.TYPE_2__, %struct.device* }
%struct.TYPE_2__ = type { i32 }
%struct.device = type { i32 }
%struct.rb_node = type { i32 }

@bdi_class = common dso_local global i32 0, align 4
@WB_registered = common dso_local global i32 0, align 4
@bdi_lock = common dso_local global i32 0, align 4
@bdi_id_cursor = common dso_local global i64 0, align 8
@bdi_tree = common dso_local global i32 0, align 4
@bdi_list = common dso_local global i32 0, align 4

; Function Attrs: noinline nounwind optnone uwtable
define dso_local i32 @bdi_register_va(%struct.backing_dev_info* %0, i8* %1, i32 %2) #0 {
  %4 = alloca i32, align 4
  %5 = alloca %struct.backing_dev_info*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i32, align 4
  %8 = alloca %struct.device*, align 8
  %9 = alloca %struct.rb_node*, align 8
  %10 = alloca %struct.rb_node**, align 8
  store %struct.backing_dev_info* %0, %struct.backing_dev_info** %5, align 8
  store i8* %1, i8** %6, align 8
  store i32 %2, i32* %7, align 4
  %11 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %12 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %11, i32 0, i32 4
  %13 = load %struct.device*, %struct.device** %12, align 8
  %14 = icmp ne %struct.device* %13, null
  br i1 %14, label %15, label %16

15:                                               ; preds = %3
  store i32 0, i32* %4, align 4
  br label %67

16:                                               ; preds = %3
  %17 = load i32, i32* @bdi_class, align 4
  %18 = call i32 @MKDEV(i32 0, i32 0)
  %19 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %20 = load i8*, i8** %6, align 8
  %21 = load i32, i32* %7, align 4
  %22 = call %struct.device* @device_create_vargs(i32 %17, i32* null, i32 %18, %struct.backing_dev_info* %19, i8* %20, i32 %21)
  store %struct.device* %22, %struct.device** %8, align 8
  %23 = load %struct.device*, %struct.device** %8, align 8
  %24 = call i64 @IS_ERR(%struct.device* %23)
  %25 = icmp ne i64 %24, 0
  br i1 %25, label %26, label %29

26:                                               ; preds = %16
  %27 = load %struct.device*, %struct.device** %8, align 8
  %28 = call i32 @PTR_ERR(%struct.device* %27)
  store i32 %28, i32* %4, align 4
  br label %67

29:                                               ; preds = %16
  %30 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %31 = call i32 @cgwb_bdi_register(%struct.backing_dev_info* %30)
  %32 = load %struct.device*, %struct.device** %8, align 8
  %33 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %34 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %33, i32 0, i32 4
  store %struct.device* %32, %struct.device** %34, align 8
  %35 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %36 = load %struct.device*, %struct.device** %8, align 8
  %37 = call i32 @dev_name(%struct.device* %36)
  %38 = call i32 @bdi_debug_register(%struct.backing_dev_info* %35, i32 %37)
  %39 = load i32, i32* @WB_registered, align 4
  %40 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %41 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %40, i32 0, i32 3
  %42 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %41, i32 0, i32 0
  %43 = call i32 @set_bit(i32 %39, i32* %42)
  %44 = call i32 @spin_lock_bh(i32* @bdi_lock)
  %45 = load i64, i64* @bdi_id_cursor, align 8
  %46 = add nsw i64 %45, 1
  store i64 %46, i64* @bdi_id_cursor, align 8
  %47 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %48 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %47, i32 0, i32 2
  store i64 %46, i64* %48, align 8
  %49 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %50 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %49, i32 0, i32 2
  %51 = load i64, i64* %50, align 8
  %52 = call %struct.rb_node** @bdi_lookup_rb_node(i64 %51, %struct.rb_node** %9)
  store %struct.rb_node** %52, %struct.rb_node*** %10, align 8
  %53 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %54 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %53, i32 0, i32 1
  %55 = load %struct.rb_node*, %struct.rb_node** %9, align 8
  %56 = load %struct.rb_node**, %struct.rb_node*** %10, align 8
  %57 = call i32 @rb_link_node(i32* %54, %struct.rb_node* %55, %struct.rb_node** %56)
  %58 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %59 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %58, i32 0, i32 1
  %60 = call i32 @rb_insert_color(i32* %59, i32* @bdi_tree)
  %61 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %62 = getelementptr inbounds %struct.backing_dev_info, %struct.backing_dev_info* %61, i32 0, i32 0
  %63 = call i32 @list_add_tail_rcu(i32* %62, i32* @bdi_list)
  %64 = call i32 @spin_unlock_bh(i32* @bdi_lock)
  %65 = load %struct.backing_dev_info*, %struct.backing_dev_info** %5, align 8
  %66 = call i32 @trace_writeback_bdi_register(%struct.backing_dev_info* %65)
  store i32 0, i32* %4, align 4
  br label %67

67:                                               ; preds = %29, %26, %15
  %68 = load i32, i32* %4, align 4
  ret i32 %68
}

declare dso_local %struct.device* @device_create_vargs(i32, i32*, i32, %struct.backing_dev_info*, i8*, i32) #1

declare dso_local i32 @MKDEV(i32, i32) #1

declare dso_local i64 @IS_ERR(%struct.device*) #1

declare dso_local i32 @PTR_ERR(%struct.device*) #1

declare dso_local i32 @cgwb_bdi_register(%struct.backing_dev_info*) #1

declare dso_local i32 @bdi_debug_register(%struct.backing_dev_info*, i32) #1

declare dso_local i32 @dev_name(%struct.device*) #1

declare dso_local i32 @set_bit(i32, i32*) #1

declare dso_local i32 @spin_lock_bh(i32*) #1

declare dso_local %struct.rb_node** @bdi_lookup_rb_node(i64, %struct.rb_node**) #1

declare dso_local i32 @rb_link_node(i32*, %struct.rb_node*, %struct.rb_node**) #1

declare dso_local i32 @rb_insert_color(i32*, i32*) #1

declare dso_local i32 @list_add_tail_rcu(i32*, i32*) #1

declare dso_local i32 @spin_unlock_bh(i32*) #1

declare dso_local i32 @trace_writeback_bdi_register(%struct.backing_dev_info*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
