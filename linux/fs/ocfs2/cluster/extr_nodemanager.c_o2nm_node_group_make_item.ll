; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_make_item.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_group_make_item.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.config_group = type { i32 }
%struct.o2nm_node = type { %struct.config_item, i32, i32 }

@O2NM_MAX_NAME_LEN = common dso_local global i64 0, align 8
@ENAMETOOLONG = common dso_local global i32 0, align 4
@GFP_KERNEL = common dso_local global i32 0, align 4
@ENOMEM = common dso_local global i32 0, align 4
@o2nm_node_type = common dso_local global i32 0, align 4
@ML_CLUSTER = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [27 x i8] c"o2nm: Registering node %s\0A\00", align 1
@llvm.used = appending global [1 x i8*] [i8* bitcast (%struct.config_item* (%struct.config_group*, i8*)* @o2nm_node_group_make_item to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal %struct.config_item* @o2nm_node_group_make_item(%struct.config_group* %0, i8* %1) #0 {
  %3 = alloca %struct.config_item*, align 8
  %4 = alloca %struct.config_group*, align 8
  %5 = alloca i8*, align 8
  %6 = alloca %struct.o2nm_node*, align 8
  store %struct.config_group* %0, %struct.config_group** %4, align 8
  store i8* %1, i8** %5, align 8
  store %struct.o2nm_node* null, %struct.o2nm_node** %6, align 8
  %7 = load i8*, i8** %5, align 8
  %8 = call i64 @strlen(i8* %7)
  %9 = load i64, i64* @O2NM_MAX_NAME_LEN, align 8
  %10 = icmp sgt i64 %8, %9
  br i1 %10, label %11, label %15

11:                                               ; preds = %2
  %12 = load i32, i32* @ENAMETOOLONG, align 4
  %13 = sub nsw i32 0, %12
  %14 = call %struct.config_item* @ERR_PTR(i32 %13)
  store %struct.config_item* %14, %struct.config_item** %3, align 8
  br label %42

15:                                               ; preds = %2
  %16 = load i32, i32* @GFP_KERNEL, align 4
  %17 = call %struct.o2nm_node* @kzalloc(i32 12, i32 %16)
  store %struct.o2nm_node* %17, %struct.o2nm_node** %6, align 8
  %18 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %19 = icmp eq %struct.o2nm_node* %18, null
  br i1 %19, label %20, label %24

20:                                               ; preds = %15
  %21 = load i32, i32* @ENOMEM, align 4
  %22 = sub nsw i32 0, %21
  %23 = call %struct.config_item* @ERR_PTR(i32 %22)
  store %struct.config_item* %23, %struct.config_item** %3, align 8
  br label %42

24:                                               ; preds = %15
  %25 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %26 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %25, i32 0, i32 2
  %27 = load i32, i32* %26, align 4
  %28 = load i8*, i8** %5, align 8
  %29 = call i32 @strcpy(i32 %27, i8* %28)
  %30 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %31 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %30, i32 0, i32 0
  %32 = load i8*, i8** %5, align 8
  %33 = call i32 @config_item_init_type_name(%struct.config_item* %31, i8* %32, i32* @o2nm_node_type)
  %34 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %35 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %34, i32 0, i32 1
  %36 = call i32 @spin_lock_init(i32* %35)
  %37 = load i32, i32* @ML_CLUSTER, align 4
  %38 = load i8*, i8** %5, align 8
  %39 = call i32 @mlog(i32 %37, i8* getelementptr inbounds ([27 x i8], [27 x i8]* @.str, i64 0, i64 0), i8* %38)
  %40 = load %struct.o2nm_node*, %struct.o2nm_node** %6, align 8
  %41 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %40, i32 0, i32 0
  store %struct.config_item* %41, %struct.config_item** %3, align 8
  br label %42

42:                                               ; preds = %24, %20, %11
  %43 = load %struct.config_item*, %struct.config_item** %3, align 8
  ret %struct.config_item* %43
}

declare dso_local i64 @strlen(i8*) #1

declare dso_local %struct.config_item* @ERR_PTR(i32) #1

declare dso_local %struct.o2nm_node* @kzalloc(i32, i32) #1

declare dso_local i32 @strcpy(i32, i8*) #1

declare dso_local i32 @config_item_init_type_name(%struct.config_item*, i8*, i32*) #1

declare dso_local i32 @spin_lock_init(i32*) #1

declare dso_local i32 @mlog(i32, i8*, i8*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
