; ModuleID = '/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_file_release.c'
source_filename = "/home/carl/AnghaBench/linux/fs/hfsplus/extr_inode.c_hfsplus_file_release.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.inode = type { i32, i32, %struct.super_block* }
%struct.super_block = type { i32 }
%struct.file = type { i32 }
%struct.TYPE_4__ = type { i32, %struct.inode* }
%struct.TYPE_3__ = type { i32 }

@S_DEAD = common dso_local global i32 0, align 4
@llvm.used = appending global [1 x i8*] [i8* bitcast (i32 (%struct.inode*, %struct.file*)* @hfsplus_file_release to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal i32 @hfsplus_file_release(%struct.inode* %0, %struct.file* %1) #0 {
  %3 = alloca %struct.inode*, align 8
  %4 = alloca %struct.file*, align 8
  %5 = alloca %struct.super_block*, align 8
  store %struct.inode* %0, %struct.inode** %3, align 8
  store %struct.file* %1, %struct.file** %4, align 8
  %6 = load %struct.inode*, %struct.inode** %3, align 8
  %7 = getelementptr inbounds %struct.inode, %struct.inode* %6, i32 0, i32 2
  %8 = load %struct.super_block*, %struct.super_block** %7, align 8
  store %struct.super_block* %8, %struct.super_block** %5, align 8
  %9 = load %struct.inode*, %struct.inode** %3, align 8
  %10 = call i64 @HFSPLUS_IS_RSRC(%struct.inode* %9)
  %11 = icmp ne i64 %10, 0
  br i1 %11, label %12, label %17

12:                                               ; preds = %2
  %13 = load %struct.inode*, %struct.inode** %3, align 8
  %14 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %13)
  %15 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %14, i32 0, i32 1
  %16 = load %struct.inode*, %struct.inode** %15, align 8
  store %struct.inode* %16, %struct.inode** %3, align 8
  br label %17

17:                                               ; preds = %12, %2
  %18 = load %struct.inode*, %struct.inode** %3, align 8
  %19 = call %struct.TYPE_4__* @HFSPLUS_I(%struct.inode* %18)
  %20 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %19, i32 0, i32 0
  %21 = call i64 @atomic_dec_and_test(i32* %20)
  %22 = icmp ne i64 %21, 0
  br i1 %22, label %23, label %48

23:                                               ; preds = %17
  %24 = load %struct.inode*, %struct.inode** %3, align 8
  %25 = call i32 @inode_lock(%struct.inode* %24)
  %26 = load %struct.inode*, %struct.inode** %3, align 8
  %27 = call i32 @hfsplus_file_truncate(%struct.inode* %26)
  %28 = load %struct.inode*, %struct.inode** %3, align 8
  %29 = getelementptr inbounds %struct.inode, %struct.inode* %28, i32 0, i32 0
  %30 = load i32, i32* %29, align 8
  %31 = load i32, i32* @S_DEAD, align 4
  %32 = and i32 %30, %31
  %33 = icmp ne i32 %32, 0
  br i1 %33, label %34, label %45

34:                                               ; preds = %23
  %35 = load %struct.inode*, %struct.inode** %3, align 8
  %36 = getelementptr inbounds %struct.inode, %struct.inode* %35, i32 0, i32 1
  %37 = load i32, i32* %36, align 4
  %38 = load %struct.super_block*, %struct.super_block** %5, align 8
  %39 = call %struct.TYPE_3__* @HFSPLUS_SB(%struct.super_block* %38)
  %40 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %39, i32 0, i32 0
  %41 = load i32, i32* %40, align 4
  %42 = call i32 @hfsplus_delete_cat(i32 %37, i32 %41, i32* null)
  %43 = load %struct.inode*, %struct.inode** %3, align 8
  %44 = call i32 @hfsplus_delete_inode(%struct.inode* %43)
  br label %45

45:                                               ; preds = %34, %23
  %46 = load %struct.inode*, %struct.inode** %3, align 8
  %47 = call i32 @inode_unlock(%struct.inode* %46)
  br label %48

48:                                               ; preds = %45, %17
  ret i32 0
}

declare dso_local i64 @HFSPLUS_IS_RSRC(%struct.inode*) #1

declare dso_local %struct.TYPE_4__* @HFSPLUS_I(%struct.inode*) #1

declare dso_local i64 @atomic_dec_and_test(i32*) #1

declare dso_local i32 @inode_lock(%struct.inode*) #1

declare dso_local i32 @hfsplus_file_truncate(%struct.inode*) #1

declare dso_local i32 @hfsplus_delete_cat(i32, i32, i32*) #1

declare dso_local %struct.TYPE_3__* @HFSPLUS_SB(%struct.super_block*) #1

declare dso_local i32 @hfsplus_delete_inode(%struct.inode*) #1

declare dso_local i32 @inode_unlock(%struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
