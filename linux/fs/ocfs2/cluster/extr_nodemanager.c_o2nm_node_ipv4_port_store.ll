; ModuleID = '/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_port_store.c'
source_filename = "/home/carl/AnghaBench/linux/fs/ocfs2/cluster/extr_nodemanager.c_o2nm_node_ipv4_port_store.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.config_item = type { i32 }
%struct.o2nm_node = type { i32, i32 }

@EINVAL = common dso_local global i64 0, align 8
@ERANGE = common dso_local global i64 0, align 8
@O2NM_NODE_ATTR_PORT = common dso_local global i32 0, align 4
@EBUSY = common dso_local global i64 0, align 8
@llvm.used = appending global [1 x i8*] [i8* bitcast (i64 (%struct.config_item*, i8*, i64)* @o2nm_node_ipv4_port_store to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i64 @o2nm_node_ipv4_port_store(%struct.config_item* %0, i8* %1, i64 %2) #0 {
  %4 = alloca i64, align 8
  %5 = alloca %struct.config_item*, align 8
  %6 = alloca i8*, align 8
  %7 = alloca i64, align 8
  %8 = alloca %struct.o2nm_node*, align 8
  %9 = alloca i64, align 8
  %10 = alloca i8*, align 8
  store %struct.config_item* %0, %struct.config_item** %5, align 8
  store i8* %1, i8** %6, align 8
  store i64 %2, i64* %7, align 8
  %11 = load %struct.config_item*, %struct.config_item** %5, align 8
  %12 = call %struct.o2nm_node* @to_o2nm_node(%struct.config_item* %11)
  store %struct.o2nm_node* %12, %struct.o2nm_node** %8, align 8
  %13 = load i8*, i8** %6, align 8
  store i8* %13, i8** %10, align 8
  %14 = load i8*, i8** %10, align 8
  %15 = call i64 @simple_strtoul(i8* %14, i8** %10, i32 0)
  store i64 %15, i64* %9, align 8
  %16 = load i8*, i8** %10, align 8
  %17 = icmp ne i8* %16, null
  br i1 %17, label %18, label %28

18:                                               ; preds = %3
  %19 = load i8*, i8** %10, align 8
  %20 = load i8, i8* %19, align 1
  %21 = sext i8 %20 to i32
  %22 = icmp ne i32 %21, 0
  br i1 %22, label %23, label %31

23:                                               ; preds = %18
  %24 = load i8*, i8** %10, align 8
  %25 = load i8, i8* %24, align 1
  %26 = sext i8 %25 to i32
  %27 = icmp ne i32 %26, 10
  br i1 %27, label %28, label %31

28:                                               ; preds = %23, %3
  %29 = load i64, i64* @EINVAL, align 8
  %30 = sub i64 0, %29
  store i64 %30, i64* %4, align 8
  br label %58

31:                                               ; preds = %23, %18
  %32 = load i64, i64* %9, align 8
  %33 = icmp eq i64 %32, 0
  br i1 %33, label %34, label %37

34:                                               ; preds = %31
  %35 = load i64, i64* @EINVAL, align 8
  %36 = sub i64 0, %35
  store i64 %36, i64* %4, align 8
  br label %58

37:                                               ; preds = %31
  %38 = load i64, i64* %9, align 8
  %39 = icmp uge i64 %38, -1
  br i1 %39, label %40, label %43

40:                                               ; preds = %37
  %41 = load i64, i64* @ERANGE, align 8
  %42 = sub i64 0, %41
  store i64 %42, i64* %4, align 8
  br label %58

43:                                               ; preds = %37
  %44 = load i32, i32* @O2NM_NODE_ATTR_PORT, align 4
  %45 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %46 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %45, i32 0, i32 1
  %47 = call i64 @test_and_set_bit(i32 %44, i32* %46)
  %48 = icmp ne i64 %47, 0
  br i1 %48, label %49, label %52

49:                                               ; preds = %43
  %50 = load i64, i64* @EBUSY, align 8
  %51 = sub i64 0, %50
  store i64 %51, i64* %4, align 8
  br label %58

52:                                               ; preds = %43
  %53 = load i64, i64* %9, align 8
  %54 = call i32 @htons(i64 %53)
  %55 = load %struct.o2nm_node*, %struct.o2nm_node** %8, align 8
  %56 = getelementptr inbounds %struct.o2nm_node, %struct.o2nm_node* %55, i32 0, i32 0
  store i32 %54, i32* %56, align 4
  %57 = load i64, i64* %7, align 8
  store i64 %57, i64* %4, align 8
  br label %58

58:                                               ; preds = %52, %49, %40, %34, %28
  %59 = load i64, i64* %4, align 8
  ret i64 %59
}

declare dso_local %struct.o2nm_node* @to_o2nm_node(%struct.config_item*) #1

declare dso_local i64 @simple_strtoul(i8*, i8**, i32) #1

declare dso_local i64 @test_and_set_bit(i32, i32*) #1

declare dso_local i32 @htons(i64) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
