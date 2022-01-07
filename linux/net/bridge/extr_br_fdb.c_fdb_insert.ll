; ModuleID = '/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_insert.c'
source_filename = "/home/carl/AnghaBench/linux/net/bridge/extr_br_fdb.c_fdb_insert.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.net_bridge = type { %struct.TYPE_4__* }
%struct.TYPE_4__ = type { i32 }
%struct.net_bridge_port = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.net_bridge_fdb_entry = type { i64 }

@EINVAL = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [80 x i8] c"adding interface %s with same address as a received packet (addr:%pM, vlan:%u)\0A\00", align 1
@ENOMEM = common dso_local global i32 0, align 4
@RTM_NEWNEIGH = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32)* @fdb_insert to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @fdb_insert(%struct.net_bridge* %0, %struct.net_bridge_port* %1, i8* %2, i32 %3) #0 {
  %5 = alloca i32, align 4
  %6 = alloca %struct.net_bridge*, align 8
  %7 = alloca %struct.net_bridge_port*, align 8
  %8 = alloca i8*, align 8
  %9 = alloca i32, align 4
  %10 = alloca %struct.net_bridge_fdb_entry*, align 8
  store %struct.net_bridge* %0, %struct.net_bridge** %6, align 8
  store %struct.net_bridge_port* %1, %struct.net_bridge_port** %7, align 8
  store i8* %2, i8** %8, align 8
  store i32 %3, i32* %9, align 4
  %11 = load i8*, i8** %8, align 8
  %12 = call i32 @is_valid_ether_addr(i8* %11)
  %13 = icmp ne i32 %12, 0
  br i1 %13, label %17, label %14

14:                                               ; preds = %4
  %15 = load i32, i32* @EINVAL, align 4
  %16 = sub nsw i32 0, %15
  store i32 %16, i32* %5, align 4
  br label %73

17:                                               ; preds = %4
  %18 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %19 = load i8*, i8** %8, align 8
  %20 = load i32, i32* %9, align 4
  %21 = call %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge* %18, i8* %19, i32 %20)
  store %struct.net_bridge_fdb_entry* %21, %struct.net_bridge_fdb_entry** %10, align 8
  %22 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %23 = icmp ne %struct.net_bridge_fdb_entry* %22, null
  br i1 %23, label %24, label %54

24:                                               ; preds = %17
  %25 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %26 = getelementptr inbounds %struct.net_bridge_fdb_entry, %struct.net_bridge_fdb_entry* %25, i32 0, i32 0
  %27 = load i64, i64* %26, align 8
  %28 = icmp ne i64 %27, 0
  br i1 %28, label %29, label %30

29:                                               ; preds = %24
  store i32 0, i32* %5, align 4
  br label %73

30:                                               ; preds = %24
  %31 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %32 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %33 = icmp ne %struct.net_bridge_port* %32, null
  br i1 %33, label %34, label %40

34:                                               ; preds = %30
  %35 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %36 = getelementptr inbounds %struct.net_bridge_port, %struct.net_bridge_port* %35, i32 0, i32 0
  %37 = load %struct.TYPE_3__*, %struct.TYPE_3__** %36, align 8
  %38 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %37, i32 0, i32 0
  %39 = load i32, i32* %38, align 4
  br label %46

40:                                               ; preds = %30
  %41 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %42 = getelementptr inbounds %struct.net_bridge, %struct.net_bridge* %41, i32 0, i32 0
  %43 = load %struct.TYPE_4__*, %struct.TYPE_4__** %42, align 8
  %44 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %43, i32 0, i32 0
  %45 = load i32, i32* %44, align 4
  br label %46

46:                                               ; preds = %40, %34
  %47 = phi i32 [ %39, %34 ], [ %45, %40 ]
  %48 = load i8*, i8** %8, align 8
  %49 = load i32, i32* %9, align 4
  %50 = call i32 @br_warn(%struct.net_bridge* %31, i8* getelementptr inbounds ([80 x i8], [80 x i8]* @.str, i64 0, i64 0), i32 %47, i8* %48, i32 %49)
  %51 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %52 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %53 = call i32 @fdb_delete(%struct.net_bridge* %51, %struct.net_bridge_fdb_entry* %52, i32 1)
  br label %54

54:                                               ; preds = %46, %17
  %55 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %56 = load %struct.net_bridge_port*, %struct.net_bridge_port** %7, align 8
  %57 = load i8*, i8** %8, align 8
  %58 = load i32, i32* %9, align 4
  %59 = call %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge* %55, %struct.net_bridge_port* %56, i8* %57, i32 %58, i32 1, i32 1)
  store %struct.net_bridge_fdb_entry* %59, %struct.net_bridge_fdb_entry** %10, align 8
  %60 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %61 = icmp ne %struct.net_bridge_fdb_entry* %60, null
  br i1 %61, label %65, label %62

62:                                               ; preds = %54
  %63 = load i32, i32* @ENOMEM, align 4
  %64 = sub nsw i32 0, %63
  store i32 %64, i32* %5, align 4
  br label %73

65:                                               ; preds = %54
  %66 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %67 = load i8*, i8** %8, align 8
  %68 = call i32 @fdb_add_hw_addr(%struct.net_bridge* %66, i8* %67)
  %69 = load %struct.net_bridge*, %struct.net_bridge** %6, align 8
  %70 = load %struct.net_bridge_fdb_entry*, %struct.net_bridge_fdb_entry** %10, align 8
  %71 = load i32, i32* @RTM_NEWNEIGH, align 4
  %72 = call i32 @fdb_notify(%struct.net_bridge* %69, %struct.net_bridge_fdb_entry* %70, i32 %71, i32 1)
  store i32 0, i32* %5, align 4
  br label %73

73:                                               ; preds = %65, %62, %29, %14
  %74 = load i32, i32* %5, align 4
  ret i32 %74
}

declare dso_local i32 @is_valid_ether_addr(i8*) #1

declare dso_local %struct.net_bridge_fdb_entry* @br_fdb_find(%struct.net_bridge*, i8*, i32) #1

declare dso_local i32 @br_warn(%struct.net_bridge*, i8*, i32, i8*, i32) #1

declare dso_local i32 @fdb_delete(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32) #1

declare dso_local %struct.net_bridge_fdb_entry* @fdb_create(%struct.net_bridge*, %struct.net_bridge_port*, i8*, i32, i32, i32) #1

declare dso_local i32 @fdb_add_hw_addr(%struct.net_bridge*, i8*) #1

declare dso_local i32 @fdb_notify(%struct.net_bridge*, %struct.net_bridge_fdb_entry*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
