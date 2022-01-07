; ModuleID = '/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_remove_fnode.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hpfs/extr_anode.c_hpfs_remove_fnode.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.super_block = type { i32 }
%struct.buffer_head = type { i32 }
%struct.fnode = type { i32, i32, %struct.TYPE_4__, i32 }
%struct.TYPE_4__ = type { %struct.TYPE_3__* }
%struct.TYPE_3__ = type { i32 }
%struct.extended_attribute = type { i32 }

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @hpfs_remove_fnode(%struct.super_block* %0, i32 %1) #0 {
  %3 = alloca %struct.super_block*, align 8
  %4 = alloca i32, align 4
  %5 = alloca %struct.buffer_head*, align 8
  %6 = alloca %struct.fnode*, align 8
  %7 = alloca %struct.extended_attribute*, align 8
  %8 = alloca %struct.extended_attribute*, align 8
  store %struct.super_block* %0, %struct.super_block** %3, align 8
  store i32 %1, i32* %4, align 4
  %9 = load %struct.super_block*, %struct.super_block** %3, align 8
  %10 = load i32, i32* %4, align 4
  %11 = call %struct.fnode* @hpfs_map_fnode(%struct.super_block* %9, i32 %10, %struct.buffer_head** %5)
  store %struct.fnode* %11, %struct.fnode** %6, align 8
  %12 = icmp ne %struct.fnode* %11, null
  br i1 %12, label %14, label %13

13:                                               ; preds = %2
  br label %78

14:                                               ; preds = %2
  %15 = load %struct.fnode*, %struct.fnode** %6, align 8
  %16 = call i32 @fnode_is_dir(%struct.fnode* %15)
  %17 = icmp ne i32 %16, 0
  br i1 %17, label %23, label %18

18:                                               ; preds = %14
  %19 = load %struct.super_block*, %struct.super_block** %3, align 8
  %20 = load %struct.fnode*, %struct.fnode** %6, align 8
  %21 = getelementptr inbounds %struct.fnode, %struct.fnode* %20, i32 0, i32 3
  %22 = call i32 @hpfs_remove_btree(%struct.super_block* %19, i32* %21)
  br label %34

23:                                               ; preds = %14
  %24 = load %struct.super_block*, %struct.super_block** %3, align 8
  %25 = load %struct.fnode*, %struct.fnode** %6, align 8
  %26 = getelementptr inbounds %struct.fnode, %struct.fnode* %25, i32 0, i32 2
  %27 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %26, i32 0, i32 0
  %28 = load %struct.TYPE_3__*, %struct.TYPE_3__** %27, align 8
  %29 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %28, i64 0
  %30 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %29, i32 0, i32 0
  %31 = load i32, i32* %30, align 4
  %32 = call i32 @le32_to_cpu(i32 %31)
  %33 = call i32 @hpfs_remove_dtree(%struct.super_block* %24, i32 %32)
  br label %34

34:                                               ; preds = %23, %18
  %35 = load %struct.fnode*, %struct.fnode** %6, align 8
  %36 = call %struct.extended_attribute* @fnode_end_ea(%struct.fnode* %35)
  store %struct.extended_attribute* %36, %struct.extended_attribute** %8, align 8
  %37 = load %struct.fnode*, %struct.fnode** %6, align 8
  %38 = call %struct.extended_attribute* @fnode_ea(%struct.fnode* %37)
  store %struct.extended_attribute* %38, %struct.extended_attribute** %7, align 8
  br label %39

39:                                               ; preds = %57, %34
  %40 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %41 = load %struct.extended_attribute*, %struct.extended_attribute** %8, align 8
  %42 = icmp ult %struct.extended_attribute* %40, %41
  br i1 %42, label %43, label %60

43:                                               ; preds = %39
  %44 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %45 = call i64 @ea_indirect(%struct.extended_attribute* %44)
  %46 = icmp ne i64 %45, 0
  br i1 %46, label %47, label %56

47:                                               ; preds = %43
  %48 = load %struct.super_block*, %struct.super_block** %3, align 8
  %49 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %50 = call i32 @ea_sec(%struct.extended_attribute* %49)
  %51 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %52 = call i32 @ea_in_anode(%struct.extended_attribute* %51)
  %53 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %54 = call i32 @ea_len(%struct.extended_attribute* %53)
  %55 = call i32 @hpfs_ea_remove(%struct.super_block* %48, i32 %50, i32 %52, i32 %54)
  br label %56

56:                                               ; preds = %47, %43
  br label %57

57:                                               ; preds = %56
  %58 = load %struct.extended_attribute*, %struct.extended_attribute** %7, align 8
  %59 = call %struct.extended_attribute* @next_ea(%struct.extended_attribute* %58)
  store %struct.extended_attribute* %59, %struct.extended_attribute** %7, align 8
  br label %39

60:                                               ; preds = %39
  %61 = load %struct.super_block*, %struct.super_block** %3, align 8
  %62 = load %struct.fnode*, %struct.fnode** %6, align 8
  %63 = getelementptr inbounds %struct.fnode, %struct.fnode* %62, i32 0, i32 1
  %64 = load i32, i32* %63, align 4
  %65 = call i32 @le32_to_cpu(i32 %64)
  %66 = load %struct.fnode*, %struct.fnode** %6, align 8
  %67 = call i32 @fnode_in_anode(%struct.fnode* %66)
  %68 = load %struct.fnode*, %struct.fnode** %6, align 8
  %69 = getelementptr inbounds %struct.fnode, %struct.fnode* %68, i32 0, i32 0
  %70 = load i32, i32* %69, align 8
  %71 = call i32 @le32_to_cpu(i32 %70)
  %72 = call i32 @hpfs_ea_ext_remove(%struct.super_block* %61, i32 %65, i32 %67, i32 %71)
  %73 = load %struct.buffer_head*, %struct.buffer_head** %5, align 8
  %74 = call i32 @brelse(%struct.buffer_head* %73)
  %75 = load %struct.super_block*, %struct.super_block** %3, align 8
  %76 = load i32, i32* %4, align 4
  %77 = call i32 @hpfs_free_sectors(%struct.super_block* %75, i32 %76, i32 1)
  br label %78

78:                                               ; preds = %60, %13
  ret void
}

declare dso_local %struct.fnode* @hpfs_map_fnode(%struct.super_block*, i32, %struct.buffer_head**) #1

declare dso_local i32 @fnode_is_dir(%struct.fnode*) #1

declare dso_local i32 @hpfs_remove_btree(%struct.super_block*, i32*) #1

declare dso_local i32 @hpfs_remove_dtree(%struct.super_block*, i32) #1

declare dso_local i32 @le32_to_cpu(i32) #1

declare dso_local %struct.extended_attribute* @fnode_end_ea(%struct.fnode*) #1

declare dso_local %struct.extended_attribute* @fnode_ea(%struct.fnode*) #1

declare dso_local i64 @ea_indirect(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_ea_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @ea_sec(%struct.extended_attribute*) #1

declare dso_local i32 @ea_in_anode(%struct.extended_attribute*) #1

declare dso_local i32 @ea_len(%struct.extended_attribute*) #1

declare dso_local %struct.extended_attribute* @next_ea(%struct.extended_attribute*) #1

declare dso_local i32 @hpfs_ea_ext_remove(%struct.super_block*, i32, i32, i32) #1

declare dso_local i32 @fnode_in_anode(%struct.fnode*) #1

declare dso_local i32 @brelse(%struct.buffer_head*) #1

declare dso_local i32 @hpfs_free_sectors(%struct.super_block*, i32, i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
