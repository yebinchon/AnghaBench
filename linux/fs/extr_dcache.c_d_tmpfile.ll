; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_tmpfile.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c_d_tmpfile.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i64, %struct.TYPE_6__*, i32, %struct.TYPE_5__, %struct.TYPE_4__ }
%struct.TYPE_6__ = type { i32 }
%struct.TYPE_5__ = type { i64, i32 }
%struct.TYPE_4__ = type { i32 }
%struct.inode = type { i64 }

@DENTRY_D_LOCK_NESTED = common dso_local global i32 0, align 4
@.str = private unnamed_addr constant [6 x i8] c"#%llu\00", align 1

; Function Attrs: noinline nounwind optnone uwtable
define dso_local void @d_tmpfile(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  %5 = load %struct.inode*, %struct.inode** %4, align 8
  %6 = call i32 @inode_dec_link_count(%struct.inode* %5)
  %7 = load %struct.dentry*, %struct.dentry** %3, align 8
  %8 = getelementptr inbounds %struct.dentry, %struct.dentry* %7, i32 0, i32 3
  %9 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %8, i32 0, i32 0
  %10 = load i64, i64* %9, align 8
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = getelementptr inbounds %struct.dentry, %struct.dentry* %11, i32 0, i32 0
  %13 = load i64, i64* %12, align 8
  %14 = icmp ne i64 %10, %13
  br i1 %14, label %26, label %15

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 4
  %18 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %17, i32 0, i32 0
  %19 = call i32 @hlist_unhashed(i32* %18)
  %20 = icmp ne i32 %19, 0
  br i1 %20, label %21, label %26

21:                                               ; preds = %15
  %22 = load %struct.dentry*, %struct.dentry** %3, align 8
  %23 = call i32 @d_unlinked(%struct.dentry* %22)
  %24 = icmp ne i32 %23, 0
  %25 = xor i1 %24, true
  br label %26

26:                                               ; preds = %21, %15, %2
  %27 = phi i1 [ true, %15 ], [ true, %2 ], [ %25, %21 ]
  %28 = zext i1 %27 to i32
  %29 = call i32 @BUG_ON(i32 %28)
  %30 = load %struct.dentry*, %struct.dentry** %3, align 8
  %31 = getelementptr inbounds %struct.dentry, %struct.dentry* %30, i32 0, i32 1
  %32 = load %struct.TYPE_6__*, %struct.TYPE_6__** %31, align 8
  %33 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %32, i32 0, i32 0
  %34 = call i32 @spin_lock(i32* %33)
  %35 = load %struct.dentry*, %struct.dentry** %3, align 8
  %36 = getelementptr inbounds %struct.dentry, %struct.dentry* %35, i32 0, i32 2
  %37 = load i32, i32* @DENTRY_D_LOCK_NESTED, align 4
  %38 = call i32 @spin_lock_nested(i32* %36, i32 %37)
  %39 = load %struct.dentry*, %struct.dentry** %3, align 8
  %40 = getelementptr inbounds %struct.dentry, %struct.dentry* %39, i32 0, i32 0
  %41 = load i64, i64* %40, align 8
  %42 = load %struct.inode*, %struct.inode** %4, align 8
  %43 = getelementptr inbounds %struct.inode, %struct.inode* %42, i32 0, i32 0
  %44 = load i64, i64* %43, align 8
  %45 = call i32 @sprintf(i64 %41, i8* getelementptr inbounds ([6 x i8], [6 x i8]* @.str, i64 0, i64 0), i64 %44)
  %46 = load %struct.dentry*, %struct.dentry** %3, align 8
  %47 = getelementptr inbounds %struct.dentry, %struct.dentry* %46, i32 0, i32 3
  %48 = getelementptr inbounds %struct.TYPE_5__, %struct.TYPE_5__* %47, i32 0, i32 1
  store i32 %45, i32* %48, align 8
  %49 = load %struct.dentry*, %struct.dentry** %3, align 8
  %50 = getelementptr inbounds %struct.dentry, %struct.dentry* %49, i32 0, i32 2
  %51 = call i32 @spin_unlock(i32* %50)
  %52 = load %struct.dentry*, %struct.dentry** %3, align 8
  %53 = getelementptr inbounds %struct.dentry, %struct.dentry* %52, i32 0, i32 1
  %54 = load %struct.TYPE_6__*, %struct.TYPE_6__** %53, align 8
  %55 = getelementptr inbounds %struct.TYPE_6__, %struct.TYPE_6__* %54, i32 0, i32 0
  %56 = call i32 @spin_unlock(i32* %55)
  %57 = load %struct.dentry*, %struct.dentry** %3, align 8
  %58 = load %struct.inode*, %struct.inode** %4, align 8
  %59 = call i32 @d_instantiate(%struct.dentry* %57, %struct.inode* %58)
  ret void
}

declare dso_local i32 @inode_dec_link_count(%struct.inode*) #1

declare dso_local i32 @BUG_ON(i32) #1

declare dso_local i32 @hlist_unhashed(i32*) #1

declare dso_local i32 @d_unlinked(%struct.dentry*) #1

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i32 @spin_lock_nested(i32*, i32) #1

declare dso_local i32 @sprintf(i64, i8*, i64) #1

declare dso_local i32 @spin_unlock(i32*) #1

declare dso_local i32 @d_instantiate(%struct.dentry*, %struct.inode*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
