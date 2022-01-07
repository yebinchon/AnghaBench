; ModuleID = '/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_add.c'
source_filename = "/home/carl/AnghaBench/linux/fs/extr_dcache.c___d_add.c"
target datalayout = "e-m:e-p270:32:32-p271:32:32-p272:64:64-i64:64-f80:128-n8:16:32:64-S128"
target triple = "x86_64-unknown-linux-gnu"

%struct.dentry = type { i32, i32, %struct.TYPE_4__, %struct.TYPE_3__* }
%struct.TYPE_4__ = type { i32 }
%struct.TYPE_3__ = type { %struct.inode* }
%struct.inode = type { i32, i32 }

@llvm.used = appending global [1 x i8*] [i8* bitcast (void (%struct.dentry*, %struct.inode*)* @__d_add to i8*)], section "llvm.metadata"

; Function Attrs: noinline nounwind optnone uwtable
define internal void @__d_add(%struct.dentry* %0, %struct.inode* %1) #0 {
  %3 = alloca %struct.dentry*, align 8
  %4 = alloca %struct.inode*, align 8
  %5 = alloca %struct.inode*, align 8
  %6 = alloca i32, align 4
  %7 = alloca i32, align 4
  store %struct.dentry* %0, %struct.dentry** %3, align 8
  store %struct.inode* %1, %struct.inode** %4, align 8
  store %struct.inode* null, %struct.inode** %5, align 8
  %8 = load %struct.dentry*, %struct.dentry** %3, align 8
  %9 = getelementptr inbounds %struct.dentry, %struct.dentry* %8, i32 0, i32 0
  %10 = call i32 @spin_lock(i32* %9)
  %11 = load %struct.dentry*, %struct.dentry** %3, align 8
  %12 = call i32 @d_in_lookup(%struct.dentry* %11)
  %13 = call i64 @unlikely(i32 %12)
  %14 = icmp ne i64 %13, 0
  br i1 %14, label %15, label %25

15:                                               ; preds = %2
  %16 = load %struct.dentry*, %struct.dentry** %3, align 8
  %17 = getelementptr inbounds %struct.dentry, %struct.dentry* %16, i32 0, i32 3
  %18 = load %struct.TYPE_3__*, %struct.TYPE_3__** %17, align 8
  %19 = getelementptr inbounds %struct.TYPE_3__, %struct.TYPE_3__* %18, i32 0, i32 0
  %20 = load %struct.inode*, %struct.inode** %19, align 8
  store %struct.inode* %20, %struct.inode** %5, align 8
  %21 = load %struct.inode*, %struct.inode** %5, align 8
  %22 = call i32 @start_dir_add(%struct.inode* %21)
  store i32 %22, i32* %6, align 4
  %23 = load %struct.dentry*, %struct.dentry** %3, align 8
  %24 = call i32 @__d_lookup_done(%struct.dentry* %23)
  br label %25

25:                                               ; preds = %15, %2
  %26 = load %struct.inode*, %struct.inode** %4, align 8
  %27 = icmp ne %struct.inode* %26, null
  br i1 %27, label %28, label %49

28:                                               ; preds = %25
  %29 = load %struct.inode*, %struct.inode** %4, align 8
  %30 = call i32 @d_flags_for_inode(%struct.inode* %29)
  store i32 %30, i32* %7, align 4
  %31 = load %struct.dentry*, %struct.dentry** %3, align 8
  %32 = getelementptr inbounds %struct.dentry, %struct.dentry* %31, i32 0, i32 2
  %33 = getelementptr inbounds %struct.TYPE_4__, %struct.TYPE_4__* %32, i32 0, i32 0
  %34 = load %struct.inode*, %struct.inode** %4, align 8
  %35 = getelementptr inbounds %struct.inode, %struct.inode* %34, i32 0, i32 1
  %36 = call i32 @hlist_add_head(i32* %33, i32* %35)
  %37 = load %struct.dentry*, %struct.dentry** %3, align 8
  %38 = getelementptr inbounds %struct.dentry, %struct.dentry* %37, i32 0, i32 1
  %39 = call i32 @raw_write_seqcount_begin(i32* %38)
  %40 = load %struct.dentry*, %struct.dentry** %3, align 8
  %41 = load %struct.inode*, %struct.inode** %4, align 8
  %42 = load i32, i32* %7, align 4
  %43 = call i32 @__d_set_inode_and_type(%struct.dentry* %40, %struct.inode* %41, i32 %42)
  %44 = load %struct.dentry*, %struct.dentry** %3, align 8
  %45 = getelementptr inbounds %struct.dentry, %struct.dentry* %44, i32 0, i32 1
  %46 = call i32 @raw_write_seqcount_end(i32* %45)
  %47 = load %struct.dentry*, %struct.dentry** %3, align 8
  %48 = call i32 @fsnotify_update_flags(%struct.dentry* %47)
  br label %49

