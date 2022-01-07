; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_inode.c_evict.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_inode.c_evict.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, i64, i32, i64, i32, i32, i32, %struct.TYPE_2__* }
%struct.TYPE_2__ = type { %struct.super_operations* }
%struct.super_operations = type { i32 (%struct.inode.0*)* }
%struct.inode.0 = type opaque

@I_FREEING = common dso_local global i32 0, align 4
@__I_NEW = common dso_local global i32 0, align 4
@I_CLEAR = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.inode*)* @evict to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @evict(%struct.inode* %0) #0 {
  %2 = alloca %struct.inode*, align 8
  %3 = alloca %struct.super_operations*, align 8
  store %struct.inode* %0, %struct.inode** %2, align 8
  %4 = load %struct.inode*, %struct.inode** %2, align 8
  %5 = getelementptr inbounds %struct.inode, %struct.inode* %4, i32 0, i32 8
  %6 = load %struct.TYPE_2__*, %struct.TYPE_2__** %5, align 8
  %7 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %6, i32 0, i32 0
  %8 = load %struct.super_operations*, %struct.super_operations** %7, align 8
  store %struct.super_operations* %8, %struct.super_operations** %3, align 8
  %9 = load %struct.inode*, %struct.inode** %2, align 8
  %10 = getelementptr inbounds %struct.inode, %struct.inode* %9, i32 0, i32 0
  %11 = load i32, i32* %10, align 8
  %12 = load i32, i32* @I_FREEING, align 4
  %13 = and i32 %11, %12
  %14 = icmp ne i32 %13, 0
  %15 = xor i1 %14, true
  %16 = zext i1 %15 to i32
  %17 = call i32 @BUG_ON(i32 %16)
  %18 = load %struct.inode*, %struct.inode** %2, align 8
  %19 = getelementptr inbounds %struct.inode, %struct.inode* %18, i32 0, i32 7
  %20 = call i32 @list_empty(i32* %19)
  %21 = icmp ne i32 %20, 0
  %22 = xor i1 %21, true
  %23 = zext i1 %22 to i32
  %24 = call i32 @BUG_ON(i32 %23)
  %25 = load %struct.inode*, %struct.inode** %2, align 8
  %26 = getelementptr inbounds %struct.inode, %struct.inode* %25, i32 0, i32 6
  %27 = call i32 @list_empty(i32* %26)
  %28 = icmp ne i32 %27, 0
  br i1 %28, label %32, label %29

29:                                               ; preds = %1
  %30 = load %struct.inode*, %struct.inode** %2, align 8
  %31 = call i32 @inode_io_list_del(%struct.inode* %30)
  br label %32

32:                                               ; preds = %29, %1
  %33 = load %struct.inode*, %struct.inode** %2, align 8
  %34 = call i32 @inode_sb_list_del(%struct.inode* %33)
  %35 = load %struct.inode*, %struct.inode** %2, align 8
  %36 = call i32 @inode_wait_for_writeback(%struct.inode* %35)
  %37 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %38 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %37, i32 0, i32 0
  %39 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %38, align 8
  %40 = icmp ne i32 (%struct.inode.0*)* %39, null
  br i1 %40, label %41, label %48

41:                                               ; preds = %32
  %42 = load %struct.super_operations*, %struct.super_operations** %3, align 8
  %43 = getelementptr inbounds %struct.super_operations, %struct.super_operations* %42, i32 0, i32 0
  %44 = load i32 (%struct.inode.0*)*, i32 (%struct.inode.0*)** %43, align 8
  %45 = load %struct.inode*, %struct.inode** %2, align 8
  %46 = bitcast %struct.inode* %45 to %struct.inode.0*
  %47 = call i32 %44(%struct.inode.0* %46)
  br label %54

48:                                               ; preds = %32
  %49 = load %struct.inode*, %struct.inode** %2, align 8
  %50 = getelementptr inbounds %struct.inode, %struct.inode* %49, i32 0, i32 5
  %51 = call i32 @truncate_inode_pages_final(i32* %50)
  %52 = load %struct.inode*, %struct.inode** %2, align 8
  %53 = call i32 @clear_inode(%struct.inode* %52)
  br label %54

