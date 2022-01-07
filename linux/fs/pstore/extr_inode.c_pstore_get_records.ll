; ModuleID = '/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_get_records.c'
source_filename = "/home/carl/AnghaBench/linux/fs/pstore/extr_inode.c_pstore_get_records.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.pstore_info = type { i32 }
%struct.TYPE_2__ = type { %struct.dentry* }
%struct.dentry = type { i32 }

@psinfo = common dso_local global %struct.pstore_info* null, align 8
@pstore_sb = common dso_local global %struct.TYPE_2__* null, align 8

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @pstore_get_records(i32 %0) #0 {
  %2 = alloca i32, align 4
  %3 = alloca %struct.pstore_info*, align 8
  %4 = alloca %struct.dentry*, align 8
  store i32 %0, i32* %2, align 4
  %5 = load %struct.pstore_info*, %struct.pstore_info** @psinfo, align 8
  store %struct.pstore_info* %5, %struct.pstore_info** %3, align 8
  %6 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %7 = icmp ne %struct.pstore_info* %6, null
  br i1 %7, label %8, label %11

8:                                                ; preds = %1
  %9 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pstore_sb, align 8
  %10 = icmp ne %struct.TYPE_2__* %9, null
  br i1 %10, label %12, label %11

11:                                               ; preds = %8, %1
  br label %26

12:                                               ; preds = %8
  %13 = load %struct.TYPE_2__*, %struct.TYPE_2__** @pstore_sb, align 8
  %14 = getelementptr inbounds %struct.TYPE_2__, %struct.TYPE_2__* %13, i32 0, i32 0
  %15 = load %struct.dentry*, %struct.dentry** %14, align 8
  store %struct.dentry* %15, %struct.dentry** %4, align 8
  %16 = load %struct.dentry*, %struct.dentry** %4, align 8
  %17 = call i32 @d_inode(%struct.dentry* %16)
  %18 = call i32 @inode_lock(i32 %17)
  %19 = load %struct.pstore_info*, %struct.pstore_info** %3, align 8
  %20 = load %struct.dentry*, %struct.dentry** %4, align 8
  %21 = load i32, i32* %2, align 4
  %22 = call i32 @pstore_get_backend_records(%struct.pstore_info* %19, %struct.dentry* %20, i32 %21)
  %23 = load %struct.dentry*, %struct.dentry** %4, align 8
  %24 = call i32 @d_inode(%struct.dentry* %23)
  %25 = call i32 @inode_unlock(i32 %24)
  br label %26

26:                                               ; preds = %12, %11
  ret void
}

declare dso_local i32 @inode_lock(i32) #1

declare dso_local i32 @d_inode(%struct.dentry*) #1

declare dso_local i32 @pstore_get_backend_records(%struct.pstore_info*, %struct.dentry*, i32) #1

declare dso_local i32 @inode_unlock(i32) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