49:                                               ; preds = %28, %25
  %50 = load %struct.dentry*, %struct.dentry** %3, align 8
  %51 = call i32 @__d_rehash(%struct.dentry* %50)
  %52 = load %struct.inode*, %struct.inode** %5, align 8
  %53 = icmp ne %struct.inode* %52, null
  br i1 %53, label %54, label %58

54:                                               ; preds = %49
  %55 = load %struct.inode*, %struct.inode** %5, align 8
  %56 = load i32, i32* %6, align 4
  %57 = call i32 @end_dir_add(%struct.inode* %55, i32 %56)
  br label %58

58:                                               ; preds = %54, %49
  %59 = load %struct.dentry*, %struct.dentry** %3, align 8
  %60 = getelementptr inbounds %struct.dentry, %struct.dentry* %59, i32 0, i32 0
  %61 = call i32 @spin_unlock(i32* %60)
  %62 = load %struct.inode*, %struct.inode** %4, align 8
  %63 = icmp ne %struct.inode* %62, null
  br i1 %63, label %64, label %68

64:                                               ; preds = %58
  %65 = load %struct.inode*, %struct.inode** %4, align 8
  %66 = getelementptr inbounds %struct.inode, %struct.inode* %65, i32 0, i32 0
  %67 = call i32 @spin_unlock(i32* %66)
  br label %68

68:                                               ; preds = %64, %58
  ret void
}

declare dso_local i32 @spin_lock(i32*) #1

declare dso_local i64 @unlikely(i32) #1

declare dso_local i32 @d_in_lookup(%struct.dentry*) #1

declare dso_local i32 @start_dir_add(%struct.inode*) #1

declare dso_local i32 @__d_lookup_done(%struct.dentry*) #1

declare dso_local i32 @d_flags_for_inode(%struct.inode*) #1

declare dso_local i32 @hlist_add_head(i32*, i32*) #1

declare dso_local i32 @raw_write_seqcount_begin(i32*) #1

declare dso_local i32 @__d_set_inode_and_type(%struct.dentry*, %struct.inode*, i32) #1

declare dso_local i32 @raw_write_seqcount_end(i32*) #1

declare dso_local i32 @fsnotify_update_flags(%struct.dentry*) #1

declare dso_local i32 @__d_rehash(%struct.dentry*) #1

declare dso_local i32 @end_dir_add(%struct.inode*, i32) #1

declare dso_local i32 @spin_unlock(i32*) #1

attributes #0 = { noinline nounwind optnone uwtable "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "min-legal-vector-width"="0" "no-infs-fp-math"="false" "no-jump-tables"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }
attributes #1 = { "correctly-rounded-divide-sqrt-fp-math"="false" "disable-tail-calls"="false" "frame-pointer"="all" "less-precise-fpmad"="false" "no-infs-fp-math"="false" "no-nans-fp-math"="false" "no-signed-zeros-fp-math"="false" "no-trapping-math"="false" "stack-protector-buffer-size"="8" "target-cpu"="x86-64" "target-features"="+cx8,+fxsr,+mmx,+sse,+sse2,+x87" "unsafe-fp-math"="false" "use-soft-float"="false" }

!llvm.module.flags = !{!0}
!llvm.ident = !{!1}

!0 = !{i32 1, !"wchar_size", i32 4}
!1 = !{!"clang version 10.0.1 (https://github.com/wsmoses/llvm-project-tok c8e5003577614e72d6d18a216e6a09771e1fcce4)"}
