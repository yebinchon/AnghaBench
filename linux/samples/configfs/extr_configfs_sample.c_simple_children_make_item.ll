; ModuleID = '/home/carl/AnghaBench/linux/samples/configfs/extr_configfs_sample.c_simple_children_make_item.c'
source_filename = "/home/carl/AnghaBench/linux/samples/configfs/extr_configfs_sample.c_simple_children_make_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { i32 }
%struct.simple_child = type { %struct.config_item, i64 }

@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@simple_child_type = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @simple_children_make_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @simple_children_make_item(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.simple_child*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  %7 = load i32, i32* @GFP_KERNEL, align 4
  %8 = call %struct.simple_child* @kzalloc(i32 16, i32 %7)
  store %struct.simple_child* %8, %struct.simple_child** %6, align 8
  %9 = load %struct.simple_child*, %struct.simple_child** %6, align 8
  %10 = icmp ne %struct.simple_child* %9, null
  br i1 %10, label %15, label %11

11:                                               ; preds = %2
  %12 = load i32, i32* @ENOMEM, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_item* @ERR_PTR(i32 %13)
  store %struct.config_item* %14, %struct.config_item** %3, align 8
  br label %24

15:                                               ; preds = %2
  %16 = load %struct.simple_child*, %struct.simple_child** %6, align 8
  %17 = getelementptr inbounds %struct.simple_child, %struct.simple_child* %16, i32 0, i32 0
  %18 = load i8*, i8** %5, align 8
  %19 = call i32 @config_item_init_type_name(%struct.config_item* %17, i8* %18, i32* @simple_child_type)
  %20 = load %struct.simple_child*, %struct.simple_child** %6, align 8
  %21 = getelementptr inbounds %struct.simple_child, %struct.simple_child* %20, i32 0, i32 1
  store i64 0, i64* %21, align 8
  %22 = load %struct.simple_child*, %struct.simple_child** %6, align 8
  %23 = getelementptr inbounds %struct.simple_child, %struct.simple_child* %22, i32 0, i32 0
  store %struct.config_item* %23, %struct.config_item** %3, align 8
  br label %24

24:                                               ; preds = %15, %11
  %25 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %25
}

declare dso_local %struct.simple_child* @kzalloc(i32, i32) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