54:                                               ; preds = %48, %41
  %55 = load %struct.inode*, %struct.inode** %2, align 8
  %56 = getelementptr inbounds %struct.inode, %struct.inode* %55, i32 0, i32 3
  %57 = load i32, i32* %56, align 8
  %58 = call i64 @S_ISBLK(i32 %57)
  %59 = icmp ne i64 %58, 0
  br i1 %59, label %60, label %68

60:                                               ; preds = %54
  %61 = load %struct.inode*, %struct.inode** %2, align 8
  %62 = getelementptr inbounds %struct.inode, %struct.inode* %61, i32 0, i32 4
  %63 = load i64, i64* %62, align 8
  %64 = icmp ne i64 %63, 0
  br i1 %64, label %65, label %68

65:                                               ; preds = %60
  %66 = load %struct.inode*, %struct.inode** %2, align 8
  %67 = call i32 @bd_forget(%struct.inode* %66)
  br label %68

68:                                               ; preds = %65, %60, %54
  %69 = load %struct.inode*, %struct.inode** %2, align 8
  %70 = getelementptr inbounds %struct.inode, %struct.inode* %69, i32 0, i32 3
  %71 = load i32, i32* %70, align 8
  %72 = call i64 @S_ISCHR(i32 %71)
  %73 = icmp ne i64 %72, 0
  br i1 %73, label %74, label %82

74:                                               ; preds = %68
  %75 = load %struct.inode*, %struct.inode** %2, align 8
  %76 = getelementptr inbounds %struct.inode, %struct.inode* %75, i32 0, i32 2
  %77 = load i64, i64* %76, align 8
  %78 = icmp ne i64 %77, 0
  br i1 %78, label %79, label %82

79:                                               ; preds = %74
  %80 = load %struct.inode*, %struct.inode** %2, align 8
  %81 = call i32 @cd_forget(%struct.inode* %80)
  br label %82

82:                                               ; preds = %79, %74, %68
  %83 = load %struct.inode*, %struct.inode** %2, align 8
  %84 = call i32 @remove_inode_hash(%struct.inode* %83)
  %85 = load %struct.inode*, %struct.inode** %2, align 8
  %86 = getelementptr inbounds %struct.inode, %struct.inode* %85, i32 0, i32 1
  %87 = call i32 @spin_lock(i32* %86)
  %88 = load %struct.inode*, %struct.inode** %2, align 8
  %89 = getelementptr inbounds %struct.inode, %struct.inode* %88, i32 0, i32 0
  %90 = load i32, i32* @__I_NEW, align 4
  %91 = call i32 @wake_up_bit(i32* %89, i32 %90)
  %92 = load %struct.inode*, %struct.inode** %2, align 8
  %93 = getelementptr inbounds %struct.inode, %struct.inode* %92, i32 0, i32 0
  %94 = load i32, i32* %93, align 8
  %95 = load i32, i32* @I_FREEING, align 4
  %96 = load i32, i32* @I_CLEAR, align 4
  %97 = or i32 %95, %96
  %98 = icmp ne i32 %94, %97
  %99 = zext i1 %98 to i32
  %100 = call i32 @BUG_ON(i32 %99)
  %101 = load %struct.inode*, %struct.inode** %2, align 8
  %102 = getelementptr inbounds %struct.inode, %struct.inode* %101, i32 0, i32 1
  %103 = call i32 @spin_unlock(i32* %102)
  %104 = load %struct.inode*, %struct.inode** %2, align 8
  %105 = call i32 @destroy_inode(%struct.inode* %104)
  ret void
}

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @list_empty(i32*) #1

declare dso_local i32 @inode_io_list_del(%struct.inode*) #1

declare dso_local i32 @inode_sb_list_del(%struct.inode*) #1

declare dso_local i32 @inode_wait_for_writeback(%struct.inode*) #1

declare dso_local i32 @truncate_inode_pages_final(i32*) #1

declare dso_local i32 @clear_inode(%struct.inode*) #1

declare dso_local i64 @S_ISBLK(i32) #1

declare dso_local i32 @bd_forget(%struct.inode*) #1

declare dso_local i64 @S_ISCHR(i32) #1

declare dso_local i32 @cd_forget(%struct.inode*) #1

declare dso_local i32 @remove_inode_hash(%struct.inode*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @wake_up_bit(i32*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @destroy_inode(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
